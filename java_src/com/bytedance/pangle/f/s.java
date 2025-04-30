package com.bytedance.pangle.f;

import android.util.Pair;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.UShort;
/* loaded from: classes2.dex */
abstract class s {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static Pair<ByteBuffer, Long> a(RandomAccessFile randomAccessFile, int i2) {
        if (i2 >= 0 && i2 <= 65535) {
            long length = randomAccessFile.length();
            if (length < 22) {
                return null;
            }
            ByteBuffer allocate = ByteBuffer.allocate(((int) Math.min(i2, length - 22)) + 22);
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            allocate.order(byteOrder);
            long capacity = length - allocate.capacity();
            randomAccessFile.seek(capacity);
            randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
            int b4 = b(allocate);
            if (b4 == -1) {
                return null;
            }
            allocate.position(b4);
            ByteBuffer slice = allocate.slice();
            slice.order(byteOrder);
            return Pair.create(slice, Long.valueOf(capacity + b4));
        }
        throw new IllegalArgumentException("maxCommentSize: ".concat(String.valueOf(i2)));
    }

    private static int b(ByteBuffer byteBuffer) {
        a(byteBuffer);
        int capacity = byteBuffer.capacity();
        if (capacity < 22) {
            return -1;
        }
        int i2 = capacity - 22;
        int min = Math.min(i2, 65535);
        for (int i4 = 0; i4 <= min; i4++) {
            int i5 = i2 - i4;
            if (byteBuffer.getInt(i5) == 101010256 && (byteBuffer.getShort(i5 + 20) & UShort.MAX_VALUE) == i4) {
                return i5;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long a(ByteBuffer byteBuffer, int i2) {
        return byteBuffer.getInt(i2) & 4294967295L;
    }
}
