import 'package:flutter/material.dart';

//Este widget representa el menú lateral (drawer) de la aplicación.
class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    //Crea el contenedor lateral (drawer)
    return Drawer(
      child: ListView(
        children: [
          //Cabecera del drawer, donde se puede colocar una imagen o información destacada.
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                //Imagen de fondo del drawer
                image: AssetImage('images/comida.jpg'),
                //Ajusta la imagen al tamaño del header.
                fit: BoxFit.fill,
              ),
            ),
            //Curva de animación de entrada/salida.
            curve: Curves.fastOutSlowIn,
            //Permite posicionar elementos libremente dentro del header.
            child: Stack(
              children: [
                //Posiciona el texto "Recetas" en la parte inferior del header.
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
          //Primer botón de navegación dentro del drawer.
          ListTile(
            onTap: () {
              //Cambia la pantalla actual a la pantalla 'home_screen'.
              Navigator.pushReplacementNamed(context, 'home_screen');
            },
            title: Text('Inicio'), //Texto que aparece en el botón.
          ),
          //Segundo botón que lleva a la galería de recetas.
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(context, 'recipes_screen');
            },
            title: Text('Galería de recetas'),
          ),
          //Tercer botón que lleva a la sección "Acerca de".
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
