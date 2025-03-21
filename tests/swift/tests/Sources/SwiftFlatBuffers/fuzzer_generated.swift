// automatically generated by the FlatBuffers compiler, do not modify
// swiftlint:disable all
// swiftformat:disable all

import FlatBuffers

public enum Color: UInt8, Enum, Verifiable {
  public typealias T = UInt8
  public static var byteSize: Int { return MemoryLayout<UInt8>.size }
  public var value: UInt8 { return self.rawValue }
  case red = 1
  ///  \brief color Green
  ///  Green is bit_flag with value (1u << 1)
  case green = 2
  ///  \brief color Blue (1u << 3)
  case blue = 8

  public static var max: Color { return .blue }
  public static var min: Color { return .red }
}

extension Color: Encodable {
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    switch self {
    case .red: try container.encode("Red")
    case .green: try container.encode("Green")
    case .blue: try container.encode("Blue")
    }
  }
}

public struct Test: NativeStruct, Verifiable, FlatbuffersInitializable {

  static func validateVersion() { FlatBuffersVersion_25_2_10() }

  private var _a: Int16
  private var _b: Int8
  private let padding0__: UInt8 = 0

  public init(_ bb: ByteBuffer, o: Int32) {
    let _accessor = Struct(bb: bb, position: o)
    _a = _accessor.readBuffer(of: Int16.self, at: 0)
    _b = _accessor.readBuffer(of: Int8.self, at: 2)
  }

  public init(a: Int16, b: Int8) {
    _a = a
    _b = b
  }

  public init() {
    _a = 0
    _b = 0
  }

  public var a: Int16 { _a }
  public var b: Int8 { _b }

  public static func verify<T>(_ verifier: inout Verifier, at position: Int, of type: T.Type) throws where T: Verifiable {
    try verifier.inBuffer(position: position, of: Test.self)
  }
}

extension Test: Encodable {

  enum CodingKeys: String, CodingKey {
    case a = "a"
    case b = "b"
  }
  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if a != 0 {
      try container.encodeIfPresent(a, forKey: .a)
    }
    if b != 0 {
      try container.encodeIfPresent(b, forKey: .b)
    }
  }
}

public struct Test_Mutable: FlatBufferObject {

  static func validateVersion() { FlatBuffersVersion_25_2_10() }
  public var __buffer: ByteBuffer! { return _accessor.bb }
  private var _accessor: Struct

  public init(_ bb: ByteBuffer, o: Int32) { _accessor = Struct(bb: bb, position: o) }

  public var a: Int16 { return _accessor.readBuffer(of: Int16.self, at: 0) }
  public var b: Int8 { return _accessor.readBuffer(of: Int8.self, at: 2) }
}

public struct Vec3: NativeStruct, Verifiable, FlatbuffersInitializable {

  static func validateVersion() { FlatBuffersVersion_25_2_10() }

  private var _x: Float32
  private var _y: Float32
  private var _z: Float32
  private let padding0__: UInt32 = 0
  private var _test1: Double
  private var _test2: UInt8
  private let padding1__: UInt8 = 0
  private var _test3: Test
  private let padding2__: UInt16 = 0

  public init(_ bb: ByteBuffer, o: Int32) {
    let _accessor = Struct(bb: bb, position: o)
    _x = _accessor.readBuffer(of: Float32.self, at: 0)
    _y = _accessor.readBuffer(of: Float32.self, at: 4)
    _z = _accessor.readBuffer(of: Float32.self, at: 8)
    _test1 = _accessor.readBuffer(of: Double.self, at: 16)
    _test2 = _accessor.readBuffer(of: UInt8.self, at: 24)
    _test3 = Test(_accessor.bb, o: _accessor.position + 26)
  }

  public init(x: Float32, y: Float32, z: Float32, test1: Double, test2: Color, test3: Test) {
    _x = x
    _y = y
    _z = z
    _test1 = test1
    _test2 = test2.value
    _test3 = test3
  }

  public init() {
    _x = 0.0
    _y = 0.0
    _z = 0.0
    _test1 = 0.0
    _test2 = 0
    _test3 = Test()
  }

  public var x: Float32 { _x }
  public var y: Float32 { _y }
  public var z: Float32 { _z }
  public var test1: Double { _test1 }
  public var test2: Color { Color(rawValue: _test2)! }
  public var test3: Test { _test3 }

  public static func verify<T>(_ verifier: inout Verifier, at position: Int, of type: T.Type) throws where T: Verifiable {
    try verifier.inBuffer(position: position, of: Vec3.self)
  }
}

extension Vec3: Encodable {

  enum CodingKeys: String, CodingKey {
    case x = "x"
    case y = "y"
    case z = "z"
    case test1 = "test1"
    case test2 = "test2"
    case test3 = "test3"
  }
  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    if x != 0.0 {
      try container.encodeIfPresent(x, forKey: .x)
    }
    if y != 0.0 {
      try container.encodeIfPresent(y, forKey: .y)
    }
    if z != 0.0 {
      try container.encodeIfPresent(z, forKey: .z)
    }
    if test1 != 0.0 {
      try container.encodeIfPresent(test1, forKey: .test1)
    }
    if test2 != .red {
      try container.encodeIfPresent(test2, forKey: .test2)
    }
    try container.encodeIfPresent(test3, forKey: .test3)
  }
}

public struct Vec3_Mutable: FlatBufferObject {

  static func validateVersion() { FlatBuffersVersion_25_2_10() }
  public var __buffer: ByteBuffer! { return _accessor.bb }
  private var _accessor: Struct

  public init(_ bb: ByteBuffer, o: Int32) { _accessor = Struct(bb: bb, position: o) }

  public var x: Float32 { return _accessor.readBuffer(of: Float32.self, at: 0) }
  public var y: Float32 { return _accessor.readBuffer(of: Float32.self, at: 4) }
  public var z: Float32 { return _accessor.readBuffer(of: Float32.self, at: 8) }
  public var test1: Double { return _accessor.readBuffer(of: Double.self, at: 16) }
  public var test2: Color { return Color(rawValue: _accessor.readBuffer(of: UInt8.self, at: 24)) ?? .red }
  public var test3: Test_Mutable { return Test_Mutable(_accessor.bb, o: _accessor.position + 26) }
}

///  an example documentation comment: "monster object"
public struct Monster: FlatBufferObject, Verifiable {

  static func validateVersion() { FlatBuffersVersion_25_2_10() }
  public var __buffer: ByteBuffer! { return _accessor.bb }
  private var _accessor: Table

  private init(_ t: Table) { _accessor = t }
  public init(_ bb: ByteBuffer, o: Int32) { _accessor = Table(bb: bb, position: o) }

  private enum VTOFFSET: VOffset {
    case pos = 4
    case mana = 6
    case hp = 8
    case name = 10
    case testarrayoftables = 12
    case inventory = 14
    case color = 16
    var v: Int32 { Int32(self.rawValue) }
    var p: VOffset { self.rawValue }
  }

  public var pos: Vec3? { let o = _accessor.offset(VTOFFSET.pos.v); return o == 0 ? nil : _accessor.readBuffer(of: Vec3.self, at: o) }
  public var mutablePos: Vec3_Mutable? { let o = _accessor.offset(VTOFFSET.pos.v); return o == 0 ? nil : Vec3_Mutable(_accessor.bb, o: o + _accessor.position) }
  public var mana: Int16 { let o = _accessor.offset(VTOFFSET.mana.v); return o == 0 ? 150 : _accessor.readBuffer(of: Int16.self, at: o) }
  public var hp: Int16 { let o = _accessor.offset(VTOFFSET.hp.v); return o == 0 ? 100 : _accessor.readBuffer(of: Int16.self, at: o) }
  public var name: String! { let o = _accessor.offset(VTOFFSET.name.v); return _accessor.string(at: o) }
  public var nameSegmentArray: [UInt8]! { return _accessor.getVector(at: VTOFFSET.name.v) }
  public var hasTestarrayoftables: Bool { let o = _accessor.offset(VTOFFSET.testarrayoftables.v); return o == 0 ? false : true }
  public var testarrayoftablesCount: Int32 { let o = _accessor.offset(VTOFFSET.testarrayoftables.v); return o == 0 ? 0 : _accessor.vector(count: o) }
  public func testarrayoftables(at index: Int32) -> Monster? { let o = _accessor.offset(VTOFFSET.testarrayoftables.v); return o == 0 ? nil : Monster(_accessor.bb, o: _accessor.indirect(_accessor.vector(at: o) + index * 4)) }
  public func testarrayoftablesBy(key: String) -> Monster? { let o = _accessor.offset(VTOFFSET.testarrayoftables.v); return o == 0 ? nil : Monster.lookupByKey(vector: _accessor.vector(at: o), key: key, fbb: _accessor.bb) }
  public var hasInventory: Bool { let o = _accessor.offset(VTOFFSET.inventory.v); return o == 0 ? false : true }
  public var inventoryCount: Int32 { let o = _accessor.offset(VTOFFSET.inventory.v); return o == 0 ? 0 : _accessor.vector(count: o) }
  public func inventory(at index: Int32) -> UInt8 { let o = _accessor.offset(VTOFFSET.inventory.v); return o == 0 ? 0 : _accessor.directRead(of: UInt8.self, offset: _accessor.vector(at: o) + index * 1) }
  public var inventory: [UInt8] { return _accessor.getVector(at: VTOFFSET.inventory.v) ?? [] }
  public func withUnsafePointerToInventory<T>(_ body: (UnsafeRawBufferPointer) throws -> T) rethrows -> T? { return try _accessor.withUnsafePointerToSlice(at: VTOFFSET.inventory.v, body: body) }
  public var color: Color { let o = _accessor.offset(VTOFFSET.color.v); return o == 0 ? .blue : Color(rawValue: _accessor.readBuffer(of: UInt8.self, at: o)) ?? .blue }
  public static func startMonster(_ fbb: inout FlatBufferBuilder) -> UOffset { fbb.startTable(with: 7) }
  public static func add(pos: Vec3?, _ fbb: inout FlatBufferBuilder) { guard let pos = pos else { return }; fbb.create(struct: pos, position: VTOFFSET.pos.p) }
  public static func add(mana: Int16, _ fbb: inout FlatBufferBuilder) { fbb.add(element: mana, def: 150, at: VTOFFSET.mana.p) }
  public static func add(hp: Int16, _ fbb: inout FlatBufferBuilder) { fbb.add(element: hp, def: 100, at: VTOFFSET.hp.p) }
  public static func add(name: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: name, at: VTOFFSET.name.p) }
  public static func addVectorOf(testarrayoftables: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: testarrayoftables, at: VTOFFSET.testarrayoftables.p) }
  public static func addVectorOf(inventory: Offset, _ fbb: inout FlatBufferBuilder) { fbb.add(offset: inventory, at: VTOFFSET.inventory.p) }
  public static func add(color: Color, _ fbb: inout FlatBufferBuilder) { fbb.add(element: color.rawValue, def: 8, at: VTOFFSET.color.p) }
  public static func endMonster(_ fbb: inout FlatBufferBuilder, start: UOffset) -> Offset { let end = Offset(offset: fbb.endTable(at: start)); fbb.require(table: end, fields: [10]); return end }
  public static func createMonster(
    _ fbb: inout FlatBufferBuilder,
    pos: Vec3? = nil,
    mana: Int16 = 150,
    hp: Int16 = 100,
    nameOffset name: Offset,
    testarrayoftablesVectorOffset testarrayoftables: Offset = Offset(),
    inventoryVectorOffset inventory: Offset = Offset(),
    color: Color = .blue
  ) -> Offset {
    let __start = Monster.startMonster(&fbb)
    Monster.add(pos: pos, &fbb)
    Monster.add(mana: mana, &fbb)
    Monster.add(hp: hp, &fbb)
    Monster.add(name: name, &fbb)
    Monster.addVectorOf(testarrayoftables: testarrayoftables, &fbb)
    Monster.addVectorOf(inventory: inventory, &fbb)
    Monster.add(color: color, &fbb)
    return Monster.endMonster(&fbb, start: __start)
  }
  public static func sortVectorOfMonster(offsets:[Offset], _ fbb: inout FlatBufferBuilder) -> Offset {
    var off = offsets
    off.sort { Table.compare(Table.offset(Int32($1.o), vOffset: 10, fbb: &fbb), Table.offset(Int32($0.o), vOffset: 10, fbb: &fbb), fbb: &fbb) < 0 } 
    return fbb.createVector(ofOffsets: off)
  }
  fileprivate static func lookupByKey(vector: Int32, key: String, fbb: ByteBuffer) -> Monster? {
    let key = key.utf8.map { $0 }
    var span = fbb.read(def: Int32.self, position: Int(vector - 4))
    var start: Int32 = 0
    while span != 0 {
      var middle = span / 2
      let tableOffset = Table.indirect(vector + 4 * (start + middle), fbb)
      let comp = Table.compare(Table.offset(Int32(fbb.capacity) - tableOffset, vOffset: 10, fbb: fbb), key, fbb: fbb)
      if comp > 0 {
        span = middle
      } else if comp < 0 {
        middle += 1
        start += middle
        span -= middle
      } else {
        return Monster(fbb, o: tableOffset)
      }
    }
    return nil
  }

  public static func verify<T>(_ verifier: inout Verifier, at position: Int, of type: T.Type) throws where T: Verifiable {
    var _v = try verifier.visitTable(at: position)
    try _v.visit(field: VTOFFSET.pos.p, fieldName: "pos", required: false, type: Vec3.self)
    try _v.visit(field: VTOFFSET.mana.p, fieldName: "mana", required: false, type: Int16.self)
    try _v.visit(field: VTOFFSET.hp.p, fieldName: "hp", required: false, type: Int16.self)
    try _v.visit(field: VTOFFSET.name.p, fieldName: "name", required: true, type: ForwardOffset<String>.self)
    try _v.visit(field: VTOFFSET.testarrayoftables.p, fieldName: "testarrayoftables", required: false, type: ForwardOffset<Vector<ForwardOffset<Monster>, Monster>>.self)
    try _v.visit(field: VTOFFSET.inventory.p, fieldName: "inventory", required: false, type: ForwardOffset<Vector<UInt8, UInt8>>.self)
    try _v.visit(field: VTOFFSET.color.p, fieldName: "color", required: false, type: Color.self)
    _v.finish()
  }
}

extension Monster: Encodable {

  enum CodingKeys: String, CodingKey {
    case pos = "pos"
    case mana = "mana"
    case hp = "hp"
    case name = "name"
    case testarrayoftables = "testarrayoftables"
    case inventory = "inventory"
    case color = "color"
  }
  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encodeIfPresent(pos, forKey: .pos)
    if mana != 150 {
      try container.encodeIfPresent(mana, forKey: .mana)
    }
    if hp != 100 {
      try container.encodeIfPresent(hp, forKey: .hp)
    }
    try container.encodeIfPresent(name, forKey: .name)
    if testarrayoftablesCount > 0 {
      var contentEncoder = container.nestedUnkeyedContainer(forKey: .testarrayoftables)
      for index in 0..<testarrayoftablesCount {
        guard let type = testarrayoftables(at: index) else { continue }
        try contentEncoder.encode(type)
      }
    }
    if inventoryCount > 0 {
      try container.encodeIfPresent(inventory, forKey: .inventory)
    }
    if color != .blue {
      try container.encodeIfPresent(color, forKey: .color)
    }
  }
}

