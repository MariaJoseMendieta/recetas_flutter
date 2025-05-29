import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/comida.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            curve: Curves.fastOutSlowIn,
            child: Stack(
              children: [
                Positioned(
                  bottom: 5.0,
                  child: Text(
                    'Recetas',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(context, 'home_screen');
            },
            title: Text('Inicio'),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(context, 'recipes_screen');
            },
            title: Text('Galería de recetas'),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(context, 'about_screen');
            },
            title: Text('Acerca de'),
          ),
        ],
      ),
    );
  }
}
