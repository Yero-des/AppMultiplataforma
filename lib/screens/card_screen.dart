import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/widgets/widgets.dart';

class NosotrosScreen extends StatelessWidget {
   
  const NosotrosScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.keyboard_option_key),
        title: const Text("Card Widget"),
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2()
        ],
      )
    );
  }
}
