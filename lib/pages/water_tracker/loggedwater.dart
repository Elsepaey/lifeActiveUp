import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/water_tracker/water_controller.dart';

import 'Addingdialoge.dart';

class ShowLoggedWater extends StatelessWidget {
  ShowLoggedWater({super.key, required this.checkedTime});
  final WaterController controller = Get.find();
  final DateTime checkedTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) =>
                        AddingWaterDialog(date: controller.date));
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Add intake +"),
                  ),
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: FutureBuilder<QuerySnapshot>(
                future: controller.getLoggedWater(checkedTime),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  }

                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return const Text('Loading....');
                    default:
                      return ListView.builder(
                          itemCount: snapshot.data?.docs.length,
                          itemBuilder: (context, index) {
                            DocumentSnapshot document =
                                snapshot.data!.docs[index];
                            return ListTile(
                              trailing: Text(
                                "${document['time']}",
                                style: TextStyle(fontSize: 12),
                              ),
                              title: Text("${document['quantity']} ml"),
                            );
                          });
                  }
                }),
          )
        ],
      ),
    );
  }
}
