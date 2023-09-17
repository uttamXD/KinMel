import 'package:flutter/material.dart';

class Constant {
  static const mainPadding = EdgeInsets.all(8);
  static const screenPadding = EdgeInsets.fromLTRB(
      26, 0, 27, 0); //left and right padding for main container used in pages

//large sizedBox
  static const lHeight = SizedBox(
    height: 400,
  );
  final lWidth = const SizedBox(
    width: 40,
  );

//medium sizedBox
  final mHeight = const SizedBox(
    height: 20,
  );
  final mWidth = const SizedBox(width: 20);

//small sizedBox
  final sHeight = const SizedBox(height: 10);
  final sWidth = const SizedBox(width: 10);
}
