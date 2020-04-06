import 'package:assistencia/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Observer(
          builder: (_) {
            if (_homeController.celulares.error != null) {
              return Center(
                child: RaisedButton(
                  onPressed: () {
                    _homeController.buscaCelular();
                  },
                  child: Text('Press Again'),
                ),
              );
            } else if (_homeController.celulares.value == null) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              var list = _homeController.celulares.value;

              return ListView.builder(
                itemCount: list.length,
                itemBuilder: (_, index) {
                  return ListTile(
                    title: Text(list[index].marca.toString(),
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    subtitle: Text(list[index].modelo.toString()),
                    leading: Icon(
                      Icons.phone_iphone,
                      color: Colors.blue[500],
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            _homeController.buscaCelular();
          });
        },
        label: Text('Atualizar'),
        icon: Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
