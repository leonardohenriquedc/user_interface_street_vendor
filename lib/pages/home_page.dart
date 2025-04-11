import 'package:flutter/cupertino.dart';
import 'package:front_vendas_ambulante_flutter/components/buttons/text_button_change.dart';
import 'package:front_vendas_ambulante_flutter/components/buttons/text_button_enter.dart';
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
    return Container(
      child: TextButtonChange(labelText: 'Nova Venda', event: ChangePage(context),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: buttonNewSale(),
    );
  }
}