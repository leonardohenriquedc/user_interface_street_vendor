import 'package:flutter/material.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/interfaces/is_event_changes.dart';

class BackPage implements IsEventChange {
  BuildContext _context;

  String _router;

  BackPage(this._context, this._router);

  @override
  change() {
    Navigator.of(_context).pushReplacementNamed(_router);
  }
}
