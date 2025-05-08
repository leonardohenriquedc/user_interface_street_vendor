import 'package:front_vendas_ambulante_flutter/services/changes/interfaces/is_event_insert.dart';
import 'package:front_vendas_ambulante_flutter/services/singup_service.dart';

class InsertCredentialsToSinguping extends IsEventInsert {

  SignupService singupService;

  InsertCredentialsToSinguping(this.singupService);

  @override
  void insert(String value, String field) {
     switch(field){
       case 'name': singupService.name = value;
       case 'email': singupService.email = value;
       case 'password': singupService.password = value;
     }
  }
}