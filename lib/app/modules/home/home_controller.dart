import 'package:assistencia/app/repositories/cellPhone_repositores.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final CellPhoneRepositories repository;

  @observable
  ObservableFuture celulares;

  _HomeControllerBase({this.repository}) {
    buscaCelular();
  }

  @action
  buscaCelular() {
    celulares = repository.allCellPhone().asObservable();
  }
}
