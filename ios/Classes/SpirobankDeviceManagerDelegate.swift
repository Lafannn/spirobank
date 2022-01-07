//
//  SpirobankDeviceManager.swift
//  spirobank
//
//  Created by Oleg Svidin on 03.01.2022.
//

import Foundation
import SpirobankSmartKit

class SpirobankDeviceManagerDelegate : NSObject, SODeviceManagerDelegate{
    let devicesStream: MessagesStreamHandler<DeviceInfo>
    let managerChannel: FlutterMethodChannel
    let deviceDelegate: SpirobankDeviceDelegate
    
    init(devicesStream: MessagesStreamHandler<DeviceInfo>, managerChannel: FlutterMethodChannel, deviceDelegate: SpirobankDeviceDelegate){
        self.devicesStream = devicesStream
        self.managerChannel = managerChannel
        self.deviceDelegate = deviceDelegate
    }
    
    func deviceManager(_ deviceManager: SODeviceManager!, didDiscoverDeviceWith deviceInfo: SODeviceInfo!) {
        devicesStream.add(item: DeviceInfo.init(from: deviceInfo))
    }
    
    func deviceManager(_ deviceManager: SODeviceManager!, didConnect device: SODevice!) {
        if let arg = try? Device(from: device).serializedData(){
            managerChannel.invokeMethod("didConnect", arguments: FlutterStandardTypedData(bytes: arg))
        }
        device.add(deviceDelegate);
    }
    
    func deviceManager(_ deviceManager: SODeviceManager!, didDisconnectDevice device: SODevice!) {
        device.remove(deviceDelegate);
    }
    
    func deviceManager(_ deviceManager: SODeviceManager!, didFailToConnectDeviceWith deviceInfo: SODeviceInfo!) {
        managerChannel.invokeMethod("didConnect", arguments: nil)
    }
    
    func deviceManager(_ deviceManager: SODeviceManager!, didUpdateBluetoothWith state: CBCentralManagerState) {
        print(state)
    }
    
    func deviceManager(_ deviceManager: SODeviceManager!, didReceiveWriteRequestError error: Error!, for characteristic: CBCharacteristic!) {
        
    }
}
