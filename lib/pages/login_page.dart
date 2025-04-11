import 'package:flutter/material.dart';
import 'package:front_vendas_ambulante_flutter/components/buttons/text_button_enter.dart';
import 'package:front_vendas_ambulante_flutter/components/stylesfields/space.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/insert_credentials.dart';
import 'package:front_vendas_ambulante_flutter/components/texts_fields/text_field.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/validate_credentals.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {

  Widget imageLogo(){
    return Container(
        decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(190),
          color: Colors.black
        ),
        padding: EdgeInsets.all(2),
        margin: EdgeInsets.only(top: 15),
        width: 250,
        height: 250,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(150),
          child: Image.asset('assets/images/logo_damascie.png'),
        ),
      );
  }

  Widget imageFundo(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Image.asset('assets/images/fundo.png', fit: BoxFit.cover,),
    );
  }

  Widget textFields(){
    return Container(
      width: MediaQuery.of(context).size.width / 1.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SpaceWidget(heigth: 7,),
          TextFieldCustom(labelText: 'Email', fieldInsertValue: 'email', event: InsertCredentials(),),
          SpaceWidget(heigth: 7,),
          TextFieldCustom(labelText: 'Password', obscureText: true, fieldInsertValue: 'password', event: InsertCredentials(),)
        ],
      ),
    );
  }

  Widget buttonLogin(){

    return Container(
      child: TextButtonEnter(labelText: 'Login', event: ValidateCredentals(context)),
    );
  }

  Widget interactionLoginPage(){
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              children: [
                imageLogo(),
                textFields(),
                buttonLogin(),
              ],
            )
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          imageFundo(),
          interactionLoginPage(),
        ]
      ),
    );
  }
}
