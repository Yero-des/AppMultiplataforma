import 'package:flutter/material.dart';

class AnimatedScreen extends StatelessWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contenedor animado"),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.redAccent
          ),
        ),
      ),
    );
  }
}