import 'package:flutter/cupertino.dart';
import 'package:front_vendas_ambulante_flutter/model/auth_user.dart';
import 'package:front_vendas_ambulante_flutter/repository/user_repository.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/change_page_to_home.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LoginService {
  String _email = '';

  String _password = '';

  final storage = FlutterSecureStorage();

  String? _token;

  UserRepository userRepository = UserRepository();

  static LoginService instace = LoginService();

  validate(BuildContext context) async {
    http.Response response = await userRepository.routeLogin(
      new AuthUser(this._email, this._password),
    );

    if (response.body != null) {
      _token = response.body;

      await storage.write(key: 'authToken', value: _token);

      Navigator.of(context).pushReplacementNamed('/home');

      //Debugger
      print(_token);
    }
  }

  insertValue(String emailI, String passwordI) {
    _email = emailI;

    _password = passwordI;
  }

  set email(String email) {
    this._email = email;
  }

  set password(String password) {
    this._password = password;
  }
}
