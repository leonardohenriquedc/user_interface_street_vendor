import 'package:flutter/material.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/interfaces/is_event_invocation.dart';

class BackHomePage implements IsEventInvocation {
  BuildContext _context;

  BackHomePage(this._context);

  @override
  invocation() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.of(_context).pushReplacementNamed('/home');
    });
  }
}
