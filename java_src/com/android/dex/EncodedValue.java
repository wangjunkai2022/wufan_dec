package com.android.dex;

import com.android.dex.Dex;
import com.android.dex.util.ByteArrayByteInput;
import com.android.dex.util.ByteInput;
/* loaded from: classes2.dex */
public final class EncodedValue implements Comparable<EncodedValue> {
    private final byte[] data;

    public EncodedValue(byte[] bArr) {
        this.data = bArr;
    }

    public ByteInput asByteInput() {
        return new ByteArrayByteInput(this.data);
    }

    public byte[] getBytes() {
        return this.data;
    }

    public String toString() {
        return Integer.toHexString(this.data[0] & 255) + "...(" + this.data.length + ")";
    }

    public void writeTo(Dex.Section section) {
        section.write(this.data);
    }

    @Override // java.lang.Comparable
    public int compareTo(EncodedValue encodedValue) {
        int min = Math.min(this.data.length, encodedValue.data.length);
        for (int i2 = 0; i2 < min; i2++) {
            byte[] bArr = this.data;
            byte b4 = bArr[i2];
            byte[] bArr2 = encodedValue.data;
            if (b4 != bArr2[i2]) {
                return (bArr[i2] & 255) - (bArr2[i2] & 255);
            }
        }
        return this.data.length - encodedValue.data.length;
    }
}
