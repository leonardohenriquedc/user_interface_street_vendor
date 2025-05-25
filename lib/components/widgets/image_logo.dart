import 'package:flutter/material.dart';

class ImageLogo extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return _ImageLogo();
  }
}

class _ImageLogo extends State<ImageLogo> {
  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(90),
          color: Colors.black
      ),
      padding: EdgeInsets.all(2),
      margin: EdgeInsets.only(top: 15, right: 17),
      width: 40,
      height: 40,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset('assets/images/logo_damascie.png'),
      ),
    ); 
  }
}
