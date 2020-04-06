import 'package:assistencia/app/app_controller.dart';
import 'package:assistencia/app/modules/cell/cell_controller.dart';
import 'package:assistencia/app/modules/home/home_controller.dart';
import 'package:assistencia/app/repositories/cellPhone_repositores.dart';
import 'package:assistencia/app/utils/Constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:assistencia/app/app_widget.dart';
import 'package:assistencia/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => HomeController(repository: i.get<CellPhoneRepositories>())),
        //Bind((i) => CellController(repository: i.get<CellPhoneRepositories>())),
        Bind((i) => CellPhoneRepositories(dio: i.get<Dio>())),
        Bind((i) => Dio(BaseOptions(baseUrl: BASE_URL))),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
