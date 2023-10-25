import 'package:flutter/material.dart';

class Class {}
class MenuOption {

  final String router;
  final IconData data;
  final String name;
  final Widget widget;
  final Color? color;

  MenuOption({
    required this.router,
    required this.data,
    required this.name,
    required this.widget,
    this.color
  }); // Inicializamos una variable con constructor

}