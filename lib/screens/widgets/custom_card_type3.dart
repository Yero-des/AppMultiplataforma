import 'package:flutter/material.dart';

class CustomCardType3 extends StatelessWidget {

  final String imageUrl;
  final String? descripcion;

  const CustomCardType3({
    super.key, required this.imageUrl, this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias, // Un overflow hidden 
      shape: RoundedRectangleBorder( // Redondeo de bordes
        borderRadius: BorderRadius.circular(15)
      ),
      elevation: 10,      
      child: Column(
        children: [

          FadeInImage(
            placeholder: const AssetImage("assets/banana-loading.gif"),
            image: NetworkImage(imageUrl),
            width: double.infinity,
            height: 100,
            fit: BoxFit.cover, // Important property
            fadeInDuration: const Duration(milliseconds: 300),
          ),

          if (descripcion != null) // Es una nueva funcionalidad de dart
          Container(
            alignment: AlignmentDirectional.centerEnd, //
            padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
            child: Text(descripcion ?? '<sin dato>'),
          )
          
        ],
      ),
    );
  }
}