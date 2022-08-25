import 'package:flutter/material.dart';
// import './category_route.dart'; practice Number1(2022/08/25)
import './todo_app.dart';

const _categoryName = 'Cake';
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.green;

void main() {
  runApp(const UnitConverterApp());
}

class UnitConverterApp extends StatelessWidget {
  const UnitConverterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Unit Converter',
        theme: ThemeData(
            textTheme: Theme.of(context)
                .textTheme
                .apply(bodyColor: Colors.black, displayColor: Colors.grey[600]),
            primaryColor: Colors.grey[500],
            textSelectionTheme: TextSelectionThemeData(
                selectionHandleColor: Colors.green[500])),
        home: TodoListPage());
  }
}
