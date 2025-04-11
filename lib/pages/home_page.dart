import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front_vendas_ambulante_flutter/components/buttons/text_button_change.dart';
import 'package:front_vendas_ambulante_flutter/components/buttons/text_button_enter.dart';
import 'package:front_vendas_ambulante_flutter/components/widgets/image_fundo.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/change_page.dart';
import 'package:front_vendas_ambulante_flutter/services/home_service.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage>{

  Widget buttonNewSale(){
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Container(
        color: Colors.black,
        child: TextButtonChange(labelText: 'Nova Venda', event: ChangePage(context),),
      ),
    );
  }

  Widget stackWindow(){
    return Stack(
      alignment: Alignment.center,
      children: [
        ImageBottom(asset: 'assets/images/fundo.png', context: context).getImageBottom(),
        buttonNewSale()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: stackWindow(),
      ),
    );
  }
}