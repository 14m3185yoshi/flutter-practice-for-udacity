import 'package:flutter/material.dart';
import './unit.dart';
import './converter_route.dart';

const _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;
  final List<Unit> units;

  const Category(
      {Key? key,
      required this.name,
      required this.color,
      required this.iconLocation,
      required this.units})
      : super(key: key);

  void _navigateToConverter(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute<void>(builder: (BuildContext context) {
      return Scaffold(
          appBar: AppBar(
              elevation: 1,
              title: Text(name, style: Theme.of(context).textTheme.headline4),
              centerTitle: true,
              backgroundColor: color),
          body: ConverterRoute(color: color, units: units),
          resizeToAvoidBottomInset: false);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: SizedBox(
            height: _rowHeight,
            child: InkWell(
                borderRadius: _borderRadius,
                highlightColor: color,
                splashColor: color,
                onTap: () => _navigateToConverter(context),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Icon(iconLocation, size: 60),
                      ),
                      Center(
                          child: Text(name,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headline5))
                    ]))));
  }
}
