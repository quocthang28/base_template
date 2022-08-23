import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

class MethodChannelScreen extends StatelessWidget {
  const MethodChannelScreen({Key? key}) : super(key: key);

  static const MethodChannel _methodChannel = MethodChannel('example/browser');

  Future<void> _openBrowser() async {
    try {
      String result = await _methodChannel.invokeMethod('openBrowser', <String, String>{'url': 'https://flutter.dev'});
      print(result);
    } on PlatformException catch (e) {
      // Unable to open the browser
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(onPressed: () => _openBrowser(), child: 'Open Browser'.text.make()),
      ),
    );
  }
}
