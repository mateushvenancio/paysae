import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:paysae/app/app_widget.dart';
import 'package:paysae/app/modules/home/home_module.dart';
import 'package:paysae/app/modules/pedidos/pedidos_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: HomeModule()),
        ModularRouter('/pedidos', module: PedidosModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
