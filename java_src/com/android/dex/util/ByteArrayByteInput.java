package com.android.dex.util;
/* loaded from: classes2.dex */
public final class ByteArrayByteInput implements ByteInput {
    private final byte[] bytes;
    private int position;

    public ByteArrayByteInput(byte... bArr) {
        this.bytes = bArr;
    }

    @Override // com.android.dex.util.ByteInput
    public byte readByte() {
        byte[] bArr = this.bytes;
        int i2 = this.position;
        this.position = i2 + 1;
        return bArr[i2];
    }
}
