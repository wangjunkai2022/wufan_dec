package com.androidquery.util;

import java.io.ByteArrayOutputStream;
/* loaded from: classes2.dex */
public class PredefinedBAOS extends ByteArrayOutputStream {
    public PredefinedBAOS(int i2) {
        super(i2);
    }

    @Override // java.io.ByteArrayOutputStream
    public byte[] toByteArray() {
        int i2 = ((ByteArrayOutputStream) this).count;
        byte[] bArr = ((ByteArrayOutputStream) this).buf;
        return i2 == bArr.length ? bArr : super.toByteArray();
    }
}
