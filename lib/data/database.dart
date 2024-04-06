import 'package:nutrifit/view/sign_up/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DB {
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
}
