 import 'package:flutter/material.dart';
 class ColorState{
  Color color = Colors.red;
  ColorState({required this.color});
}

class ColorInitialState extends ColorState{
  ColorInitialState() : super(color: Colors.yellow);
}
class ColorIncrementState extends ColorState{
  ColorIncrementState(Color increasedColor) : super(color: increasedColor);
}
class ColorDescrementState extends ColorState{
  ColorDescrementState(Color descreasedColor) : super(color: descreasedColor);
}