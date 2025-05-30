import 'package:flutter/material.dart';
import 'package:recetas_flutter/components/app_drawer.dart';

// Representa la pantalla de "Acerca de" de la aplicación.
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFB74D),
        title: Text('Acerca de'),
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
      //Menú lateral importado desde otro archivo.
      drawer: AppDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Icono de advertencia en color naranja.
              Icon(Icons.warning_amber, size: 150.0, color: Color(0xFFE65100)),
              //Texto descriptivo sobre la app.
              Text(
                'App creada para practicar Flutter y POO. Desarrollada por Maria Jose Mendieta.',
                style: TextStyle(fontSize: 25.0),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
