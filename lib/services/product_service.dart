import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:front_vendas_ambulante_flutter/model/product.dart';
import 'package:front_vendas_ambulante_flutter/pages/show_products_page.dart';
import 'package:front_vendas_ambulante_flutter/repository/product_repository.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ProductService {
  String? _name;
  double? _price;
  int? _amount;

  List<Product>? _products;

  ProductRepository productRepository;

  ProductService(this.productRepository, this._products);

  productPage(BuildContext context) {
    Navigator.of(context).pushNamed('/product');
  }

  newProductPage(BuildContext context) {
    Navigator.of(context).pushNamed('/newproduct');
  }

  showProductsPage(BuildContext context) {
    Navigator.of(context).pushNamed('/showproducts');
  }

  addedValue(String field, dynamic value) {
    switch (field) {
      case 'name':
        _name = value as String;
        break;
      case 'price':
        _price = double.tryParse(value) ?? 0;
        break;
      case 'amount':
        _amount = int.tryParse(value) ?? 0;
        break;
      default:
        throw Exception(
          'Não foi possivel converter valores e atribuilos a um novo produto',
        );
        break;
    }
  }

  void createNewProduct(BuildContext context) async {
    if (_name == null || _price == null || _amount == null) {
      print('Name: ${_name}, Price ${_price}, Amount ${_amount}');
      throw Exception('Valores não podem ser nulo');
    }

    Product product = Product('0', _name ?? '', _price ?? 0, _amount ?? 0);

    print('Name: ${_name}, Price ${_price}, Amount ${_amount}');

    http.Response response = await productRepository.createProduct(product);

    Map<String, dynamic> body =
        convert.jsonDecode(response.body) as Map<String, dynamic>;

    product = Product(
      body['id'],
      body['name'],
      body['unitPrice'],
      body['amount'],
    );

    if (_products == null) {
      _products = [product];
    }

    productPage(context);
  }

  Future<List<Product>> getAllProducts() async {
    http.Response response = await productRepository.getAllProducts();

    try {
      List<dynamic> jsonResponse =
          convert.jsonDecode(response.body) as List<dynamic>;

      List<Product> products =
          jsonResponse
              .map(
                (n) => Product(n['id'], n['name'], n['unitPrice'], n['amount']),
              )
              .toList();

      return products;
    } catch (e) {
      print(e);
      throw Exception('Falha ao tentar montar lista de produtos');
    }
  }
}
