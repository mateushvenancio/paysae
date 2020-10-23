import 'package:mobx/mobx.dart';
part 'main_store.g.dart';

class MainStore = _MainStoreBase with _$MainStore;

abstract class _MainStoreBase with Store {
  @observable
  bool cadastroConcluido = false;

  @action
  changeCadastro() => cadastroConcluido = !cadastroConcluido;
}
