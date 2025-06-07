import 'package:flutter/material.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/interfaces/is_event_changes.dart';
import 'package:front_vendas_ambulante_flutter/services/home_service.dart';

class ChangePageToHome implements IsEventChange {
  BuildContext context;

  ChangePageToHome(this.context);

  @override
  change() {
    HomeService().newSalePage(context);
  }
}

