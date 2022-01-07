import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:spirobank/src/messages/device.pb.dart' as messages;
import 'package:spirobank/src/messages/device_info.pb.dart' as messages;
import 'package:spirobank/src/device.dart';

class DeviceManager {
  static const _channel = MethodChannel('spirobank');
  static const _devicesEventChannel = EventChannel('devices');

  final Stream<messages.DeviceInfo> devices =
      _devicesEventChannel.receiveBroadcastStream().map(
            (data) =>
                messages.DeviceInfo.fromBuffer((data as Uint8List).toList()),
          );

  late Completer<Device> _connectCompleter;
  late Completer<void> _disconnectCompleter;

  Device? _connectedDevice;
  Device? get connectedDevice => _connectedDevice;

  static DeviceManager? _instanse;
  static DeviceManager get instance =>
      _instanse ?? (_instanse = DeviceManager._());

  DeviceManager._() {
    _channel.setMethodCallHandler(
      (call) async {
        if (call.method == 'didConnect') {
          final deviceMessage = messages.Device.fromBuffer(
            (call.arguments as Uint8List).toList(),
          );
          final device = Device(deviceMessage);
          _connectCompleter.complete(device);
          return null;
        } else if (call.method == "didDisconnect") {
          _disconnectCompleter.complete();
          return null;
        }
      },
    );
  }

  Future<void> initialize() async {
    await _channel.invokeMethod('initialize');
  }

  Future<void> startScan() async {
    await _channel.invokeMethod('startDiscovery');
  }

  Future<void> stopScan() async {
    await _channel.invokeMethod('stopDiscovery');
  }

  Future<void> connect(String deviceId) async {
    _connectCompleter = Completer();
    await _channel.invokeMethod('connect', deviceId);
    final device = await _connectCompleter.future;
    _connectedDevice = device;
  }

  Future<void> disconnect() async {
    _disconnectCompleter = Completer();
    await _channel.invokeMethod('disconnect');
    await _disconnectCompleter.future;
    _connectedDevice = null;
  }
}
