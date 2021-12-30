import 'dart:async';

import 'package:flutter/services.dart';

class Spirobank {
  static const MethodChannel _channel = MethodChannel('spirobank');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  Future<void> startScan() async {
    await _channel.invokeMethod('startDiscovery');
  }
}
