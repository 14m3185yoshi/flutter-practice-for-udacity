// Provider // 最も基本的なProvider(外部から変更することができない)
// StateProvider // 外部から変更可能な状態を提供する
// StateNotifierProvider // 外部から変更可能な状態と、状態操作メソッドクラスを提供する
// FutureProvider // 非同期で取得した値を提供する
// StreamProvider // 断続的に最新の値を提供する
// ChangeNotifierProvider // 変更可能な状態を持つクラスを提供する

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/animation/lesson1.dart';

void main() {
  runApp(
    // プロバイダをウィジェットで利用するには、アプリ全体を
    // `ProviderScope` ウィジェットで囲む必要があります。
    // ここに各プロバイダのステート（状態）・値が格納されていきます。
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

// StatelessWidget の代わりに Riverpod の ConsumerWidget を継承します。
class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        // home: const StateNotifierProviderPage());
        home: const LogoApp());
  }
}
