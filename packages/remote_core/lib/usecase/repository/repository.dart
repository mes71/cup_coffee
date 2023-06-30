import 'package:remote_core/usecase/source/source.dart';

abstract class IRepository {
  Future<List> getPopularCoffee();

  Future<List> getNearestCoffeeShop();
}

class Repository extends IRepository {
  late IDataSource _dataSource;

  Repository._() {
    this._dataSource = DataSource();
  }

  @override
  Future<List> getNearestCoffeeShop() =>
      _dataSource.getPopularCoffeeDataSource();

  @override
  Future<List> getPopularCoffee() =>
      _dataSource.getNearestCoffeeShopDataSource();
}
