// automatically generated by the FlatBuffers compiler, do not modify
// swiftlint:disable all
// swiftformat:disable all

#if canImport(Common)
import Common
#endif

import FlatBuffers

public struct Swift_Tests_NanInfTable: FlatBufferObject, Verifiable {

  static func validateVersion() { FlatBuffersVersion_25_2_10() }
  public var __buffer: ByteBuffer! { return _accessor.bb }
  private var _accessor: Table

  private init(_ t: Table) { _accessor = t }
  public init(_ bb: ByteBuffer, o: Int32) { _accessor = Table(bb: bb, position: o) }

  private enum VTOFFSET: VOffset {
    case defaultNan = 4
    case defaultInf = 6
    case defaultNinf = 8
    case valueNan = 10
    case valueInf = 12
    case valueNinf = 14
    case value = 16
    var v: Int32 { Int32(self.rawValue) }
    var p: VOffset { self.rawValue }
  }

  public var defaultNan: Double { let o = _accessor.offset(VTOFFSET.defaultNan.v); return o == 0 ? .nan : _accessor.readBuffer(of: Double.self, at: o) }
  public var defaultInf: Double { let o = _accessor.offset(VTOFFSET.defaultInf.v); return o == 0 ? .infinity : _accessor.readBuffer(of: Double.self, at: o) }
  public var defaultNinf: Double { let o = _accessor.offset(VTOFFSET.defaultNinf.v); return o == 0 ? -.infinity : _accessor.readBuffer(of: Double.self, at: o) }
  public var valueNan: Double { let o = _accessor.offset(VTOFFSET.valueNan.v); return o == 0 ? 0.0 : _accessor.readBuffer(of: Double.self, at: o) }
  public var valueInf: Double { let o = _accessor.offset(VTOFFSET.valueInf.v); return o == 0 ? 0.0 : _accessor.readBuffer(of: Double.self, at: o) }
  public var valueNinf: Double { let o = _accessor.offset(VTOFFSET.valueNinf.v); return o == 0 ? 0.0 : _accessor.readBuffer(of: Double.self, at: o) }
  public var value: Double { let o = _accessor.offset(VTOFFSET.value.v); return o == 0 ? 0.0 : _accessor.readBuffer(of: Double.self, at: o) }
  public static func startNanInfTable(_ fbb: inout FlatBufferBuilder) -> UOffset { fbb.startTable(with: 7) }
  public static func add(defaultNan: Double, _ fbb: inout FlatBufferBuilder) { fbb.add(element: defaultNan, def: .nan, at: VTOFFSET.defaultNan.p) }
  public static func add(defaultInf: Double, _ fbb: inout FlatBufferBuilder) { fbb.add(element: defaultInf, def: .infinity, at: VTOFFSET.defaultInf.p) }
  public static func add(defaultNinf: Double, _ fbb: inout FlatBufferBuilder) { fbb.add(element: defaultNinf, def: -.infinity, at: VTOFFSET.defaultNinf.p) }
  public static func add(valueNan: Double, _ fbb: inout FlatBufferBuilder) { fbb.add(element: valueNan, def: 0.0, at: VTOFFSET.valueNan.p) }
  public static func add(valueInf: Double, _ fbb: inout FlatBufferBuilder) { fbb.add(element: valueInf, def: 0.0, at: VTOFFSET.valueInf.p) }
  public static func add(valueNinf: Double, _ fbb: inout FlatBufferBuilder) { fbb.add(element: valueNinf, def: 0.0, at: VTOFFSET.valueNinf.p) }
  public static func add(value: Double, _ fbb: inout FlatBufferBuilder) { fbb.add(element: value, def: 0.0, at: VTOFFSET.value.p) }
  public static func endNanInfTable(_ fbb: inout FlatBufferBuilder, start: UOffset) -> Offset { let end = Offset(offset: fbb.endTable(at: start)); return end }
  public static func createNanInfTable(
    _ fbb: inout FlatBufferBuilder,
    defaultNan: Double = .nan,
    defaultInf: Double = .infinity,
    defaultNinf: Double = -.infinity,
    valueNan: Double = 0.0,
    valueInf: Double = 0.0,
    valueNinf: Double = 0.0,
    value: Double = 0.0
  ) -> Offset {
    let __start = Swift_Tests_NanInfTable.startNanInfTable(&fbb)
    Swift_Tests_NanInfTable.add(defaultNan: defaultNan, &fbb)
    Swift_Tests_NanInfTable.add(defaultInf: defaultInf, &fbb)
    Swift_Tests_NanInfTable.add(defaultNinf: defaultNinf, &fbb)
    Swift_Tests_NanInfTable.add(valueNan: valueNan, &fbb)
    Swift_Tests_NanInfTable.add(valueInf: valueInf, &fbb)
    Swift_Tests_NanInfTable.add(valueNinf: valueNinf, &fbb)
    Swift_Tests_NanInfTable.add(value: value, &fbb)
    return Swift_Tests_NanInfTable.endNanInfTable(&fbb, start: __start)
  }

  public static func verify<T>(_ verifier: inout Verifier, at position: Int, of type: T.Type) throws where T: Verifiable {
    var _v = try verifier.visitTable(at: position)
    try _v.visit(field: VTOFFSET.defaultNan.p, fieldName: "defaultNan", required: false, type: Double.self)
    try _v.visit(field: VTOFFSET.defaultInf.p, fieldName: "defaultInf", required: false, type: Double.self)
    try _v.visit(field: VTOFFSET.defaultNinf.p, fieldName: "defaultNinf", required: false, type: Double.self)
    try _v.visit(field: VTOFFSET.valueNan.p, fieldName: "valueNan", required: false, type: Double.self)
    try _v.visit(field: VTOFFSET.valueInf.p, fieldName: "valueInf", required: false, type: Double.self)
    try _v.visit(field: VTOFFSET.valueNinf.p, fieldName: "valueNinf", required: false, type: Double.self)
    try _v.visit(field: VTOFFSET.value.p, fieldName: "value", required: false, type: Double.self)
    _v.finish()
  }
}

extension Swift_Tests_NanInfTable: Encodable {

  enum CodingKeys: String, CodingKey {
    case defaultNan = "default_nan"
    case defaultInf = "default_inf"
    case defaultNinf = "default_ninf"
    case valueNan = "value_nan"
    case valueInf = "value_inf"
    case valueNinf = "value_ninf"
    case value = "value"
  }
  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if !defaultNan.isNaN {
      try container.encodeIfPresent(defaultNan, forKey: .defaultNan)
    }
    if defaultInf != .infinity {
      try container.encodeIfPresent(defaultInf, forKey: .defaultInf)
    }
    if defaultNinf != -.infinity {
      try container.encodeIfPresent(defaultNinf, forKey: .defaultNinf)
    }
    if valueNan != 0.0 {
      try container.encodeIfPresent(valueNan, forKey: .valueNan)
    }
    if valueInf != 0.0 {
      try container.encodeIfPresent(valueInf, forKey: .valueInf)
    }
    if valueNinf != 0.0 {
      try container.encodeIfPresent(valueNinf, forKey: .valueNinf)
    }
    if value != 0.0 {
      try container.encodeIfPresent(value, forKey: .value)
    }
  }
}

