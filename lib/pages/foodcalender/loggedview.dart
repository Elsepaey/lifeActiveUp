import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nutrifit/pages/mealLogDetails/meallogdetails.dart';

import 'foodlogcontroller.dart';

class ShowLoggedMeals extends StatelessWidget {
  ShowLoggedMeals(
      {super.key, required this.mealType, required this.checkedTime});
  final FoodLogController controller = Get.find();

  final String mealType;
  final DateTime checkedTime;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Add your $mealType"),
          InkWell(
              onTap: () {
                Get.to(() => MealLogDetails(
                      mealType: mealType,
                      checkedTime: checkedTime,
                    ));
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Add meal +"),
                  ),
                ),
              )),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: FutureBuilder<QuerySnapshot>(
                future: controller.getLoggedMeals(mealType),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  }

                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return Text('Loading....');
                    default:
                      return ListView.builder(
                          itemCount: snapshot.data?.docs.length,
                          itemBuilder: (context, index) {
                            DocumentSnapshot document =
                                snapshot.data!.docs[index];
                            return ListTile(
                              title: Text(document['mealName']),
                              subtitle: Text("${document['calories']}"),
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
