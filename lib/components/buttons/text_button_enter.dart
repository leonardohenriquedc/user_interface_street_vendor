import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/interfaces/is_event_invocation.dart';

import '../../services/changes/interfaces/is_event.dart';

class TextButtonEnter extends StatefulWidget{

  final String labelText;

  final IsEventInvocation event;

  const TextButtonEnter({
    super.key,
   required this.labelText,
   required this.event
  });

  @override
  State<StatefulWidget> createState() {
   return _TextButtonEnterState();
  }
}

class _TextButtonEnterState extends State<TextButtonEnter>{
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
            widget.event.invocation();
          },
          child: Text(widget.labelText)
      ),
    );
  }

}