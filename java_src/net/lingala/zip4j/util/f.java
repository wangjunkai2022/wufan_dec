package net.lingala.zip4j.util;

import io.netty.handler.codec.http2.Http2CodecUtil;
import java.io.DataInput;
import java.io.IOException;
import java.util.Objects;
import net.lingala.zip4j.exception.ZipException;
/* compiled from: Raw.java */
/* loaded from: classes5.dex */
public class f {
    public static byte a(int[] iArr) throws ZipException {
        if (iArr != null) {
            if (iArr.length == 8) {
                if (b(iArr)) {
                    int i2 = 0;
                    for (int i4 = 0; i4 < iArr.length; i4++) {
                        double d4 = i2;
                        double pow = Math.pow(2.0d, i4);
                        double d5 = iArr[i4];
                        Double.isNaN(d5);
                        Double.isNaN(d4);
                        i2 = (int) (d4 + (pow * d5));
                    }
                    return (byte) i2;
                }
                throw new ZipException("invalid bits provided, bits contain other values than 0 or 1");
            }
            throw new ZipException("invalid bit array length, cannot calculate byte");
        }
        throw new ZipException("bit array is null, cannot calculate byte from bits");
    }

    private static boolean b(int[] iArr) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (iArr[i2] != 0 && iArr[i2] != 1) {
                return false;
            }
        }
        return true;
    }

    public static byte[] c(char[] cArr) {
        Objects.requireNonNull(cArr);
        byte[] bArr = new byte[cArr.length];
        for (int i2 = 0; i2 < cArr.length; i2++) {
            bArr[i2] = (byte) cArr[i2];
        }
        return bArr;
    }

    public static void d(byte[] bArr, int i2, int i4) {
        bArr[0] = (byte) i2;
        bArr[1] = (byte) (i2 >> 8);
        bArr[2] = (byte) (i2 >> 16);
        bArr[3] = (byte) (i2 >> 24);
        bArr[4] = 0;
        bArr[5] = 0;
        bArr[6] = 0;
        bArr[7] = 0;
        bArr[8] = 0;
        bArr[9] = 0;
        bArr[10] = 0;
        bArr[11] = 0;
        bArr[12] = 0;
        bArr[13] = 0;
        bArr[14] = 0;
        bArr[15] = 0;
    }

    public static int e(byte[] bArr, int i2) {
        return ((((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 2] & 255)) << 16) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8);
    }

    public static int f(DataInput dataInput, byte[] bArr) throws ZipException {
        try {
            dataInput.readFully(bArr, 0, 4);
            return (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((((bArr[3] & 255) << 8) | (bArr[2] & 255)) << 16);
        } catch (IOException e4) {
            throw new ZipException(e4);
        }
    }

    public static long g(byte[] bArr, int i2) {
        return (bArr[i2] & 255) | (((((((((((((((bArr[i2 + 7] & 255) | 0) << 8) | (bArr[i2 + 6] & 255)) << 8) | (bArr[i2 + 5] & 255)) << 8) | (bArr[i2 + 4] & 255)) << 8) | (bArr[i2 + 3] & 255)) << 8) | (bArr[i2 + 2] & 255)) << 8) | (bArr[i2 + 1] & 255)) << 8);
    }

    public static final short h(byte[] bArr, int i2) {
        return (short) ((bArr[i2 + 1] & 255) | ((short) (((short) ((bArr[i2] & 255) | 0)) << 8)));
    }

    public static int i(byte[] bArr, int i2) {
        return ((bArr[i2 + 1] & 255) << 8) | (bArr[i2] & 255);
    }

    public static byte[] j(int i2) {
        return new byte[]{(byte) i2, (byte) (i2 >> 8), (byte) (i2 >> 16), (byte) (i2 >> 24)};
    }

    public static byte[] k(int i2, int i4) {
        byte[] bArr = new byte[i4];
        byte[] j4 = j(i2);
        for (int i5 = 0; i5 < j4.length && i5 < i4; i5++) {
            bArr[i5] = j4[i5];
        }
        return bArr;
    }

    public static final void l(byte[] bArr, int i2, int i4) {
        bArr[i2 + 3] = (byte) (i4 >>> 24);
        bArr[i2 + 2] = (byte) (i4 >>> 16);
        bArr[i2 + 1] = (byte) (i4 >>> 8);
        bArr[i2] = (byte) (i4 & 255);
    }

    public static void m(byte[] bArr, int i2, long j4) {
        bArr[i2 + 7] = (byte) (j4 >>> 56);
        bArr[i2 + 6] = (byte) (j4 >>> 48);
        bArr[i2 + 5] = (byte) (j4 >>> 40);
        bArr[i2 + 4] = (byte) (j4 >>> 32);
        bArr[i2 + 3] = (byte) (j4 >>> 24);
        bArr[i2 + 2] = (byte) (j4 >>> 16);
        bArr[i2 + 1] = (byte) (j4 >>> 8);
        bArr[i2] = (byte) (j4 & 255);
    }

    public static final void n(byte[] bArr, int i2, short s3) {
        bArr[i2 + 1] = (byte) (s3 >>> 8);
        bArr[i2] = (byte) (s3 & Http2CodecUtil.MAX_UNSIGNED_BYTE);
    }
}
