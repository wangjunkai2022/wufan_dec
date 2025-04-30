package com.facebook.imageutils;

import java.io.IOException;
import java.io.InputStream;
/* compiled from: StreamProcessor.java */
/* loaded from: classes2.dex */
class d {
    d() {
    }

    public static int a(InputStream inputStream, int i2, boolean z3) throws IOException {
        int i4;
        int i5 = 0;
        for (int i6 = 0; i6 < i2; i6++) {
            int read = inputStream.read();
            if (read == -1) {
                throw new IOException("no more bytes");
            }
            if (z3) {
                i4 = (read & 255) << (i6 * 8);
            } else {
                i5 <<= 8;
                i4 = read & 255;
            }
            i5 |= i4;
        }
        return i5;
    }
}
