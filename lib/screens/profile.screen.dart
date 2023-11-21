import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
   
  const ProfileScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Yeromi Zavala Castillo",
          style: TextStyle(
            color: Colors.white,            
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: const CircleAvatar(
              child: Text("YZC"),
            ),
          )
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              maxRadius: 150,
              backgroundImage: NetworkImage("https://acortar.link/YrL0iM"),
            ),
            SizedBox(height: 20,),
            Text("Yeromi",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
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