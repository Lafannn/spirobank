//
//  SpirobankDeviceDelegate.swift
//  spirobank
//
//  Created by Oleg Svidin on 03.01.2022.
//

import Foundation
import SpirobankSmartKit

class SpirobankDeviceDelegate : NSObject, SODeviceDelegate{
    let methodChannel: FlutterMethodChannel
    let flowStream: MessagesStreamHandler<Flow>
    
    init(methodChannel: FlutterMethodChannel, flowStream: MessagesStreamHandler<Flow>){
        self.methodChannel = methodChannel
        self.flowStream = flowStream
    }
    
    func soDeviceDidRestartTest(_ soDevice: SODevice!) {
        methodChannel.invokeMethod("didRestartTest", arguments: nil)
    }
    
    func soDeviceDidStopTest(_ soDevice: SODevice!) {
        methodChannel.invokeMethod("didStopTest", arguments: nil)
    }
    
    func soDeviceDidStartTest(_ soDevice: SODevice!) {
        methodChannel.invokeMethod("didStartTest", arguments: nil)
    }
    
    func deviceWasDisconnected(_ soDevice: SODevice!) {
        print("DeviceManager device disconnected")
    }
    
    func soDevice(_ soDevice: SODevice!, didUpdateFlowValue value: Float, isFirstPackage: Bool) {
        var flow = Flow()
        flow.value = value
        flow.isFirstPackage = isFirstPackage
        flowStream.add(item: flow)
        print("flow: \(value)")
    }
    
    func soDevice(_ soDevice: SODevice!, didUPdateResults results: SOResults!) {
        print("results: \(results)")
    }
    
    func soDevice(_ soDevice: SODevice!, didUpdate deviceStatus: SODeviceStatus!) {
        print("deviceStatus: \(deviceStatus)")
    }
    
    func soDevice(_ soDevice: SODevice!, didUpdateFlowTimeMonitoringValue value: Int32) {
        print("FlowTimeMonitoringValue: \(value)")
    }
    
    func soDevice(_ soDevice: SODevice!, didUpdateFvcPlusFlowVolumePoint fvPoint: flowVolmePoint!, isFirstPackage: Bool) {
        print("fvcFlow: \(fvPoint)")
    }
    
    func soDevice(_ soDevice: SODevice!, didUPdateFvcPlusResults results: SOResultsFvcPlus!) {
        print("FVCPlus results: \(results)")
    }
    
    func soDevice(_ soDevice: SODevice!, didReceive eofeIndicator: EndOfForcedExpirationIndicator) {
        print("eofe: \(eofeIndicator)")
    }
}
