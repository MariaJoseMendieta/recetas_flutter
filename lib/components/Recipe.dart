class Recipe {
  //Constructor de la clase
  Recipe({
    required this.title, //Almacena el título de la receta
    required this.imageUrl, //Guarda la URL de una imagen que representa la receta
    required this.steps, //Lista de pasos (List<String>) para preparar la receta
    required this.type, //Describe el tipo de la receta
  });
  final String title;
  final String imageUrl;
  final List<String> steps;
  final String type;
}
