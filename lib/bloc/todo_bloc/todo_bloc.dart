import 'package:base_template/data_model/todo.dart';
import 'package:base_template/repository/todo_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'todo_bloc.freezed.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.initialEvent() = _InitialEvent;
  const factory TodoEvent.fetchTodoListEvent() = _FetchTodoListEvent;
  const factory TodoEvent.addTodoEvent(Todo todo) = _AddTodoEvent;
}

@freezed
class TodoState with _$TodoState {
  const factory TodoState.initialState() = _InitialState;
  const factory TodoState.fetchingState() = _FetchingState;
  const factory TodoState.fetchedState(List<Todo> todoList) = _FetchedState;
}

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodoRepository _todoRepository = GetIt.I<TodoRepository>();

  TodoBloc() : super(const TodoState.initialState()) {
    on<TodoEvent>((event, emit) async {
      await event.when(
          initialEvent: () {},
          fetchTodoListEvent: () async {
            emit(const TodoState.fetchingState());
            _todoRepository.getTodos();
            await emit.forEach(
              _todoRepository.todoStream,
              onData: (List<Todo> todoList) => TodoState.fetchedState(todoList),
            );
          },
          addTodoEvent: (todo) {
            _todoRepository.addTodo(todo);
          });
    });
  }
}
