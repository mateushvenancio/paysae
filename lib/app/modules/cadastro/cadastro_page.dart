import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paysae/app/modules/cadastro/components/cadastro_button.dart';
import 'package:paysae/app/modules/cadastro/components/cadastro_text_field.dart';
import 'package:paysae/app/modules/cadastro/components/titulo.dart';
import 'package:paysae/shared/main_avatar.dart';
import 'cadastro_controller.dart';

class CadastroPage extends StatefulWidget {
  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState
    extends ModularState<CadastroPage, CadastroController> {
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Container(
        child: controller.concluido
            ? _CadastroConcluido()
            : _TelaDeCadastro(() {
                controller.changeConcluido();
              }),
      );
    });
  }
}

class _TelaDeCadastro extends StatelessWidget {
  final Function onTap;

  _TelaDeCadastro(this.onTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 55, right: 55, top: 40, bottom: 5),
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.8,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Titulo(
                'Ola, vamos\ncomecar?',
                leftDotColor: Colors.black,
              ),
              SizedBox(height: 20),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MainAvatar(radius: 70),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Icon(Icons.add_a_photo),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CadastroTextField(
                      icon: Icon(FontAwesomeIcons.portrait),
                      hint: 'Nome completo',
                    ),
                    CadastroTextField(
                      icon: Icon(FontAwesomeIcons.asterisk),
                      hint: 'Data de nascimento',
                    ),
                    CadastroTextField(
                      icon: Icon(Icons.edit),
                      hint: 'Insira seu email',
                    ),
                    CadastroTextField(
                      icon: Icon(FontAwesomeIcons.lock),
                      hint: 'Insira sua senha',
                    ),
                    CadastroTextField(
                      icon: Icon(Icons.phone),
                      hint: 'Telefone',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(child: Container()),
                  SizedBox(
                    width: 180,
                    child: CadastroButton(
                      'Próximo',
                      onTap: onTap,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}

class _CadastroConcluido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 55, right: 55, top: 40, bottom: 5),
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.8,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Titulo(
                'Ola, vamos\ncomecar?',
                leftDotColor: Colors.green,
                rightDotColor: Colors.green,
                barColor: Colors.green,
              ),
              SizedBox(height: 20),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MainAvatar(radius: 70),
                      SizedBox(height: 35),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 17),
                          children: [
                            TextSpan(text: 'Seja Bem-vindo, '),
                            TextSpan(
                              text: 'Brendon Vieira',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Entre e comece a visualizar os\nestabelecimentos proximos a voce que utiliza\nPaysae como atendimento',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(child: Container()),
                  SizedBox(
                    width: 180,
                    child: CadastroButton(
                      'Começar',
                      onTap: () {
                        Modular.to.pushReplacementNamed('/pedidos');
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
