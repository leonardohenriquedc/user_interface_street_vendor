import 'package:flutter/material.dart';
import 'package:front_vendas_ambulante_flutter/repository/user_repository.dart';
import 'package:http/http.dart' as http;

import '../model/new_user.dart';

class SignupService {

   late String _name;

   late String _email;

   late String _password;

   late BuildContext _context;

   UserRepository userRepository = UserRepository();

   SignupService(BuildContext context, [String? name, String? email, String? password]) {
     _name = name ?? '';
     _email = email ?? '';
     _password = password ?? '';
     _context = context;
   }


  signupPage(BuildContext context){
    Navigator.of(context).pushNamed('/signup');
  }


  createAccount() async {
    Newuser newUser = Newuser(_name, _email, _password);

    http.Response response = await userRepository.routeCreateUser(newUser);

    if(response.body != null){
      Navigator.of(_context).pushReplacementNamed('/');
    }
  }

   BuildContext get context => _context;

  set context(BuildContext value) {
    _context = value;
  }

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}