class LoginService {
  String email = '';
  String password = '';

  static LoginService instace = LoginService();

  validate() {
    print('Email: $email, Password: $password');
  }

  insertValue(String emailI, String passwordI) {
    email = emailI;

    password = passwordI;
  }
}
