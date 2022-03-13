import 'package:flutter/material.dart';

class Category {
  final String title;
  final Color color;

  const Category({required this.title, required this.color});

  String get id {
    return Object.hash(title, color).toString();
  }
}
