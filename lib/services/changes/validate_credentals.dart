import 'package:flutter/cupertino.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/interfaces/is_event.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/interfaces/is_event_invocation.dart';
import 'package:front_vendas_ambulante_flutter/services/authentication_service.dart';

class ValidateCredentals extends IsEventInvocation{

  LoginService loginService = LoginService.instace;

  BuildContext _context;


  ValidateCredentals(this._context);

  @override
  void invocation() {
    loginService.validate(_context);
  }

  void setContext(BuildContext context){
    _context = context;
  }
}