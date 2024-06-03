import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:pedometer/pedometer.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StepController extends GetxController {

  Stream<StepCount>? stepCountStream;
  late Stream<PedestrianStatus> _pedestrianStatusStream;

  RxString status = '?'.obs;
  RxString steps = ''.obs;
  RxDouble distance = 0.0.obs;  // Distance in kilometers

  final double stepLength = 0.78; // Average step length in meters
  int currentDaySteps = 0;
  int lastCumulativeSteps = 0;
  DateTime lastUpdatedDate = DateTime.now();
  // Subtract one day to get yesterday's date

  // Format the date if needed (optional)
  int yesterdaySteps=1;


  Map previousDaysSteps={}.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    requestActivityRecognitionPermission();
     loadStepsFromPreferences();
     // getYesterdaySteps();
     getPreviousDaysSteps();

  }

  Future<void> requestActivityRecognitionPermission() async {
    var status = await Permission.activityRecognition.status;
    if (status.isDenied || status.isRestricted || status.isPermanentlyDenied) {
      // Request the permission
      status = await Permission.activityRecognition.request();
    }

    if (status.isGranted) {
      // Permission is granted
      print("Activity recognition permission granted");
      initPlatformState();
    } else {
      // Permission is not granted
      print("Activity recognition permission denied");
    }
  }

  void onStepCount(StepCount event) {
    DateTime now = DateTime.now();
    if (now.day != lastUpdatedDate.day) {
      yesterdaySteps=currentDaySteps;
      saveStepsForPreviousDay();
      resetStepCount();
    }

    int newSteps = event.steps - lastCumulativeSteps;
    if (newSteps >= 0) {
      currentDaySteps += newSteps;
    } else {
      // Handle case where the step count might have reset
      currentDaySteps = event.steps;
    }

    lastCumulativeSteps = event.steps;
    lastUpdatedDate = now;

    steps.value = currentDaySteps.toString();
    calculateDistance(currentDaySteps);
    saveStepsToPreferences();
  }

  void calculateDistance(int steps) {
    double distanceInMeters = steps * stepLength;
    double distanceInKilometers = distanceInMeters / 1000.0;
    distance.value = distanceInKilometers;
  }

  void onPedestrianStatusChanged(PedestrianStatus event) {
    status.value = event.status;
  }

  void onPedestrianStatusError(error) {
    print('onPedestrianStatusError: $error');
    status.value = 'Pedestrian Status not available';
  }

  void onStepCountError(error) {
    print('onStepCountError: $error');
    steps.value = 'Step Count not available';
  }

  void initPlatformState() {
    _pedestrianStatusStream = Pedometer.pedestrianStatusStream;
    _pedestrianStatusStream
        .listen(onPedestrianStatusChanged)
        .onError(onPedestrianStatusError);

    stepCountStream = Pedometer.stepCountStream;
    stepCountStream?.listen(onStepCount).onError(onStepCountError);
  }
  Future<void> saveStepsForPreviousDay() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String key = DateFormat('yyyy-MM-dd').format(lastUpdatedDate.subtract(Duration(days: 1)));
    await prefs.setInt(key, yesterdaySteps);
    update();
  }
Future<void> getYesterdaySteps() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String yesterday = DateFormat('yyyy-MM-dd').format(DateTime.now().subtract(Duration(days: 1)));
print (yesterday);
  yesterdaySteps=prefs.getInt(yesterday)??0;
  print("saved");
}
  Future<void> saveStepsToPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('currentDaySteps', currentDaySteps);
    await prefs.setInt('lastCumulativeSteps', lastCumulativeSteps);
    await prefs.setString('lastUpdatedDate', lastUpdatedDate.toIso8601String());
  }
  Future<Map<String, int>> getPreviousDaysSteps() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    DateFormat dateFormat = DateFormat('yyyy-MM-dd');

    // Initialize a map to store steps data for the past 6 days
    Map<String, int> stepsData = {};

    for (int i = 1; i <= 6; i++) {
      String date = dateFormat.format(DateTime.now().subtract(Duration(days: i)));
      int? steps = prefs.getInt(date);

      if (steps != null) {
        stepsData[date] = steps;
      } else {
        stepsData[date] = 0;  // If no data found for that day, set steps to 0
      }
      previousDaysSteps=stepsData;
      print('Date: $date, Steps: ${stepsData[date]}');
    }
return stepsData;
    // Now you have the steps data for the past 6 days in the stepsData map
    print("Steps data for the past 6 days: $stepsData");
  }

  Future<void> loadStepsFromPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    currentDaySteps = prefs.getInt('currentDaySteps') ?? 0;
    lastCumulativeSteps = prefs.getInt('lastCumulativeSteps') ?? 0;
    String? lastUpdatedDateString = prefs.getString('lastUpdatedDate');
    if (lastUpdatedDateString != null) {
      lastUpdatedDate = DateTime.parse(lastUpdatedDateString);
    }
    steps.value = currentDaySteps.toString();
    calculateDistance(currentDaySteps);
  }

  void resetStepCount() {
    currentDaySteps = 0;
    steps.value = currentDaySteps.toString();
    calculateDistance(currentDaySteps);
    saveStepsToPreferences();
  }
}
