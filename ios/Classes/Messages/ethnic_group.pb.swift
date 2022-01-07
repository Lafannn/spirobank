// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ethnic_group.proto
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

enum EthnicGroup: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case caucasian // = 0
  case africanAmerican // = 1
  case ehnicGroupNorthEastAsian // = 2
  case southEastAsian // = 3
  case other // = 4
  case UNRECOGNIZED(Int)

  init() {
    self = .caucasian
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .caucasian
    case 1: self = .africanAmerican
    case 2: self = .ehnicGroupNorthEastAsian
    case 3: self = .southEastAsian
    case 4: self = .other
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .caucasian: return 0
    case .africanAmerican: return 1
    case .ehnicGroupNorthEastAsian: return 2
    case .southEastAsian: return 3
    case .other: return 4
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension EthnicGroup: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [EthnicGroup] = [
    .caucasian,
    .africanAmerican,
    .ehnicGroupNorthEastAsian,
    .southEastAsian,
    .other,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension EthnicGroup: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ethnicGroupCaucasian"),
    1: .same(proto: "ethnicGroupAfricanAmerican"),
    2: .same(proto: "ehnicGroupNorthEastAsian"),
    3: .same(proto: "ethnicGroupSouthEastAsian"),
    4: .same(proto: "ethnicGroupOther"),
  ]
}