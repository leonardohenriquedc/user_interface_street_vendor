import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:front_vendas_ambulante_flutter/model/product.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ProductRepository {
  final String? urlApi = dotenv.env['URL'];

  final storage = FlutterSecureStorage();

  Future<http.Response> getAllProducts() async {
    Uri url = Uri.parse('${urlApi}product');

    String token = await storage.read(key: 'authToken') ?? '';

    http.Response response = await http.get(
      url,
      headers: {'Authorization': 'Bearer $token'},
    );

    if (response.statusCode != 200) {
      throw Exception('Falha ao requisitar produtos');
    }

    return response;
  }

  Future<http.Response> createProduct(Product product) async {
    Uri url = Uri.parse('${urlApi}product/new');

    String token = await storage.read(key: 'authToken') ?? '';

    http.Response response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: jsonEncode(product),
    );
    print(response.statusCode);
    if (response.statusCode != 201) {
      throw Exception('Houve um erro ao criar um produto');
    }

    return response;
  }
}
