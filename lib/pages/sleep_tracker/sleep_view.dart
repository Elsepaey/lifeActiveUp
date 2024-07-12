import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:nutrifit/pages/sleep_tracker/sleep_controller.dart';

import '../../core/themes.dart';

class SleepView extends StatelessWidget {
  SleepView({super.key});
  final SleepController controller =
      Get.put(SleepController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    List<String> getLast7Days() {
      final DateFormat formatter = DateFormat('E');
      final DateTime now = DateTime.now();
      return List.generate(7, (index) {
        final DateTime day = now.subtract(Duration(days: 6 - index));
        return formatter.format(day);
      });
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
              height: 260,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GetX<SleepController>(
                    builder: (controller) => SizedBox(
                          height: 260,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: BarChart(
                              BarChartData(
                                alignment: BarChartAlignment.spaceAround,
                                maxY: 12,
                                minY: 0,
                                barTouchData: BarTouchData(
                                  touchTooltipData: BarTouchTooltipData(
                                      //  tooltipBgColor: Colors.blueGrey,
                                      ),
                                  touchCallback:
                                      (FlTouchEvent event, barTouchResponse) {},
                                  handleBuiltInTouches: true,
                                ),
                                titlesData: FlTitlesData(
                                  show: true,
                                  bottomTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      showTitles: true,
                                      getTitlesWidget:
                                          (double value, TitleMeta meta) {
                                        TextStyle style = const TextStyle(
                                          color: Colors.indigo,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        );
                                        List<String> days = getLast7Days();
                                        Widget text = Text(days[value.toInt()],
                                            style: style);
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
                                      getTitlesWidget:
                                          (double value, TitleMeta meta) {
                                        return Text("${value.toInt()} h",
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                            ));
                                      },
                                      interval: 1,
                                      reservedSize: 50,
                                    ),
                                  ),
                                  rightTitles: const AxisTitles(),
                                ),
                                borderData: FlBorderData(
                                  show: false,
                                ),
                                barGroups: [
                                  BarChartGroupData(
                                    x: 0,
                                    barRods: [
                                      BarChartRodData(
                                        toY: controller.previousDaysSleep[
                                                DateFormat('yyyy-MM-dd').format(
                                                    DateTime.now().subtract(
                                                        const Duration(
                                                            days: 6)))] ??
                                            0.0,
                                        color: MyTheme.primary_color,
                                      ),
                                    ],
                                  ),
                                  BarChartGroupData(
                                    x: 1,
                                    barRods: [
                                      BarChartRodData(
                                        toY: controller.previousDaysSleep[
                                                DateFormat('yyyy-MM-dd').format(
                                                    DateTime.now().subtract(
                                                        const Duration(
                                                            days: 5)))] ??
                                            0,
                                        color: MyTheme.primary_color,
                                      ),
                                    ],
                                  ),
                                  BarChartGroupData(
                                    x: 2,
                                    barRods: [
                                      BarChartRodData(
                                        toY: controller.previousDaysSleep[
                                                DateFormat('yyyy-MM-dd').format(
                                                    DateTime.now().subtract(
                                                        const Duration(
                                                            days: 4)))] ??
                                            0,
                                        color: MyTheme.primary_color,
                                      ),
                                    ],
                                  ),
                                  BarChartGroupData(
                                    x: 3,
                                    barRods: [
                                      BarChartRodData(
                                        toY: controller.previousDaysSleep[
                                                DateFormat('yyyy-MM-dd').format(
                                                    DateTime.now().subtract(
                                                        const Duration(
                                                            days: 3)))] ??
                                            0,
                                        color: MyTheme.primary_color,
                                      ),
                                    ],
                                  ),
                                  BarChartGroupData(
                                    x: 4,
                                    barRods: [
                                      BarChartRodData(
                                        toY: controller.previousDaysSleep[
                                                DateFormat('yyyy-MM-dd').format(
                                                    DateTime.now().subtract(
                                                        const Duration(
                                                            days: 2)))] ??
                                            0,
                                        color: MyTheme.primary_color,
                                      ),
                                    ],
                                  ),
                                  BarChartGroupData(
                                    x: 5,
                                    barRods: [
                                      BarChartRodData(
                                        toY: controller.previousDaysSleep[
                                                DateFormat('yyyy-MM-dd').format(
                                                    DateTime.now().subtract(
                                                        const Duration(
                                                            days: 1)))] ??
                                            0,
                                        color: MyTheme.primary_color,
                                      ),
                                    ],
                                  ),
                                  BarChartGroupData(
                                    x: 6,
                                    barRods: [
                                      BarChartRodData(
                                        toY: controller.todayIntake.value,
                                        color: MyTheme.primary_color,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8),
            child: GetX<SleepController>(
                builder: (controller) => controller.todayIntake.value == 0.0
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text("press to log"),
                          const Icon(Icons.arrow_forward_outlined),
                          ElevatedButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) {
                                    return AlertDialog(
                                      title: const Text("Add your intake"),
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 38,
                                            width: 200,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 16.0),
                                            decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              boxShadow: const [
                                                BoxShadow(
                                                  color: Colors.black26,
                                                  blurRadius: 6.0,
                                                  offset: Offset(0, 2),
                                                ),
                                              ],
                                            ),
                                            child: TextField(
                                              controller: controller
                                                  .sleepDurationController,
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: const InputDecoration(
                                                hintText:
                                                    'Enter hours of sleep',
                                                border: InputBorder.none,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      actionsAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      actions: [
                                        TextButton(
                                          child: const Text('Cancel'),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                        TextButton(
                                          child: const Text('Confirm'),
                                          onPressed: () {
                                            controller.saveTodaySleep();
                                            controller.update();
                                            Get.back();
                                            //
                                          },
                                        ),
                                      ],
                                    );
                                  });
                            },
                            child: const Text(
                              "Let's Log your Sleep ",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "Last Night Sleep :",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "${controller.todayIntake} hours",
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
          ),
          const SizedBox(
            height: 22,
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
                        const Icon(Icons.bedtime_off_outlined),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            GetX<SleepController>(
                                builder: (controller) => controller.sleepAlarm
                                    ? Column(
                                        children: [
                                          Text(
                                            'Sleep Time: ${controller.sleepTime.value.format(context)}',
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          Text(
                                            'Left Time: ${controller.sleepCountdown.value}',
                                            style:
                                                const TextStyle(fontSize: 16),
                                          )
                                        ],
                                      )
                                    : InkWell(
                                        onTap: () =>
                                            controller.selectSleepTime(context),
                                        child: Column(
                                          children: [
                                            Text(
                                              'Sleep Time: ${controller.sleepTime.value.format(context)}',
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Text(
                                              'Left Time: ${controller.sleepCountdown.value}',
                                              style:
                                                  const TextStyle(fontSize: 16),
                                            )
                                          ],
                                        ),
                                      )),
                          ],
                        ),
                      ],
                    ),
                    GetBuilder<SleepController>(
                        builder: (controller) => Switch(
                            activeColor: Colors.teal,
                            value: controller.sleepAlarm,
                            onChanged: (value) {
                              if (value == true) {
                                controller.sleepAlarm = value;
                                controller.setAlarm(id: 1);
                              } else {
                                controller.sleepAlarm = value;
                                controller.cancelAlarm(id: 1);
                              }
                            }))
                  ],
                ),
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
                        const Icon(Icons.alarm),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            GetX<SleepController>(
                                builder: (controller) => controller.wakeupAlarm
                                    ? Column(
                                        children: [
                                          Text(
                                            'Wakeup Time: ${controller.wakeupTime.value.format(context)}',
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          Text(
                                            'Left Time: ${controller.wakeupCountdown.value}',
                                            style:
                                                const TextStyle(fontSize: 16),
                                          )
                                        ],
                                      )
                                    : InkWell(
                                        onTap: () => controller
                                            .selectWakeupTime(context),
                                        child: Column(
                                          children: [
                                            Text(
                                              'Wakeup Time: ${controller.wakeupTime.value.format(context)}',
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Text(
                                              'Left Time: ${controller.wakeupCountdown.value}',
                                              style:
                                                  const TextStyle(fontSize: 16),
                                            )
                                          ],
                                        ),
                                      )),
                          ],
                        ),
                      ],
                    ),
                    GetBuilder<SleepController>(
                        builder: (controller) => Switch(
                            activeColor: Colors.teal,
                            value: controller.wakeupAlarm,
                            onChanged: (value) {
                              if (value == true) {
                                controller.wakeupAlarm = value;
                                controller.setAlarm(id: 2);
                              } else {
                                controller.wakeupAlarm = value;
                                controller.cancelAlarm(id: 2);
                              }
                            }))
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
              height: 170,
              child: Image(image: AssetImage("assets/images/slept.png")))
        ],
      ),
    );
  }
}
