import 'package:flutter/material.dart';
import 'package:front_vendas_ambulante_flutter/components/widgets/menu_hamburguer.dart';
import 'package:front_vendas_ambulante_flutter/components/widgets/image_logo.dart';
import 'package:front_vendas_ambulante_flutter/components/buttons/text_button_change.dart';

class ProductPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return _ProductPageStatep();
  }
}

class _ProductPageState extends State<ProductPage> {

  Widget buttonNewProduct(){
    return Container(
      child: TextButtonChange(
        labelText: 'Novo Produto',
        event: null,  
      ),
    );
  }

  Widget buttonShowProducts(){
    return Container(
      child: TextButtonChange(
        labelText: 'Visualizar Produtos',
        event: null
      ),
    );
  }

  Widget buttons(){
    return Container(
      child: Column(
        children: 
      ),
    );
  }

  @override
  Widget build (BuildContext context){
    return Scaffold(
      drawer: MenuHamburguer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: ImageLogo()
      ),
      body: 
    );
  }
}
