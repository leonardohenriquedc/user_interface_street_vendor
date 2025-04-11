import 'package:flutter/material.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/interfaces/is_event_changes.dart';
import 'package:front_vendas_ambulante_flutter/services/home_service.dart';

class ChangePage implements IsEventChange {

  BuildContext context;

  ChangePage(this.context);

  @override
  change() {
    HomeService().newSale(context);
  }
}