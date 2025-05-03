import 'package:flutter/cupertino.dart';
import 'package:front_vendas_ambulante_flutter/model/auth_user.dart';
import 'package:front_vendas_ambulante_flutter/repository/user_repository.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/change_page.dart';
import 'package:http/http.dart' as http;

class LoginService {
  String email = '';
  String password = '';

  String? token;

  UserRepository userRepository = UserRepository();

  static LoginService instace = LoginService();

  validate(BuildContext context) async {

    http.Response response = await userRepository.routeLogin(new AuthUser(this.email, this.password));

    if(response.body != null) {
      token = response.body;

      Navigator.of(context).pushReplacementNamed('/home');

      print(token);
    }
  }

  insertValue(String emailI, String passwordI) {
    email = emailI;

    password = passwordI;
  }
}
