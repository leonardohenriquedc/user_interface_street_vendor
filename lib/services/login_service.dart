import 'package:flutter/cupertino.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/change_page.dart';

class LoginService {
  String email = '';
  String password = '';

  static LoginService instace = LoginService();

  validate(BuildContext context) {
    print('Email: $email, Password: $password');

    if(email == 'leo' && password == '123'){
      Navigator.of(context).pushReplacementNamed('/home');
    }
  }

  insertValue(String emailI, String passwordI) {
    email = emailI;

    password = passwordI;
  }
}
