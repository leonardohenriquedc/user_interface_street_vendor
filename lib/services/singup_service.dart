import 'package:flutter/cupertino.dart';

class SingupService {

   String? name;

   String? email;

   String? password;

   static SingupService instace = SingupService();

  signupPage(BuildContext context){
    Navigator.of(context).pushNamed('/signup');
  }

  createAccount(){
    
  }
}