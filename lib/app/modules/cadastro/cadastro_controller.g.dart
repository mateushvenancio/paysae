// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CadastroController = BindInject(
  (i) => CadastroController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CadastroController on _CadastroControllerBase, Store {
  final _$concluidoAtom = Atom(name: '_CadastroControllerBase.concluido');

  @override
  bool get concluido {
    _$concluidoAtom.reportRead();
    return super.concluido;
  }

  @override
  set concluido(bool value) {
    _$concluidoAtom.reportWrite(value, super.concluido, () {
      super.concluido = value;
    });
  }

  final _$_CadastroControllerBaseActionController =
      ActionController(name: '_CadastroControllerBase');

  @override
  dynamic changeConcluido() {
    final _$actionInfo = _$_CadastroControllerBaseActionController.startAction(
        name: '_CadastroControllerBase.changeConcluido');
    try {
      return super.changeConcluido();
    } finally {
      _$_CadastroControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
concluido: ${concluido}
    ''';
  }
}
