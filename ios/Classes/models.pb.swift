// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: models.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct DeviceInfo {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var name: String = String()

  var `protocol`: String = String()

  var serialNumber: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension DeviceInfo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "DeviceInfo"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "protocol"),
    3: .same(proto: "serialNumber"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.`protocol`) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.serialNumber) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.`protocol`.isEmpty {
      try visitor.visitSingularStringField(value: self.`protocol`, fieldNumber: 2)
    }
    if !self.serialNumber.isEmpty {
      try visitor.visitSingularStringField(value: self.serialNumber, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: DeviceInfo, rhs: DeviceInfo) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.`protocol` != rhs.`protocol` {return false}
    if lhs.serialNumber != rhs.serialNumber {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
