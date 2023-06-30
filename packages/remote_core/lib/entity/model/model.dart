//get popular coffee from json
typedef Coffee = Record;

({
  num? id,
  String? title,
  List<String>? images,
  double? rating,
  Map<String, dynamic>? price,
  String? description,
  List<String>? ingredients,
  num? deliveredTime,
  String? location
}) getPopularCoffeeFromJson(Map<String, dynamic> json) {
  return (
    id: json['id'],
    title: json['title'],
    images: json['images'] != null ? json['images'].cast<String>() : [],
    rating: json['rating'],
    price: json['price'],
    description: json['description'],
    ingredients:
        json['ingredients'] != null ? json['ingredients'].cast<String>() : [],
    deliveredTime: json['deliveredTime'],
    location: json['location'],
  );
}

//get popular coffee shop from json

typedef CoffeeShop = Record;

({
  num? id,
  String? title,
  List<String>? images,
  num? rating,
  num? ratingCount,
  String? description,
  num? distance,
  num? latitude,
  num? longitude,
}) getNearestCoffeeShopFromJson(Map<String, dynamic> json) {
  return (
    id: json['id'],
    title: json['title'],
    images: json['images'] != null ? json['images'].cast<String>() : [],
    rating: json['rating'],
    ratingCount: json['rating_count'],
    description: json['description'],
    distance: json['distance'],
    latitude: json['latitude'],
    longitude: json['longitude '],
  );
}
