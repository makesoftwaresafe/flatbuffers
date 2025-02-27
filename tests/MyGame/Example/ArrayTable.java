// automatically generated by the FlatBuffers compiler, do not modify

package MyGame.Example;

import com.google.flatbuffers.BaseVector;
import com.google.flatbuffers.BooleanVector;
import com.google.flatbuffers.ByteVector;
import com.google.flatbuffers.Constants;
import com.google.flatbuffers.DoubleVector;
import com.google.flatbuffers.FlatBufferBuilder;
import com.google.flatbuffers.FloatVector;
import com.google.flatbuffers.IntVector;
import com.google.flatbuffers.LongVector;
import com.google.flatbuffers.ShortVector;
import com.google.flatbuffers.StringVector;
import com.google.flatbuffers.Struct;
import com.google.flatbuffers.Table;
import com.google.flatbuffers.UnionVector;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

@SuppressWarnings("unused")
public final class ArrayTable extends Table {
  public static void ValidateVersion() { Constants.FLATBUFFERS_25_2_10(); }
  public static ArrayTable getRootAsArrayTable(ByteBuffer _bb) { return getRootAsArrayTable(_bb, new ArrayTable()); }
  public static ArrayTable getRootAsArrayTable(ByteBuffer _bb, ArrayTable obj) { _bb.order(ByteOrder.LITTLE_ENDIAN); return (obj.__assign(_bb.getInt(_bb.position()) + _bb.position(), _bb)); }
  public static boolean ArrayTableBufferHasIdentifier(ByteBuffer _bb) { return __has_identifier(_bb, "ARRT"); }
  public void __init(int _i, ByteBuffer _bb) { __reset(_i, _bb); }
  public ArrayTable __assign(int _i, ByteBuffer _bb) { __init(_i, _bb); return this; }

  public MyGame.Example.ArrayStruct a() { return a(new MyGame.Example.ArrayStruct()); }
  public MyGame.Example.ArrayStruct a(MyGame.Example.ArrayStruct obj) { int o = __offset(4); return o != 0 ? obj.__assign(o + bb_pos, bb) : null; }

  public static void startArrayTable(FlatBufferBuilder builder) { builder.startTable(1); }
  public static void addA(FlatBufferBuilder builder, int aOffset) { builder.addStruct(0, aOffset, 0); }
  public static int endArrayTable(FlatBufferBuilder builder) {
    int o = builder.endTable();
    return o;
  }
  public static void finishArrayTableBuffer(FlatBufferBuilder builder, int offset) { builder.finish(offset, "ARRT"); }
  public static void finishSizePrefixedArrayTableBuffer(FlatBufferBuilder builder, int offset) { builder.finishSizePrefixed(offset, "ARRT"); }

  public static final class Vector extends BaseVector {
    public Vector __assign(int _vector, int _element_size, ByteBuffer _bb) { __reset(_vector, _element_size, _bb); return this; }

    public ArrayTable get(int j) { return get(new ArrayTable(), j); }
    public ArrayTable get(ArrayTable obj, int j) {  return obj.__assign(__indirect(__element(j), bb), bb); }
  }
  public ArrayTableT unpack() {
    ArrayTableT _o = new ArrayTableT();
    unpackTo(_o);
    return _o;
  }
  public void unpackTo(ArrayTableT _o) {
    if (a() != null) a().unpackTo(_o.getA());
    else _o.setA(null);
  }
  public static int pack(FlatBufferBuilder builder, ArrayTableT _o) {
    if (_o == null) return 0;
    startArrayTable(builder);
    addA(builder, MyGame.Example.ArrayStruct.pack(builder, _o.getA()));
    return endArrayTable(builder);
  }
}

