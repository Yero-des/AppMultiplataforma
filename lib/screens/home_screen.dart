import 'package:flutter/material.dart';
import 'package:flutter_application_1/router/app_router.dart';
import 'package:flutter_application_1/themes/theme.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text("Options")
      ),
      
      body: ListView(
        children: [
          ... AppRoutes.menuOptions.map((value) => ListTile(
            
            // Icon left
            leading: Icon(
              value.data, // Acceso a la propiedad 'data' de MenuOption
              color: value.color, // Acceso a la propiedad 'color' de MenuOption
            ),

            // Texto content
            title: Text(
              value.name,
              style: TextStyle(
                color: value.color,
              ),
            ),

            // Icon right
            trailing: const Icon(
              Icons.arrow_circle_right_sharp,
              color: AppTheme.primary
            ),

            onTap: () => {   
              Navigator.pushNamed(context, value.router)
            },

          )).toList()
        ],
      ),
    );
  }
}
