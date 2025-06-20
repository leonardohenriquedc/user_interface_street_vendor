import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/interfaces/is_event_invocation.dart';

class ExitApp extends IsEventInvocation {
  BuildContext _context;

  final storage = FlutterSecureStorage();

  ExitApp(this._context);

  @override
  invocation() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      storage.delete(key: 'authKey');
      Navigator.of(_context).pushReplacementNamed('/');
    });
  }
}
