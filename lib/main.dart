import 'package:flutter/material.dart';

import 'app_config.dart';

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Call AppConfig.of(context) anywhere to obtain the
    // environment specific configuration
    var config = AppConfig.of(context)!;

    return MaterialApp(
      title: config.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }


  @override
  Widget build(BuildContext context) {

    var config = AppConfig.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text('Build flavors'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Every value is hardcoded in the app.
            // No development or production variants exist yet.
            Text('This is the ${config.flavorName} app.'),
            Text('Backend API url is ${config.apiBaseUrl}'),
          ],
        ),
      ),
    );
  }
}
