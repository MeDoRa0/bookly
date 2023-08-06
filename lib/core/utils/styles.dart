import 'package:bookly/constant.dart';
import 'package:flutter/material.dart';

//this class to use it with text for spacific font
abstract class Styles {
  static const textStyle18 = TextStyle(
    fontSize: 18,
    //font weight semi-bold
    fontWeight: FontWeight.w600,
  );
  static const textStyle20 = TextStyle(
    fontSize: 20,
    //font weight regular
    fontWeight: FontWeight.normal,
  );
  static const textStyle14 = TextStyle(
    fontSize: 14,
    //font weight regular
    fontWeight: FontWeight.normal,
  );
  static const textStyle16 = TextStyle(
    fontSize: 16,
    //font weight medium
    fontWeight: FontWeight.w500,
  );
  static const textStyle30 = TextStyle(
    fontSize: 30,
    //font weight regular
    fontWeight: FontWeight.normal,
    fontFamily: kGTSectraFine,
  );
}
