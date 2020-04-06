import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:assistencia/app/modules/cell/cell_controller.dart';
import 'package:assistencia/app/modules/cell/cell_module.dart';

void main() {
  initModule(CellModule());
  CellController cell;

  setUp(() {
    cell = CellModule.to.get<CellController>();
  });

  group('CellController Test', () {
    test("First Test", () {
      expect(cell, isInstanceOf<CellController>());
    });

    test("Set Value", () {
      expect(cell.value, equals(0));
      cell.increment();
      expect(cell.value, equals(1));
    });
  });
}
