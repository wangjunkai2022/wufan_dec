package com.alipay.security.mobile.module.commonutils.crypto;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final f f9889a = new f();

    private static int a(String str, OutputStream outputStream) {
        return f9889a.a(str, outputStream);
    }

    private static int b(byte[] bArr, int i2, int i4, OutputStream outputStream) {
        return f9889a.b(bArr, i2, i4, outputStream);
    }

    private static int c(byte[] bArr, OutputStream outputStream) {
        return f9889a.b(bArr, 0, bArr.length, outputStream);
    }

    public static byte[] d(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f9889a.a(str, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e4) {
            throw new RuntimeException("exception decoding Hex string: " + e4);
        }
    }

    private static byte[] e(byte[] bArr) {
        return f(bArr, bArr.length);
    }

    private static byte[] f(byte[] bArr, int i2) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f9889a.b(bArr, 0, i2, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e4) {
            throw new RuntimeException("exception encoding Hex string: " + e4);
        }
    }

    private static byte[] g(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f9889a.c(bArr, bArr.length, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e4) {
            throw new RuntimeException("exception decoding Hex string: " + e4);
        }
    }
}
