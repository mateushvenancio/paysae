import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paysae/app/modules/cadastro/components/cadastro_button.dart';
import 'package:paysae/app/modules/cadastro/components/cadastro_text_field.dart';
import 'package:paysae/app/modules/cadastro/components/titulo.dart';
import 'package:paysae/shared/main_avatar.dart';

class CadastroPage extends StatefulWidget {
  final Function onButtonPressed;
  CadastroPage(this.onButtonPressed);

  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
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
                      onTap: widget.onButtonPressed ?? () {},
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
