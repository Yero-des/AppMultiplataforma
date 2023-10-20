import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {

  final options = const ['Chino', 'Peruano', 'Japones', 'Chileno', 'Argenito', 'Coreano'];

  const ListViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   return Scaffold(

      appBar: AppBar(
        title: const Text("Paises"),
        elevation: 0,
      ),

      body: ListView(
        children: [
          ... options.map((e) => ListTile(
            leading: const Icon(Icons.place_rounded),
            title: Text(e),
            trailing: const Icon(Icons.info_rounded),
          )).toList()
        ],
      ),
    );

  }
}