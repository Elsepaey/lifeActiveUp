import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:nutrifit/core/themes.dart';
import 'package:nutrifit/pages/stepcounter/step_counter_controller.dart';

class StepCounter extends StatelessWidget {
  StepCounter({super.key});
  StepController controller = Get.find();
  TextEditingController textEditingController = TextEditingController();

  List<String> getLast7Days() {
    final DateFormat formatter = DateFormat('E');
    final DateTime now = DateTime.now();
    return List.generate(7, (index) {
      final DateTime day = now.subtract(Duration(days: 6 - index));
      return formatter.format(day);
    });
  }

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

    TextEditingController textEditingController = TextEditingController();
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Today Steps"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            GetX<StepController>(
                builder: (controller) => SizedBox(
                  height: 260,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BarChart(
                      BarChartData(
                        alignment: BarChartAlignment.spaceAround,
                        maxY: 12000,
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
                                  color:Colors.indigo,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                );
                                List<String> days = getLast7Days();
                                Widget text =
                                Text(days[value.toInt()], style: style);
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
                                return Text("${value.toInt()}",
                                    textAlign: TextAlign.center,
                                    style:  const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ));
                              },
                              interval: 1000,
                              reservedSize: 60,
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
                                toY: controller.previousDaysSteps[
                                DateFormat('yyyy-MM-dd').format(
                                    DateTime.now().subtract(
                                        const Duration(days: 6)))]
                                    .toDouble(),
                                color: MyTheme.primary_color,
                              ),
                            ],
                          ),
                          BarChartGroupData(
                            x: 1,
                            barRods: [
                              BarChartRodData(
                                toY: controller.previousDaysSteps[
                                DateFormat('yyyy-MM-dd').format(
                                    DateTime.now().subtract(
                                        const Duration(days: 5)))]
                                    .toDouble(),
                                color: MyTheme.primary_color,
                              ),
                            ],
                          ),
                          BarChartGroupData(
                            x: 2,
                            barRods: [
                              BarChartRodData(
                                toY: controller.previousDaysSteps[
                                DateFormat('yyyy-MM-dd').format(
                                    DateTime.now().subtract(
                                        const Duration(days: 4)))]
                                    .toDouble(),
                                color: MyTheme.primary_color,
                              ),
                            ],
                          ),
                          BarChartGroupData(
                            x: 3,
                            barRods: [
                              BarChartRodData(
                                toY: controller.previousDaysSteps[
                                DateFormat('yyyy-MM-dd').format(
                                    DateTime.now().subtract(
                                        const Duration(days: 3)))]
                                    .toDouble(),
                                color: MyTheme.primary_color,
                              ),
                            ],
                          ),
                          BarChartGroupData(
                            x: 4,
                            barRods: [
                              BarChartRodData(
                                toY: controller.previousDaysSteps[
                                DateFormat('yyyy-MM-dd').format(
                                    DateTime.now().subtract(
                                        const Duration(days: 2)))]
                                    .toDouble(),
                                color: MyTheme.primary_color,
                              ),
                            ],
                          ),
                          BarChartGroupData(
                            x: 5,
                            barRods: [
                              BarChartRodData(
                                toY: controller.previousDaysSteps[
                                DateFormat('yyyy-MM-dd').format(
                                    DateTime.now().subtract(
                                        const Duration(days: 1)))]
                                    .toDouble(),
                                color: MyTheme.primary_color,
                              ),
                            ],
                          ),
                          BarChartGroupData(
                            x: 6,
                            barRods: [
                              BarChartRodData(
                                toY: double.parse(controller.steps.value),
                                color: MyTheme.primary_color,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
            const SizedBox(
              height: 29,
            ),
            GetX<StepController>(
              builder: (controller) => SizedBox(
                height: 150.0,
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: SizedBox(
                        width: 170,
                        height: 150,
                        child: CircularProgressIndicator(
                          color: Colors.indigo,
                          backgroundColor: Colors.grey.shade300,
                          strokeWidth: 8,
                          value: int.parse(controller.steps.value) / 8000,
                        ),
                      ),
                    ),
                    Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Today Steps"),
                        Text(controller.steps.value)
                      ],
                    )),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(12),
              height: screenHeight / 7,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: const Offset(0, 1), // changes position of shadow
                    ),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Summary",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Obx(() => Text(
                                ' ${controller.distance.value.toStringAsFixed(2)} km',
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )),
                          const Text("Distance"),
                        ],
                      ),
                      Container(
                        width: 2,
                        height: 40,
                        color: Colors.black,
                      ),
                      Column(
                        children: [
                          Obx(() => Text(
                                'Steps: ${controller.steps.value}',
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )),
                          const Text("Steps Covered"),
                        ],
                      ),
                      Container(
                        width: 2,
                        height: 40,
                        color: Colors.black,
                      ),
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Obx(() => Text(
                            ' ${controller.caloriesBurned.value.toStringAsFixed(2)} ',
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )),
                          Text("Calories Burned")
                        ],
                      )

                    ],
                  ),

                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(12),
              height: screenHeight / 7,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: const Offset(0, 1), // changes position of shadow
                    ),
                  ]),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Goal",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Steps Goal"),
                      Text(
                        "8000 steps",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
