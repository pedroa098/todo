import 'package:flutter/material.dart';
import 'package:todo/widgets/InputWidget.dart';
import 'package:todo/widgets/ListWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  var listaUsuario = <String>["Pedro", "joão", "Loco", "cocudo"];
  var nomeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              InputWidget(label: "nome", controller: nomeController),
              ListWidget(listaUsuario: listaUsuario, deletarNome: deletarNome)
            ])),
        floatingActionButton: FloatingActionButton(
          onPressed: adicionarNome,
          child: Icon(Icons.person_add),
        ));
  }

  adicionarNome() {
    if (nomeController.text == "") {
      return;
    }
    ;

    setState(() {
      listaUsuario.add(nomeController.text);
    });
  }

  void deletarNome(String name) {
    setState(() {
      listaUsuario.remove(name);
    });
  }
}
