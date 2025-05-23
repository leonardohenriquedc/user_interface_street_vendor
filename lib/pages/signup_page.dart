import 'package:flutter/material.dart';
import 'package:front_vendas_ambulante_flutter/components/buttons/text_button_enter.dart';
import 'package:front_vendas_ambulante_flutter/components/stylesfields/space.dart';
import 'package:front_vendas_ambulante_flutter/components/texts_fields/text_field.dart';
import 'package:front_vendas_ambulante_flutter/components/widgets/image_fundo.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/insert_credentials_to_singuping.dart';
import 'package:front_vendas_ambulante_flutter/services/changes/start_create_account.dart';
import 'package:front_vendas_ambulante_flutter/services/singup_service.dart';

class SignupPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SingupPageState();
  }
}

class _SingupPageState extends State{

  late SignupService singupService;

  late InsertCredentialsToSinguping insertCredentialsToSinguping;

  late StartCreateAccount startCreateAccount;

  Widget fieldName(){
    return Container(
      child: TextFieldCustom(labelText: 'Name', event: insertCredentialsToSinguping, fieldInsertValue: 'name'),
    );
  }

  Widget fieldEmail(){
    return Container(
      child: TextFieldCustom(labelText: 'Email', event: insertCredentialsToSinguping, fieldInsertValue: 'email'),
    );
  }

  Widget fieldPassword(){
    return Container(
      child: TextFieldCustom(labelText: 'Password', event: insertCredentialsToSinguping, fieldInsertValue: 'password', obscureText: true),
    );
  }

  Widget fields(){
    return Column(
      children: [
        fieldName(),
        SpaceWidget(heigth: 5,),
        fieldEmail(),
        SpaceWidget(heigth: 5,),
        fieldPassword(),
        SpaceWidget(heigth: 5,),
      ],
    );
  }

  Widget buttonSingup(){
    return Container(
      child: TextButtonEnter(labelText: 'Sing Up', event: startCreateAccount),
    );
  }
  
  Widget imageLogo(){
    return Container(
      decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(150),
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

  Widget containerWidgets(BuildContext context){
    return Container(
      padding: EdgeInsets.all(12),
      width: MediaQuery.of(context).size.width / 1.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          imageLogo(),
          SpaceWidget(heigth: 30,),
          fields(),
          buttonSingup(),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {

    this.singupService = SignupService(context);

    this.insertCredentialsToSinguping = InsertCredentialsToSinguping(singupService);

    this.startCreateAccount = StartCreateAccount(singupService);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          ImageBottom(asset: 'assets/images/fundo.png', context: context).getImageBottom(),
          containerWidgets(context)
        ],
      ),
    );
  }

}
