import 'package:flutter/material.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/interfaces/is_event_invocation.dart';

class ListTitleCustom extends StatefulWidget {
  final Text title;

  final Icon icon;

  final IsEventInvocation? event;

  ListTitleCustom({
    required Text this.title,
    required Icon this.icon,
    this.event,
  });

  @override
  State<StatefulWidget> createState() {
    return _ListTitleCustomState();
  }
}

class _ListTitleCustomState extends State<ListTitleCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: widget.title,
        trailing: widget.icon,
        onTap: widget.event != null ? () => widget.event?.invocation() : null,
      ),
    );
  }
}

