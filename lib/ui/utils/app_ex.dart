import 'package:flutter/cupertino.dart';

extension AppWidget on num {
  get toHeight => SizedBox(
        height: toDouble(),
      );

  get toWidth => SizedBox(
        height: toDouble(),
      );
}
