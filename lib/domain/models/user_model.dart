class UserModel {
  final String name;
  final String email;
  final String? userName;

  UserModel({required this.name, required this.email, this.userName});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      userName: json['username'],
    );
  }
}
