import 'package:flutter/material.dart';

class ProductService {

  productPage(BuildContext context){
    Navigator.of(context).pushNamed('/product');
  }

  newProductPage(BuildContext context){
    Navigator.of(context).pushNamed('/newproduct');
  }
}
