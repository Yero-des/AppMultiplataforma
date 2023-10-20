import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  final options = const ['Alertas','Nosotros', 'Lista'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Opciones"),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: ListView(
        children: [
          ... options.map((value) => ListTile(
            
            // Icono izquierda
            leading: const Icon(
              Icons.keyboard_option_key,
              color: Colors.indigoAccent,
            ),

            // Texto content
            title: Text(value),

            // Icono derecha
            trailing: const Icon(
              Icons.info_rounded,
              color: Colors.indigoAccent
            ),

            onTap: () => {   
              if (value.toLowerCase() == "alertas") {
                Navigator.pushNamed(context, 'alert')
              } else if (value.toLowerCase() == "nosotros") {
                Navigator.pushNamed(context, 'about')
              } else if (value.toLowerCase() == "lista") {
                Navigator.pushNamed(context, 'list')
              } else {
                Navigator.pushNamed(context, 'error')
              }
            },

          )).toList()
        ],
      ),
    );
  }
}