import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:spirobank/src/flow.dart';
import 'package:spirobank/src/messages/device.pb.dart' as messages;
import 'package:spirobank/src/messages/flow.pb.dart' as messages;
import 'package:spirobank/src/messages/start_test_request.pb.dart';
import 'package:spirobank/src/messages/test_type.pb.dart' as messages;
import 'package:spirobank/src/messages/turbine_type.pb.dart' as messages;
import 'package:spirobank/src/test_type.dart';
import 'package:spirobank/src/turbine_type.dart';

class Device {
  static const _channel = MethodChannel('spirobank_device');
  static const _flowEventChannel = EventChannel('flows');

  final messages.Device _device;

  late Completer _startTestCompleter;
  late Completer _stopTestCompleter;

  final Stream<Flow> flows =
      _flowEventChannel.receiveBroadcastStream().map((message) {
    final flow = Flow(
      messages.Flow.fromBuffer((message as Uint8List).toList()),
    );
    return flow;
  });

  int get volumeStep => _device.volumeStep;

  Device(this._device) {
    _channel.setMethodCallHandler(
      (call) async {
        switch (call.method) {
          case 'didStartTest':
            _startTestCompleter.complete();
            return null;
          case 'didStopTest':
            _stopTestCompleter.complete();
            return null;
        }
      },
    );
  }

  Future<void> startTest(
    TestType testType,
    int timeout,
    TurbineType turbineType,
  ) async {
    final request = StartTestRequest.create();
    request.testType = messages.TestType.values[testType.index];
    request.endOfTestTimeout = timeout;
    request.turbineType = messages.TurbineType.values[turbineType.index];
    _startTestCompleter = Completer();
    await _channel.invokeMethod("startTest", request.writeToBuffer());
    await _startTestCompleter.future;
  }

  Future<void> stopTest() async {
    _stopTestCompleter = Completer();
    await _channel.invokeMethod("stopTest");
    await _stopTestCompleter.future;
  }
}
