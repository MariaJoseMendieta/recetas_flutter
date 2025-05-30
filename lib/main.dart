import 'package:flutter/material.dart';
import 'package:recetas_flutter/screens/home_screen.dart';
import 'package:recetas_flutter/screens/recipes_screen.dart';
import 'package:recetas_flutter/screens/about_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Establece la pantalla inicial que se muestra al abrir la app.
      initialRoute: 'home_screen',
      //Define las rutas de navegación que usará la aplicación.
      routes: {
        //Ruta para la pantalla de inicio.
        'home_screen': (context) => HomeScreen(),
        //Ruta para la pantalla de recetas.
        'recipes_screen': (context) => RecipesScreen(),
        //Ruta para la pantalla de información "Acerca de".
        'about_screen': (context) => AboutScreen(),
      },
    );
  }
}
