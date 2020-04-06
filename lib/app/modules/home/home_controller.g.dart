// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$celularesAtom = Atom(name: '_HomeControllerBase.celulares');

  @override
  ObservableFuture<dynamic> get celulares {
    _$celularesAtom.context.enforceReadPolicy(_$celularesAtom);
    _$celularesAtom.reportObserved();
    return super.celulares;
  }

  @override
  set celulares(ObservableFuture<dynamic> value) {
    _$celularesAtom.context.conditionallyRunInAction(() {
      super.celulares = value;
      _$celularesAtom.reportChanged();
    }, _$celularesAtom, name: '${_$celularesAtom.name}_set');
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic buscaCelular() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.buscaCelular();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'celulares: ${celulares.toString()}';
    return '{$string}';
  }
}
