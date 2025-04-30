package androidx.emoji2.text.flatbuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public interface ReadWriteBuf extends ReadBuf {
    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    int limit();

    void put(byte b4);

    void put(byte[] bArr, int i2, int i4);

    void putBoolean(boolean z3);

    void putDouble(double d4);

    void putFloat(float f4);

    void putInt(int i2);

    void putLong(long j4);

    void putShort(short s3);

    boolean requestCapacity(int i2);

    void set(int i2, byte b4);

    void set(int i2, byte[] bArr, int i4, int i5);

    void setBoolean(int i2, boolean z3);

    void setDouble(int i2, double d4);

    void setFloat(int i2, float f4);

    void setInt(int i2, int i4);

    void setLong(int i2, long j4);

    void setShort(int i2, short s3);

    int writePosition();
}
