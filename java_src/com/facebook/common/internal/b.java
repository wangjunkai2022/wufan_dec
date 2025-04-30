package com.facebook.common.internal;

import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
/* compiled from: ByteStreams.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final int f11689a = 4096;

    /* compiled from: ByteStreams.java */
    /* renamed from: com.facebook.common.internal.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static final class C0062b extends ByteArrayOutputStream {
        private C0062b() {
        }

        void a(byte[] bArr, int i2) {
            System.arraycopy(((ByteArrayOutputStream) this).buf, 0, bArr, i2, ((ByteArrayOutputStream) this).count);
        }
    }

    private b() {
    }

    public static long a(InputStream inputStream, OutputStream outputStream) throws IOException {
        h.i(inputStream);
        h.i(outputStream);
        byte[] bArr = new byte[4096];
        long j4 = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return j4;
            }
            outputStream.write(bArr, 0, read);
            j4 += read;
        }
    }

    public static int b(InputStream inputStream, byte[] bArr, int i2, int i4) throws IOException {
        h.i(inputStream);
        h.i(bArr);
        if (i4 >= 0) {
            int i5 = 0;
            while (i5 < i4) {
                int read = inputStream.read(bArr, i2 + i5, i4 - i5);
                if (read == -1) {
                    break;
                }
                i5 += read;
            }
            return i5;
        }
        throw new IndexOutOfBoundsException("len is negative");
    }

    public static void c(InputStream inputStream, byte[] bArr, int i2, int i4) throws IOException {
        int b4 = b(inputStream, bArr, i2, i4);
        if (b4 == i4) {
            return;
        }
        throw new EOFException("reached end of stream after reading " + b4 + " bytes; " + i4 + " bytes expected");
    }

    public static byte[] d(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        a(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] e(InputStream inputStream, int i2) throws IOException {
        byte[] bArr = new byte[i2];
        int i4 = i2;
        while (i4 > 0) {
            int i5 = i2 - i4;
            int read = inputStream.read(bArr, i5, i4);
            if (read == -1) {
                return Arrays.copyOf(bArr, i5);
            }
            i4 -= read;
        }
        int read2 = inputStream.read();
        if (read2 == -1) {
            return bArr;
        }
        C0062b c0062b = new C0062b();
        c0062b.write(read2);
        a(inputStream, c0062b);
        byte[] bArr2 = new byte[c0062b.size() + i2];
        System.arraycopy(bArr, 0, bArr2, 0, i2);
        c0062b.a(bArr2, i2);
        return bArr2;
    }
}
