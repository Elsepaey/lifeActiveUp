import 'package:get/get.dart';
import 'package:pedometer/pedometer.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class StepController extends GetxController {
  Stream<StepCount>? stepCountStream;
  late Stream<PedestrianStatus> _pedestrianStatusStream;

  RxString status = '?'.obs;
  RxString steps = ''.obs;
  RxDouble distance = 0.0.obs;  // Distance in kilometers

  final double stepLength = 0.78; // Average step length in meters

  @override
  void onInit() {
    super.onInit();
    requestActivityRecognitionPermission();
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
    print(event);
    steps.value = event.steps.toString();
    calculateDistance(int.parse(steps.value));
    saveStepsData(int.parse(steps.value));
    print("steps is   $steps");
  }

  void calculateDistance(int steps) {
    double distanceInMeters = steps * stepLength;
    double distanceInKilometers = distanceInMeters / 1000.0;
    distance.value = distanceInKilometers;
  }

  void onPedestrianStatusChanged(PedestrianStatus event) {
    print(event);
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

    loadStepsData();
  }

  Future<void> saveStepsData(int steps) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('steps', steps);
    prefs.setString('lastSavedDate', DateTime.now().toIso8601String());
  }

  Future<void> loadStepsData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? lastSavedDateStr = prefs.getString('lastSavedDate');
    DateTime now = DateTime.now();

    if (lastSavedDateStr != null) {
      DateTime lastSavedDate = DateTime.tryParse(lastSavedDateStr) ?? now;

      if (_isNewDay(lastSavedDate, now)) {
        // Reset steps for a new day
        steps.value = '0';
        saveStepsData(0);
      } else {
        steps.value = (prefs.getInt('steps') ?? 0).toString();
      }
    } else {
      steps.value = '0';
      saveStepsData(0);
    }
    calculateDistance(int.parse(steps.value));
  }

  bool _isNewDay(DateTime lastSavedDate, DateTime now) {
    return lastSavedDate.day != now.day ||
        lastSavedDate.month != now.month ||
        lastSavedDate.year != now.year;
  }
}
