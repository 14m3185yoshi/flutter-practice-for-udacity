// Provider // 最も基本的なProvider(外部から変更することができない)
// StateProvider // 外部から変更可能な状態を提供する
// StateNotifierProvider // 外部から変更可能な状態と、状態操作メソッドクラスを提供する
// FutureProvider // 非同期で取得した値を提供する
// StreamProvider // 断続的に最新の値を提供する
// ChangeNotifierProvider // 変更可能な状態を持つクラスを提供する

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/provider/state-notifier-provider.dart';

// 値（ここでは "Hello world"）を格納する「プロバイダ」を作成します。
// プロバイダを使うことで値のモックやオーバーライドが可能になります。
final helloWorldProvider = Provider((_) => 'Hello world');

void main() {
  runApp(
    // プロバイダをウィジェットで利用するには、アプリ全体を
    // `ProviderScope` ウィジェットで囲む必要があります。
    // ここに各プロバイダのステート（状態）・値が格納されていきます。
    ProviderScope(
      child: MyApp(),
    ),
  );
}

// StatelessWidget の代わりに Riverpod の ConsumerWidget を継承します。
class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String value = ref.watch(helloWorldProvider);

    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const StateNotifierProviderPage());
  }
}
