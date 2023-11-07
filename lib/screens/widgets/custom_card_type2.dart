import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 10,      
      child: Column(
        children: [
          Image(
            image: NetworkImage("https://hips.hearstapps.com/hmg-prod/images/guardians-of-the-galaxy-vol-3-1669723786.jpg"),
          ),
        ],
      ),
    );
  }
}