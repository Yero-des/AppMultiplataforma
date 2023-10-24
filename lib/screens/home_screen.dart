import 'package:flutter/material.dart';
import 'package:flutter_application_1/router/app_router.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Options"),
        elevation: 0,
        backgroundColor: Colors.green,
      ),
      
      body: ListView(
        children: [
          ... AppRoutes.menuOptions.map((value) => ListTile(
            
            leading: Icon(
              value.data, // Acceso a la propiedad 'data' de MenuOption
              color: Colors.blueAccent, // Acceso a la propiedad 'color' de MenuOption
            ),

            // Texto content
            title: Text(value.name),

            onTap: () => {   
              Navigator.pushNamed(context, value.router)
            },

          )).toList()
        ],
      ),
    );
  }
}
