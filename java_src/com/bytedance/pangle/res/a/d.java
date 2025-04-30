package com.bytedance.pangle.res.a;

import java.io.EOFException;
import java.io.InputStream;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class d {
    private static <T> T a(T t3) {
        Objects.requireNonNull(t3);
        return t3;
    }

    public static void a(InputStream inputStream, byte[] bArr, int i2, int i4) {
        a(inputStream);
        a(bArr);
        int i5 = 0;
        if (i4 >= 0) {
            int i6 = i2 + i4;
            int length = bArr.length;
            if (i2 < 0 || i6 < i2 || i6 > length) {
                StringBuilder sb = new StringBuilder();
                sb.append(i2);
                sb.append(i6);
                sb.append(length);
                throw new IndexOutOfBoundsException(sb.toString());
            }
            while (i5 < i4) {
                int read = inputStream.read(bArr, i2 + i5, i4 - i5);
                if (read == -1) {
                    break;
                }
                i5 += read;
            }
            if (i5 == i4) {
                return;
            }
            throw new EOFException("reached end of stream after reading " + i5 + " bytes; " + i4 + " bytes expected");
        }
        throw new IndexOutOfBoundsException(String.format("len (%s) cannot be negative", Integer.valueOf(i4)));
    }
}
