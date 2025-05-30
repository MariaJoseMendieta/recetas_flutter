import 'package:flutter/material.dart';
import 'package:recetas_flutter/components/app_drawer.dart';
import 'package:recetas_flutter/components/Recipe.dart';
import 'package:recetas_flutter/screens/recipe_detail_page.dart';

class RecipesScreen extends StatefulWidget {
  @override
  State<RecipesScreen> createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<RecipesScreen> {
  final List<Recipe> recipes = [
    Recipe(
      title: 'Bandeja Paisa',
      imageUrl:
          'https://www.196flavors.com/wp-content/uploads/2021/06/bandeja-paisa-2fp.jpg',
      steps: [
        'Cocina los frijoles con zanahoria y condimentos hasta que estén suaves.',
        'Prepara arroz blanco y fríe el chicharrón y el chorizo.',
        'Fríe un huevo y plátano maduro en tajadas.',
        'Sirve todo junto con arepa y aguacate.',
      ],
      type: 'Salada',
    ),
    Recipe(
      title: 'Ajiaco Santafereño',
      imageUrl:
          'https://www.seriouseats.com/thmb/-bNSGtLxPSHmwJHTYr5YdKs8Xxk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/ajiaco-colombian-potato-soup-hero-24ae1887fec444b5870127bed64f6ce6.jpg',
      steps: [
        'Hierve pechuga de pollo con cebolla y sal; desmenúzala.',
        'En el caldo, añade papas criollas, sabaneras y pastusas, junto con mazorca y guascas.',
        'Cocina hasta que las papas se deshagan y espesen el caldo.',
        'Sirve con crema de leche, alcaparras y aguacate.',
      ],
      type: 'Salada',
    ),
    Recipe(
      title: 'Sancocho Colombiano',
      imageUrl:
          'https://i0.wp.com/www.pasionthermomix.co/wp-content/uploads/2018/11/sancocho2-1.jpg?fit=1280%2C800&ssl=1',
      steps: [
        'En una olla grande, sofríe cebolla, tomate y ajo.',
        'Agrega carne (res, pollo o cerdo) y agua; cocina hasta que la carne esté tierna.',
        'Añade yuca, plátano verde, papa y mazorca; cocina hasta que estén suaves.',
        'Sazona con sal, comino y cilantro al gusto.',
      ],
      type: 'Salada',
    ),
    Recipe(
      title: 'Lechona Tolimense',
      imageUrl:
          'https://files.alerta.rcnradio.com/alerta_tolima_prod/public/styles/article_desktop/public/migration/lechona_tolimense.png?itok=aPygppiq',
      steps: [
        'Cocina arvejas amarillas hasta que estén suaves.',
        'Sofríe carne de cerdo picada con cebolla, ajo y condimentos.',
        'Mezcla la carne con arroz cocido y las arvejas.',
        'Rellena la piel de cerdo con la mezcla y hornea hasta que la piel esté crujiente.',
      ],
      type: 'Salada',
    ),
    Recipe(
      title: 'Tamales Tolimenses',
      imageUrl:
          'https://d2yoo3qu6vrk5d.cloudfront.net/images/20221104183741/cropped-fotojet-61-1-3.webp',
      steps: [
        'Prepara una masa con harina de maíz, caldo y condimentos.',
        'Sofríe carne de cerdo y pollo con cebolla, ajo y especias.',
        'En hojas de plátano, coloca una porción de masa, carne, papa y zanahoria.',
        'Envuelve y amarra las hojas; cocina al vapor durante 2-3 horas.',
      ],
      type: 'Salada',
    ),
    Recipe(
      title: 'Arepas Colombianas',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-RI8G4zADzQaROvZ1r3BriYhgXWR7D3juXg&s',
      steps: [
        'Mezcla harina de maíz precocida con agua, sal y mantequilla hasta obtener una masa suave.',
        'Forma bolas y aplánalas en forma de discos.',
        'Cocina en una sartén caliente hasta que estén doradas por ambos lados.',
        'Opcional: rellena con queso antes de cocinar.',
      ],
      type: 'Salada',
    ),
    Recipe(
      title: 'Empanadas Colombianas',
      imageUrl:
          'https://www.labuena.com.co/wp-content/uploads/2020/11/empanadas-colombianas-imagen-destacada.jpg',
      steps: [
        'Prepara una masa con harina de maíz precocida, agua, aceite y sal.',
        'Cocina carne molida con cebolla, ajo y condimentos; mezcla con papa cocida y triturada.',
        'Forma discos de masa, coloca el relleno en el centro y cierra en forma de media luna.',
        'Fríe en aceite caliente hasta que estén doradas.',
      ],
      type: 'Salada',
    ),
    Recipe(
      title: 'Pandebono',
      imageUrl:
          'https://vecinavegetariana.com/wp-content/uploads/2021/10/Pandebonos-Colombianos-Colombian-Cassave-Cheese-Bread-1.jpg',
      steps: [
        'Mezcla almidón de yuca, queso rallado, huevo y un poco de leche hasta obtener una masa homogénea.',
        'Forma pequeñas bolas y colócalas en una bandeja para hornear.',
        'Hornea a 200°C (400°F) durante 15-20 minutos o hasta que estén dorados.',
      ],
      type: 'Salada',
    ),
    Recipe(
      title: 'Aborrajados',
      imageUrl:
          'https://cdn0.recetasgratis.net/es/posts/2/5/8/aborrajados_colombianos_55852_600_square.jpg',
      steps: [
        'Corta plátanos maduros en rodajas gruesas y fríelas ligeramente.',
        'Abre las rodajas y rellena con queso (y opcionalmente bocadillo).',
        'Sujeta con palillos, pasa por una mezcla de harina y huevo batido.',
        'Fríe hasta que estén dorados y crujientes.',
      ],
      type: 'Dulce',
    ),
    Recipe(
      title: 'Changua',
      imageUrl:
          'https://premier.com.co/wp-content/uploads/2024/04/changua.webp',
      steps: [
        'Hierve 2 tazas de agua y 4 tazas de leche con 3 cebollas largas picadas y sal al gusto.',
        'Cuando hierva, reduce el fuego y agrega 4 huevos, uno a uno, sin romper las yemas.',
        'Cocina a fuego lento hasta que las claras estén cocidas.',
        'Sirve caliente, espolvoreando cilantro fresco picado y acompañando con pan tostado o calado.',
      ],
      type: 'Salada',
    ),
    Recipe(
      title: 'Sudado de Pollo',
      imageUrl:
          'https://i0.wp.com/jennyisbaking.com/wp-1c174-content/uploads/2024/08/Pollo-sudado-aus-Kolumbien-1.jpg?ssl=1',
      steps: [
        'En una olla, calienta 1 cucharada de aceite y sofríe ½ taza de cebolla picada, ½ taza de pimentón rojo picado y 1 diente de ajo picado.',
        'Agrega 8 muslos de pollo sin piel y dóralos por ambos lados.',
        'Incorpora 2 tazas de tomate picado, 1 cucharada de sazón con azafrán, ½ cucharadita de comino, sal y pimienta al gusto.',
        'Añade 8 papas pequeñas peladas y cortadas por la mitad, y 3 tazas de caldo de pollo.',
        'Cocina a fuego medio hasta que el pollo y las papas estén tiernos.',
        'Espolvorea ½ taza de cilantro fresco picado antes de servir.',
      ],
      type: 'Salada',
    ),
    Recipe(
      title: 'Arroz de Coco',
      imageUrl:
          'https://cloudfront-us-east-1.images.arcpublishing.com/infobae/43YK7ZLPFBBVVBMKMXVWYMGRQ4.jpeg',
      steps: [
        'En una olla, vierte 1 lata de leche de coco y lleva a ebullición a fuego medio.',
        'Cocina la leche de coco a fuego medio-bajo durante 25-30 minutos, removiendo constantemente, hasta que se evapore y se formen pequeños grumos.',
        'Agrega 2 tazas de arroz lavado, 2 tazas de agua, 1 cucharadita de sal y 1 cucharadita de azúcar (opcional).',
        'Lleva a hervir, luego reduce el fuego, tapa y cocina por 20 minutos o hasta que el arroz esté cocido.',
        'Deja reposar 5 minutos antes de servir.',
      ],
      type: 'Dulce',
    ),
    Recipe(
      title: 'Buñuelos',
      imageUrl:
          'https://okrecetas.com/recetas-de-navidad/img600/bugnuelosantioquia.jpg',
      steps: [
        'Mezcla 1 taza de almidón de yuca, ½ taza de queso costeño rallado, 1 huevo y 2 cucharadas de azúcar hasta obtener una masa homogénea.',
        'Forma bolitas de aproximadamente 5 cm de diámetro.',
        'Calienta aceite en una olla a fuego medio y fríe las bolitas hasta que estén doradas y crujientes.',
        'Escurre sobre papel absorbente y sirve calientes.',
      ],
      type: 'Salada',
    ),
    Recipe(
      title: 'Natilla',
      imageUrl:
          'https://colmaiz.co/wp-content/uploads/2019/03/Producto-Preparacion-Natilla-1024x1024-1.png',
      steps: [
        'En una olla, mezcla 4 tazas de leche con ¾ taza de maicena, ½ taza de azúcar morena, 1 cucharadita de canela en polvo y 1 cucharadita de extracto de vainilla.',
        'Cocina a fuego medio, revolviendo constantemente hasta que la mezcla espese.',
        'Añade 2 cucharadas de mantequilla y mezcla bien.',
        'Vierte en un molde, deja enfriar y refrigera hasta que cuaje.',
        'Desmolda y espolvorea canela en polvo antes de servir.',
      ],
      type: 'Dulce',
    ),
  ];

  // String selectedType = 'Todas';

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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipeDetailPage(recipe: recipe),
                  ),
                );
              },
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
