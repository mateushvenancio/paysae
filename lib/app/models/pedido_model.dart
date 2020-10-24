import 'package:paysae/app/models/pedido_item_model.dart';

class PedidoModel {
  String nomeEstabelecimento;
  int numeroPedido;
  String dataPedido;
  List<PedidoItemModel> itens;

  PedidoModel(
    this.nomeEstabelecimento,
    this.numeroPedido,
    this.dataPedido,
    this.itens,
  );
}
