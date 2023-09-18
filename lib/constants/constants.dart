import 'package:flutter/material.dart';

class Constant {
  static const mainPadding = EdgeInsets.all(8);
  static const screenPadding = EdgeInsets.fromLTRB(
      26, 0, 27, 0); //left and right padding for main container used in pages

//large sizedBox
  static const lHeight = SizedBox(
    height: 400,
  );
  static const lWidth =  SizedBox(
    width: 40,
  );

//medium sizedBox
  static const mHeight =  SizedBox(
    height: 20,
  );
  static const mWidth =  SizedBox(width: 20);

//small sizedBox
  static const sHeight =  SizedBox(height: 10);
  static const sWidth =  SizedBox(width: 10);
}
