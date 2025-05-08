import 'package:front_vendas_ambulante_flutter/services/changes/interfaces/is_event_invocation.dart';
import 'package:front_vendas_ambulante_flutter/services/singup_service.dart';

class StartCreateAccount extends IsEventInvocation{

  SignupService singupService;

  StartCreateAccount(this.singupService);

  @override
  invocation() {
    singupService.createAccount();
  }
}