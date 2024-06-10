import 'dart:async';
import 'dart:io';

import 'package:alarm/alarm.dart';
import 'package:alarm/model/alarm_settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SleepController extends GetxController {

  bool sleepAlarm = false;
  bool wakeupAlarm = false;
TextEditingController sleepDurationController=TextEditingController();
  var sleepCountdown = "".obs;
  var wakeupCountdown = "".obs;
  Map previousDaysSleep = {}.obs;
  RxDouble todayIntake = 0.0.obs;
  @override
  Future<void> onInit() async {
    super.onInit();
    getPreviousDaysSleep();
    loadTimes();
    _startTimer();
  }

  var sleepTime = const TimeOfDay(hour: 22, minute: 0).obs; // default 10:00 PM
  var wakeupTime = const TimeOfDay(hour: 6, minute: 0).obs; // default 6:00 AM

  Future<void> loadTimes() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    sleepTime.value = TimeOfDay(
      hour: prefs.getInt('sleepHour') ?? 22,
      minute: prefs.getInt('sleepMinute') ?? 0,
    );
    wakeupTime.value = TimeOfDay(
      hour: prefs.getInt('wakeupHour') ?? 6,
      minute: prefs.getInt('wakeupMinute') ?? 0,
    );
    sleepAlarm = prefs.getBool('sleepAlarm') ?? false;
    wakeupAlarm = prefs.getBool('wakeupAlarm') ?? false;

    updateCountdowns();
  }

  Future<void> saveTimes() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('sleepHour', sleepTime.value.hour);
    prefs.setInt('sleepMinute', sleepTime.value.minute);
    prefs.setInt('wakeupHour', wakeupTime.value.hour);
    prefs.setInt('wakeupMinute', wakeupTime.value.minute);
    prefs.setBool('sleepAlarm', sleepAlarm);
    prefs.setBool('wakeupAlarm', wakeupAlarm);
  }

  Future<void> selectSleepTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: sleepTime.value,
    );
    if (picked != null && picked != sleepTime.value) {
      sleepTime.value = picked;
    }
  }

  Future<void> selectWakeupTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: wakeupTime.value,
    );
    if (picked != null && picked != wakeupTime.value) {
      wakeupTime.value = picked;
    }
  }

  void updateCountdowns() {
    sleepCountdown.value = _calculateTimeDifference(sleepTime.value);
    wakeupCountdown.value = _calculateTimeDifference(wakeupTime.value);
  }

  String _calculateTimeDifference(TimeOfDay targetTime) {
    final now = DateTime.now();
    final targetDateTime = DateTime(
      now.year,
      now.month,
      now.day,
      targetTime.hour,
      targetTime.minute,
    );

    final difference = targetDateTime.isBefore(now)
        ? targetDateTime.add(const Duration(days: 1)).difference(now)
        : targetDateTime.difference(now);

    final hours = difference.inHours;
    final minutes = difference.inMinutes % 60;
    return '${hours}h ${minutes}m';
  }

  void _startTimer() {
    Timer.periodic(const Duration(minutes: 1), (timer) {
      updateCountdowns();
    });
  }

  Future<void> setAlarm({required int id}) async {
    checkAndroidScheduleExactAlarmPermission();
    await Alarm.setNotificationOnAppKillContent("njn", "my alarm");
    if(Alarm.getAlarm(id) != null)
      {
        Alarm.stop(id);
        await Alarm.set(
            alarmSettings: AlarmSettings(
              id: id,
              androidFullScreenIntent: true,
              dateTime: (DateTime.now().add(Duration(
                  hours: sleepTime.value.hour, minutes: sleepTime.value.minute)))
                  .subtract(Duration(
                  hours: DateTime.now().hour, minutes: DateTime.now().minute)),
              assetAudioPath: "assets/rings/iPhone.mp3",
              loopAudio: false,
              vibrate: true,
              volume: 1,
              fadeDuration: 3.0,
              notificationTitle: 'This is the title',
              notificationBody: 'This is the body',
              enableNotificationOnKill: Platform.isAndroid,
            ));

      }
    await Alarm.set(
        alarmSettings: AlarmSettings(
      id: id,
      androidFullScreenIntent: true,
      dateTime: (DateTime.now().add(Duration(
              hours: sleepTime.value.hour, minutes: sleepTime.value.minute)))
          .subtract(Duration(
              hours: DateTime.now().hour, minutes: DateTime.now().minute)),
      assetAudioPath: "assets/rings/iPhone.mp3",
      loopAudio: false,
      vibrate: true,
      volume: 1,
      fadeDuration: 3.0,
      notificationTitle: 'This is the title',
      notificationBody: 'This is the body',
      enableNotificationOnKill: Platform.isAndroid,
    ));
    saveTimes();
    updateCountdowns();
    update();
  }

  cancelAlarm({required int id}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await Alarm.stop(id);
    if (id == 1) {
      sleepCountdown.value = '00';
    } else {
      wakeupCountdown.value = '00';
    }

    prefs.setBool('sleepAlarm', sleepAlarm);
    prefs.setBool('wakeupAlarm', wakeupAlarm);
    update();
  }

  Future<void> checkAndroidScheduleExactAlarmPermission() async {
    final status = await Permission.scheduleExactAlarm.status;
    print('Schedule exact alarm permission: $status.');
    if (status.isDenied) {
      print('Requesting schedule exact alarm permission...');
      final res = await Permission.scheduleExactAlarm.request();
      print(
          'Schedule exact alarm permission ${res.isGranted ? '' : 'not'} granted.');
    }
  }

  Future<Map<String, double>> getPreviousDaysSleep() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    DateFormat dateFormat = DateFormat('yyyy-MM-dd');

    // Initialize a map to store sleep data for the past 6 days
    Map<String, double> sleepIntakes = {};
todayIntake.value=( prefs.getDouble("${dateFormat.format(DateTime.now())}sleep"))?? 0.0;
    for (int i = 1; i <= 6; i++) {
      String date =
          "${dateFormat.format(DateTime.now().subtract(Duration(days: i)))}sleep";
      double? sleep = prefs.getDouble(date);

      if (sleep != null) {
        sleepIntakes[date] = sleep;
      } else {
        sleepIntakes[date] = 0; // If no data found for that day, set sleep to 0
      }
      print('Date: $date, Steps: ${sleepIntakes[date]}');
    }
    previousDaysSleep = sleepIntakes;
    print(previousDaysSleep);
    return sleepIntakes;
    // Now you have the sleep data for the past 6 days in the sleepIntakes map
    print("Steps data for the past 6 days: $sleepIntakes");
  }
  Future<void> saveTodaySleep()
  async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    DateFormat dateFormat = DateFormat('yyyy-MM-dd');
    String date =
        "${dateFormat.format(DateTime.now())}sleep";
    await prefs.setDouble(date,double.parse(sleepDurationController.text));
    todayIntake.value=double.parse(sleepDurationController.text);
    update();

  }
}
