import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  final Function getFilters;
  final Function updateFilters;

  const FiltersScreen(
      {Key? key, required this.getFilters, required this.updateFilters})
      : super(key: key);

  static const String route = '/filters';

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var filters;

  Widget buildSwitchButtonTile(String title, String subtitle) {
    return SwitchListTile(
      title: Text(title, style: Theme.of(context).textTheme.headline6),
      subtitle: Text(subtitle),
      value: filters[title]['value'],
      onChanged: (changed) {
        setState(
          () {
            filters[title]['value'] = changed;
            widget.updateFilters(filters);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    filters = widget.getFilters();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Filters'),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            child: Text(
              'Cookery Hide-N-Seek',
              style:
                  Theme.of(context).textTheme.headline6?.copyWith(fontSize: 30),
            ),
            alignment: Alignment.center,
          ),
          Expanded(
            child: ListView(
              children: (filters as Map)
                  .keys
                  .map(
                    (key) =>
                        buildSwitchButtonTile(key, filters[key]['subtitle']),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
      drawer: const MainDrawer(),
    );
  }
}
