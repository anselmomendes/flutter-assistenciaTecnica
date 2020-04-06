import 'package:assistencia/app/modules/cell/cell_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CellPage extends StatefulWidget {
  final String title;
  const CellPage({Key key, this.title = "Cell"}) : super(key: key);

  @override
  _CellPageState createState() => _CellPageState();
}

class _CellPageState extends State<CellPage> {
  final _cellController = Modular.get<CellController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
