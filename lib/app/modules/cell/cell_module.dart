import 'package:assistencia/app/modules/cell/cell_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CellModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CellController(Modular.get<CellPhoneRepositories>())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => CellPage()),
      ];

  static Inject get to => Inject<CellModule>.of();
}
