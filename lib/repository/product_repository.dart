import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:front_vendas_ambulante_flutter/model/product.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class ProductRepository {
  final String? urlApi = dotenv.env['URL'];

  Future<http.Response> getAllProducts() async {
    Uri url = Uri.parse('${urlApi}product');

    http.Response response = await http.get(url);

    if (response.statusCode != 200) {
      throw Exception('Falha ao requisitar produtos');
    }

    return response;
  }

  Future<http.Response> createProduct(Product product) async {
    Uri url = Uri.parse('${urlApi}product/new');

    http.Response response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(product),
    );
    print(response.statusCode);
    if (response.statusCode != 201) {
      throw Exception('Houve um erro ao criar um produto');
    }

    return response;
  }
}
