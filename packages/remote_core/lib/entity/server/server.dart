import 'package:dio/dio.dart';

//this is base Dio
final Dio dio = Dio(BaseOptions(
    baseUrl:
        "https://raw.githubusercontent.com/mes71/fakeApi/master/Cup_Coffee/"));

//for get popular coffee
Future<Response> getPopularCoffee() async =>
    await dio.get("popular_coffee.json");

//for get Nearest coffee shop
Future<Response> getNearestCoffeeShops() async =>
    await dio.get("nearest_coffee_shop.json");
