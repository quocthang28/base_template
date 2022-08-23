import 'package:base_template/data_model/todo.dart';

final allTodos = <Todo>[
  Todo(title: 'Get fit'),
  Todo(title: 'Be happy'),
  Todo(title: 'Learn stuffs', subtitle: 'Golang, NodeJS, Flutter, Android, Spring,...'),
  Todo(title: 'Be the best'),
];

class TodoService {
  const TodoService();

  /// This class, in a real project is supposed to make network requests to
  /// the server to get the data. But here we will just return our hard-coded
  /// list of users `List<Todo>`.
  Future<List<Todo>> getTodoList() async {
    // make a network request
    await Future.delayed(const Duration(seconds: 2)); // mimicking network delay
    return allTodos;
  }
}
