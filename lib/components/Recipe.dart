class Recipe {
  Recipe({
    required this.title,
    required this.imageUrl,
    required this.steps,
    required this.type,
  });
  final String title;
  final String imageUrl;
  final List<String> steps;
  final String type;
}
