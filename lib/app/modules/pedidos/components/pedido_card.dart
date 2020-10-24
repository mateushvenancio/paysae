import 'package:flutter/material.dart';
import 'package:paysae/app/models/pedido_item_model.dart';
import 'package:paysae/app/models/pedido_model.dart';

const double _leftPadding = 30;

class PedidoCard extends StatefulWidget {
  final PedidoModel pedido;

  PedidoCard(this.pedido);

  @override
  _PedidoCardState createState() => _PedidoCardState();
}

class _PedidoCardState extends State<PedidoCard> {
  Size _tamanhoDoCard = Size.zero;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _tamanhoDoCard = context.size;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0XFFE8E8E8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        color: Color(0XFFE8E8E8),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.95,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  color: Color(0XFF20D071),
                ),
                height: _tamanhoDoCard.height,
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: _leftPadding,
                        right: 15,
                        top: 15,
                        bottom: 5,
                      ),
                      child: _Cabecalho(widget.pedido),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: _leftPadding,
                        right: 15,
                        bottom: 10,
                      ),
                      child: _ItensPedido(widget.pedido.itens),
                    ),
                    _Barra(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Cabecalho extends StatelessWidget {
  final PedidoModel pedido;

  _Cabecalho(this.pedido);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          pedido.nomeEstabelecimento,
          style: TextStyle(fontSize: 15),
        ),
        SizedBox(height: 5),
        Text(
          'Numero do pedido: ${pedido.numeroPedido}',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(pedido.dataPedido),
        ),
      ],
    );
  }
}

class _ItensPedido extends StatelessWidget {
  final List<PedidoItemModel> pedidos;

  _ItensPedido(this.pedidos);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ...pedidos.map((e) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(e.titulo),
                Text(
                  'R\$ ' + e.valor.toStringAsFixed(2).replaceAll('.', ','),
                ),
              ],
            ),
          );
        }).toList(),
        SizedBox(height: 15),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Text(
                'R\$ 25,15',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _Barra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFC4C4C4),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      width: double.infinity,
      height: 30,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Main informações'),
          Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}
