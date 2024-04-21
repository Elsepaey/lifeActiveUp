import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseUser {
  String? id;
  String? fullName;
  String? email;
  String? password;
  String? gender;
  String? height;
  String? weight;

  String? dateOfBirth;
  List<dynamic>? diseasesList;
  List<dynamic>? allergiesList;
  String? fitnessLevel = '';
  String? fitnessGoal = '';
  String? sleepIntake = '';
  String? waterIntake = '';

  FirebaseUser(
      {this.id,
      this.fullName,
      this.email,
      this.password,
      this.gender,
        this.height,this.weight,
      this.dateOfBirth,
      this.diseasesList,
      this.allergiesList,
      this.fitnessLevel,
      this.fitnessGoal,
      this.sleepIntake,
      this.waterIntake});

  FirebaseUser.fromFirestore(Map<String, dynamic> snapshot)
      : this(
          id: snapshot['id'],
          fullName: snapshot["fullname"],
          email: snapshot["email"],
          password: snapshot["password"],
          gender: snapshot["gender"],
          height: snapshot["height"],
          weight: snapshot["weight"],
          dateOfBirth: snapshot["dateOfBirth"],
          diseasesList: List.from(snapshot["diseasesList"]),
          allergiesList: List.from(snapshot["allergiesList"]),
          fitnessLevel: snapshot['fitnessLevel'],
          fitnessGoal: snapshot['fitnessGoal'],
          sleepIntake: snapshot['sleepIntake'],
          waterIntake: snapshot['waterIntake'],
        );

  static String collectionName = "users";

  // Map<String, dynamic> toFirestore() {
  //   return {
  //     "id": id,
  //     "fullname": fullName,
  //     "email": email,
  //     "password": password,
  //     "gender": gender,
  //     "height":height,
  //     "weight":weight,
  //     "dateOfBirth": dateOfBirth,
  //     "diseasesList": diseasesList,
  //     "allergiesList": allergiesList,
  //     "fitnessLevel": fitnessLevel,
  //     "fitnessGoal": fitnessGoal,
  //     "sleepIntake": sleepIntake,
  //     "waterIntake": waterIntake
  //   };
  // }
  Future<Object?> saveToFirestore() async {
    await FirebaseFirestore.instance
        .collection(FirebaseUser.collectionName).doc(id).set({
      "id": id,
      "fullname": fullName,
      "email": email,
      "password": password,
      "gender": gender,
      "height":height,
      "weight":weight,
      "dateOfBirth": dateOfBirth,
      "diseasesList": diseasesList,
      "allergiesList": allergiesList,
      "fitnessLevel": fitnessLevel,
      "fitnessGoal": fitnessGoal,
      "sleepIntake": sleepIntake,
      "waterIntake": waterIntake
    });
   var res=FirebaseFirestore.instance.collection(FirebaseUser.collectionName).doc(id).get();
    return res;
  }
}
