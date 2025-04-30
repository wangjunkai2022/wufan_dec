package com.android.dx.util;

import com.android.dex.util.ByteOutput;
/* loaded from: classes2.dex */
public interface Output extends ByteOutput {
    void alignTo(int i2);

    void assertCursor(int i2);

    int getCursor();

    void write(ByteArray byteArray);

    void write(byte[] bArr);

    void write(byte[] bArr, int i2, int i4);

    @Override // com.android.dex.util.ByteOutput
    void writeByte(int i2);

    void writeInt(int i2);

    void writeLong(long j4);

    void writeShort(int i2);

    int writeSleb128(int i2);

    int writeUleb128(int i2);

    void writeZeroes(int i2);
}
