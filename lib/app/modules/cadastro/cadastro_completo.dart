import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paysae/app/modules/cadastro/components/cadastro_button.dart';
import 'package:paysae/app/modules/cadastro/components/cadastro_text_field.dart';
import 'package:paysae/app/modules/cadastro/components/titulo.dart';
import 'package:paysae/shared/main_avatar.dart';

class CadastroCompleto extends StatefulWidget {
  @override
  _CadastroCompletoState createState() => _CadastroCompletoState();
}

class _CadastroCompletoState extends State<CadastroCompleto> {
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
                    child: CadastroButton('Começar'),
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
