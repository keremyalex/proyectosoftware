import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:proyectosoftware/pages/chat_page.dart';
import 'package:proyectosoftware/pages/inicio_page.dart';
//import 'package:proyectosoftware/labs/inicio_page.dart';
import 'package:proyectosoftware/pages/principal_page.dart';
import 'package:proyectosoftware/pages/slideshow_page.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gimnasio Software',
      initialRoute: 'SlideShowPage',
      routes: {
        'SlideShowPage': (context) => SlideShowPage(),
        'InicioPage': (context) => InicioPage(),
        'PrincipalPage': (context) => PrincipalPage(),
        'ChatPage': (context) => ChatPage(),
      },
    );
  }
}
