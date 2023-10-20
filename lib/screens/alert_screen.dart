import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.keyboard_option_key),
        title: const Text("Alerts"),
        elevation: 0,
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          crossAxisAlignment: CrossAxisAlignment.center,                    
          children: [
            Icon(
              Icons.notification_add_outlined,
              color: Colors.redAccent,
              size: 60,
            ),
            SizedBox(height: 20),
            Text(
              'Alertas',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold
              )
            ),
            SizedBox(height: 10),
            Text(
              'Este es el panel de alertas',
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