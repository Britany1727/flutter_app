import 'package:flutter/material.dart';

import '../widgets/proyecto_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Colo fondo de la pantalla
      backgroundColor: Colors.grey[100],

      //Barra superior
      appBar: AppBar(
        title: const Text('Mi Portafolio'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      //Contenido Principal con una lista de proyectos
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView( 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children:[
            Text(
              'Mis proyectos',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),

            const SizedBox(height: 16),

            const ProyectoCard(),
          ]      
        )
      )
      )
    );
  }
}
