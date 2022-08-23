import 'dart:io';

import 'package:base_template/bloc/another_todo_bloc/another_todo_bloc.dart';
import 'package:base_template/bloc/connectivity_checker_bloc/connectivity_checker_bloc.dart';
import 'package:base_template/bloc/counter_bloc/counter_bloc.dart';
import 'package:base_template/bloc/todo_bloc/todo_bloc.dart';
import 'package:base_template/bloc/user_bloc/user_bloc.dart';
import 'package:base_template/service_locator.dart';
import 'package:base_template/ui/isolate_screen.dart';
import 'package:base_template/ui/method_channel_screen.dart';
import 'package:base_template/ui/counter_screen.dart';
import 'package:base_template/ui/todo_screen.dart';
import 'package:base_template/ui/user_list_screen.dart';
import 'package:base_template/utils/timer.dart';
import 'package:document_scanner_flutter/configs/configs.dart';
import 'package:document_scanner_flutter/document_scanner_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  ServiceLocator.setupDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ConnectivityCheckerBloc>(
            create: (context) =>
                ConnectivityCheckerBloc()..add(const ConnectivityCheckerEvent.initializeConCheckerEvent())),
        BlocProvider<TodoBloc>(create: (context) => TodoBloc()),
        BlocProvider<AnotherTodoBloc>(create: (context) => AnotherTodoBloc()),
        BlocProvider<UserBloc>(create: (context) => UserBloc()),
        BlocProvider<CounterBloc>(create: (context) => CounterBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Templates'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int countdownValue = 5;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConnectivityCheckerBloc, ConnectivityCheckerState>(
      listener: (context, state) {
        state.when(
            initialState: () {},
            connectionLostState: () async {
              ScaffoldMessenger.of(context).showMaterialBanner(
                const MaterialBanner(
                  content: Text('Connection lost'),
                  leading: Icon(Icons.agriculture_outlined),
                  backgroundColor: Colors.redAccent,
                  actions: [SizedBox.shrink()],
                ),
              );
            },
            connectionRestoredState: () async {
              ScaffoldMessenger.of(context).showMaterialBanner(
                const MaterialBanner(
                  content: Text('Connection restored'),
                  leading: Icon(Icons.agriculture_outlined),
                  backgroundColor: Colors.greenAccent,
                  actions: [SizedBox.shrink()],
                ),
              );
              await Future.delayed(
                  const Duration(seconds: 3), () => ScaffoldMessenger.of(context).hideCurrentMaterialBanner());
            });
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const TodoScreen())),
                child: const Text('Reactive Repository - Bloc to Bloc communication'),
              ),
              ElevatedButton(
                onPressed: () =>
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const UserListScreen())),
                child: const Text('Rest API'),
              ),
              ElevatedButton(
                onPressed: () =>
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const CounterScreen())),
                child: const Text('Bloc + Freezed'),
              ),
              ElevatedButton(
                onPressed: () =>
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MethodChannelScreen())),
                child: const Text('Method Channel (Android)'),
              ),
              ElevatedButton(
                onPressed: () =>
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const IsolateScreen())),
                child: const Text('Isolate'),
              ),
              ElevatedButton(
                onPressed: () async {
                  try {
                    var androidLabelsConfigs = {
                      ScannerLabelsConfig.ANDROID_SAVE_BUTTON_LABEL: "Save",
                    };
                    File? scannedDoc = await DocumentScannerFlutter.launch(context,
                        source: ScannerFileSource.CAMERA, labelsConfig: androidLabelsConfigs);

                    print(scannedDoc!.path.toString());
                  } on PlatformException {}
                },
                child: const Text('Document scanner'),
              ),
              countdownValue.toString().text.make(),
              ElevatedButton(
                onPressed: () async {
                  TimerUtils.startTimer(
                      5,
                      (timerValue) => {
                            setState(() {
                              countdownValue = timerValue;
                            })
                          }, () {
                    print('timer finished');
                  });
                },
                child: const Text('Start timer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
