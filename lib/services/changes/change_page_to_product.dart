import 'package:flutter/material.dart';
import 'package:front_vendas_ambulante_flutter/services/product_service.dart';

class ChangePageToProduct implements IsEventChange {
  
  BuildContext context;

  ChangePageToProduct(this.context);
  
  @override
  change(){
    ProductService().productPage(context);
  }
}
