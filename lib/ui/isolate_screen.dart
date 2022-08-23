import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class IsolateScreen extends StatelessWidget {
  const IsolateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: 'Isolate'.text.make()),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircularProgressIndicator(),
            ElevatedButton(
                onPressed: () async {
                  var receivePort = ReceivePort();

                  await Isolate.spawn(heavyFunction, receivePort.sendPort);

                  receivePort.listen((message) {
                    print(message);
                  });
                },
                child: 'Start heavy function'.text.make()),
          ],
        ),
      ),
    );
  }
}

void heavyFunction(SendPort sendPort) {
  var receivePort = ReceivePort();

  double total = 0;
  for (int i = 0; i < 10000000000; i++) {
    total += i;
  }
  sendPort.send(total);
}
