import 'package:flutter/material.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/change_page_to_home.dart';

class HomeService {
  newSalePage(BuildContext context){
    Navigator.of(context).pushReplacementNamed('/sale');
  }
}