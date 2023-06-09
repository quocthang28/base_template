import 'dart:io';

import 'package:base_template/bloc/another_todo_bloc/another_todo_bloc.dart';
import 'package:base_template/bloc/connectivity_checker_bloc/connectivity_checker_bloc.dart';
import 'package:base_template/bloc/counter_bloc/counter_bloc.dart';
import 'package:base_template/bloc/native_conn_checker_bloc/native_conn_checker_bloc.dart';
import 'package:base_template/bloc/todo_bloc/todo_bloc.dart';
import 'package:base_template/bloc/user_bloc/user_bloc.dart';
import 'package:base_template/global_observable/auth_status.dart';
import 'package:base_template/repository/user_repository.dart';
import 'package:base_template/service_locator.dart';
import 'package:base_template/ui/event_channel_screen.dart';
import 'package:base_template/ui/isolate_screen.dart';
import 'package:base_template/ui/login_screen.dart';
import 'package:base_template/ui/main_screen.dart';
import 'package:base_template/ui/method_channel_screen.dart';
import 'package:base_template/ui/counter_screen.dart';
import 'package:base_template/ui/todo_screen.dart';
import 'package:base_template/ui/user_list_screen.dart';
import 'package:base_template/utils/timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  ServiceLocator.setupDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //note: don't create all blocs at root
    return MultiBlocProvider(
      providers: [
        BlocProvider<ConnectivityCheckerBloc>(
            create: (context) => ConnectivityCheckerBloc()..add(const ConnectivityCheckerEvent.initializeConCheckerEvent())),
        BlocProvider<NativeConnCheckerBloc>(create: (context) => NativeConnCheckerBloc()),
        BlocProvider<TodoBloc>(create: (context) => TodoBloc()),
        BlocProvider<AnotherTodoBloc>(create: (context) => AnotherTodoBloc()),
        BlocProvider<UserBloc>(create: (context) => UserBloc(userRepository: GetIt.I<IUserRepository>())),
        BlocProvider<CounterBloc>(create: (context) => CounterBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const BootstrapScreen(),
      ),
    );
  }
}

class BootstrapScreen extends StatefulWidget {
  const BootstrapScreen({Key? key}) : super(key: key);

  @override
  State<BootstrapScreen> createState() => _BootstrapScreenState();
}

class _BootstrapScreenState extends State<BootstrapScreen> {
  late bool isAfterRoot;

  @override
  void initState() {
    GetIt.I<AuthStatus>().changeAuthenticationStatus(isAuthenticated: false); //check auth status here
    isAfterRoot = true;
    GetIt.I<AuthStatus>().authStatusStream.listen((isAuthenticated) {
      if (isAfterRoot) {
        isAfterRoot = false;
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => isAuthenticated
                ? MultiBlocProvider(
                    providers: [
                      BlocProvider<ConnectivityCheckerBloc>(
                          create: (context) => ConnectivityCheckerBloc()..add(const ConnectivityCheckerEvent.initializeConCheckerEvent())),
                      BlocProvider<NativeConnCheckerBloc>(create: (context) => NativeConnCheckerBloc()),
                      BlocProvider<TodoBloc>(create: (context) => TodoBloc()),
                      BlocProvider<AnotherTodoBloc>(create: (context) => AnotherTodoBloc()),
                      BlocProvider<UserBloc>(create: (context) => UserBloc(userRepository: GetIt.I<IUserRepository>())),
                      BlocProvider<CounterBloc>(create: (context) => CounterBloc()),
                    ],
                    child: MaterialApp(
                      title: 'Flutter Demo',
                      theme: ThemeData(
                        primarySwatch: Colors.blue,
                      ),
                      home: const MyHomePage(title: 'Flutter templates'),
                    ),
                  )
                : const LoginScreen()));
      } else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => isAuthenticated
                ? MultiBlocProvider(
                    providers: [
                      BlocProvider<ConnectivityCheckerBloc>(
                          create: (context) => ConnectivityCheckerBloc()..add(const ConnectivityCheckerEvent.initializeConCheckerEvent())),
                      BlocProvider<NativeConnCheckerBloc>(create: (context) => NativeConnCheckerBloc()),
                      BlocProvider<TodoBloc>(create: (context) => TodoBloc()),
                      BlocProvider<AnotherTodoBloc>(create: (context) => AnotherTodoBloc()),
                      BlocProvider<UserBloc>(create: (context) => UserBloc(userRepository: GetIt.I<IUserRepository>())),
                      BlocProvider<CounterBloc>(create: (context) => CounterBloc()),
                    ],
                    child: MaterialApp(
                      title: 'Flutter Demo',
                      theme: ThemeData(
                        primarySwatch: Colors.blue,
                      ),
                      home: const MyHomePage(title: 'Flutter templates'),
                    ),
                  )
                : const LoginScreen()));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //this screen should not be shown, or navigated to
    return Container();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
