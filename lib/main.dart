import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import './category_route.dart'; practice Number1(2022/08/25)
import './todo_app.dart';

// Provider
// 最も基本的なProvider
// StateProvider
// 外部から変更可能な状態を提供する
// StateNotifierProvider
// 外部から変更可能な状態と、状態操作メソッドクラスを提供する
// FutureProvider
// 非同期で取得した値を提供する
// StreamProvider
// 断続的に最新の値を提供する
// ChangeNotifierProvider
// 変更可能な状態を持つクラスを提供する

void main() {
  runApp((ProviderScope(child: UnitConverterApp())));
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
