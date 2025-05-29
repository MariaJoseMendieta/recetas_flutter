import 'package:flutter/material.dart';
import 'package:recetas_flutter/components/app_drawer.dart';
import 'package:recetas_flutter/components/Recipe.dart';

class RecipesScreen extends StatelessWidget {
  //const RecipesScreen({super.key});

  final List<Recipe> recipes = [
    Recipe(
      title: 'California Roll',
      imageUrl: 'https://ohsushi.es/img/11447-500x500.webp',
    ),
    Recipe(
      title: 'Ensalada César',
      imageUrl:
          'https://www.hola.com/horizon/square/5f7047fbd397-portada-cesar-adobe-t.jpg?im=Resize=(640),type=downsize',
    ),
    Recipe(
      title: 'Bandeja Paisa',
      imageUrl:
          'https://www.196flavors.com/wp-content/uploads/2021/06/bandeja-paisa-2fp.jpg',
    ),
    Recipe(
      title: 'Ajiaco Santafereño',
      imageUrl:
          'https://www.seriouseats.com/thmb/-bNSGtLxPSHmwJHTYr5YdKs8Xxk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/ajiaco-colombian-potato-soup-hero-24ae1887fec444b5870127bed64f6ce6.jpg',
    ),
    Recipe(
      title: 'Sancocho Colombiano',
      imageUrl:
          'https://i0.wp.com/www.pasionthermomix.co/wp-content/uploads/2018/11/sancocho2-1.jpg?fit=1280%2C800&ssl=1',
    ),
    Recipe(
      title: 'Lechona Tolimense',
      imageUrl:
          'https://files.alerta.rcnradio.com/alerta_tolima_prod/public/styles/article_desktop/public/migration/lechona_tolimense.png?itok=aPygppiq',
    ),
    Recipe(
      title: 'Tamales Tolimenses',
      imageUrl:
          'https://d2yoo3qu6vrk5d.cloudfront.net/images/20221104183741/cropped-fotojet-61-1-3.webp',
    ),
    Recipe(
      title: 'Arepas Colombianas',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-RI8G4zADzQaROvZ1r3BriYhgXWR7D3juXg&s',
    ),
    Recipe(
      title: 'Empanadas Colombianas',
      imageUrl:
          'https://www.labuena.com.co/wp-content/uploads/2020/11/empanadas-colombianas-imagen-destacada.jpg',
    ),
    Recipe(
      title: 'Pandebono',
      imageUrl:
          'https://vecinavegetariana.com/wp-content/uploads/2021/10/Pandebonos-Colombianos-Colombian-Cassave-Cheese-Bread-1.jpg',
    ),
    Recipe(
      title: 'Aborrajados',
      imageUrl:
          'https://cdn0.recetasgratis.net/es/posts/2/5/8/aborrajados_colombianos_55852_600_square.jpg',
    ),
    Recipe(
      title: 'Changua',
      imageUrl:
          'https://premier.com.co/wp-content/uploads/2024/04/changua.webp',
    ),
    Recipe(
      title: 'Sudado de Pollo',
      imageUrl:
          'https://i0.wp.com/jennyisbaking.com/wp-1c174-content/uploads/2024/08/Pollo-sudado-aus-Kolumbien-1.jpg?ssl=1',
    ),
    Recipe(
      title: 'Arroz de Coco',
      imageUrl:
          'https://cloudfront-us-east-1.images.arcpublishing.com/infobae/43YK7ZLPFBBVVBMKMXVWYMGRQ4.jpeg',
    ),
    Recipe(
      title: 'Buñuelos',
      imageUrl:
          'https://okrecetas.com/recetas-de-navidad/img600/bugnuelosantioquia.jpg',
    ),
    Recipe(
      title: 'Natilla',
      imageUrl:
          'https://colmaiz.co/wp-content/uploads/2019/03/Producto-Preparacion-Natilla-1024x1024-1.png',
    ),
  ];
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
      //Lista desplazable (scrollable)
      body: ListView.builder(
        //Le dice a la lista cuántos elementos debe mostrar
        itemCount: recipes.length,
        //Esta es una función que se ejecuta para construir cada ítem de la lista. Se repite tantas veces como el itemCount
        itemBuilder: (BuildContext context, int index) {
          //Obtenemos la receta correspondiente al índice actual desde la lista recipes
          final recipe = recipes[index];
          return Card(
            //Establece un margen externo
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              //La imagen de la receta se carga desde una URL en internet y se coloca a la izquierda del título
              leading: Image.network(
                recipe.imageUrl,
                width: 50.0,
                height: 50.0,
                fit: BoxFit.cover,
                //Si hay un error al cargar la imagen, en lugar de dejar un espacio en blanco o romper la app, muestra el ícono
                errorBuilder:
                    (context, error, stackTrace) => Icon(Icons.broken_image),
              ),
              //Muestra el título de la receta como texto principal del ListTile
              title: Text(recipe.title),
            ),
          );
        },
      ),
    );
  }
}
