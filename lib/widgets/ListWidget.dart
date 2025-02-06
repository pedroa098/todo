import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  final List listaUsuario;
  final Function deletarNome;

  const ListWidget(
      {super.key, required this.listaUsuario, required this.deletarNome});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
            height: 500,
            child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 24),
                itemCount: listaUsuario.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: Icon(Icons.person),
                      trailing: IconButton(
                          onPressed: () => deletarNome(listaUsuario[index]),
                          icon: Icon(Icons.delete)),
                      title: Text(listaUsuario[index]));
                })));
  }
}
