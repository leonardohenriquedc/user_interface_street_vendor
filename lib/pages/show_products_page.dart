import 'package:flutter/material.dart';
import 'package:front_vendas_ambulante_flutter/components/stylesfields/space.dart';
import 'package:front_vendas_ambulante_flutter/components/widgets/image_logo.dart';
import 'package:front_vendas_ambulante_flutter/components/widgets/menu_hamburguer.dart';
import 'package:front_vendas_ambulante_flutter/model/product.dart';
import 'package:front_vendas_ambulante_flutter/repository/product_repository.dart';
import 'package:front_vendas_ambulante_flutter/services/product_service.dart';
import 'dart:core';

class ShowProductsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ShowProductsPage(ProductService(ProductRepository(), null));
  }
}

class _ShowProductsPage extends State<ShowProductsPage> {
  ProductService _productService;

  _ShowProductsPage(this._productService);

  Widget products() {
    return FutureBuilder<List<Product>>(
      future: _productService.getAllProducts(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Erro: ${snapshot.error}');
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Text('Nenhum produto encontrado.');
        }

        List<Product> products = snapshot.data!;
        return Column(
          children:
              products
                  .map(
                    (prol) => Text('${prol.name} ${prol.price} ${prol.amount}'),
                  )
                  .toList(),
        );
      },
    );
  }

  Widget listProducts() {
    return SingleChildScrollView(child: products());
  }

  Widget title() {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Produto'),
          SpaceWidget(width: 20),
          Text('Preço'),
          SpaceWidget(width: 20),
          Text('Quantidade no estoque'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuHamburguer(),
      appBar: AppBar(backgroundColor: Colors.white, actions: [ImageLogo()]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [title(), listProducts()],
      ),
    );
  }
}
