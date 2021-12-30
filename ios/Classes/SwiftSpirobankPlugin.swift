import Flutter
import UIKit
import SpirobankSmartKit

public class SwiftSpirobankPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "spirobank", binaryMessenger: registrar.messenger())
        let instance = SwiftSpirobankPlugin(with: registrar)
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public init(with registrar: FlutterPluginRegistrar) {
        let deviceManager = SODeviceManager.shared()!
        let deviceManagerDelegate = SpirobankDelegate()
        let deviceEventChannel = FlutterEventChannel(name: "device_manager_channel", binaryMessenger: registrar.messenger())
        deviceEventChannel.setStreamHandler(deviceManagerDelegate)
        deviceManager.add(deviceManagerDelegate)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        let deviceManager = SODeviceManager.shared()!
        guard let args = call.arguments as? [String : Any] else {return}
        
        if(call.method == "initialize"){
            deviceManager.initBluetooth()
            result(nil)
        }
        else if(call.method == "startDiscovery"){
            deviceManager.startDiscovery()
            result(nil)
        }
        else if(call.method == "connect"){
            guard let deviceId = args["deviceId"] as? String else {return}
            deviceManager.connect(deviceId)
        }
        else if(call.method == "disconnect"){
            deviceManager.disconnect()
        }
        else if(call.method == "startTest"){
            deviceManager.connectedDevice.startTest(with: TestPeakFlowFev1, endOfTestTimeout: 15, turbineType: Reusable)
        }
        else if(call.method == "stopTest"){
            deviceManager.connectedDevice.stopTest()
        }
    }
}

class SpirobankDelegate : NSObject, SODeviceManagerDelegate, FlutterStreamHandler{
    func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        return nil
    }
    
    func onCancel(withArguments arguments: Any?) -> FlutterError? {
        let deviceManager = SODeviceManager.shared()!
        deviceManager.remove(self)
        return nil
    }
    
    func deviceManager(_ deviceManager: SODeviceManager!, didDiscoverDeviceWith deviceInfo: SODeviceInfo!) {
        let a: DeviceInfo = DeviceInfo()
        print(deviceInfo)
    }
    
    func deviceManager(_ deviceManager: SODeviceManager!, didConnect device: SODevice!) {
        
    }
    
    func deviceManager(_ deviceManager: SODeviceManager!, didDisconnectDevice device: SODevice!) {
        
    }
    
    func deviceManager(_ deviceManager: SODeviceManager!, didFailToConnectDeviceWith deviceInfo: SODeviceInfo!) {
        
    }
    
    func deviceManager(_ deviceManager: SODeviceManager!, didUpdateBluetoothWith state: CBCentralManagerState) {
        print(state)
    }
    
    func deviceManager(_ deviceManager: SODeviceManager!, didReceiveWriteRequestError error: Error!, for characteristic: CBCharacteristic!) {
        
    }
}

class SpirobankDeviceDelegate : NSObject, SODeviceDelegate{
    func soDeviceDidRestartTest(_ soDevice: SODevice!) {
        
    }
    
    func soDeviceDidStopTest(_ soDevice: SODevice!) {
        
    }
    
    func soDeviceDidStartTest(_ soDevice: SODevice!) {
        
    }
    
    func soDevice(_ soDevice: SODevice!, didUpdateFlowValue value: Float, isFirstPackage: Bool) {
        
    }
    
    func soDevice(_ soDevice: SODevice!, didUPdateResults results: SOResults!) {
        
    }
}
