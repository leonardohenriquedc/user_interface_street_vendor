import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front_vendas_ambulante_flutter/components/buttons/icon_button_enter_no_action.dart';
import 'package:front_vendas_ambulante_flutter/components/buttons/text_button_change.dart';
import 'package:front_vendas_ambulante_flutter/components/buttons/text_button_enter.dart';
import 'package:front_vendas_ambulante_flutter/components/stylesfields/space.dart';
import 'package:front_vendas_ambulante_flutter/components/widgets/image_fundo.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/change_page_to_home.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/interfaces/is_event_invocation.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/start_create_account.dart';
import 'package:front_vendas_ambulante_flutter/services/home_service.dart';
import 'package:front_vendas_ambulante_flutter/components/widgets/menu_hamburguer.dart';
import 'package:front_vendas_ambulante_flutter/components/widgets/image_logo.dart';
import '../components/buttons/list_title.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/change_page_to_product.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  Widget buttonNewProduct() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        color: Colors.black,
        child: TextButtonChange(
          labelText: 'Produtos',
          event: ChangePageToProduct(context),
          colorButton: Colors.blueAccent,
          padding: EdgeInsets.all(3),
        ),
      ),
    );
  }

  Widget buttonNewSale() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        color: Colors.black,
        child: TextButtonChange(
          labelText: 'Nova Venda',
          event: ChangePageToHome(context),
          colorButton: Colors.blueAccent,
          padding: EdgeInsets.all(3),
        ),
      ),
    );
  }

  Widget buttonReport() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        color: Colors.black,
        child: TextButtonChange(
          labelText: 'Relatórios',
          event: ChangePageToHome(context),
          colorButton: Colors.blueAccent,
          padding: EdgeInsets.all(3),
        ),
      ),
    );
  }

  Widget buttons() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buttonNewProduct(),
        SpaceWidget(heigth: 12),
        buttonNewSale(),
        SpaceWidget(heigth: 12),
        buttonReport(),
      ],
    );
  }

  Widget stackWindow() {
    return Stack(
      alignment: Alignment.center,
      children: [
        ImageBottom(
          asset: 'assets/images/fundo.png',
          context: context,
        ).getImageBottom(),
        buttons(),
      ],
    );
  }

  Widget buttonsMenus() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SpaceWidget(heigth: 50),
        ListTitleCustom(
          title: Text('Perfil', style: TextStyle(color: Colors.white)),
          icon: Icon(Icons.account_circle_rounded, color: Colors.white),
        ),
        ListTitleCustom(
          title: Text('Inicio', style: TextStyle(color: Colors.white)),
          icon: Icon(Icons.home, color: Colors.white),
        ),
        ListTitleCustom(
          title: Text('Sair', style: TextStyle(color: Colors.white)),
          icon: Icon(Icons.logout, color: Colors.white),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuHamburguer(),
      appBar: AppBar(backgroundColor: Colors.white, actions: [ImageLogo()]),
      body: Container(alignment: Alignment.center, child: stackWindow()),
    );
  }
}
