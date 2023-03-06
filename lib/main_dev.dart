import 'package:flutter/material.dart';

import 'app_config.dart';
import 'main.dart';

void main() {
  var configuredApp = AppConfig(
    appName: 'Build flavors DEV',
    flavorName: 'development',
    apiBaseUrl: 'https://dev-api.example.com/',
    child: MyApp(),
  );

  runApp(configuredApp);
}