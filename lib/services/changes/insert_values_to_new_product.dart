import 'package:front_vendas_ambulante_flutter/services/changes/interfaces/is_event_insert.dart';
import 'package:front_vendas_ambulante_flutter/services/product_service.dart';

class InsertValuesToNewProduct implements IsEventInsert {
  ProductService productService;

  InsertValuesToNewProduct(this.productService);

  @override
  void insert(String value, String field) {
    productService.addedValue(field, value);
  }
}
