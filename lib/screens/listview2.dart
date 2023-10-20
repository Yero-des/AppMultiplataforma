import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
   
  final options = const ['Chino', 'Peruano', 'Japones', 'Chileno', 'Argenito', 'Coreano'];
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(

      appBar: AppBar(
        title: const Text("Countries amazing"),
        backgroundColor: Colors.redAccent,
        elevation: 0,
      ),

      body: ListView.separated(

        // List with separator
        itemBuilder: (context, index) => ListTile(

          leading: const Icon(Icons.map, color: Colors.white),
          title: Text(
            options[index], 
            style: const TextStyle(
              color: Colors.white
            )
          ),
          trailing: const Icon(Icons.place_rounded, color: Colors.white),

          onTap: () {
            final opt = options[index];
            print(opt);
          },
        ), 

        separatorBuilder: ((context, index) => const Divider(color: Colors.white,)),
        itemCount: options.length
      ),

      backgroundColor: Colors.black87,

    );
  }
}

