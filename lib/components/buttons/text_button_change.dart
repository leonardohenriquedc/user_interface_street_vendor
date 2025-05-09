import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/interfaces/is_event_changes.dart';

import '../../services/changes/interfaces/is_event.dart';

class TextButtonChange extends StatefulWidget{

  final String labelText;

  final IsEventChange event;

  Color? colorButton;

  double? nivelRadius;

  EdgeInsets? padding;

  TextButtonChange({
    super.key,
    required this.labelText,
    required this.event,
    this.colorButton,
    this.nivelRadius,
    this.padding
  });

  @override
  State<StatefulWidget> createState(){
    return _TextButtonEnterState();
  }
}

class _TextButtonEnterState extends State<TextButtonChange>{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding ?? EdgeInsets.all(7),
      width: MediaQuery.of(context).size.width / 2,
      child: TextButton(
          style: ButtonStyle(
            shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(widget.nivelRadius ?? 5),
                ),),
            alignment: Alignment.center,
            backgroundColor: WidgetStatePropertyAll(widget.colorButton == null ? Colors.deepOrangeAccent : widget.colorButton),
          ),
          onPressed: (){
            widget.event.change();
          },
          child: Text(widget.labelText)
      ),
    );
  }
}