import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:front_vendas_ambulante_flutter/model/auth_user.dart';
import 'package:front_vendas_ambulante_flutter/model/new_user.dart';
import 'package:http/http.dart' as http;

class UserRepository {
  final String? url = dotenv.env['URL'];

  Future<http.Response> routeLogin(AuthUser authUser) async {

    http.Response response = await http.post(
        Uri.parse('${url}user/login'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(authUser)
    );

    if(response.statusCode != 200){
      throw Exception('Falha ao requisitar informações para login');
    }

    return response;
  }

  Future<http.Response> routeCreateUser(Newuser newUser) async {
    http.Response response = await http.post(
      Uri.parse('${url}user/new'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(newUser)
    );

    if(response.statusCode != 201){
      throw Exception('Falha ao requisitar novo usuario');
    }

    return response;
  }
}