class UserModel {
  final String id;
  final String name;
  final String gender;
  final String email;
  final int age;

  UserModel({
    required this.id,
    required this.name,
    required this.gender,
    required this.email,
    required this.age,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      gender: json['gender'],
      email: json['email'],
      age: json['age'],
    );
  }
}
