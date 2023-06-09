import 'package:base_template/bloc/connectivity_checker_bloc/connectivity_checker_bloc.dart';
import 'package:base_template/ui/counter_screen.dart';
import 'package:base_template/ui/event_channel_screen.dart';
import 'package:base_template/ui/isolate_screen.dart';
import 'package:base_template/ui/method_channel_screen.dart';
import 'package:base_template/ui/todo_screen.dart';
import 'package:base_template/ui/user_list_screen.dart';
import 'package:base_template/utils/timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
              await Future.delayed(const Duration(seconds: 3), () => ScaffoldMessenger.of(context).hideCurrentMaterialBanner());
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
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const UserListScreen())),
                child: const Text('Rest API'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CounterScreen())),
                child: const Text('Bloc + Freezed'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MethodChannelScreen())),
                child: const Text('Method Channel (Android)'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const EventChannelScreen())),
                child: const Text('Event Channel (Android)'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const IsolateScreen())),
                child: const Text('Isolate'),
              ),
              // ElevatedButton(
              //   onPressed: () async {
              //     try {
              //       var androidLabelsConfigs = {
              //         ScannerLabelsConfig.ANDROID_SAVE_BUTTON_LABEL: "Save",
              //       };
              //       File? scannedDoc =
              //           await DocumentScannerFlutter.launch(context, source: ScannerFileSource.CAMERA, labelsConfig: androidLabelsConfigs);
              //
              //       print(scannedDoc!.path.toString());
              //     } on PlatformException {}
              //   },
              //   child: const Text('Document scanner'),
              // ),
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
