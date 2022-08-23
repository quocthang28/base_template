import 'package:base_template/bloc/another_todo_bloc/another_todo_bloc.dart';
import 'package:base_template/bloc/todo_bloc/todo_bloc.dart';
import 'package:base_template/data_model/todo.dart';
import 'package:base_template/ui/another_todo_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void didChangeDependencies() {
    BlocProvider.of<TodoBloc>(context).add(const TodoEvent.fetchTodoListEvent());
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reactive Repository')),
      body: Column(
        children: <Widget>[
          TextField(
            controller: _textEditingController,
          ),
          TextButton(
              onPressed: () =>
                  context.read<TodoBloc>().add(TodoEvent.addTodoEvent(Todo(title: _textEditingController.text))),
              child: const Text('Add Todo')),
          BlocBuilder<TodoBloc, TodoState>(builder: (context, state) {
            return state.when(
              initialState: () => const SizedBox.shrink(),
              fetchingState: () => const Center(
                child: CircularProgressIndicator(),
              ),
              fetchedState: (todoList) => Expanded(
                child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        todoList[index].title,
                        style: const TextStyle(fontSize: 25),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) => const Divider(),
                  itemCount: todoList.length,
                ),
              ),
            );
          }),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BlocProvider.value(
                        value: BlocProvider.of<AnotherTodoBloc>(context),
                        child: const AnotherTodoScreen(),
                      )),
            ),
            child: const Text('Go to another todo screen'),
          ),
        ],
      ),
    );
  }
}
