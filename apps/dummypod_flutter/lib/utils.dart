import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  pushPage(WidgetBuilder builder) =>
      Navigator.of(this).push(MaterialPageRoute(builder: builder));
}
