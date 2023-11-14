import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({
    super.key,
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

          // Image(
          //   image: NetworkImage("https://hips.hearstapps.com/hmg-prod/images/guardians-of-the-galaxy-vol-3-1669723786.jpg"),            
          // ),

          const FadeInImage(
            placeholder: AssetImage("assets/jar-loading.gif"),
            image: NetworkImage("https://imgmedia.larepublica.pe/640x371/larepublica/original/2023/10/14/652b2299fe9d3b7919256ae3.webp"
            ),
            width: double.infinity,
            fit: BoxFit.contain, // Important property
            fadeInDuration: Duration(milliseconds: 300),
          ),

          Container(
            alignment: AlignmentDirectional.centerEnd, //
            padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
            child: const Text("Peliculas en cartelera"),
          )
          
        ],
      ),
    );
  }
}