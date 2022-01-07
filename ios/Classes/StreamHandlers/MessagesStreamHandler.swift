//
//  DevicesStreamHandler.swift
//  spirobank
//
//  Created by Oleg Svidin on 03.01.2022.
//

import Foundation
import SwiftProtobuf

class MessagesStreamHandler<T : Message> : NSObject, FlutterStreamHandler{
    var eventSink: FlutterEventSink?
    
    func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        eventSink = events
        return nil
    }
    
    func onCancel(withArguments arguments: Any?) -> FlutterError? {
        eventSink = nil
        return nil
    }
    
    func add(item: T){
        if let serializedData = try? item.serializedData(){
            let typedData = FlutterStandardTypedData(bytes: serializedData)
            eventSink?(typedData)
        }
    }
}
