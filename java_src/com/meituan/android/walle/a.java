package com.meituan.android.walle;

import java.io.IOException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.LinkedHashMap;
import java.util.Map;
/* compiled from: ApkUtil.java */
/* loaded from: classes4.dex */
final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final long f52601a = 3617552046287187010L;

    /* renamed from: b  reason: collision with root package name */
    public static final long f52602b = 2334950737559900225L;

    /* renamed from: c  reason: collision with root package name */
    private static final int f52603c = 32;

    /* renamed from: d  reason: collision with root package name */
    public static final int f52604d = 1896449818;

    /* renamed from: e  reason: collision with root package name */
    public static final int f52605e = 1903654775;

    /* renamed from: f  reason: collision with root package name */
    public static final String f52606f = "UTF-8";

    /* renamed from: g  reason: collision with root package name */
    private static final int f52607g = 22;

    /* renamed from: h  reason: collision with root package name */
    private static final int f52608h = 101010256;

    /* renamed from: i  reason: collision with root package name */
    private static final int f52609i = 65535;

    /* renamed from: j  reason: collision with root package name */
    private static final int f52610j = 20;

    private a() {
    }

    private static void a(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    public static e<ByteBuffer, Long> b(FileChannel fileChannel) throws IOException, SignatureNotFoundException {
        return c(fileChannel, d(fileChannel));
    }

    public static e<ByteBuffer, Long> c(FileChannel fileChannel, long j4) throws IOException, SignatureNotFoundException {
        if (j4 >= 32) {
            fileChannel.position(j4 - 24);
            ByteBuffer allocate = ByteBuffer.allocate(24);
            fileChannel.read(allocate);
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            allocate.order(byteOrder);
            if (allocate.getLong(8) == f52602b && allocate.getLong(16) == f52601a) {
                long j5 = allocate.getLong(0);
                if (j5 < allocate.capacity() || j5 > 2147483639) {
                    throw new SignatureNotFoundException("APK Signing Block size out of range: " + j5);
                }
                int i2 = (int) (8 + j5);
                long j6 = j4 - i2;
                if (j6 >= 0) {
                    fileChannel.position(j6);
                    ByteBuffer allocate2 = ByteBuffer.allocate(i2);
                    fileChannel.read(allocate2);
                    allocate2.order(byteOrder);
                    long j7 = allocate2.getLong(0);
                    if (j7 == j5) {
                        return e.c(allocate2, Long.valueOf(j6));
                    }
                    throw new SignatureNotFoundException("APK Signing Block sizes in header and footer do not match: " + j7 + " vs " + j5);
                }
                throw new SignatureNotFoundException("APK Signing Block offset out of range: " + j6);
            }
            throw new SignatureNotFoundException("No APK Signing Block before ZIP Central Directory");
        }
        throw new SignatureNotFoundException("APK too small for APK Signing Block. ZIP Central Directory offset: " + j4);
    }

    public static long d(FileChannel fileChannel) throws IOException {
        return e(fileChannel, h(fileChannel));
    }

    public static long e(FileChannel fileChannel, long j4) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        fileChannel.position((fileChannel.size() - j4) - 6);
        fileChannel.read(allocate);
        return allocate.getInt(0);
    }

    public static Map<Integer, ByteBuffer> f(ByteBuffer byteBuffer) throws SignatureNotFoundException {
        a(byteBuffer);
        ByteBuffer i2 = i(byteBuffer, 8, byteBuffer.capacity() - 24);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i4 = 0;
        while (i2.hasRemaining()) {
            i4++;
            if (i2.remaining() >= 8) {
                long j4 = i2.getLong();
                if (j4 >= 4 && j4 <= 2147483647L) {
                    int i5 = (int) j4;
                    int position = i2.position() + i5;
                    if (i5 <= i2.remaining()) {
                        linkedHashMap.put(Integer.valueOf(i2.getInt()), g(i2, i5 - 4));
                        i2.position(position);
                    } else {
                        throw new SignatureNotFoundException("APK Signing Block entry #" + i4 + " size out of range: " + i5 + ", available: " + i2.remaining());
                    }
                } else {
                    throw new SignatureNotFoundException("APK Signing Block entry #" + i4 + " size out of range: " + j4);
                }
            } else {
                throw new SignatureNotFoundException("Insufficient data to read size of APK Signing Block entry #" + i4);
            }
        }
        return linkedHashMap;
    }

    private static ByteBuffer g(ByteBuffer byteBuffer, int i2) throws BufferUnderflowException {
        if (i2 >= 0) {
            int limit = byteBuffer.limit();
            int position = byteBuffer.position();
            int i4 = i2 + position;
            if (i4 >= position && i4 <= limit) {
                byteBuffer.limit(i4);
                try {
                    ByteBuffer slice = byteBuffer.slice();
                    slice.order(byteBuffer.order());
                    byteBuffer.position(i4);
                    return slice;
                } finally {
                    byteBuffer.limit(limit);
                }
            }
            throw new BufferUnderflowException();
        }
        throw new IllegalArgumentException("size: " + i2);
    }

    public static long h(FileChannel fileChannel) throws IOException {
        long size = fileChannel.size();
        if (size >= 22) {
            long j4 = size - 22;
            long min = Math.min(j4, 65535L);
            int i2 = 0;
            while (true) {
                long j5 = i2;
                if (j5 <= min) {
                    long j6 = j4 - j5;
                    ByteBuffer allocate = ByteBuffer.allocate(4);
                    fileChannel.position(j6);
                    fileChannel.read(allocate);
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    allocate.order(byteOrder);
                    if (allocate.getInt(0) == f52608h) {
                        ByteBuffer allocate2 = ByteBuffer.allocate(2);
                        fileChannel.position(j6 + 20);
                        fileChannel.read(allocate2);
                        allocate2.order(byteOrder);
                        short s3 = allocate2.getShort(0);
                        if (s3 == i2) {
                            return s3;
                        }
                    }
                    i2++;
                } else {
                    throw new IOException("ZIP End of Central Directory (EOCD) record not found");
                }
            }
        } else {
            throw new IOException("APK too small for ZIP End of Central Directory (EOCD) record");
        }
    }

    private static ByteBuffer i(ByteBuffer byteBuffer, int i2, int i4) {
        if (i2 < 0) {
            throw new IllegalArgumentException("start: " + i2);
        } else if (i4 >= i2) {
            int capacity = byteBuffer.capacity();
            if (i4 <= byteBuffer.capacity()) {
                int limit = byteBuffer.limit();
                int position = byteBuffer.position();
                try {
                    byteBuffer.position(0);
                    byteBuffer.limit(i4);
                    byteBuffer.position(i2);
                    ByteBuffer slice = byteBuffer.slice();
                    slice.order(byteBuffer.order());
                    return slice;
                } finally {
                    byteBuffer.position(0);
                    byteBuffer.limit(limit);
                    byteBuffer.position(position);
                }
            }
            throw new IllegalArgumentException("end > capacity: " + i4 + " > " + capacity);
        } else {
            throw new IllegalArgumentException("end < start: " + i4 + " < " + i2);
        }
    }
}
