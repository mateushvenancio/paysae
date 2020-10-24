import 'pedidos_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pedidos_page.dart';

class PedidosModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $PedidosController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => PedidosPage()),
      ];

  static Inject get to => Inject<PedidosModule>.of();
}
