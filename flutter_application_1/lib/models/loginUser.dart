class LoginUser {
  final String email;
  final String firstName;
  final String lastName;
  final String mobile;
  final String photo;
  final String password;

  LoginUser(
      {required this.email,
      required this.firstName,
      required this.lastName,
      required this.mobile,
      required this.photo,
      required this.password});

  factory LoginUser.fromJson(Map<String, dynamic> json) {
    return LoginUser(
      email: json['email'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      mobile: json['mobile'],
      photo: json['photo'],
      password: json['password'],
    );
  }
}
