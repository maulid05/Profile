import 'package:flutter/material.dart';

class Screensize {
  final BuildContext context;

  Screensize(this.context);

  double get lebar => MediaQuery.of(context).size.width;
  double get tinggi => MediaQuery.of(context).size.height;

  bool get mobile => lebar <= 700;
  bool get desktop => lebar > 700;
}
