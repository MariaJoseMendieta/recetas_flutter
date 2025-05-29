import 'package:flutter/material.dart';
import 'package:recetas_flutter/components/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFB74D),
        title: Text('Inicio'),
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
            );
          },
        ),
      ),
      drawer: AppDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bienvenido a tu Galería de Recetas! 🍲',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8.0),
              Text(
                'Esta aplicación te permite explorar recetas de forma rápida y sencilla.\n'
                '📋 Revisa una lista de deliciosas recetas con imágenes\n'
                '🗂️ Organiza tus recetas por categorías como postres, comidas rápidas, saludables y más.\n'
                'Usa el menú desplegable para navegar entre las secciones disponibles. ¡Empieza a cocinar ahora!',
                style: TextStyle(fontSize: 18.0),
              ),
              Image.network(
                'https://img.freepik.com/vector-gratis/hermosa-ama-casa-esta-cocinando-diseno-animacion-dibujos-animados-vector-ilustracion-cocina_40876-2541.jpg?semt=ais_hybrid&w=740',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
