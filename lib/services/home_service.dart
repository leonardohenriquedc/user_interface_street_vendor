import 'package:flutter/material.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/change_page.dart';

class HomeService {
  newSale(BuildContext context){


    
    Navigator.of(context).pushReplacementNamed('/sale');
  }
}