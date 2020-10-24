import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:paysae/app/models/pedido_item_model.dart';
import 'package:paysae/app/models/pedido_model.dart';
import 'package:paysae/app/modules/pedidos/components/pedido_card.dart';
import 'pedidos_controller.dart';

class PedidosPage extends StatefulWidget {
  @override
  _PedidosPageState createState() => _PedidosPageState();
}

class _PedidosPageState extends ModularState<PedidosPage, PedidosController> {
  bool _maiorMenor = false;
  bool _antigoRecente = false;

  final List<PedidoModel> pedidos = [
    PedidoModel(
      'Estabelecimento 1',
      123456,
      '15/05/2020',
      [
        PedidoItemModel('Item 1', 12.45),
        PedidoItemModel('Item 2', 0.99),
        PedidoItemModel('Item 2', 0.99),
        PedidoItemModel('Item 2', 0.99),
      ],
    ),
    PedidoModel(
      'Estabelecimento 2',
      123456,
      '15/05/2020',
      [
        PedidoItemModel('Item 1', 9),
        PedidoItemModel('Item 2', 8.7),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('/pedidos'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          Text(
            'Ordenar por:',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Row(
            children: [
              Checkbox(
                value: _maiorMenor,
                onChanged: (value) {
                  setState(() {
                    _maiorMenor = value;
                  });
                },
              ),
              Expanded(child: Text('Maior - Menor (Preço)')),
              Checkbox(
                value: _antigoRecente,
                onChanged: (value) {
                  setState(() {
                    _antigoRecente = value;
                  });
                },
              ),
              Expanded(child: Text('Antigo - Recente')),
            ],
          ),
          ...pedidos.map((e) {
            return Container(
              margin: const EdgeInsets.all(8.0),
              child: PedidoCard(e),
            );
          }).toList()
        ],
      ),
    );
  }
}
