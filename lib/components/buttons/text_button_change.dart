import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/interfaces/is_event_changes.dart';

import '../../services/changes/interfaces/is_event.dart';

class TextButtonChange extends StatefulWidget{

  final String labelText;

  final IsEventChange event;

  const TextButtonChange({
    super.key,
    required this.labelText,
    required this.event,
  });

  @override
  State<StatefulWidget> createState() {
    return _TextButtonEnterState();
  }
}

class _TextButtonEnterState extends State<TextButtonChange>{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      width: MediaQuery.of(context).size.width / 2,
      child: TextButton(
          style: ButtonStyle(
            alignment: Alignment.center,
            backgroundColor: WidgetStatePropertyAll(Colors.deepOrangeAccent),
          ),
          onPressed: (){
            widget.event.change();
          },
          child: Text(widget.labelText)
      ),
    );
  }
}