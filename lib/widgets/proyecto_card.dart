import 'package:flutter/material.dart';

class ProyectoCard extends StatelessWidget {
  const ProyectoCard({super.key});

  @override
  Widget build(BuildContext context) {
    // ===========================================
    // WIDGET 1: Container
    // Es una "caja" que contiene otros widgets
    // Permite agregar color, bordes, padding, etc.
    // ===========================================
    return Container(
      // Espacio INTERNO (entre el borde y el contenido)
      padding: const EdgeInsets.all(20),

      // Decoración del contenedor
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        // Sombra para dar efecto de elevación
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),

      // ===========================================
      // WIDGET 2: Column
      // Organiza widgets de arriba hacia abajo
      // ===========================================
      child: SingleChildScrollView(
      child: Column(
        // Alinear contenido a la izquierda
        crossAxisAlignment: CrossAxisAlignment.start,
        // Ajustar altura al contenido (no expandir)
        mainAxisSize: MainAxisSize.min,
        children: [
          // ===========================================
          // WIDGET 3: Text
          // Muestra texto en pantalla
          // ===========================================
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              'https://picsum.photos/400/200', // URL de imagen de prueba
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 16),

          // Título del proyecto
          Text(
            'Sistema de Gestión de Biblioteca', // 👈 CAMBIA ESTE TEXTO
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue[800],
            ),
          ),

          const SizedBox(height: 8),

          // Descripción del proyecto
          Text(
            'Aplicación web para gestionar préstamos de libros, '
            'registro de usuarios y catálogo digital. Desarrollado '
            'como proyecto final del módulo de programación.', // 👈 CAMBIA ESTE TEXTO
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
              height: 1.5, // Espacio entre líneas
            ),
          ),

          const SizedBox(height: 16),

          // Tecnologías usadas (dentro de un Container con estilo)
          Wrap(
            spacing: 8, // Espacio horizontal entre chips
            runSpacing: 8, // Espacio vertical entre filas
            children: [
              Chip(
                label: const Text('Flutter'),
                backgroundColor: Colors.blue[50],
                labelStyle: TextStyle(color: Colors.blue[700], fontSize: 12),
              ),
              Chip(
                label: const Text('Dart'),
                backgroundColor: Colors.blue[50],
                labelStyle: TextStyle(color: Colors.blue[700], fontSize: 12),
              ),
              Chip(
                label: const Text('Firebase'),
                backgroundColor: Colors.orange[50],
                labelStyle: TextStyle(color: Colors.orange[700], fontSize: 12),
              ),
            ],
          ),


          const SizedBox(height: 12),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Progreso: 70%', 
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 4),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: LinearProgressIndicator(
                  value: 0.7, // Valor entre 0.0 y 1.0
                  minHeight: 8,
                  backgroundColor: Colors.grey[300],
                  valueColor:  const AlwaysStoppedAnimation<Color>(Colors.green),
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),
          // Estado del proyecto
          Text(
            'Estado: En desarrollo', // 👈 CAMBIA ESTE TEXTO
            style: TextStyle(
              fontSize: 12,
              color: Colors.green[600],
              fontWeight: FontWeight.w500,
            ),
          ),

          // Fecha del proyecto
          Row(
            children: [
              Icon(
                Icons.calendar_today,
                size:16,
                color:Colors.grey[600],
              ),
              const SizedBox(width: 8),
              Text(
                'Fecha: Julio 2026',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

// Botones de acción
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton.icon(
                onPressed: () {
                  // Acción al presionar (vacío por ahora)
                  print('Ver código presionado');
                },
                icon: const Icon(Icons.code, size: 18),
                label: const Text('Código'),
              ),
              const SizedBox(width: 8),
              ElevatedButton.icon(
                onPressed: () {
                  print('Ver demo presionado');
                },
                icon: const Icon(Icons.launch, size: 18),
                label: const Text('Demo'),
              ),
            ],
          ),


        ],
      ),
      )
    );
  }
}
