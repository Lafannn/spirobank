import Flutter
import UIKit
import SpirobankSmartKit

public class SwiftSpirobankPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "spirobank", binaryMessenger: registrar.messenger())
        let deviceChannel = FlutterMethodChannel(name: "spirobank_device", binaryMessenger: registrar.messenger())
        
        let instance = SwiftSpirobankPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
        deviceChannel.setMethodCallHandler(instance.handle)
        
        let devicesEventChannel = FlutterEventChannel(name: "devices", binaryMessenger: registrar.messenger())
        let flowEventChannel = FlutterEventChannel(name: "flows", binaryMessenger: registrar.messenger())
        
        
        let devicesStreamHandler = MessagesStreamHandler<DeviceInfo>()
        devicesEventChannel.setStreamHandler(devicesStreamHandler)
        
        let flowStreamHandler = MessagesStreamHandler<Flow>()
        flowEventChannel.setStreamHandler(flowStreamHandler)
        
        let deviceDelegate = SpirobankDeviceDelegate(methodChannel: deviceChannel, flowStream:  flowStreamHandler)
        let deviceManagerDelegate = SpirobankDeviceManagerDelegate(devicesStream: devicesStreamHandler, managerChannel: channel, deviceDelegate: deviceDelegate)
        SODeviceManager.shared().add(deviceManagerDelegate)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        let deviceManager = SODeviceManager.shared()!
        
        if(call.method == "initialize"){
            deviceManager.initBluetooth()
            result(nil)
        }
        else if(call.method == "startDiscovery"){
            deviceManager.startDiscovery()
            result(nil)
        }
        else if(call.method == "stopDiscovery"){
            deviceManager.stopDiscovery()
            result(nil)
        }
        else if(call.method == "connect"){
            guard let deviceId = call.arguments as? String else {return}
            deviceManager.connect(deviceId)
            result(nil)
        }
        else if(call.method == "disconnect"){
            deviceManager.disconnect()
            result(nil)
        }
        else if(call.method == "startTest"){
            if let request = try? StartTestRequest.init(serializedData: (call.arguments as! FlutterStandardTypedData).data){
                let testType = SOTestType(rawValue: UInt(bitPattern: request.testType.rawValue))
                let timeout = UInt8(request.endOfTestTimeout)
                let turbineType = SOTurbineType(rawValue: UInt(bitPattern: request.testType.rawValue))
                deviceManager.connectedDevice.startTest(with: testType, endOfTestTimeout: timeout, turbineType: turbineType)
                result(nil)
            }
            else{
                result(FlutterError(code: "400", message: "Failed desearelization of StartTestRequest", details: call.arguments))
            }
        }
        else if(call.method == "stopTest"){
            deviceManager.connectedDevice.stopTest()
            result(nil)
        }
        else if(call.method == "createPatient"){
            if let request = try? CreatePatientRequest(serializedData: (call.arguments as! FlutterStandardTypedData).data){
                let dateFormatter = ISO8601DateFormatter()
                dateFormatter.formatOptions = [.withFractionalSeconds, .withFullDate]
                if let date = dateFormatter.date(from: request.date){
                    let ethnic = SOEthnicGroup.init(rawValue: UInt(request.ethnic.rawValue + 18))
                    let gender = SOGender.init(rawValue: UInt(request.gender.rawValue))
                    
                    _ = SOPatient(dateOfBirth: date, height: request.height, weight: request.weight, ethnic: ethnic, gender: gender)
                    
                    if let patientData = try? Patient().serializedData(){
                        result(FlutterStandardTypedData(bytes: patientData))
                    }
                }
                else{
                    result(FlutterError(code: "400", message: "Failed parse of date", details: request.date))
                }
            }
        }
        else if(call.method == "actualPercentageOfTarget"){
            if let request = try? GetPercentageRequest(serializedData: (call.arguments as! FlutterStandardTypedData).data){
                let percentage = SOPatient.shared().actualPercentageOfTarget(withFlow: request.flow, volumeStep: Int(request.volumeStep), isFirstPackage: request.isFirstPackage)
                result(percentage)
            }
            else{
                result(FlutterError(code: "400", message: "Failed to parce arguments", details: call.arguments))
            }
        }
        else if(call.method == "predictedPercentageOfTarget"){
            if let request = try? GetPercentageRequest(serializedData: (call.arguments as! FlutterStandardTypedData).data){
                let percentage = SOPatient.shared().predictedPercentageOfTarget(withFlow: request.flow, volumeStep: Int(request.volumeStep), isFirstPackage: request.isFirstPackage)
                result(percentage)
            }
            else{
                result(FlutterError(code: "400", message: "Failed to parce arguments", details: call.arguments))
            }
        }
    }
}


extension DeviceInfo{
    init(from soDeviceInfo: SODeviceInfo){
        deviceID = soDeviceInfo.deviceID
        name = soDeviceInfo.name
        `protocol` = soDeviceInfo.protocol
        serialNumber = soDeviceInfo.serialNumber
        rssi = soDeviceInfo.rssi?.int64Value ?? -1
        currentTestType = Int64(soDeviceInfo.currentTestType?.pointee ?? -1)
        advertisementData = soDeviceInfo.advertisementData
        nameCached = soDeviceInfo.nameCached ?? ""
        shortName = soDeviceInfo.shortName
        bootID = soDeviceInfo.bootID
        atsStandardSupported = AtsStandard.init(rawValue: Int(soDeviceInfo.atsStandardSupported.rawValue))!
        fvcPlusEnableStatus = CheckState.init(rawValue: Int(bitPattern: soDeviceInfo.fvcPlusEnableStatus.rawValue))!
        vcEnableSatus = CheckState.init(rawValue: Int(bitPattern: soDeviceInfo.vcEnableSatus.rawValue))!
    }
}

extension Device{
    init(from soDevice: SODevice){
        deviceInfo = DeviceInfo(from: soDevice.deviceInfo)
        batteryLevel = Int32(soDevice.batteryLevel)
        volumeStep = Int32(soDevice.volumeStep)
        softwareVersion = soDevice.softwareVersion
        bluetoothVersion = soDevice.bluetoothVersion
    }
}
