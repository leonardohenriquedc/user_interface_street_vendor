import 'package:flutter/material.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/interfaces/is_event_invocation.dart';
import 'package:front_vendas_ambulante_flutter/services/product_service.dart';

class CreateNewProduct implements IsEventInvocation {
  BuildContext _context;

  ProductService _productService;

  CreateNewProduct(this._context, this._productService);

  @override
  invocation() {
    _productService.createNewProduct(_context);
  }
}
