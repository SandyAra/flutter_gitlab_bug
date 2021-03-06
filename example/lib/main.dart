import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_gitlab_bug/gitlab_bug.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
//    String platformVersion;
//    // Platform messages may fail, so we use a try/catch PlatformException.
//    try {
//      platformVersion = await GitLabBug.platformVersion;
//    } on PlatformException {
//      platformVersion = 'Failed to get platform version.';
//    }
//
//    // If the widget was removed from the tree while the asynchronous platform
//    // message was in flight, we want to discard the reply rather than calling
//    // setState to update our non-existent appearance.
//    if (!mounted) return;
//
//    setState(() {
//      _platformVersion = platformVersion;
//    });
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: GitLabBug(
          customDomain: "https://gitlab.vgts.tech",
          projectId: 67,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Plugin example app'),
              backgroundColor: Color(0xffE24329),
            ),
            body: Center(
              child: Text('Running on: $_platformVersion\n'),
            ),
          ),
        ),
      );
  }
}
