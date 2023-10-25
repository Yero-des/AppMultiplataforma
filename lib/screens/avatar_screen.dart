import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/models.dart';
import 'package:flutter_application_1/themes/theme.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);

  static final profile = Profile(img: "assets/img/profile.jpg", name: "Yeromi", lastName: "Zavala Castillo", rol: "Developer");
  
  static TextStyle profileTextDark ({
    Color color = AppTheme.light,
    double size = 30,
    FontWeight weight = FontWeight.bold,
  }) {
    return TextStyle(
      color: color,
      fontSize: size,
      fontWeight: weight,
    );
  }

  static Image languageImg({
    String src = "assets/languages/dart.png",
    double height = 30,
    double opacity = 0.4, // Valor por defecto de la opacidad
  }) {
    return Image(
      image: AssetImage(src),
      height: height,
      color: Colors.white.withOpacity(opacity), 
      colorBlendMode: BlendMode.modulate,   
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.dark,
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          crossAxisAlignment: CrossAxisAlignment.center,   
          children: [
            Container(
              padding: const EdgeInsets.all(10), // Espacio para el borde
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.green, // Color del borde
                  width: 3, // Ancho del borde
                ),
              ),
              child: const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("assets/profile.jpg"),
              ),
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [
                Text(profile.name, style: profileTextDark()), 
                const SizedBox(width: 10),
                Text(profile.lastName, style: profileTextDark()),
              ],
            ), 
            const SizedBox(height: 10),            
            Text(profile.rol, style: profileTextDark(color: Colors.red, size: 25)),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [
                languageImg(src: "assets/dart.png"),
                languageImg(src: "assets/mongo_db.png", height: 60, opacity: 0.6),
                languageImg(src: "assets/flutter.png", height: 80, opacity: 1.0),
                languageImg(src: "assets/javascript.png", height: 60, opacity: 0.6),
                languageImg(src: "assets/react.png"),
              ],
            ),  
          ],

        )
      ),

    );
  }
}