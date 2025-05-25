import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:front_vendas_ambulante_flutter/pages/home_page.dart';
import 'package:front_vendas_ambulante_flutter/pages/login_page.dart';
import 'package:front_vendas_ambulante_flutter/pages/sale_page.dart';
import 'package:front_vendas_ambulante_flutter/pages/signup_page.dart';
import 'package:front_vendas_ambulante_flutter/pages/product_page.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget  {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home' : (context) => HomePage(),
        '/sale': (context) => SalePage(),
        '/signup': (context) => SignupPage(),
        '/product': (context) => ProductPage(),
      },
    );
  }
}
