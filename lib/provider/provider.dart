import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// StateProvider
// 現在選択されているアイテムやフィルタリングの状態など単純な状態を保存するのに適している。
// 他のPRoviderと組み合わせたり、複数の画面からアクセス可能。

final counterProvider = StateProvider((ref) => 0);
// final doubleCounterProvider = Provider((ref) {
//   final count = ref.watch(counterProvider);
//   return count * 2;
// });

class PracticeProvider extends ConsumerWidget {
  const PracticeProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider.notifier);

    return Scaffold(
        appBar: AppBar(title: const Text('StateNotifierProvider')),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Count: ${ref.watch(counterProvider)}',
                  style: const TextStyle(color: Colors.blue)),
              ElevatedButton(
                  onPressed: () => counter.update((state) => state + 1),
                  child: const Text('テスト'))
            ],
          ),
        ));
  }
}
