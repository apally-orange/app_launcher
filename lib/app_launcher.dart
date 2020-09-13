
import 'dart:async';

import 'package:flutter/services.dart';

class AppLauncher {
  static const MethodChannel _channel =
      const MethodChannel('app_launcher');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}