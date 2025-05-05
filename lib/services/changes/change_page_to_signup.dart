import 'package:flutter/cupertino.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/interfaces/is_event_changes.dart';
import 'package:front_vendas_ambulante_flutter/services/singup_service.dart';

class ChangePageToSingup extends IsEventChange {

  BuildContext context;

  ChangePageToSingup(this.context);

  @override
  change() {
    SingupService().signupPage(context);
  }
}