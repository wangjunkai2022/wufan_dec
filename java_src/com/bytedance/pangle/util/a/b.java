package com.bytedance.pangle.util.a;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static String f10378a = "";

    private static ByteBuffer a(ByteBuffer byteBuffer, int i2) {
        if (i2 >= 8) {
            int capacity = byteBuffer.capacity();
            if (i2 <= byteBuffer.capacity()) {
                int limit = byteBuffer.limit();
                int position = byteBuffer.position();
                try {
                    byteBuffer.position(0);
                    byteBuffer.limit(i2);
                    byteBuffer.position(8);
                    ByteBuffer slice = byteBuffer.slice();
                    slice.order(byteBuffer.order());
                    return slice;
                } finally {
                    byteBuffer.position(0);
                    byteBuffer.limit(limit);
                    byteBuffer.position(position);
                }
            }
            throw new IllegalArgumentException("end > capacity: " + i2 + " > " + capacity);
        }
        throw new IllegalArgumentException("end < start: " + i2 + " < 8");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0050 A[Catch: Exception -> 0x01a7, TryCatch #0 {Exception -> 0x01a7, blocks: (B:3:0x0004, B:11:0x0029, B:13:0x003f, B:18:0x0050, B:20:0x0062, B:24:0x007a, B:26:0x00ad, B:28:0x00ba, B:32:0x00ce, B:34:0x00d8, B:36:0x00f9, B:38:0x010b, B:40:0x011f, B:41:0x013a, B:42:0x013b, B:43:0x014a, B:44:0x014b, B:45:0x015a, B:46:0x015b, B:47:0x0162, B:48:0x0163, B:49:0x0172, B:50:0x0173, B:51:0x017a, B:52:0x017b, B:53:0x0196, B:54:0x0197, B:55:0x019e, B:56:0x019f, B:57:0x01a6, B:6:0x0019, B:9:0x0020), top: B:61:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0197 A[Catch: Exception -> 0x01a7, TryCatch #0 {Exception -> 0x01a7, blocks: (B:3:0x0004, B:11:0x0029, B:13:0x003f, B:18:0x0050, B:20:0x0062, B:24:0x007a, B:26:0x00ad, B:28:0x00ba, B:32:0x00ce, B:34:0x00d8, B:36:0x00f9, B:38:0x010b, B:40:0x011f, B:41:0x013a, B:42:0x013b, B:43:0x014a, B:44:0x014b, B:45:0x015a, B:46:0x015b, B:47:0x0162, B:48:0x0163, B:49:0x0172, B:50:0x0173, B:51:0x017a, B:52:0x017b, B:53:0x0196, B:54:0x0197, B:55:0x019e, B:56:0x019f, B:57:0x01a6, B:6:0x0019, B:9:0x0020), top: B:61:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String[] a(java.io.File r17) {
        /*
            Method dump skipped, instructions count: 437
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.pangle.util.a.b.a(java.io.File):java.lang.String[]");
    }

    private static boolean a(ByteBuffer byteBuffer) {
        if (byteBuffer.order() == ByteOrder.LITTLE_ENDIAN) {
            ByteBuffer a4 = a(byteBuffer, byteBuffer.capacity() - 24);
            int i2 = 0;
            while (a4.hasRemaining()) {
                i2++;
                if (a4.remaining() >= 8) {
                    long j4 = a4.getLong();
                    if (j4 >= 4 && j4 <= 2147483647L) {
                        int i4 = (int) j4;
                        int position = a4.position() + i4;
                        if (i4 <= a4.remaining()) {
                            int i5 = a4.getInt();
                            if (i5 == -262969152) {
                                f10378a = "V3";
                                return true;
                            } else if (i5 == 1896449818) {
                                f10378a = "V2";
                                return true;
                            } else {
                                a4.position(position);
                            }
                        } else {
                            throw new Exception("APK Signing Block entry #" + i2 + " size out of range: " + i4 + ", available: " + a4.remaining());
                        }
                    } else {
                        throw new Exception("APK Signing Block entry #" + i2 + " size out of range: " + j4);
                    }
                } else {
                    throw new Exception("Insufficient data to read size of APK Signing Block entry #".concat(String.valueOf(i2)));
                }
            }
            return false;
        }
        throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
    }
}
