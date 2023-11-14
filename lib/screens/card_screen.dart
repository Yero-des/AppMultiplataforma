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
          TitleWidget(title: 'Peliculas',),
          CustomCardType2(),
          SizedBox(height: 10,),          
          TitleWidget(title: 'Comentarios',),
          SizedBox(height: 10,),
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType1(),
          SizedBox(height: 10,),          
          TitleWidget(title: 'Videojuegos',),
          SizedBox(height: 10,),
          CustomCardType3(imageUrl: "https://media.wired.com/photos/639bf35a24c352e627eccc43/master/pass/Ragnaro%CC%88k-culture-ar1qdh.jpg", descripcion: 'Good of war',),
          SizedBox(height: 10,),
          CustomCardType3(imageUrl: "https://www.lavanguardia.com/files/og_thumbnail/uploads/2021/12/07/61af8791b8aac.png", descripcion: 'Halo 3',),
          SizedBox(height: 10,),
          CustomCardType3(imageUrl: "https://www.lavanguardia.com/files/og_thumbnail/uploads/2021/12/07/61af8791b8aac.png",)
        ],
      )
    );
  }
}

class TitleWidget extends StatelessWidget {

  final String title;

  const TitleWidget({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.centerStart, //
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
      child: Text(title,
        style: const TextStyle(
          fontWeight: FontWeight.bold, 
          fontSize: 20
        ),
      ),
    );
  }
}
