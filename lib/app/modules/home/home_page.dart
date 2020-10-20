import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paysae/app/modules/home/components/home_button.dart';
import 'package:paysae/app/modules/home/components/home_chimp.dart';
import 'package:paysae/app/modules/login/login_module.dart';
import 'package:paysae/shared/main_modal.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(title: Text('Paysae')),
      body: Column(
        children: <Widget>[
          Expanded(child: Container()),
          HomeButton(
            icon: Icon(FontAwesomeIcons.userCheck),
            label: 'Login',
            onTap: () {
              showModalBottomSheet(
                context: context,
                backgroundColor: Colors.transparent,
                isScrollControlled: true,
                builder: (context) {
                  return Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: MainModal(
                      // child: LoginModal(),
                      child: SizedBox(
                        child: RouterOutlet(module: LoginModule()),
                        height: MediaQuery.of(context).size.height * 0.55,
                      ),
                    ),
                  );
                },
              );
            },
          ),
          HomeButton(
            label: 'Registre-se',
            icon: Icon(Icons.plus_one),
          ),
          Text('Ou', style: TextStyle(fontSize: 17, color: Colors.white)),
          HomeButton(
            icon: Icon(FontAwesomeIcons.google),
            label: 'Login com Google',
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: HomeChimp(
              label: 'Precisa de ajuda',
              icon: Icon(FontAwesomeIcons.solidQuestionCircle),
              onTap: () {
                print('Printou');
              },
            ),
          ),
        ],
      ),
    );
  }
}
