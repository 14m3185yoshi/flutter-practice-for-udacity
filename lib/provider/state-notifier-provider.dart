import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/todo/todo.dart';
import 'dart:math';
import 'package:flutter/material.dart';

// StateProviderとの大きな違いは、単純な状態の保持だけでなく、状態を操作するメソッドをStateNotifierを継承したクラスに定義できることです。
// StateProviderを使った場合に、Widgetが状態操作のロジックで溢れてしまう場合もStateNotifierの使用を検討しましょう。

//
// // Providerの定数をグローバルに宣言
// // StateNotifierProviderの後に続けて、Notifierクラスの型と、格納する状態の型を明示する
//
final todoListNotifierProvider =
    StateNotifierProvider<TodoListNotifier, List<Todo>>((ref) {
  return TodoListNotifier();
});

//
// 操作するため
//
class TodoListNotifier extends StateNotifier<List<Todo>> {
  // `super([])` で、空のTODOリストを初期値として入れている。
  TodoListNotifier() : super([]);

  /// 新しいTODOを追加するメソッド
  void add(Todo todo) {
    state = [...state, todo];
  }

  void remove(String todoId) {
    state = [
      for (final todo in state)
        if (todo.id != todoId) todo,
    ];
  }

  void toggle(String todoId) {
    state = [
      for (final todo in state)
        if (todo.id == todoId)
          todo.copyWith(completed: !todo.completed)
        else
          todo
    ];
  }
}

class StateNotifierProviderPage extends ConsumerWidget {
  const StateNotifierProviderPage({super.key});

  static const String title = 'StateNotifierProvider';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // StateNotifierProviderを読み取る。watchを使用しているので、
    // state（状態）であるTODOリストが更新されると、buildメソッドが再実行されて画面が更新される
    final todoList = ref.watch(todoListNotifierProvider);
    // TodoListNotifier を使用する場合は `.notifier` を付けてProviderを読み取る
    final notifier = ref.watch(todoListNotifierProvider.notifier);

    // 新しいTodoを追加するプライベートメソッドを定義
    void addTodo() {
      final newTodo = Todo(
          id: Random().nextDouble().toString(),
          title: DateTime.now().toIso8601String());
      notifier.add(newTodo);
    }

    return Scaffold(
        appBar: AppBar(title: const Text('StateNotifierProvider'), actions: [
          IconButton(onPressed: addTodo, icon: const Icon(Icons.add))
        ]),
        body: ListView.builder(
            itemCount: todoList.length,
            itemBuilder: (context, index) {
              final todo = todoList[index];
              return ListTile(
                  title: Text(todo.title),
                  leading: Icon(todo.completed
                      ? Icons.check_box
                      : Icons.check_box_outline_blank),
                  trailing: TextButton(
                      onPressed: () => notifier.remove(todo.id),
                      child: const Text('Delete')),
                  onTap: () => notifier.toggle(todo.id));
            }));
  }
}
