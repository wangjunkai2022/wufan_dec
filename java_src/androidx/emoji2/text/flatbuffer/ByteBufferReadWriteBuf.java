package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes.dex */
public class ByteBufferReadWriteBuf implements ReadWriteBuf {

    /* renamed from: a  reason: collision with root package name */
    private final ByteBuffer f5620a;

    public ByteBufferReadWriteBuf(ByteBuffer byteBuffer) {
        this.f5620a = byteBuffer;
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public byte[] data() {
        return this.f5620a.array();
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public byte get(int i2) {
        return this.f5620a.get(i2);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public boolean getBoolean(int i2) {
        return get(i2) != 0;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public double getDouble(int i2) {
        return this.f5620a.getDouble(i2);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public float getFloat(int i2) {
        return this.f5620a.getFloat(i2);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public int getInt(int i2) {
        return this.f5620a.getInt(i2);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public long getLong(int i2) {
        return this.f5620a.getLong(i2);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public short getShort(int i2) {
        return this.f5620a.getShort(i2);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public String getString(int i2, int i4) {
        return Utf8Safe.decodeUtf8Buffer(this.f5620a, i2, i4);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf, androidx.emoji2.text.flatbuffer.ReadBuf
    public int limit() {
        return this.f5620a.limit();
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void put(byte[] bArr, int i2, int i4) {
        this.f5620a.put(bArr, i2, i4);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putBoolean(boolean z3) {
        this.f5620a.put(z3 ? (byte) 1 : (byte) 0);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putDouble(double d4) {
        this.f5620a.putDouble(d4);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putFloat(float f4) {
        this.f5620a.putFloat(f4);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putInt(int i2) {
        this.f5620a.putInt(i2);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putLong(long j4) {
        this.f5620a.putLong(j4);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putShort(short s3) {
        this.f5620a.putShort(s3);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public boolean requestCapacity(int i2) {
        return i2 <= this.f5620a.limit();
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void set(int i2, byte b4) {
        requestCapacity(i2 + 1);
        this.f5620a.put(i2, b4);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setBoolean(int i2, boolean z3) {
        set(i2, z3 ? (byte) 1 : (byte) 0);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setDouble(int i2, double d4) {
        requestCapacity(i2 + 8);
        this.f5620a.putDouble(i2, d4);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setFloat(int i2, float f4) {
        requestCapacity(i2 + 4);
        this.f5620a.putFloat(i2, f4);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setInt(int i2, int i4) {
        requestCapacity(i2 + 4);
        this.f5620a.putInt(i2, i4);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setLong(int i2, long j4) {
        requestCapacity(i2 + 8);
        this.f5620a.putLong(i2, j4);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setShort(int i2, short s3) {
        requestCapacity(i2 + 2);
        this.f5620a.putShort(i2, s3);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public int writePosition() {
        return this.f5620a.position();
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void put(byte b4) {
        this.f5620a.put(b4);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void set(int i2, byte[] bArr, int i4, int i5) {
        requestCapacity((i5 - i4) + i2);
        int position = this.f5620a.position();
        this.f5620a.position(i2);
        this.f5620a.put(bArr, i4, i5);
        this.f5620a.position(position);
    }
}
