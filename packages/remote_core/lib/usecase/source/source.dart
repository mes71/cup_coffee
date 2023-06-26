import 'package:remote_core/entity/entity.dart';
import 'package:remote_core/entity/server/server.dart';

abstract class IDataSource {
  Future<List> getPopularCoffeeDataSource();

  Future<List> getNearestCoffeeShopDataSource();
}

class DataSource extends IDataSource {
  @override
  Future<List> getNearestCoffeeShopDataSource() async {
    List res = List.empty();

    var response = await getPopularCoffee();

    for (var item in response.data['data']) {
      res.add(getPopularCoffeeFromJson(item));
    }

    return res;
  }

  @override
  Future<List> getPopularCoffeeDataSource() async {
    List res = List.empty();

    var response = await getNearestCoffeeShops();

    for (var item in response.data['data']) {
      res.add(getNearestCoffeeShopFromJson(item));
    }

    return res;
  }
}
