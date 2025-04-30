package io.netty.buffer;

import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import io.netty.util.internal.MathUtil;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ReadOnlyBufferException;
import kotlin.UShort;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class UnsafeByteBufUtil {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final boolean UNALIGNED = PlatformDependent.isUnaligned();
    private static final byte ZERO = 0;

    private UnsafeByteBufUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ByteBuf copy(AbstractByteBuf abstractByteBuf, long j4, int i2, int i4) {
        abstractByteBuf.checkIndex(i2, i4);
        ByteBuf directBuffer = abstractByteBuf.alloc().directBuffer(i4, abstractByteBuf.maxCapacity());
        if (i4 != 0) {
            if (directBuffer.hasMemoryAddress()) {
                PlatformDependent.copyMemory(j4, directBuffer.memoryAddress(), i4);
                directBuffer.setIndex(0, i4);
            } else {
                directBuffer.writeBytes(abstractByteBuf, i2, i4);
            }
        }
        return directBuffer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte getByte(long j4) {
        return PlatformDependent.getByte(j4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void getBytes(AbstractByteBuf abstractByteBuf, long j4, int i2, ByteBuf byteBuf, int i4, int i5) {
        abstractByteBuf.checkIndex(i2, i5);
        ObjectUtil.checkNotNull(byteBuf, "dst");
        if (!MathUtil.isOutOfBounds(i4, i5, byteBuf.capacity())) {
            if (byteBuf.hasMemoryAddress()) {
                PlatformDependent.copyMemory(j4, byteBuf.memoryAddress() + i4, i5);
                return;
            } else if (byteBuf.hasArray()) {
                PlatformDependent.copyMemory(j4, byteBuf.array(), byteBuf.arrayOffset() + i4, i5);
                return;
            } else {
                byteBuf.setBytes(i4, abstractByteBuf, i2, i5);
                return;
            }
        }
        throw new IndexOutOfBoundsException("dstIndex: " + i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getInt(long j4) {
        if (UNALIGNED) {
            int i2 = PlatformDependent.getInt(j4);
            return PlatformDependent.BIG_ENDIAN_NATIVE_ORDER ? i2 : Integer.reverseBytes(i2);
        }
        return (PlatformDependent.getByte(j4 + 3) & 255) | (PlatformDependent.getByte(j4) << BinaryMemcacheOpcodes.FLUSHQ) | ((PlatformDependent.getByte(1 + j4) & 255) << 16) | ((PlatformDependent.getByte(2 + j4) & 255) << 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getIntLE(long j4) {
        if (UNALIGNED) {
            int i2 = PlatformDependent.getInt(j4);
            return PlatformDependent.BIG_ENDIAN_NATIVE_ORDER ? Integer.reverseBytes(i2) : i2;
        }
        return (PlatformDependent.getByte(j4 + 3) << BinaryMemcacheOpcodes.FLUSHQ) | (PlatformDependent.getByte(j4) & 255) | ((PlatformDependent.getByte(1 + j4) & 255) << 8) | ((PlatformDependent.getByte(2 + j4) & 255) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long getLong(long j4) {
        if (UNALIGNED) {
            long j5 = PlatformDependent.getLong(j4);
            return PlatformDependent.BIG_ENDIAN_NATIVE_ORDER ? j5 : Long.reverseBytes(j5);
        }
        return (PlatformDependent.getByte(j4 + 7) & 255) | (PlatformDependent.getByte(j4) << 56) | ((PlatformDependent.getByte(1 + j4) & 255) << 48) | ((PlatformDependent.getByte(2 + j4) & 255) << 40) | ((PlatformDependent.getByte(3 + j4) & 255) << 32) | ((PlatformDependent.getByte(4 + j4) & 255) << 24) | ((PlatformDependent.getByte(5 + j4) & 255) << 16) | ((PlatformDependent.getByte(6 + j4) & 255) << 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long getLongLE(long j4) {
        if (UNALIGNED) {
            long j5 = PlatformDependent.getLong(j4);
            return PlatformDependent.BIG_ENDIAN_NATIVE_ORDER ? Long.reverseBytes(j5) : j5;
        }
        return (PlatformDependent.getByte(j4 + 7) << 56) | (PlatformDependent.getByte(j4) & 255) | ((PlatformDependent.getByte(1 + j4) & 255) << 8) | ((PlatformDependent.getByte(2 + j4) & 255) << 16) | ((PlatformDependent.getByte(3 + j4) & 255) << 24) | ((PlatformDependent.getByte(4 + j4) & 255) << 32) | ((PlatformDependent.getByte(5 + j4) & 255) << 40) | ((255 & PlatformDependent.getByte(6 + j4)) << 48);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static short getShort(long j4) {
        if (UNALIGNED) {
            short s3 = PlatformDependent.getShort(j4);
            return PlatformDependent.BIG_ENDIAN_NATIVE_ORDER ? s3 : Short.reverseBytes(s3);
        }
        return (short) ((PlatformDependent.getByte(j4 + 1) & 255) | (PlatformDependent.getByte(j4) << 8));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static short getShortLE(long j4) {
        if (UNALIGNED) {
            short s3 = PlatformDependent.getShort(j4);
            return PlatformDependent.BIG_ENDIAN_NATIVE_ORDER ? Short.reverseBytes(s3) : s3;
        }
        return (short) ((PlatformDependent.getByte(j4 + 1) << 8) | (PlatformDependent.getByte(j4) & 255));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getUnsignedMedium(long j4) {
        int i2;
        int i4;
        short reverseBytes;
        if (UNALIGNED) {
            i2 = (PlatformDependent.getByte(j4) & 255) << 16;
            if (PlatformDependent.BIG_ENDIAN_NATIVE_ORDER) {
                reverseBytes = PlatformDependent.getShort(j4 + 1);
            } else {
                reverseBytes = Short.reverseBytes(PlatformDependent.getShort(j4 + 1));
            }
            i4 = reverseBytes & UShort.MAX_VALUE;
        } else {
            i2 = ((PlatformDependent.getByte(j4) & 255) << 16) | ((PlatformDependent.getByte(1 + j4) & 255) << 8);
            i4 = PlatformDependent.getByte(j4 + 2) & 255;
        }
        return i4 | i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getUnsignedMediumLE(long j4) {
        int i2;
        int i4;
        short s3;
        if (UNALIGNED) {
            i2 = PlatformDependent.getByte(j4) & 255;
            if (PlatformDependent.BIG_ENDIAN_NATIVE_ORDER) {
                s3 = Short.reverseBytes(PlatformDependent.getShort(j4 + 1));
            } else {
                s3 = PlatformDependent.getShort(j4 + 1);
            }
            i4 = (s3 & UShort.MAX_VALUE) << 8;
        } else {
            i2 = (PlatformDependent.getByte(j4) & 255) | ((PlatformDependent.getByte(1 + j4) & 255) << 8);
            i4 = (PlatformDependent.getByte(j4 + 2) & 255) << 16;
        }
        return i4 | i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static UnpooledUnsafeDirectByteBuf newUnsafeDirectByteBuf(ByteBufAllocator byteBufAllocator, int i2, int i4) {
        if (PlatformDependent.useDirectBufferNoCleaner()) {
            return new UnpooledUnsafeNoCleanerDirectByteBuf(byteBufAllocator, i2, i4);
        }
        return new UnpooledUnsafeDirectByteBuf(byteBufAllocator, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setByte(long j4, int i2) {
        PlatformDependent.putByte(j4, (byte) i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int setBytes(AbstractByteBuf abstractByteBuf, long j4, int i2, InputStream inputStream, int i4) throws IOException {
        abstractByteBuf.checkIndex(i2, i4);
        ByteBuf heapBuffer = abstractByteBuf.alloc().heapBuffer(i4);
        try {
            byte[] array = heapBuffer.array();
            int arrayOffset = heapBuffer.arrayOffset();
            int read = inputStream.read(array, arrayOffset, i4);
            if (read > 0) {
                PlatformDependent.copyMemory(array, arrayOffset, j4, read);
            }
            return read;
        } finally {
            heapBuffer.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setInt(long j4, int i2) {
        if (UNALIGNED) {
            if (!PlatformDependent.BIG_ENDIAN_NATIVE_ORDER) {
                i2 = Integer.reverseBytes(i2);
            }
            PlatformDependent.putInt(j4, i2);
            return;
        }
        PlatformDependent.putByte(j4, (byte) (i2 >>> 24));
        PlatformDependent.putByte(1 + j4, (byte) (i2 >>> 16));
        PlatformDependent.putByte(2 + j4, (byte) (i2 >>> 8));
        PlatformDependent.putByte(j4 + 3, (byte) i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setIntLE(long j4, int i2) {
        if (UNALIGNED) {
            if (PlatformDependent.BIG_ENDIAN_NATIVE_ORDER) {
                i2 = Integer.reverseBytes(i2);
            }
            PlatformDependent.putInt(j4, i2);
            return;
        }
        PlatformDependent.putByte(j4, (byte) i2);
        PlatformDependent.putByte(1 + j4, (byte) (i2 >>> 8));
        PlatformDependent.putByte(2 + j4, (byte) (i2 >>> 16));
        PlatformDependent.putByte(j4 + 3, (byte) (i2 >>> 24));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setLong(long j4, long j5) {
        if (UNALIGNED) {
            if (!PlatformDependent.BIG_ENDIAN_NATIVE_ORDER) {
                j5 = Long.reverseBytes(j5);
            }
            PlatformDependent.putLong(j4, j5);
            return;
        }
        PlatformDependent.putByte(j4, (byte) (j5 >>> 56));
        PlatformDependent.putByte(1 + j4, (byte) (j5 >>> 48));
        PlatformDependent.putByte(2 + j4, (byte) (j5 >>> 40));
        PlatformDependent.putByte(3 + j4, (byte) (j5 >>> 32));
        PlatformDependent.putByte(4 + j4, (byte) (j5 >>> 24));
        PlatformDependent.putByte(5 + j4, (byte) (j5 >>> 16));
        PlatformDependent.putByte(6 + j4, (byte) (j5 >>> 8));
        PlatformDependent.putByte(j4 + 7, (byte) j5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setLongLE(long j4, long j5) {
        if (UNALIGNED) {
            if (PlatformDependent.BIG_ENDIAN_NATIVE_ORDER) {
                j5 = Long.reverseBytes(j5);
            }
            PlatformDependent.putLong(j4, j5);
            return;
        }
        PlatformDependent.putByte(j4, (byte) j5);
        PlatformDependent.putByte(1 + j4, (byte) (j5 >>> 8));
        PlatformDependent.putByte(2 + j4, (byte) (j5 >>> 16));
        PlatformDependent.putByte(3 + j4, (byte) (j5 >>> 24));
        PlatformDependent.putByte(4 + j4, (byte) (j5 >>> 32));
        PlatformDependent.putByte(5 + j4, (byte) (j5 >>> 40));
        PlatformDependent.putByte(6 + j4, (byte) (j5 >>> 48));
        PlatformDependent.putByte(j4 + 7, (byte) (j5 >>> 56));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setMedium(long j4, int i2) {
        PlatformDependent.putByte(j4, (byte) (i2 >>> 16));
        if (UNALIGNED) {
            long j5 = j4 + 1;
            short s3 = (short) i2;
            if (!PlatformDependent.BIG_ENDIAN_NATIVE_ORDER) {
                s3 = Short.reverseBytes(s3);
            }
            PlatformDependent.putShort(j5, s3);
            return;
        }
        PlatformDependent.putByte(1 + j4, (byte) (i2 >>> 8));
        PlatformDependent.putByte(j4 + 2, (byte) i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setMediumLE(long j4, int i2) {
        PlatformDependent.putByte(j4, (byte) i2);
        if (UNALIGNED) {
            long j5 = j4 + 1;
            short s3 = (short) (i2 >>> 8);
            if (PlatformDependent.BIG_ENDIAN_NATIVE_ORDER) {
                s3 = Short.reverseBytes(s3);
            }
            PlatformDependent.putShort(j5, s3);
            return;
        }
        PlatformDependent.putByte(1 + j4, (byte) (i2 >>> 8));
        PlatformDependent.putByte(j4 + 2, (byte) (i2 >>> 16));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setShort(long j4, int i2) {
        if (UNALIGNED) {
            short s3 = (short) i2;
            if (!PlatformDependent.BIG_ENDIAN_NATIVE_ORDER) {
                s3 = Short.reverseBytes(s3);
            }
            PlatformDependent.putShort(j4, s3);
            return;
        }
        PlatformDependent.putByte(j4, (byte) (i2 >>> 8));
        PlatformDependent.putByte(j4 + 1, (byte) i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setShortLE(long j4, int i2) {
        if (UNALIGNED) {
            PlatformDependent.putShort(j4, PlatformDependent.BIG_ENDIAN_NATIVE_ORDER ? Short.reverseBytes((short) i2) : (short) i2);
            return;
        }
        PlatformDependent.putByte(j4, (byte) i2);
        PlatformDependent.putByte(j4 + 1, (byte) (i2 >>> 8));
    }

    private static void setSingleBytes(AbstractByteBuf abstractByteBuf, long j4, int i2, ByteBuffer byteBuffer, int i4) {
        abstractByteBuf.checkIndex(i2, i4);
        int limit = byteBuffer.limit();
        for (int position = byteBuffer.position(); position < limit; position++) {
            PlatformDependent.putByte(j4, byteBuffer.get(position));
            j4++;
        }
        byteBuffer.position(limit);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setZero(byte[] bArr, int i2, int i4) {
        if (i4 == 0) {
            return;
        }
        PlatformDependent.setMemory(bArr, i2, i4, (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte getByte(byte[] bArr, int i2) {
        return PlatformDependent.getByte(bArr, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setByte(byte[] bArr, int i2, int i4) {
        PlatformDependent.putByte(bArr, i2, (byte) i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setZero(long j4, int i2) {
        if (i2 == 0) {
            return;
        }
        PlatformDependent.setMemory(j4, i2, (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static short getShort(byte[] bArr, int i2) {
        if (UNALIGNED) {
            short s3 = PlatformDependent.getShort(bArr, i2);
            return PlatformDependent.BIG_ENDIAN_NATIVE_ORDER ? s3 : Short.reverseBytes(s3);
        }
        return (short) ((PlatformDependent.getByte(bArr, i2 + 1) & 255) | (PlatformDependent.getByte(bArr, i2) << 8));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static short getShortLE(byte[] bArr, int i2) {
        if (UNALIGNED) {
            short s3 = PlatformDependent.getShort(bArr, i2);
            return PlatformDependent.BIG_ENDIAN_NATIVE_ORDER ? Short.reverseBytes(s3) : s3;
        }
        return (short) ((PlatformDependent.getByte(bArr, i2 + 1) << 8) | (PlatformDependent.getByte(bArr, i2) & 255));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setMediumLE(byte[] bArr, int i2, int i4) {
        PlatformDependent.putByte(bArr, i2, (byte) i4);
        if (UNALIGNED) {
            PlatformDependent.putShort(bArr, i2 + 1, PlatformDependent.BIG_ENDIAN_NATIVE_ORDER ? Short.reverseBytes((short) (i4 >>> 8)) : (short) (i4 >>> 8));
            return;
        }
        PlatformDependent.putByte(bArr, i2 + 1, (byte) (i4 >>> 8));
        PlatformDependent.putByte(bArr, i2 + 2, (byte) (i4 >>> 16));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setInt(byte[] bArr, int i2, int i4) {
        if (UNALIGNED) {
            if (!PlatformDependent.BIG_ENDIAN_NATIVE_ORDER) {
                i4 = Integer.reverseBytes(i4);
            }
            PlatformDependent.putInt(bArr, i2, i4);
            return;
        }
        PlatformDependent.putByte(bArr, i2, (byte) (i4 >>> 24));
        PlatformDependent.putByte(bArr, i2 + 1, (byte) (i4 >>> 16));
        PlatformDependent.putByte(bArr, i2 + 2, (byte) (i4 >>> 8));
        PlatformDependent.putByte(bArr, i2 + 3, (byte) i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setIntLE(byte[] bArr, int i2, int i4) {
        if (UNALIGNED) {
            if (PlatformDependent.BIG_ENDIAN_NATIVE_ORDER) {
                i4 = Integer.reverseBytes(i4);
            }
            PlatformDependent.putInt(bArr, i2, i4);
            return;
        }
        PlatformDependent.putByte(bArr, i2, (byte) i4);
        PlatformDependent.putByte(bArr, i2 + 1, (byte) (i4 >>> 8));
        PlatformDependent.putByte(bArr, i2 + 2, (byte) (i4 >>> 16));
        PlatformDependent.putByte(bArr, i2 + 3, (byte) (i4 >>> 24));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setShort(byte[] bArr, int i2, int i4) {
        if (UNALIGNED) {
            short s3 = (short) i4;
            if (!PlatformDependent.BIG_ENDIAN_NATIVE_ORDER) {
                s3 = Short.reverseBytes(s3);
            }
            PlatformDependent.putShort(bArr, i2, s3);
            return;
        }
        PlatformDependent.putByte(bArr, i2, (byte) (i4 >>> 8));
        PlatformDependent.putByte(bArr, i2 + 1, (byte) i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setShortLE(byte[] bArr, int i2, int i4) {
        if (UNALIGNED) {
            PlatformDependent.putShort(bArr, i2, PlatformDependent.BIG_ENDIAN_NATIVE_ORDER ? Short.reverseBytes((short) i4) : (short) i4);
            return;
        }
        PlatformDependent.putByte(bArr, i2, (byte) i4);
        PlatformDependent.putByte(bArr, i2 + 1, (byte) (i4 >>> 8));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getInt(byte[] bArr, int i2) {
        if (UNALIGNED) {
            int i4 = PlatformDependent.getInt(bArr, i2);
            return PlatformDependent.BIG_ENDIAN_NATIVE_ORDER ? i4 : Integer.reverseBytes(i4);
        }
        return (PlatformDependent.getByte(bArr, i2 + 3) & 255) | (PlatformDependent.getByte(bArr, i2) << BinaryMemcacheOpcodes.FLUSHQ) | ((PlatformDependent.getByte(bArr, i2 + 1) & 255) << 16) | ((PlatformDependent.getByte(bArr, i2 + 2) & 255) << 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getIntLE(byte[] bArr, int i2) {
        if (UNALIGNED) {
            int i4 = PlatformDependent.getInt(bArr, i2);
            return PlatformDependent.BIG_ENDIAN_NATIVE_ORDER ? Integer.reverseBytes(i4) : i4;
        }
        return (PlatformDependent.getByte(bArr, i2 + 3) << BinaryMemcacheOpcodes.FLUSHQ) | (PlatformDependent.getByte(bArr, i2) & 255) | ((PlatformDependent.getByte(bArr, i2 + 1) & 255) << 8) | ((PlatformDependent.getByte(bArr, i2 + 2) & 255) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getUnsignedMedium(byte[] bArr, int i2) {
        int i4;
        int i5;
        short reverseBytes;
        if (UNALIGNED) {
            i4 = (PlatformDependent.getByte(bArr, i2) & 255) << 16;
            if (PlatformDependent.BIG_ENDIAN_NATIVE_ORDER) {
                reverseBytes = PlatformDependent.getShort(bArr, i2 + 1);
            } else {
                reverseBytes = Short.reverseBytes(PlatformDependent.getShort(bArr, i2 + 1));
            }
            i5 = reverseBytes & UShort.MAX_VALUE;
        } else {
            i4 = ((PlatformDependent.getByte(bArr, i2) & 255) << 16) | ((PlatformDependent.getByte(bArr, i2 + 1) & 255) << 8);
            i5 = PlatformDependent.getByte(bArr, i2 + 2) & 255;
        }
        return i5 | i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getUnsignedMediumLE(byte[] bArr, int i2) {
        int i4;
        int i5;
        short s3;
        if (UNALIGNED) {
            i4 = PlatformDependent.getByte(bArr, i2) & 255;
            if (PlatformDependent.BIG_ENDIAN_NATIVE_ORDER) {
                s3 = Short.reverseBytes(PlatformDependent.getShort(bArr, i2 + 1));
            } else {
                s3 = PlatformDependent.getShort(bArr, i2 + 1);
            }
            i5 = (s3 & UShort.MAX_VALUE) << 8;
        } else {
            i4 = (PlatformDependent.getByte(bArr, i2) & 255) | ((PlatformDependent.getByte(bArr, i2 + 1) & 255) << 8);
            i5 = (PlatformDependent.getByte(bArr, i2 + 2) & 255) << 16;
        }
        return i5 | i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setMedium(byte[] bArr, int i2, int i4) {
        PlatformDependent.putByte(bArr, i2, (byte) (i4 >>> 16));
        if (UNALIGNED) {
            int i5 = i2 + 1;
            short s3 = (short) i4;
            if (!PlatformDependent.BIG_ENDIAN_NATIVE_ORDER) {
                s3 = Short.reverseBytes(s3);
            }
            PlatformDependent.putShort(bArr, i5, s3);
            return;
        }
        PlatformDependent.putByte(bArr, i2 + 1, (byte) (i4 >>> 8));
        PlatformDependent.putByte(bArr, i2 + 2, (byte) i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setBytes(AbstractByteBuf abstractByteBuf, long j4, int i2, ByteBuf byteBuf, int i4, int i5) {
        abstractByteBuf.checkIndex(i2, i5);
        ObjectUtil.checkNotNull(byteBuf, "src");
        if (MathUtil.isOutOfBounds(i4, i5, byteBuf.capacity())) {
            throw new IndexOutOfBoundsException("srcIndex: " + i4);
        } else if (i5 != 0) {
            if (byteBuf.hasMemoryAddress()) {
                PlatformDependent.copyMemory(byteBuf.memoryAddress() + i4, j4, i5);
            } else if (byteBuf.hasArray()) {
                PlatformDependent.copyMemory(byteBuf.array(), byteBuf.arrayOffset() + i4, j4, i5);
            } else {
                byteBuf.getBytes(i4, abstractByteBuf, i2, i5);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void getBytes(AbstractByteBuf abstractByteBuf, long j4, int i2, byte[] bArr, int i4, int i5) {
        abstractByteBuf.checkIndex(i2, i5);
        ObjectUtil.checkNotNull(bArr, "dst");
        if (MathUtil.isOutOfBounds(i4, i5, bArr.length)) {
            throw new IndexOutOfBoundsException("dstIndex: " + i4);
        } else if (i5 != 0) {
            PlatformDependent.copyMemory(j4, bArr, i4, i5);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setLong(byte[] bArr, int i2, long j4) {
        if (UNALIGNED) {
            if (!PlatformDependent.BIG_ENDIAN_NATIVE_ORDER) {
                j4 = Long.reverseBytes(j4);
            }
            PlatformDependent.putLong(bArr, i2, j4);
            return;
        }
        PlatformDependent.putByte(bArr, i2, (byte) (j4 >>> 56));
        PlatformDependent.putByte(bArr, i2 + 1, (byte) (j4 >>> 48));
        PlatformDependent.putByte(bArr, i2 + 2, (byte) (j4 >>> 40));
        PlatformDependent.putByte(bArr, i2 + 3, (byte) (j4 >>> 32));
        PlatformDependent.putByte(bArr, i2 + 4, (byte) (j4 >>> 24));
        PlatformDependent.putByte(bArr, i2 + 5, (byte) (j4 >>> 16));
        PlatformDependent.putByte(bArr, i2 + 6, (byte) (j4 >>> 8));
        PlatformDependent.putByte(bArr, i2 + 7, (byte) j4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setLongLE(byte[] bArr, int i2, long j4) {
        if (UNALIGNED) {
            if (PlatformDependent.BIG_ENDIAN_NATIVE_ORDER) {
                j4 = Long.reverseBytes(j4);
            }
            PlatformDependent.putLong(bArr, i2, j4);
            return;
        }
        PlatformDependent.putByte(bArr, i2, (byte) j4);
        PlatformDependent.putByte(bArr, i2 + 1, (byte) (j4 >>> 8));
        PlatformDependent.putByte(bArr, i2 + 2, (byte) (j4 >>> 16));
        PlatformDependent.putByte(bArr, i2 + 3, (byte) (j4 >>> 24));
        PlatformDependent.putByte(bArr, i2 + 4, (byte) (j4 >>> 32));
        PlatformDependent.putByte(bArr, i2 + 5, (byte) (j4 >>> 40));
        PlatformDependent.putByte(bArr, i2 + 6, (byte) (j4 >>> 48));
        PlatformDependent.putByte(bArr, i2 + 7, (byte) (j4 >>> 56));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long getLong(byte[] bArr, int i2) {
        if (UNALIGNED) {
            long j4 = PlatformDependent.getLong(bArr, i2);
            return PlatformDependent.BIG_ENDIAN_NATIVE_ORDER ? j4 : Long.reverseBytes(j4);
        }
        return (PlatformDependent.getByte(bArr, i2 + 7) & 255) | (PlatformDependent.getByte(bArr, i2) << 56) | ((PlatformDependent.getByte(bArr, i2 + 1) & 255) << 48) | ((PlatformDependent.getByte(bArr, i2 + 2) & 255) << 40) | ((PlatformDependent.getByte(bArr, i2 + 3) & 255) << 32) | ((PlatformDependent.getByte(bArr, i2 + 4) & 255) << 24) | ((PlatformDependent.getByte(bArr, i2 + 5) & 255) << 16) | ((PlatformDependent.getByte(bArr, i2 + 6) & 255) << 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long getLongLE(byte[] bArr, int i2) {
        if (UNALIGNED) {
            long j4 = PlatformDependent.getLong(bArr, i2);
            return PlatformDependent.BIG_ENDIAN_NATIVE_ORDER ? Long.reverseBytes(j4) : j4;
        }
        return (PlatformDependent.getByte(bArr, i2 + 7) << 56) | (PlatformDependent.getByte(bArr, i2) & 255) | ((PlatformDependent.getByte(bArr, i2 + 1) & 255) << 8) | ((PlatformDependent.getByte(bArr, i2 + 2) & 255) << 16) | ((PlatformDependent.getByte(bArr, i2 + 3) & 255) << 24) | ((PlatformDependent.getByte(bArr, i2 + 4) & 255) << 32) | ((PlatformDependent.getByte(bArr, i2 + 5) & 255) << 40) | ((255 & PlatformDependent.getByte(bArr, i2 + 6)) << 48);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void getBytes(AbstractByteBuf abstractByteBuf, long j4, int i2, ByteBuffer byteBuffer) {
        abstractByteBuf.checkIndex(i2, byteBuffer.remaining());
        if (byteBuffer.remaining() == 0) {
            return;
        }
        if (byteBuffer.isDirect()) {
            if (!byteBuffer.isReadOnly()) {
                PlatformDependent.copyMemory(j4, PlatformDependent.directBufferAddress(byteBuffer) + byteBuffer.position(), byteBuffer.remaining());
                byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
                return;
            }
            throw new ReadOnlyBufferException();
        } else if (byteBuffer.hasArray()) {
            PlatformDependent.copyMemory(j4, byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
        } else {
            byteBuffer.put(abstractByteBuf.nioBuffer());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setBytes(AbstractByteBuf abstractByteBuf, long j4, int i2, byte[] bArr, int i4, int i5) {
        abstractByteBuf.checkIndex(i2, i5);
        if (i5 != 0) {
            PlatformDependent.copyMemory(bArr, i4, j4, i5);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setBytes(AbstractByteBuf abstractByteBuf, long j4, int i2, ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        if (remaining == 0) {
            return;
        }
        if (byteBuffer.isDirect()) {
            abstractByteBuf.checkIndex(i2, remaining);
            PlatformDependent.copyMemory(PlatformDependent.directBufferAddress(byteBuffer) + byteBuffer.position(), j4, remaining);
            byteBuffer.position(byteBuffer.position() + remaining);
        } else if (byteBuffer.hasArray()) {
            abstractByteBuf.checkIndex(i2, remaining);
            PlatformDependent.copyMemory(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), j4, remaining);
            byteBuffer.position(byteBuffer.position() + remaining);
        } else if (remaining < 8) {
            setSingleBytes(abstractByteBuf, j4, i2, byteBuffer, remaining);
        } else {
            abstractByteBuf.internalNioBuffer(i2, remaining).put(byteBuffer);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void getBytes(AbstractByteBuf abstractByteBuf, long j4, int i2, OutputStream outputStream, int i4) throws IOException {
        abstractByteBuf.checkIndex(i2, i4);
        if (i4 != 0) {
            int min = Math.min(i4, 8192);
            if (min > 1024 && abstractByteBuf.alloc().isDirectBufferPooled()) {
                ByteBuf heapBuffer = abstractByteBuf.alloc().heapBuffer(min);
                try {
                    getBytes(j4, heapBuffer.array(), heapBuffer.arrayOffset(), min, outputStream, i4);
                    return;
                } finally {
                    heapBuffer.release();
                }
            }
            getBytes(j4, ByteBufUtil.threadLocalTempArray(min), 0, min, outputStream, i4);
        }
    }

    private static void getBytes(long j4, byte[] bArr, int i2, int i4, OutputStream outputStream, int i5) throws IOException {
        do {
            int min = Math.min(i4, i5);
            long j5 = min;
            PlatformDependent.copyMemory(j4, bArr, i2, j5);
            outputStream.write(bArr, i2, min);
            i5 -= min;
            j4 += j5;
        } while (i5 > 0);
    }
}
