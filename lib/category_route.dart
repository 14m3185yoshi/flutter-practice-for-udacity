import 'dart:developer';

import 'package:flutter/material.dart';
import './unit.dart';
import './category.dart';

final _backgroundColor = Colors.red[100];

class CategoryRoute extends StatefulWidget {
  const CategoryRoute({Key? key}) : super(key: key);

  @override
  _CategoryRouteState createState() => _CategoryRouteState();
}

class _CategoryRouteState extends State<CategoryRoute> {
  final _categories = <Category>[];

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

// 初期化時毎回発火する
  @override
  void initState() {
    super.initState();
    for (var i = 0; i < _categoryNames.length; i++) {
      _categories.add(Category(
          name: _categoryNames[i],
          color: _baseColors[i] as ColorSwatch<dynamic>,
          iconLocation: Icons.cake,
          units: _retrieveUnitList(_categoryNames[i])));
    }
  }

  Widget _buildCategoryWidgets(List<Widget> categories) {
    return ListView.builder(
        itemBuilder: (BuildContext context, int index) => categories[index],
        itemCount: categories.length);
  }

  List<Unit> _retrieveUnitList(String categoryName) {
    return List.generate(10, (int i) {
      i += 1;
      return Unit(name: '$categoryName Unit $i', conversion: i.toDouble());
    });
  }

  @override
  Widget build(BuildContext context) {
    final listView = Container(
      color: _backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: _buildCategoryWidgets(_categories),
    );

    final appBar = AppBar(
        elevation: 0,
        title: const Text('Unit Converter',
            style: TextStyle(color: Colors.black, fontSize: 30)));

    return Scaffold(appBar: appBar, body: listView);
  }
}
