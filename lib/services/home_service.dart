import 'package:flutter/material.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/change_page.dart';

class HomeService {
  newSale(BuildContext context){
    //deve chamar a api e enviar os resultados ao componente da outra tela
    //apos os devidos tratamento vai chamar o
    Navigator.of(context).pushReplacementNamed('/sale');
  }
}