import 'package:flutter/material.dart';
import 'package:recetas_flutter/screens/home_screen.dart';
import 'package:recetas_flutter/screens/recipe_detail_page.dart';
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
      initialRoute: 'home_screen',
      routes: {
        'home_screen': (context) => HomeScreen(),
        'recipes_screen': (context) => RecipesScreen(),
        'about_screen': (context) => AboutScreen(),
      },
    );
  }
}
