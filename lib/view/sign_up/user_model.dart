class FirebaseUser {
  String? id;
  String? fullName;
  String? email;
  String? password;
  String? gender;
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
          dateOfBirth: snapshot["dateOfBirth"],
          diseasesList: List.from(snapshot["diseasesList"]),
          allergiesList: List.from(snapshot["allergiesList"]),
          fitnessLevel: snapshot['fitnessLevel'],
          fitnessGoal: snapshot['fitnessGoal'],
          sleepIntake: snapshot['sleepIntake'],
          waterIntake: snapshot['waterIntake'],
        );

  static String collectionName = "users";

  Map<String, dynamic> toFirestore() {
    return {
      "id": id,
      "fullname": fullName,
      "email": email,
      "password": password,
      "gender": gender,
      "dateOfBirth": dateOfBirth,
      "diseasesList": diseasesList,
      "allergiesList": allergiesList,
      "fitnessLevel": fitnessLevel,
      "fitnessGoal": fitnessGoal,
      "sleepIntake": sleepIntake,
      "waterIntake": waterIntake
    };
  }
}
