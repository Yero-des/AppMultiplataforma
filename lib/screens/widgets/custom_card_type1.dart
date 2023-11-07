import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(              
        children: [
          const ListTile(
            leading: Icon(Icons.album_outlined),
            title: Text("Soy un item dentro de un card"),
            subtitle: Text("Esto es un subtitulo como referencia para la APP"),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:  [
                TextButton(
                  onPressed: () => {}, 
                  child: const Text("Cancelar")
                ),
                TextButton(
                  onPressed: () => {}, 
                  // style: TextButton.styleFrom(primary: Colors.green),  
                  child: const Text("Ok")
                )
              ],
            ),
          )
        ],        
      ),
    );
  }
}