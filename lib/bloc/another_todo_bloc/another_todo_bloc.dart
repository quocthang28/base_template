import 'package:base_template/data_model/todo.dart';
import 'package:base_template/repository/todo_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'another_todo_bloc.freezed.dart';

@freezed
class AnotherTodoEvent with _$AnotherTodoEvent {
  const factory AnotherTodoEvent.initialEvent() = _InitialEvent;
}

@freezed
class AnotherTodoState with _$AnotherTodoState {
  const factory AnotherTodoState.initialState() = _InitialState;
  const factory AnotherTodoState.fetchingState() = _FetchingState;
  const factory AnotherTodoState.todoAddedToList(List<Todo> todoList) = _TodoAddedToListState;
}

class AnotherTodoBloc extends Bloc<AnotherTodoEvent, AnotherTodoState> {
  final TodoRepository todoRepository = GetIt.I<TodoRepository>();

  AnotherTodoBloc() : super(const AnotherTodoState.initialState()) {
    on<AnotherTodoEvent>((event, emit) async {
      await event.when(initialEvent: () async {
        emit(const AnotherTodoState.fetchingState());
        todoRepository.getTodos();
        await emit.forEach(
          todoRepository.todoStream,
          onData: (List<Todo> todoList) => AnotherTodoState.todoAddedToList(todoList),
        );
      });
    });
  }
}
