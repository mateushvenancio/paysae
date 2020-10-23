// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainStore on _MainStoreBase, Store {
  final _$cadastroConcluidoAtom =
      Atom(name: '_MainStoreBase.cadastroConcluido');

  @override
  bool get cadastroConcluido {
    _$cadastroConcluidoAtom.reportRead();
    return super.cadastroConcluido;
  }

  @override
  set cadastroConcluido(bool value) {
    _$cadastroConcluidoAtom.reportWrite(value, super.cadastroConcluido, () {
      super.cadastroConcluido = value;
    });
  }

  final _$_MainStoreBaseActionController =
      ActionController(name: '_MainStoreBase');

  @override
  dynamic changeCadastro() {
    final _$actionInfo = _$_MainStoreBaseActionController.startAction(
        name: '_MainStoreBase.changeCadastro');
    try {
      return super.changeCadastro();
    } finally {
      _$_MainStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cadastroConcluido: ${cadastroConcluido}
    ''';
  }
}
