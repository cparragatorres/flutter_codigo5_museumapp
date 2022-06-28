
import 'package:flutter/material.dart';

class ResponsiveUI{

  double _height = 0;
  double _width = 0;

  ResponsiveUI(BuildContext context){
    Size _size = MediaQuery.of(context).size;
    _height = _size.height;
    _width = _size.width;
  }


}