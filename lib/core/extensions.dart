import 'package:flutter/material.dart';

extension BuildContextEntension<T> on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
}
