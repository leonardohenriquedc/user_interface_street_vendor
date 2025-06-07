import 'package:flutter/material.dart';
import 'package:front_vendas_ambulante_flutter/components/buttons/text_button_change.dart';
import 'package:front_vendas_ambulante_flutter/components/buttons/text_button_enter.dart';
import 'package:front_vendas_ambulante_flutter/components/stylesfields/space.dart';
import 'package:front_vendas_ambulante_flutter/components/texts_fields/text_field.dart';
import 'package:front_vendas_ambulante_flutter/components/widgets/menu_hamburguer.dart';
import 'package:front_vendas_ambulante_flutter/components/widgets/image_logo.dart';
import 'package:front_vendas_ambulante_flutter/repository/product_repository.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/back_page.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/create_new_product.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/insert_values_to_new_product.dart';
import 'package:front_vendas_ambulante_flutter/services/product_service.dart';

class NewProductPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NewProductPage(new ProductService(ProductRepository(), null));
  }
}

class _NewProductPage extends State<NewProductPage> {
  ProductService productService;

  _NewProductPage(this.productService);

  Widget fieldName() {
    return Container(
      child: TextFieldCustom(
        labelText: 'Nome',
        event: InsertValuesToNewProduct(productService),
        fieldInsertValue: 'name',
      ),
    );
  }

  Widget fieldPrice() {
    return Container(
      child: TextFieldCustom(
        labelText: 'Preço',
        event: InsertValuesToNewProduct(productService),
        fieldInsertValue: 'price',
      ),
    );
  }

  //Implementando
  Widget fieldAmount() {
    return Container(
      child: TextFieldCustom(
        labelText: 'Quantidade',
        event: InsertValuesToNewProduct(productService),
        fieldInsertValue: 'amount',
      ),
    );
  }

  Widget buttonCreateNewProduct(BuildContext context) {
    return Container(
      child: TextButtonEnter(
        width: MediaQuery.of(context).size.width / 2.8,
        labelText: 'Criar Produto',
        event: CreateNewProduct(context, productService),
      ),
    );
  }

  Widget buttonOfBackPageProducts(BuildContext context) {
    return Container(
      child: TextButtonChange(
        nivelRadius: 16,
        width: MediaQuery.of(context).size.width / 2.8,
        padding: EdgeInsets.all(12),
        labelText: 'Voltar',
        event: BackPage(context, '/product'),
      ),
    );
  }

  Widget buttons(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(19),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buttonCreateNewProduct(context),
          buttonOfBackPageProducts(context),
        ],
      ),
    );
  }

  Widget fields(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(19),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          fieldName(),
          SpaceWidget(heigth: 12),
          fieldPrice(),
          SpaceWidget(heigth: 12),
          fieldAmount(),
          SpaceWidget(heigth: 12),
          buttons(context),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuHamburguer(),
      appBar: AppBar(backgroundColor: Colors.white, actions: [ImageLogo()]),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [fields(context)],
        ),
      ),
    );
  }
}
