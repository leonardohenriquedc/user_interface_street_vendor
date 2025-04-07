import 'package:flutter/cupertino.dart';

class SpaceWidget extends StatelessWidget{

  double width;

  double heigth;

  SpaceWidget({
    this.width = 0,
    this.heigth = 0
 });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.heigth,
    );
  }
}