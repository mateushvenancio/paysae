import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paysae/app/modules/login/components/login_button.dart';
import 'package:paysae/app/modules/login/components/login_text_field.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      padding: const EdgeInsets.symmetric(
        horizontal: 70,
        vertical: 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundColor: Colors.black,
            child: Icon(
              FontAwesomeIcons.userCircle,
              size: 70,
              color: Colors.white,
            ),
            radius: 50,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                LoginTextField(
                  icon: Icon(Icons.mail),
                  hint: 'E-mail',
                  onChanged: (value) {},
                ),
                SizedBox(height: 15),
                LoginTextField(
                  icon: Icon(Icons.lock),
                  hint: 'Senha',
                  onChanged: (value) {},
                ),
              ],
            ),
          ),
          LoginButton(
            label: 'Entrar',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
