import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: ElevatedButton(
          onPressed: () {}, 
          child: const Text("Procesar")
        )
      ),
      floatingActionButton: FloatingActionButton(        
        onPressed: () {},
        child: const Icon(Icons.cloud_sync_rounded),
      ),
    );
  }
}