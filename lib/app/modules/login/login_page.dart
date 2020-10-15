import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paysae/app/modules/login/components/main_button.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          MainButton(
            icon: Icon(Icons.account_circle),
            label: 'Login',
            keyColor: Colors.white,
          ),
          MainButton(
            // icon: Icon(Icons.plus_one),
            label: 'Registre-se',
          ),
          Text('Ou'),
          MainButton(
            icon: Icon(Icons.android),
            label: 'Login com Google',
          ),
        ],
      ),
    );
  }
}
