import 'package:front_vendas_ambulante_flutter/services/changes/interfaces/is_event.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/interfaces/is_event_insert.dart';
import 'package:front_vendas_ambulante_flutter/services/login_service.dart';

class InsertCredentials implements IsEventInsert{
  LoginService loginPage = LoginService.instace;

  @override
  void insert(String value, field) {

    switch(field){
      case 'email': loginPage.email = value;

      case 'password': loginPage.password = value;
    }
  }
}

