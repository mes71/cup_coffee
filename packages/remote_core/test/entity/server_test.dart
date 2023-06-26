import 'dart:convert';

import 'package:remote_core/entity/server/server.dart';
import 'package:test/test.dart';

void main() {
  group("Successful API Request", () {
    test("status code", () async {
      var response = await getPopularCoffee();
      expect(response.statusCode, 200);
    });

    test("has data", () async {
      var response = await getPopularCoffee();
      expect(response.data, isNotNull);
      expect(response.data, isNotEmpty);
      var json = jsonDecode(response.data);
      expect(json['data'].runtimeType, List<dynamic>);
    });
  });
}
