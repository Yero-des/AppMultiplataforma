import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  // Generar alerta
  void displayDialogAndroid(BuildContext context) {
    showDialog(
      // barrierDismissible: true, // Cerrar al hacer click fuera
      context: context, 
      builder: (context) => const NotificationWidget()
    );
  }

  // Generar alerta IOS
  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      context: context, 
      builder: (context) => const NotificationCupWidget()
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: ElevatedButton(
          onPressed: () => Platform.isAndroid ? displayDialogAndroid(context) : displayDialogIOS(context), 
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Text("Procesar",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20
              )
            ),
          )
        )
      ),
      floatingActionButton: FloatingActionButton(        
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.cloud_sync_rounded),
      ),
    );
  }
}

class NotificationCupWidget extends StatelessWidget {
  const NotificationCupWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: const Text("Alerta importante"),
      content: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Por favor revisar si su contenido es correcto"),
          SizedBox(height: 10,),
          FlutterLogo(size: 80,)
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          }, 
          child: const Text("Cancelar")
        )
      ],
    );
  }
}

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      title: const Text("Alerta de proceso"),
      content: const Column(
        mainAxisSize: MainAxisSize.min, // Esto es importante para poner el height hasta el height que le pertenece
        children: [
          Text("Esto es el contenido interno de la alerta en flutter")
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          }, 
          child: const Text("Cancelar")
        )
      ],
    );
  }
}