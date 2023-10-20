import 'package:flutter/material.dart';

class NosotrosScreen extends StatelessWidget {
   
  const NosotrosScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.keyboard_option_key),
        title: const Text("Nosotros"),
        elevation: 0,
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          crossAxisAlignment: CrossAxisAlignment.center,                    
          children: [
            Icon(
              Icons.group_add_rounded,
              color: Colors.blueAccent,
              size: 60,
            ),
            SizedBox(height: 20),
            Text(
              'Nosotros',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold
              )
            ),
            SizedBox(height: 10),
            Text(
              'Esta es una breve descripción',
              style: TextStyle(
                fontSize: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}