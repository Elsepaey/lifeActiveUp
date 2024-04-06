import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/progress_dialog_utils.dart';
import '../../model/user controller.dart';

class ProfileController extends GetxController{
  AppUserController userController = Get.find();

  bool emailEnabled=false;
  bool nameEnabled=false;
  bool birthEnabled=false;
  bool heightEnabled=false;
  bool weightEnabled=false;
  bool goalEnabled=false;
  bool levelEnabled=false;
  bool waterEnabled=false;
  bool sleepEnabled=false;


  RxBool nameEditing=false.obs;
  RxBool emailEditing=false.obs;
  RxBool birthEditing=false.obs;
  RxBool heightEditing=false.obs;
  RxBool weightEditing=false.obs;
  RxBool goalEditing=false.obs;
  RxBool levelEditing=false.obs;
  RxBool waterEditing=false.obs;
  RxBool sleepEditing=false.obs;


  CollectionReference users = FirebaseFirestore.instance.collection('users');
  QuerySnapshot? querySnapshot;
  DocumentSnapshot? doc;

  updateField(BuildContext context ,String fieldName,String newValue,)
  async {

    querySnapshot = await users
        .where('id', isEqualTo: userController.id)
        .get();
    doc = querySnapshot?.docs.first;
    DocumentReference documentReference = users.doc(doc?.id);
    await documentReference.update({
      fieldName: newValue,
    });
    userController.fullName=newValue;
    update();
nameEnabled=false;
nameEditing.value=false;



  }

}