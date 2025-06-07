import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/interfaces/is_event.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/interfaces/is_event_insert.dart';

class TextFieldCustom extends StatefulWidget {
  final String labelText;

  final bool obscureText;

  final bool autoFocus;

  final IsEventInsert event;

  final String fieldInsertValue;

  final List<TextInputFormatter> inputFormater;

  const TextFieldCustom({
    super.key,
    required this.labelText,
    this.obscureText = false,
    this.autoFocus = false,
    required this.event,
    required this.fieldInsertValue,
    this.inputFormater = const [],
  });
  @override
  State<TextFieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      autocorrect: true,
      autofocus: widget.autoFocus,
      inputFormatters: widget.inputFormater,
      decoration: InputDecoration(
        labelText: widget.labelText,
        border: OutlineInputBorder(),
      ),
      obscureText: widget.obscureText,
      onChanged:
          (value) => {widget.event.insert(value, widget.fieldInsertValue)},
    );
  }
}
