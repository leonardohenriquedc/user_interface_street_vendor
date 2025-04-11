import 'package:flutter/material.dart';

class ImageBottom {
  String asset;

  BuildContext context;

  ImageBottom({
    required this.asset,
    required this.context
  });

  Widget getImageBottom(){
      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(asset, fit: BoxFit.cover,),
      );
  }
}