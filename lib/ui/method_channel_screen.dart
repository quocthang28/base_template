import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

class MethodChannelScreen extends StatefulWidget {
  const MethodChannelScreen({Key? key}) : super(key: key);

  @override
  State<MethodChannelScreen> createState() => _MethodChannelScreenState();
}

class _MethodChannelScreenState extends State<MethodChannelScreen> {
  static const MethodChannel methodChannel = MethodChannel('example/browser');

  Future<void> _openBrowser() async {
    try {
      String result = await methodChannel.invokeMethod('openBrowser', <String, String>{'url': 'https://flutter.dev'});
      print(result);
    } on PlatformException catch (e) {
      // Unable to open the browser
      print(e);
    }
  }

  Future<void> _openAndroidActivity() async {
    try {
      String result = await methodChannel.invokeMethod('startNewActivity');
      print(result);
    } on PlatformException catch (e) {
      print(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () => _openBrowser(), child: 'Open Browser'.text.make()),
            ElevatedButton(onPressed: () => _openAndroidActivity(), child: 'Start Android Activity'.text.make()),
          ],
        ),
      ),
    );
  }
}
