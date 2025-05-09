import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/interfaces/is_event_invocation.dart';

class IconButtonEnterNoAction extends StatefulWidget{

  final Icon icon;

  const IconButtonEnterNoAction({
    required this.icon
  });

  @override
  State<StatefulWidget> createState() {
    return _IconButtonEnterState();
  }

}

class _IconButtonEnterState extends State<IconButtonEnterNoAction>{
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: null,
        icon: widget.icon
    );
  }

}