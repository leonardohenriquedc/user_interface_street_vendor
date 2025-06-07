import 'package:flutter/material.dart';
import 'package:front_vendas_ambulante_flutter/components/widgets/menu_hamburguer.dart';
import 'package:front_vendas_ambulante_flutter/components/widgets/image_logo.dart';
import 'package:front_vendas_ambulante_flutter/components/buttons/text_button_change.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/change_page_to_new_product.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/change_page_to_show_product.dart';

class ProductPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductPageState();
  }
}

class _ProductPageState extends State<ProductPage> {
  Widget buttonNewProduct(BuildContext context) {
    return Container(
      child: TextButtonChange(
        labelText: 'Novo Produto',
        event: ChangePageToNewProduct(context),
      ),
    );
  }

  Widget buttonShowProducts(BuildContext context) {
    return Container(
      child: TextButtonChange(
        labelText: 'Visualizar Produtos',
        event: ChangePageToShowProduct(context),
      ),
    );
  }

  Widget buttons(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [buttonNewProduct(context), buttonShowProducts(context)],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuHamburguer(),
      appBar: AppBar(backgroundColor: Colors.white, actions: [ImageLogo()]),
      body: buttons(context),
    );
  }
}
