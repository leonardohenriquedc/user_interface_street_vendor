import 'package:front_vendas_ambulante_flutter/services/changes/interfaces/is_event.dart';

abstract class IsEventInsert implements IsEvent{

  void insert(String value, String field);
}