import 'dart:io';

import 'package:alarm/alarm.dart';
import 'package:alarm/model/alarm_settings.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/sleep_tracker/sleep_controller.dart';
import 'package:permission_handler/permission_handler.dart';

class SleepView extends StatelessWidget {
  SleepView({super.key});
  final SleepController controller = Get.put(SleepController());
  final List<String> weekdays = [
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
    'Sun'
  ];
  final alarmSettings = AlarmSettings(

    id: 43,
    androidFullScreenIntent: true,

    dateTime: DateTime.now().add(Duration(minutes: 1)),
    assetAudioPath: "assets/rings/iPhone.mp3",
    loopAudio: false,
    vibrate: false,
    volume: 0.8,
    fadeDuration: 3.0,
    notificationTitle: 'This is the title',
    notificationBody: 'This is the body',
    enableNotificationOnKill: Platform.isAndroid,


  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 260,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: 10,
                  minY: 2,
                  barTouchData: BarTouchData(
                    touchTooltipData: BarTouchTooltipData(
                        //  tooltipBgColor: Colors.blueGrey,
                        ),
                    touchCallback: (FlTouchEvent event, barTouchResponse) {},
                    handleBuiltInTouches: true,
                  ),
                  titlesData: FlTitlesData(
                      show: true,
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (double value, TitleMeta meta) {
                            const style = TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            );
                            Widget text;
                            switch (value.toInt()) {
                              case 0:
                                text = Text('Mon', style: style);
                                break;
                              case 1:
                                text = Text('Tue', style: style);
                                break;
                              case 2:
                                text = Text('Wed', style: style);
                                break;
                              case 3:
                                text = Text('Thu', style: style);
                                break;
                              case 4:
                                text = Text('Fri', style: style);
                                break;
                              case 5:
                                text = Text('Sat', style: style);
                                break;
                              case 6:
                                text = Text('Sun', style: style);
                                break;
                              default:
                                text = Text('', style: style);
                                break;
                            }
                            return SideTitleWidget(
                              axisSide: meta.axisSide,
                              child: text,
                            );
                          },
                          reservedSize: 28,
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (double value, TitleMeta meta) {
                            return Text("${value.toInt().toString()}h",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ));
                          },
                          interval: 1,
                          reservedSize: 32,
                        ),
                      ),
                      rightTitles: AxisTitles()),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  barGroups: [
                    BarChartGroupData(
                      x: 0,
                      barRods: [
                        BarChartRodData(
                          toY: 8,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 1,
                      barRods: [
                        BarChartRodData(
                          toY: 10,
                          color: Colors.lightBlueAccent,
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 2,
                      barRods: [
                        BarChartRodData(
                          toY: 6,
                          color: Colors.lightBlueAccent,
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 3,
                      barRods: [
                        BarChartRodData(
                          toY: 7,
                          color: Colors.lightBlueAccent,
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 4,
                      barRods: [
                        BarChartRodData(
                          toY: 5,
                          color: Colors.lightBlueAccent,
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 5,
                      barRods: [
                        BarChartRodData(
                          toY: 9,
                          color: Colors.lightBlueAccent,
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 6,
                      barRods: [
                        BarChartRodData(
                          toY: 4,
                          color: Colors.lightBlueAccent,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                checkAndroidScheduleExactAlarmPermission();
                await Alarm.setNotificationOnAppKillContent("njn", "my alarm");
                await Alarm.set(alarmSettings: alarmSettings


                );

print("set");
              },
              child: Text("set alarm")),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                  Row(
                    children: [
                      Icon(Icons.bedtime_off_outlined),
                      SizedBox(width: 15,),
                      Column(
                        children: [
                          Text("BedTime 11:00pm"),
                          Text("in 6 hours 25 minuter")
                        ],
                      ),
                    ],
                  ),
                  Switch(value: true, onChanged: (value){})
                ],),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Row(
                      children: [
                        Icon(Icons.alarm),
                        SizedBox(width: 15,),
                        Column(
                          children: [
                            Text("WakeUp Alarm 7:00am"),
                            Text("in 6 hours 25 minuter")
                          ],
                        ),
                      ],
                    ),
                    Switch(value: true, onChanged: (value){})
                  ],),
              ),
            ),
          )

        ],
      ),
    );
  }
  Future<void> checkAndroidScheduleExactAlarmPermission() async {
    final status = await Permission.scheduleExactAlarm.status;
    print('Schedule exact alarm permission: $status.');
    if (status.isDenied) {
      print('Requesting schedule exact alarm permission...');
      final res = await Permission.scheduleExactAlarm.request();
      print('Schedule exact alarm permission ${res.isGranted ? '' : 'not'} granted.');
    }
  }
}
