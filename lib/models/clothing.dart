class Clothes {
  String name;
  String price;
  String imagePath;
  String rating;

  Clothes({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.rating,
  });

  // Getter methods
  String get _name => name;
  String get _price => price;
  String get _imagePath => imagePath;
  String get _rating => rating;
}