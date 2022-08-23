import 'package:base_template/bloc/another_todo_bloc/another_todo_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnotherTodoScreen extends StatefulWidget {
  const AnotherTodoScreen({Key? key}) : super(key: key);

  @override
  State<AnotherTodoScreen> createState() => _AnotherTodoScreenState();
}

class _AnotherTodoScreenState extends State<AnotherTodoScreen> {
  @override
  void didChangeDependencies() {
    BlocProvider.of<AnotherTodoBloc>(context).add(const AnotherTodoEvent.initialEvent());
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          BlocBuilder<AnotherTodoBloc, AnotherTodoState>(
            builder: (context, state) {
              return state.when(
                initialState: () => const SizedBox.shrink(),
                fetchingState: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                todoAddedToList: (todoList) => Expanded(
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
            },
          ),
        ],
      ),
    );
  }
}
