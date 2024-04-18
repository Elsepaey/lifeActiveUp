import 'package:get/get.dart';
import 'package:nutrifit/pages/sign_up/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/user controller.dart';
import '../pages/foodcalender/mealmodel.dart';

class DB {
  static AppUserController userController = Get.find();

  static Future<Object?> addUser(FirebaseUser user) async {
    // Call the user's CollectionReference to add a new user
    CollectionReference collection = FirebaseFirestore.instance
        .collection(FirebaseUser.collectionName)
        .withConverter<FirebaseUser>(
            fromFirestore: (doc, _) {
              return FirebaseUser.fromFirestore(doc.data()!);
            },
            toFirestore: (user, options) => user.toFirestore());
    var res = await (await collection.add(user)).get();
    return res.data();
  }
  static addMeal(Meal meal)
  async {
     await meal.saveToFirestore();
    // FirebaseFirestore.instance
    //     .collection("users")
    //     .doc(userController.id)
    //     .collection("Records")
    //     .doc(DateFormat('dd MMMM yyyy')
    //     .format(DateTime.now()))
    //     .set({
    //   "meal-name":
    //   DateFormat('hh:mm:ss a').format(DateTime.now()),
    //   "date": Timestamp.now()
    // });
  }
}
