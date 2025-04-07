import 'package:front_vendas_ambulante_flutter/services/changes/interfaces/is_event.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/interfaces/is_event_invocation.dart';
import 'package:front_vendas_ambulante_flutter/services/login_service.dart';

class ValidateCredentals extends IsEventInvocation{

  LoginService loginService = LoginService.instace;

  @override
  void invocation() {
    loginService.validate();
  }
}