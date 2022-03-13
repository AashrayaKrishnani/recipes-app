import 'package:flutter/material.dart';

import '../models/category.dart';

class CategoriesItem extends StatefulWidget {
  final Category category;

  const CategoriesItem({Key? key, required this.category}) : super(key: key);

  @override
  State<CategoriesItem> createState() => _CategoriesItemState();
}

class _CategoriesItemState extends State<CategoriesItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Text(
        widget.category.title,
        style: Theme.of(context).textTheme.headline6,
        softWrap: true,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            widget.category.color.withOpacity(0.7),
            widget.category.color.withOpacity(1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
