package com.facebook.imageutils;

import android.util.Pair;
import androidx.core.view.MotionEventCompat;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.Nullable;
/* compiled from: WebpUtil.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static final String f13392a = "VP8 ";

    /* renamed from: b  reason: collision with root package name */
    private static final String f13393b = "VP8L";

    /* renamed from: c  reason: collision with root package name */
    private static final String f13394c = "VP8X";

    private f() {
    }

    private static boolean a(byte[] bArr, String str) {
        if (bArr.length != str.length()) {
            return false;
        }
        for (int i2 = 0; i2 < bArr.length; i2++) {
            if (str.charAt(i2) != bArr[i2]) {
                return false;
            }
        }
        return true;
    }

    public static int b(InputStream inputStream) throws IOException {
        return ((((byte) inputStream.read()) << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (((byte) inputStream.read()) & 255);
    }

    private static byte c(InputStream inputStream) throws IOException {
        return (byte) (inputStream.read() & 255);
    }

    private static String d(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b4 : bArr) {
            sb.append((char) b4);
        }
        return sb.toString();
    }

    private static int e(InputStream inputStream) throws IOException {
        return ((((byte) inputStream.read()) << BinaryMemcacheOpcodes.FLUSHQ) & (-16777216)) | ((((byte) inputStream.read()) << 16) & 16711680) | ((((byte) inputStream.read()) << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (((byte) inputStream.read()) & 255);
    }

    private static short f(InputStream inputStream) throws IOException {
        return (short) (inputStream.read() & 255);
    }

    @Nullable
    public static Pair<Integer, Integer> g(InputStream inputStream) {
        byte[] bArr = new byte[4];
        try {
            try {
                try {
                    inputStream.read(bArr);
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            } catch (IOException e5) {
                e5.printStackTrace();
                if (inputStream != null) {
                    inputStream.close();
                }
            }
            if (!a(bArr, "RIFF")) {
                try {
                    inputStream.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
                return null;
            }
            e(inputStream);
            inputStream.read(bArr);
            if (!a(bArr, "WEBP")) {
                try {
                    inputStream.close();
                } catch (IOException e7) {
                    e7.printStackTrace();
                }
                return null;
            }
            inputStream.read(bArr);
            String d4 = d(bArr);
            if (f13392a.equals(d4)) {
                Pair<Integer, Integer> h4 = h(inputStream);
                try {
                    inputStream.close();
                } catch (IOException e8) {
                    e8.printStackTrace();
                }
                return h4;
            } else if (f13393b.equals(d4)) {
                Pair<Integer, Integer> i2 = i(inputStream);
                try {
                    inputStream.close();
                } catch (IOException e9) {
                    e9.printStackTrace();
                }
                return i2;
            } else if (f13394c.equals(d4)) {
                Pair<Integer, Integer> j4 = j(inputStream);
                try {
                    inputStream.close();
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
                return j4;
            } else {
                inputStream.close();
                return null;
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e11) {
                    e11.printStackTrace();
                }
            }
            throw th;
        }
    }

    @Nullable
    private static Pair<Integer, Integer> h(InputStream inputStream) throws IOException {
        inputStream.skip(7L);
        short f4 = f(inputStream);
        short f5 = f(inputStream);
        short f6 = f(inputStream);
        if (f4 == 157 && f5 == 1 && f6 == 42) {
            return new Pair<>(Integer.valueOf(b(inputStream)), Integer.valueOf(b(inputStream)));
        }
        return null;
    }

    @Nullable
    private static Pair<Integer, Integer> i(InputStream inputStream) throws IOException {
        e(inputStream);
        if (c(inputStream) != 47) {
            return null;
        }
        int read = ((byte) inputStream.read()) & 255;
        return new Pair<>(Integer.valueOf(((((byte) inputStream.read()) & 255) | ((read & 63) << 8)) + 1), Integer.valueOf(((((((byte) inputStream.read()) & 255) & 15) << 10) | ((((byte) inputStream.read()) & 255) << 2) | ((read & 192) >> 6)) + 1));
    }

    private static Pair<Integer, Integer> j(InputStream inputStream) throws IOException {
        inputStream.skip(8L);
        return new Pair<>(Integer.valueOf(l(inputStream) + 1), Integer.valueOf(l(inputStream) + 1));
    }

    private static boolean k(byte b4, int i2) {
        return ((b4 >> (i2 % 8)) & 1) == 1;
    }

    private static int l(InputStream inputStream) throws IOException {
        byte c4 = c(inputStream);
        return ((c(inputStream) << 16) & 16711680) | ((c(inputStream) << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (c4 & 255);
    }
}
