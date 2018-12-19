import 'dart:async';

import 'package:flutter/services.dart';

class Talkingdata {
  static const MethodChannel _channel =
      const MethodChannel('talkingdata');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
