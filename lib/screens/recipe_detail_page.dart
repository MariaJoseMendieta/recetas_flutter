import 'package:flutter/material.dart';
import 'package:recetas_flutter/components/Recipe.dart';
import 'package:recetas_flutter/components/app_drawer.dart';

class RecipeDetailPage extends StatelessWidget {
  const RecipeDetailPage({super.key, required this.recipe});
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFB74D),
        title: Text('Galería de Recetas'),
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              recipe.imageUrl,
              height: 200.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Text(
              'Pasos:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            ...recipe.steps.map(
              (step) => Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text('• $step', style: TextStyle(fontSize: 18.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
