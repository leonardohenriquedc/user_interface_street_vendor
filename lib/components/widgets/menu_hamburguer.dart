import 'package:flutter/material.dart';

import 'package:front_vendas_ambulante_flutter/components/stylesfields/space.dart';
import 'package:front_vendas_ambulante_flutter/components/buttons/list_title.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/back_home_page.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/back_page.dart';

class MenuHamburguer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuHamburguer();
  }
}

class _MenuHamburguer extends State<MenuHamburguer> {
  Widget buttonsMenus(BuildContext context) {
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
          event: BackHomePage(context),
          icon: Icon(Icons.home, color: Colors.white),
        ),
        ListTitleCustom(
          title: Text('Sair', style: TextStyle(color: Colors.white)),
          icon: Icon(Icons.logout, color: Colors.white),
        ),
      ],
    );
  }

  Widget drawer(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width / 2,
      backgroundColor: Colors.black12.withAlpha(150),
      child: buttonsMenus(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return drawer(context);
  }
}
