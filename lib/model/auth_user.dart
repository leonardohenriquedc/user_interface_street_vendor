class AuthUser {
  String email = '';

  String password = '';

  AuthUser(this.email, this.password);

  AuthUser.fromJson(Map<String, dynamic> json)
    : email = json['email'],
      password = json['password'];

  Map<String, dynamic> toJson(){
    return {
      'email': this.email,
      'password': this.password
    };
  }
}