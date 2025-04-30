package com.umeng.analytics.pro;

import java.io.ByteArrayOutputStream;
/* compiled from: TByteArrayOutputStream.java */
/* loaded from: classes4.dex */
public class at extends ByteArrayOutputStream {
    public at(int i2) {
        super(i2);
    }

    public byte[] a() {
        return ((ByteArrayOutputStream) this).buf;
    }

    public int b() {
        return ((ByteArrayOutputStream) this).count;
    }

    public at() {
    }
}
