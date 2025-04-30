package androidx.emoji2.text.flatbuffer;

import io.netty.handler.codec.http2.Http2CodecUtil;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.util.Arrays;
/* loaded from: classes.dex */
public class ArrayReadWriteBuf implements ReadWriteBuf {

    /* renamed from: a  reason: collision with root package name */
    private byte[] f5614a;

    /* renamed from: b  reason: collision with root package name */
    private int f5615b;

    public ArrayReadWriteBuf() {
        this(10);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public byte[] data() {
        return this.f5614a;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public byte get(int i2) {
        return this.f5614a[i2];
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public boolean getBoolean(int i2) {
        return this.f5614a[i2] != 0;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public double getDouble(int i2) {
        return Double.longBitsToDouble(getLong(i2));
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public float getFloat(int i2) {
        return Float.intBitsToFloat(getInt(i2));
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public int getInt(int i2) {
        byte[] bArr = this.f5614a;
        return (bArr[i2] & 255) | (bArr[i2 + 3] << BinaryMemcacheOpcodes.FLUSHQ) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 1] & 255) << 8);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public long getLong(int i2) {
        byte[] bArr = this.f5614a;
        int i4 = i2 + 1;
        int i5 = i4 + 1;
        int i6 = i5 + 1;
        int i7 = i6 + 1;
        int i8 = i7 + 1;
        int i9 = i8 + 1;
        return (bArr[i9 + 1] << 56) | (bArr[i2] & 255) | ((bArr[i4] & 255) << 8) | ((bArr[i5] & 255) << 16) | ((bArr[i6] & 255) << 24) | ((bArr[i7] & 255) << 32) | ((bArr[i8] & 255) << 40) | ((255 & bArr[i9]) << 48);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public short getShort(int i2) {
        byte[] bArr = this.f5614a;
        return (short) ((bArr[i2] & 255) | (bArr[i2 + 1] << 8));
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public String getString(int i2, int i4) {
        return Utf8Safe.decodeUtf8Array(this.f5614a, i2, i4);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf, androidx.emoji2.text.flatbuffer.ReadBuf
    public int limit() {
        return this.f5615b;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void put(byte[] bArr, int i2, int i4) {
        set(this.f5615b, bArr, i2, i4);
        this.f5615b += i4;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putBoolean(boolean z3) {
        setBoolean(this.f5615b, z3);
        this.f5615b++;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putDouble(double d4) {
        setDouble(this.f5615b, d4);
        this.f5615b += 8;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putFloat(float f4) {
        setFloat(this.f5615b, f4);
        this.f5615b += 4;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putInt(int i2) {
        setInt(this.f5615b, i2);
        this.f5615b += 4;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putLong(long j4) {
        setLong(this.f5615b, j4);
        this.f5615b += 8;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putShort(short s3) {
        setShort(this.f5615b, s3);
        this.f5615b += 2;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public boolean requestCapacity(int i2) {
        byte[] bArr = this.f5614a;
        if (bArr.length > i2) {
            return true;
        }
        int length = bArr.length;
        this.f5614a = Arrays.copyOf(bArr, length + (length >> 1));
        return true;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void set(int i2, byte b4) {
        requestCapacity(i2 + 1);
        this.f5614a[i2] = b4;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setBoolean(int i2, boolean z3) {
        set(i2, z3 ? (byte) 1 : (byte) 0);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setDouble(int i2, double d4) {
        requestCapacity(i2 + 8);
        long doubleToRawLongBits = Double.doubleToRawLongBits(d4);
        int i4 = (int) doubleToRawLongBits;
        byte[] bArr = this.f5614a;
        int i5 = i2 + 1;
        bArr[i2] = (byte) (i4 & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((i4 >> 8) & 255);
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((i4 >> 16) & 255);
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((i4 >> 24) & 255);
        int i9 = (int) (doubleToRawLongBits >> 32);
        int i10 = i8 + 1;
        bArr[i8] = (byte) (i9 & 255);
        int i11 = i10 + 1;
        bArr[i10] = (byte) ((i9 >> 8) & 255);
        bArr[i11] = (byte) ((i9 >> 16) & 255);
        bArr[i11 + 1] = (byte) ((i9 >> 24) & 255);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setFloat(int i2, float f4) {
        requestCapacity(i2 + 4);
        int floatToRawIntBits = Float.floatToRawIntBits(f4);
        byte[] bArr = this.f5614a;
        int i4 = i2 + 1;
        bArr[i2] = (byte) (floatToRawIntBits & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((floatToRawIntBits >> 8) & 255);
        bArr[i5] = (byte) ((floatToRawIntBits >> 16) & 255);
        bArr[i5 + 1] = (byte) ((floatToRawIntBits >> 24) & 255);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setInt(int i2, int i4) {
        requestCapacity(i2 + 4);
        byte[] bArr = this.f5614a;
        int i5 = i2 + 1;
        bArr[i2] = (byte) (i4 & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((i4 >> 8) & 255);
        bArr[i6] = (byte) ((i4 >> 16) & 255);
        bArr[i6 + 1] = (byte) ((i4 >> 24) & 255);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setLong(int i2, long j4) {
        requestCapacity(i2 + 8);
        int i4 = (int) j4;
        byte[] bArr = this.f5614a;
        int i5 = i2 + 1;
        bArr[i2] = (byte) (i4 & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((i4 >> 8) & 255);
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((i4 >> 16) & 255);
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((i4 >> 24) & 255);
        int i9 = (int) (j4 >> 32);
        int i10 = i8 + 1;
        bArr[i8] = (byte) (i9 & 255);
        int i11 = i10 + 1;
        bArr[i10] = (byte) ((i9 >> 8) & 255);
        bArr[i11] = (byte) ((i9 >> 16) & 255);
        bArr[i11 + 1] = (byte) ((i9 >> 24) & 255);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setShort(int i2, short s3) {
        requestCapacity(i2 + 2);
        byte[] bArr = this.f5614a;
        bArr[i2] = (byte) (s3 & Http2CodecUtil.MAX_UNSIGNED_BYTE);
        bArr[i2 + 1] = (byte) ((s3 >> 8) & 255);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public int writePosition() {
        return this.f5615b;
    }

    public ArrayReadWriteBuf(int i2) {
        this(new byte[i2]);
    }

    public ArrayReadWriteBuf(byte[] bArr) {
        this.f5614a = bArr;
        this.f5615b = 0;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void put(byte b4) {
        set(this.f5615b, b4);
        this.f5615b++;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void set(int i2, byte[] bArr, int i4, int i5) {
        requestCapacity((i5 - i4) + i2);
        System.arraycopy(bArr, i4, this.f5614a, i2, i5);
    }

    public ArrayReadWriteBuf(byte[] bArr, int i2) {
        this.f5614a = bArr;
        this.f5615b = i2;
    }
}
