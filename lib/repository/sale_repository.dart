import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class SaleRepository {

  final String? urlApi = dotenv.env['URL'];

  Future<http.Response> newSaleRequest(String route) async {
    http.Response response = await http.get(Uri.parse('${urlApi}newsale'));

    if(response.statusCode != 200){
      throw Exception('Falha ao requisitar informações para nova venda');
    }

    return response;
  }
}