import 'package:get_it/get_it.dart';
import 'package:rxdart/rxdart.dart';
import 'package:base_template/data_model/todo.dart';
import 'package:base_template/service/todo_service/todo_service.dart';

class TodoRepository {
  final TodoService _todoService = GetIt.I<TodoService>();

  final _todoStreamController = BehaviorSubject<List<Todo>>();

  Stream<List<Todo>> get todoStream => _todoStreamController.stream.asBroadcastStream();

  bool hasFetched = false;

  /* If there are multiple listeners of this stream, then
     edit the `getUsers()` method as:
      Stream<List<User>> getUsers() => _userStreamController.asBroadcastStream();
  */

  void getTodos() {
    if (!hasFetched) {
      _todoService.getTodoList().then((value) {
        _todoStreamController.sink.add(value);
      });
      hasFetched = true;
    }
  }

  void addTodo(Todo todo) {
    final todos = [..._todoStreamController.value, todo];

    /* Don't do:
     _userStreamController.value.add(user);   ❌
     As it will add the new user to the previous List instance (which
     is also called mutating the List) due to which
     the ListView in the UI will not update properly.
     So, we should return new List instance with updated values.
     Alternatively, we can also do:
     final users = List<User>.from(_userStreamController.value)..add(user);   ✅
     */
    _todoStreamController.sink.add(todos);
    /*
      And finally the data is added to the stream as soon as this method is
      invoked, allowing other listeners of this stream know about the new
      update immediately.
    */
  }
}
