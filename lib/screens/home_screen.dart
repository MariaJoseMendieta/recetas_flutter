import 'package:flutter/material.dart';
import 'package:recetas_flutter/components/app_drawer.dart';

//Define una clase HomeScreen que representa la pantalla de inicio.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Barra superior de la pantalla.
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
      //drawer es el panel lateral deslizable que contiene el menú de navegación.
      drawer: AppDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Texto principal de bienvenida.
              Text(
                'Bienvenido a tu Galería de Recetas! 🍲',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8.0),
              //Texto descriptivo con íconos y explicación.
              Text(
                'Esta aplicación te permite explorar recetas de forma rápida y sencilla.\n'
                '📋 Revisa una lista de deliciosas recetas con imágenes\n'
                '🗂️ Organiza tus recetas por categorías como dulce, salada y todas.\n'
                'Usa el menú desplegable para navegar entre las secciones disponibles. ¡Empieza a cocinar ahora!',
                style: TextStyle(fontSize: 18.0),
              ),
              //Imagen desde internet que complementa visualmente la pantalla.
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
