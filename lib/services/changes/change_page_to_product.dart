import 'package:flutter/material.dart';
import 'package:front_vendas_ambulante_flutter/repository/product_repository.dart';
import 'package:front_vendas_ambulante_flutter/services/product_service.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/interfaces/is_event_changes.dart';

class ChangePageToProduct implements IsEventChange {
  BuildContext context;

  ChangePageToProduct(this.context);

  @override
  change() {
    ProductService(ProductRepository(), null).productPage(context);
  }
}
