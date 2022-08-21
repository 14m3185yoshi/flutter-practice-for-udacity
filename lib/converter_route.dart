import 'package:flutter/material.dart';
import './unit.dart';

class ConverterRoute extends StatelessWidget {
  final Color color;
  final List<Unit> units;

  const ConverterRoute({Key? key, required this.color, required this.units})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final unitWidgets = units.map((Unit unit) {
      return Container(
          color: color,
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(16),
          child: Column(children: <Widget>[
            Text(unit.name!, style: Theme.of(context).textTheme.headline5),
            Text('Conversion: ${unit.conversion}',
                style: Theme.of(context).textTheme.subtitle1)
          ]));
    }).toList();

    return ListView(children: unitWidgets);
  }
}
