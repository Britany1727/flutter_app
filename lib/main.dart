import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Quitar el banner de "DEBUG" en la esquina superior derecha
      debugShowCheckedModeBanner: false,

      //Titulo de la aplicacion
      title: 'Mi Portafolio',

      //Tema de colores de la app
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),

      //Pantalla iicial
      home: const HomeScreen(),
    );
  }
}
