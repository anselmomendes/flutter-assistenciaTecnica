import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:assistencia/app/modules/cell/cell_page.dart';

main() {
  testWidgets('CellPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CellPage(title: 'Cell')));
    final titleFinder = find.text('Cell');
    expect(titleFinder, findsOneWidget);
  });
}
