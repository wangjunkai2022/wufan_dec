package io.netty.buffer;

import com.android.dx.io.Opcodes;
import external.org.apache.commons.lang3.d;
import io.netty.util.AsciiString;
import io.netty.util.ByteProcessor;
import io.netty.util.CharsetUtil;
import io.netty.util.concurrent.FastThreadLocal;
import io.netty.util.internal.MathUtil;
import io.netty.util.internal.ObjectPool;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.StringUtil;
import io.netty.util.internal.SystemPropertyUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.util.Arrays;
import java.util.Locale;
import tv.danmaku.ijk.media.player.IjkMediaMeta;
/* loaded from: classes5.dex */
public final class ByteBufUtil {
    private static final FastThreadLocal<byte[]> BYTE_ARRAYS;
    static final ByteBufAllocator DEFAULT_ALLOCATOR;
    private static final ByteProcessor FIND_NON_ASCII;
    private static final int MAX_BYTES_PER_CHAR_UTF8;
    private static final int MAX_CHAR_BUFFER_SIZE;
    static final int MAX_TL_ARRAY_LEN = 1024;
    private static final int THREAD_LOCAL_BUFFER_SIZE;
    static final int WRITE_CHUNK_SIZE = 8192;
    private static final byte WRITE_UTF_UNKNOWN = 63;
    private static final InternalLogger logger;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class ThreadLocalDirectByteBuf extends UnpooledDirectByteBuf {
        private static final ObjectPool<ThreadLocalDirectByteBuf> RECYCLER = ObjectPool.newPool(new ObjectPool.ObjectCreator<ThreadLocalDirectByteBuf>() { // from class: io.netty.buffer.ByteBufUtil.ThreadLocalDirectByteBuf.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.netty.util.internal.ObjectPool.ObjectCreator
            public ThreadLocalDirectByteBuf newObject(ObjectPool.Handle<ThreadLocalDirectByteBuf> handle) {
                return new ThreadLocalDirectByteBuf(handle);
            }
        });
        private final ObjectPool.Handle<ThreadLocalDirectByteBuf> handle;

        static ThreadLocalDirectByteBuf newInstance() {
            ThreadLocalDirectByteBuf threadLocalDirectByteBuf = RECYCLER.get();
            threadLocalDirectByteBuf.resetRefCnt();
            return threadLocalDirectByteBuf;
        }

        @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractReferenceCountedByteBuf
        protected void deallocate() {
            if (capacity() > ByteBufUtil.THREAD_LOCAL_BUFFER_SIZE) {
                super.deallocate();
                return;
            }
            clear();
            this.handle.recycle(this);
        }

        private ThreadLocalDirectByteBuf(ObjectPool.Handle<ThreadLocalDirectByteBuf> handle) {
            super(UnpooledByteBufAllocator.DEFAULT, 256, Integer.MAX_VALUE);
            this.handle = handle;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class ThreadLocalUnsafeDirectByteBuf extends UnpooledUnsafeDirectByteBuf {
        private static final ObjectPool<ThreadLocalUnsafeDirectByteBuf> RECYCLER = ObjectPool.newPool(new ObjectPool.ObjectCreator<ThreadLocalUnsafeDirectByteBuf>() { // from class: io.netty.buffer.ByteBufUtil.ThreadLocalUnsafeDirectByteBuf.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.netty.util.internal.ObjectPool.ObjectCreator
            public ThreadLocalUnsafeDirectByteBuf newObject(ObjectPool.Handle<ThreadLocalUnsafeDirectByteBuf> handle) {
                return new ThreadLocalUnsafeDirectByteBuf(handle);
            }
        });
        private final ObjectPool.Handle<ThreadLocalUnsafeDirectByteBuf> handle;

        static ThreadLocalUnsafeDirectByteBuf newInstance() {
            ThreadLocalUnsafeDirectByteBuf threadLocalUnsafeDirectByteBuf = RECYCLER.get();
            threadLocalUnsafeDirectByteBuf.resetRefCnt();
            return threadLocalUnsafeDirectByteBuf;
        }

        @Override // io.netty.buffer.UnpooledDirectByteBuf, io.netty.buffer.AbstractReferenceCountedByteBuf
        protected void deallocate() {
            if (capacity() > ByteBufUtil.THREAD_LOCAL_BUFFER_SIZE) {
                super.deallocate();
                return;
            }
            clear();
            this.handle.recycle(this);
        }

        private ThreadLocalUnsafeDirectByteBuf(ObjectPool.Handle<ThreadLocalUnsafeDirectByteBuf> handle) {
            super(UnpooledByteBufAllocator.DEFAULT, 256, Integer.MAX_VALUE);
            this.handle = handle;
        }
    }

    static {
        ByteBufAllocator byteBufAllocator;
        InternalLogger internalLoggerFactory = InternalLoggerFactory.getInstance(ByteBufUtil.class);
        logger = internalLoggerFactory;
        BYTE_ARRAYS = new FastThreadLocal<byte[]>() { // from class: io.netty.buffer.ByteBufUtil.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // io.netty.util.concurrent.FastThreadLocal
            public byte[] initialValue() throws Exception {
                return PlatformDependent.allocateUninitializedArray(1024);
            }
        };
        MAX_BYTES_PER_CHAR_UTF8 = (int) CharsetUtil.encoder(CharsetUtil.UTF_8).maxBytesPerChar();
        String trim = SystemPropertyUtil.get("io.netty.allocator.type", PlatformDependent.isAndroid() ? "unpooled" : "pooled").toLowerCase(Locale.US).trim();
        if ("unpooled".equals(trim)) {
            byteBufAllocator = UnpooledByteBufAllocator.DEFAULT;
            internalLoggerFactory.debug("-Dio.netty.allocator.type: {}", trim);
        } else if ("pooled".equals(trim)) {
            byteBufAllocator = PooledByteBufAllocator.DEFAULT;
            internalLoggerFactory.debug("-Dio.netty.allocator.type: {}", trim);
        } else {
            byteBufAllocator = PooledByteBufAllocator.DEFAULT;
            internalLoggerFactory.debug("-Dio.netty.allocator.type: pooled (unknown: {})", trim);
        }
        DEFAULT_ALLOCATOR = byteBufAllocator;
        int i2 = SystemPropertyUtil.getInt("io.netty.threadLocalDirectBufferSize", 0);
        THREAD_LOCAL_BUFFER_SIZE = i2;
        internalLoggerFactory.debug("-Dio.netty.threadLocalDirectBufferSize: {}", Integer.valueOf(i2));
        int i4 = SystemPropertyUtil.getInt("io.netty.maxThreadLocalCharBufferSize", 16384);
        MAX_CHAR_BUFFER_SIZE = i4;
        internalLoggerFactory.debug("-Dio.netty.maxThreadLocalCharBufferSize: {}", Integer.valueOf(i4));
        FIND_NON_ASCII = new ByteProcessor() { // from class: io.netty.buffer.ByteBufUtil.2
            @Override // io.netty.util.ByteProcessor
            public boolean process(byte b4) {
                return b4 >= 0;
            }
        };
    }

    private ByteBufUtil() {
    }

    public static void appendPrettyHexDump(StringBuilder sb, ByteBuf byteBuf) {
        appendPrettyHexDump(sb, byteBuf, byteBuf.readerIndex(), byteBuf.readableBytes());
    }

    private static CharSequence checkCharSequenceBounds(CharSequence charSequence, int i2, int i4) {
        if (MathUtil.isOutOfBounds(i2, i4 - i2, charSequence.length())) {
            throw new IndexOutOfBoundsException("expected: 0 <= start(" + i2 + ") <= end (" + i4 + ") <= seq.length(" + charSequence.length() + ')');
        }
        return charSequence;
    }

    public static int compare(ByteBuf byteBuf, ByteBuf byteBuf2) {
        long compareUintBigEndianB;
        int readableBytes = byteBuf.readableBytes();
        int readableBytes2 = byteBuf2.readableBytes();
        int min = Math.min(readableBytes, readableBytes2);
        int i2 = min >>> 2;
        int i4 = min & 3;
        int readerIndex = byteBuf.readerIndex();
        int readerIndex2 = byteBuf2.readerIndex();
        if (i2 > 0) {
            boolean z3 = byteBuf.order() == ByteOrder.BIG_ENDIAN;
            int i5 = i2 << 2;
            if (byteBuf.order() == byteBuf2.order()) {
                if (z3) {
                    compareUintBigEndianB = compareUintBigEndian(byteBuf, byteBuf2, readerIndex, readerIndex2, i5);
                } else {
                    compareUintBigEndianB = compareUintLittleEndian(byteBuf, byteBuf2, readerIndex, readerIndex2, i5);
                }
            } else if (z3) {
                compareUintBigEndianB = compareUintBigEndianA(byteBuf, byteBuf2, readerIndex, readerIndex2, i5);
            } else {
                compareUintBigEndianB = compareUintBigEndianB(byteBuf, byteBuf2, readerIndex, readerIndex2, i5);
            }
            if (compareUintBigEndianB != 0) {
                return (int) Math.min(2147483647L, Math.max(-2147483648L, compareUintBigEndianB));
            }
            readerIndex += i5;
            readerIndex2 += i5;
        }
        int i6 = i4 + readerIndex;
        while (readerIndex < i6) {
            int unsignedByte = byteBuf.getUnsignedByte(readerIndex) - byteBuf2.getUnsignedByte(readerIndex2);
            if (unsignedByte != 0) {
                return unsignedByte;
            }
            readerIndex++;
            readerIndex2++;
        }
        return readableBytes - readableBytes2;
    }

    private static long compareUintBigEndian(ByteBuf byteBuf, ByteBuf byteBuf2, int i2, int i4, int i5) {
        int i6 = i5 + i2;
        while (i2 < i6) {
            long unsignedInt = byteBuf.getUnsignedInt(i2) - byteBuf2.getUnsignedInt(i4);
            if (unsignedInt != 0) {
                return unsignedInt;
            }
            i2 += 4;
            i4 += 4;
        }
        return 0L;
    }

    private static long compareUintBigEndianA(ByteBuf byteBuf, ByteBuf byteBuf2, int i2, int i4, int i5) {
        int i6 = i5 + i2;
        while (i2 < i6) {
            long unsignedInt = byteBuf.getUnsignedInt(i2) - byteBuf2.getUnsignedIntLE(i4);
            if (unsignedInt != 0) {
                return unsignedInt;
            }
            i2 += 4;
            i4 += 4;
        }
        return 0L;
    }

    private static long compareUintBigEndianB(ByteBuf byteBuf, ByteBuf byteBuf2, int i2, int i4, int i5) {
        int i6 = i5 + i2;
        while (i2 < i6) {
            long unsignedIntLE = byteBuf.getUnsignedIntLE(i2) - byteBuf2.getUnsignedInt(i4);
            if (unsignedIntLE != 0) {
                return unsignedIntLE;
            }
            i2 += 4;
            i4 += 4;
        }
        return 0L;
    }

    private static long compareUintLittleEndian(ByteBuf byteBuf, ByteBuf byteBuf2, int i2, int i4, int i5) {
        int i6 = i5 + i2;
        while (i2 < i6) {
            long unsignedIntLE = byteBuf.getUnsignedIntLE(i2) - byteBuf2.getUnsignedIntLE(i4);
            if (unsignedIntLE != 0) {
                return unsignedIntLE;
            }
            i2 += 4;
            i4 += 4;
        }
        return 0L;
    }

    public static void copy(AsciiString asciiString, ByteBuf byteBuf) {
        copy(asciiString, 0, byteBuf, asciiString.length());
    }

    public static byte decodeHexByte(CharSequence charSequence, int i2) {
        return StringUtil.decodeHexByte(charSequence, i2);
    }

    public static byte[] decodeHexDump(CharSequence charSequence) {
        return StringUtil.decodeHexDump(charSequence, 0, charSequence.length());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String decodeString(ByteBuf byteBuf, int i2, int i4, Charset charset) {
        byte[] threadLocalTempArray;
        int i5;
        if (i4 == 0) {
            return "";
        }
        if (byteBuf.hasArray()) {
            threadLocalTempArray = byteBuf.array();
            i5 = byteBuf.arrayOffset() + i2;
        } else {
            threadLocalTempArray = threadLocalTempArray(i4);
            byteBuf.getBytes(i2, threadLocalTempArray, 0, i4);
            i5 = 0;
        }
        if (CharsetUtil.US_ASCII.equals(charset)) {
            return new String(threadLocalTempArray, 0, i5, i4);
        }
        return new String(threadLocalTempArray, i5, i4, charset);
    }

    public static ByteBuf encodeString(ByteBufAllocator byteBufAllocator, CharBuffer charBuffer, Charset charset) {
        return encodeString0(byteBufAllocator, false, charBuffer, charset, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ByteBuf encodeString0(ByteBufAllocator byteBufAllocator, boolean z3, CharBuffer charBuffer, Charset charset, int i2) {
        ByteBuf buffer;
        CharsetEncoder encoder = CharsetUtil.encoder(charset);
        double remaining = charBuffer.remaining();
        double maxBytesPerChar = encoder.maxBytesPerChar();
        Double.isNaN(remaining);
        Double.isNaN(maxBytesPerChar);
        int i4 = ((int) (remaining * maxBytesPerChar)) + i2;
        if (z3) {
            buffer = byteBufAllocator.heapBuffer(i4);
        } else {
            buffer = byteBufAllocator.buffer(i4);
        }
        try {
            try {
                ByteBuffer internalNioBuffer = buffer.internalNioBuffer(buffer.readerIndex(), i4);
                int position = internalNioBuffer.position();
                CoderResult encode = encoder.encode(charBuffer, internalNioBuffer, true);
                if (!encode.isUnderflow()) {
                    encode.throwException();
                }
                CoderResult flush = encoder.flush(internalNioBuffer);
                if (!flush.isUnderflow()) {
                    flush.throwException();
                }
                buffer.writerIndex((buffer.writerIndex() + internalNioBuffer.position()) - position);
                return buffer;
            } catch (CharacterCodingException e4) {
                throw new IllegalStateException(e4);
            }
        } catch (Throwable th) {
            buffer.release();
            throw th;
        }
    }

    public static boolean ensureWritableSuccess(int i2) {
        return i2 == 0 || i2 == 2;
    }

    public static boolean equals(ByteBuf byteBuf, int i2, ByteBuf byteBuf2, int i4, int i5) {
        if (i2 >= 0 && i4 >= 0 && i5 >= 0) {
            if (byteBuf.writerIndex() - i5 < i2 || byteBuf2.writerIndex() - i5 < i4) {
                return false;
            }
            int i6 = i5 >>> 3;
            if (byteBuf.order() == byteBuf2.order()) {
                while (i6 > 0) {
                    if (byteBuf.getLong(i2) != byteBuf2.getLong(i4)) {
                        return false;
                    }
                    i2 += 8;
                    i4 += 8;
                    i6--;
                }
            } else {
                while (i6 > 0) {
                    if (byteBuf.getLong(i2) != swapLong(byteBuf2.getLong(i4))) {
                        return false;
                    }
                    i2 += 8;
                    i4 += 8;
                    i6--;
                }
            }
            for (int i7 = i5 & 7; i7 > 0; i7--) {
                if (byteBuf.getByte(i2) != byteBuf2.getByte(i4)) {
                    return false;
                }
                i2++;
                i4++;
            }
            return true;
        }
        throw new IllegalArgumentException("All indexes and lengths must be non-negative");
    }

    private static int firstIndexOf(ByteBuf byteBuf, int i2, int i4, byte b4) {
        int max = Math.max(i2, 0);
        if (max >= i4 || byteBuf.capacity() == 0) {
            return -1;
        }
        return byteBuf.forEachByte(max, i4 - max, new ByteProcessor.IndexOfProcessor(b4));
    }

    public static byte[] getBytes(ByteBuf byteBuf) {
        return getBytes(byteBuf, byteBuf.readerIndex(), byteBuf.readableBytes());
    }

    public static int hashCode(ByteBuf byteBuf) {
        int i2;
        int readableBytes = byteBuf.readableBytes();
        int i4 = readableBytes >>> 2;
        int i5 = readableBytes & 3;
        int readerIndex = byteBuf.readerIndex();
        if (byteBuf.order() == ByteOrder.BIG_ENDIAN) {
            i2 = 1;
            while (i4 > 0) {
                i2 = (i2 * 31) + byteBuf.getInt(readerIndex);
                readerIndex += 4;
                i4--;
            }
        } else {
            i2 = 1;
            while (i4 > 0) {
                i2 = (i2 * 31) + swapInt(byteBuf.getInt(readerIndex));
                readerIndex += 4;
                i4--;
            }
        }
        while (i5 > 0) {
            i2 = (i2 * 31) + byteBuf.getByte(readerIndex);
            i5--;
            readerIndex++;
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    public static String hexDump(ByteBuf byteBuf) {
        return hexDump(byteBuf, byteBuf.readerIndex(), byteBuf.readableBytes());
    }

    public static int indexOf(ByteBuf byteBuf, ByteBuf byteBuf2) {
        int readableBytes = (byteBuf2.readableBytes() - byteBuf.readableBytes()) + 1;
        for (int i2 = 0; i2 < readableBytes; i2++) {
            if (equals(byteBuf, byteBuf.readerIndex(), byteBuf2, byteBuf2.readerIndex() + i2, byteBuf.readableBytes())) {
                return byteBuf2.readerIndex() + i2;
            }
        }
        return -1;
    }

    private static boolean isAscii(ByteBuf byteBuf, int i2, int i4) {
        return byteBuf.forEachByte(i2, i4, FIND_NON_ASCII) == -1;
    }

    public static boolean isText(ByteBuf byteBuf, Charset charset) {
        return isText(byteBuf, byteBuf.readerIndex(), byteBuf.readableBytes(), charset);
    }

    private static boolean isUtf8(ByteBuf byteBuf, int i2, int i4) {
        int i5;
        int i6 = i4 + i2;
        while (i2 < i6) {
            int i7 = i2 + 1;
            byte b4 = byteBuf.getByte(i2);
            if ((b4 & 128) == 0) {
                i2 = i7;
            } else if ((b4 & 224) == 192) {
                if (i7 >= i6) {
                    return false;
                }
                int i8 = i7 + 1;
                if ((byteBuf.getByte(i7) & 192) != 128 || (b4 & 255) < 194) {
                    return false;
                }
                i2 = i8;
            } else if ((b4 & 240) != 224) {
                if ((b4 & 248) != 240 || i7 > i6 - 3) {
                    return false;
                }
                int i9 = i7 + 1;
                byte b5 = byteBuf.getByte(i7);
                int i10 = i9 + 1;
                byte b6 = byteBuf.getByte(i9);
                int i11 = i10 + 1;
                byte b7 = byteBuf.getByte(i10);
                if ((b5 & 192) == 128 && (b6 & 192) == 128 && (b7 & 192) == 128 && (i5 = b4 & 255) <= 244 && ((i5 != 240 || (b5 & 255) >= 144) && (i5 != 244 || (b5 & 255) <= 143))) {
                    i2 = i11;
                }
                return false;
            } else if (i7 > i6 - 2) {
                return false;
            } else {
                int i12 = i7 + 1;
                byte b8 = byteBuf.getByte(i7);
                int i13 = i12 + 1;
                byte b9 = byteBuf.getByte(i12);
                if ((b8 & 192) != 128 || (b9 & 192) != 128) {
                    return false;
                }
                int i14 = b4 & 15;
                if (i14 == 0 && (b8 & 255) < 160) {
                    return false;
                }
                if (i14 == 13 && (b8 & 255) > 159) {
                    return false;
                }
                i2 = i13;
            }
        }
        return true;
    }

    private static int lastIndexOf(ByteBuf byteBuf, int i2, int i4, byte b4) {
        int capacity = byteBuf.capacity();
        int min = Math.min(i2, capacity);
        if (min < 0 || capacity == 0) {
            return -1;
        }
        return byteBuf.forEachByteDesc(i4, min - i4, new ByteProcessor.IndexOfProcessor(b4));
    }

    public static String prettyHexDump(ByteBuf byteBuf) {
        return prettyHexDump(byteBuf, byteBuf.readerIndex(), byteBuf.readableBytes());
    }

    public static ByteBuf readBytes(ByteBufAllocator byteBufAllocator, ByteBuf byteBuf, int i2) {
        ByteBuf buffer = byteBufAllocator.buffer(i2);
        try {
            byteBuf.readBytes(buffer);
            return buffer;
        } catch (Throwable th) {
            buffer.release();
            throw th;
        }
    }

    public static int reserveAndWriteUtf8(ByteBuf byteBuf, CharSequence charSequence, int i2) {
        return reserveAndWriteUtf8Seq(byteBuf, charSequence, 0, charSequence.length(), i2);
    }

    private static int reserveAndWriteUtf8Seq(ByteBuf byteBuf, CharSequence charSequence, int i2, int i4, int i5) {
        while (true) {
            if (byteBuf instanceof WrappedCompositeByteBuf) {
                byteBuf = byteBuf.unwrap();
            } else if (byteBuf instanceof AbstractByteBuf) {
                AbstractByteBuf abstractByteBuf = (AbstractByteBuf) byteBuf;
                abstractByteBuf.ensureWritable0(i5);
                int writeUtf8 = writeUtf8(abstractByteBuf, abstractByteBuf.writerIndex, charSequence, i2, i4);
                abstractByteBuf.writerIndex += writeUtf8;
                return writeUtf8;
            } else if (byteBuf instanceof WrappedByteBuf) {
                byteBuf = byteBuf.unwrap();
            } else {
                byte[] bytes = charSequence.subSequence(i2, i4).toString().getBytes(CharsetUtil.UTF_8);
                byteBuf.writeBytes(bytes);
                return bytes.length;
            }
        }
    }

    public static ByteBuf setShortBE(ByteBuf byteBuf, int i2, int i4) {
        return byteBuf.order() == ByteOrder.BIG_ENDIAN ? byteBuf.setShort(i2, i4) : byteBuf.setShortLE(i2, i4);
    }

    public static int swapInt(int i2) {
        return Integer.reverseBytes(i2);
    }

    public static long swapLong(long j4) {
        return Long.reverseBytes(j4);
    }

    public static int swapMedium(int i2) {
        int i4 = ((i2 >>> 16) & 255) | ((i2 << 16) & 16711680) | (65280 & i2);
        return (8388608 & i4) != 0 ? i4 | (-16777216) : i4;
    }

    public static short swapShort(short s3) {
        return Short.reverseBytes(s3);
    }

    public static ByteBuf threadLocalDirectBuffer() {
        if (THREAD_LOCAL_BUFFER_SIZE <= 0) {
            return null;
        }
        if (PlatformDependent.hasUnsafe()) {
            return ThreadLocalUnsafeDirectByteBuf.newInstance();
        }
        return ThreadLocalDirectByteBuf.newInstance();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] threadLocalTempArray(int i2) {
        if (i2 <= 1024) {
            return BYTE_ARRAYS.get();
        }
        return PlatformDependent.allocateUninitializedArray(i2);
    }

    private static int utf8ByteCount(CharSequence charSequence, int i2, int i4) {
        if (charSequence instanceof AsciiString) {
            return i4 - i2;
        }
        int i5 = i2;
        while (i5 < i4 && charSequence.charAt(i5) < 128) {
            i5++;
        }
        int i6 = i5 - i2;
        return i5 < i4 ? i6 + utf8BytesNonAscii(charSequence, i5, i4) : i6;
    }

    public static int utf8Bytes(CharSequence charSequence) {
        return utf8ByteCount(charSequence, 0, charSequence.length());
    }

    private static int utf8BytesNonAscii(CharSequence charSequence, int i2, int i4) {
        int i5 = 0;
        while (i2 < i4) {
            char charAt = charSequence.charAt(i2);
            if (charAt < 2048) {
                i5 += ((127 - charAt) >>> 31) + 1;
            } else if (!StringUtil.isSurrogate(charAt)) {
                i5 += 3;
            } else if (Character.isHighSurrogate(charAt)) {
                i2++;
                if (i2 == i4) {
                    return i5 + 1;
                }
                i5 = !Character.isLowSurrogate(charSequence.charAt(i2)) ? i5 + 2 : i5 + 4;
            } else {
                i5++;
            }
            i2++;
        }
        return i5;
    }

    public static int utf8MaxBytes(int i2) {
        return i2 * MAX_BYTES_PER_CHAR_UTF8;
    }

    public static ByteBuf writeAscii(ByteBufAllocator byteBufAllocator, CharSequence charSequence) {
        ByteBuf buffer = byteBufAllocator.buffer(charSequence.length());
        writeAscii(buffer, charSequence);
        return buffer;
    }

    public static ByteBuf writeMediumBE(ByteBuf byteBuf, int i2) {
        return byteBuf.order() == ByteOrder.BIG_ENDIAN ? byteBuf.writeMedium(i2) : byteBuf.writeMediumLE(i2);
    }

    public static ByteBuf writeShortBE(ByteBuf byteBuf, int i2) {
        return byteBuf.order() == ByteOrder.BIG_ENDIAN ? byteBuf.writeShort(i2) : byteBuf.writeShortLE(i2);
    }

    public static ByteBuf writeUtf8(ByteBufAllocator byteBufAllocator, CharSequence charSequence) {
        ByteBuf buffer = byteBufAllocator.buffer(utf8MaxBytes(charSequence));
        writeUtf8(buffer, charSequence);
        return buffer;
    }

    private static int writeUtf8Surrogate(AbstractByteBuf abstractByteBuf, int i2, char c4, char c5) {
        if (!Character.isLowSurrogate(c5)) {
            int i4 = i2 + 1;
            abstractByteBuf._setByte(i2, 63);
            int i5 = i4 + 1;
            if (Character.isHighSurrogate(c5)) {
                c5 = '?';
            }
            abstractByteBuf._setByte(i4, c5);
            return i5;
        }
        int codePoint = Character.toCodePoint(c4, c5);
        int i6 = i2 + 1;
        abstractByteBuf._setByte(i2, (byte) ((codePoint >> 18) | 240));
        int i7 = i6 + 1;
        abstractByteBuf._setByte(i6, (byte) (((codePoint >> 12) & 63) | 128));
        int i8 = i7 + 1;
        abstractByteBuf._setByte(i7, (byte) (((codePoint >> 6) & 63) | 128));
        int i9 = i8 + 1;
        abstractByteBuf._setByte(i8, (byte) ((codePoint & 63) | 128));
        return i9;
    }

    public static void appendPrettyHexDump(StringBuilder sb, ByteBuf byteBuf, int i2, int i4) {
        HexUtil.appendPrettyHexDump(sb, byteBuf, i2, i4);
    }

    public static void copy(AsciiString asciiString, int i2, ByteBuf byteBuf, int i4, int i5) {
        if (!MathUtil.isOutOfBounds(i2, i5, asciiString.length())) {
            ((ByteBuf) ObjectUtil.checkNotNull(byteBuf, "dst")).setBytes(i4, asciiString.array(), i2 + asciiString.arrayOffset(), i5);
            return;
        }
        throw new IndexOutOfBoundsException("expected: 0 <= srcIdx(" + i2 + ") <= srcIdx + length(" + i5 + ") <= srcLen(" + asciiString.length() + ')');
    }

    public static byte[] decodeHexDump(CharSequence charSequence, int i2, int i4) {
        return StringUtil.decodeHexDump(charSequence, i2, i4);
    }

    public static ByteBuf encodeString(ByteBufAllocator byteBufAllocator, CharBuffer charBuffer, Charset charset, int i2) {
        return encodeString0(byteBufAllocator, false, charBuffer, charset, i2);
    }

    public static byte[] getBytes(ByteBuf byteBuf, int i2, int i4) {
        return getBytes(byteBuf, i2, i4, true);
    }

    public static String hexDump(ByteBuf byteBuf, int i2, int i4) {
        return HexUtil.hexDump(byteBuf, i2, i4);
    }

    public static boolean isText(ByteBuf byteBuf, int i2, int i4, Charset charset) {
        ObjectUtil.checkNotNull(byteBuf, "buf");
        ObjectUtil.checkNotNull(charset, "charset");
        int readerIndex = byteBuf.readerIndex() + byteBuf.readableBytes();
        if (i2 >= 0 && i4 >= 0 && i2 <= readerIndex - i4) {
            if (charset.equals(CharsetUtil.UTF_8)) {
                return isUtf8(byteBuf, i2, i4);
            }
            if (charset.equals(CharsetUtil.US_ASCII)) {
                return isAscii(byteBuf, i2, i4);
            }
            CodingErrorAction codingErrorAction = CodingErrorAction.REPORT;
            CharsetDecoder decoder = CharsetUtil.decoder(charset, codingErrorAction, codingErrorAction);
            try {
                if (byteBuf.nioBufferCount() == 1) {
                    decoder.decode(byteBuf.nioBuffer(i2, i4));
                } else {
                    ByteBuf heapBuffer = byteBuf.alloc().heapBuffer(i4);
                    heapBuffer.writeBytes(byteBuf, i2, i4);
                    decoder.decode(heapBuffer.internalNioBuffer(heapBuffer.readerIndex(), i4));
                    heapBuffer.release();
                }
                return true;
            } catch (CharacterCodingException unused) {
                return false;
            }
        }
        throw new IndexOutOfBoundsException("index: " + i2 + " length: " + i4);
    }

    public static String prettyHexDump(ByteBuf byteBuf, int i2, int i4) {
        return HexUtil.prettyHexDump(byteBuf, i2, i4);
    }

    public static int reserveAndWriteUtf8(ByteBuf byteBuf, CharSequence charSequence, int i2, int i4, int i5) {
        return reserveAndWriteUtf8Seq(byteBuf, checkCharSequenceBounds(charSequence, i2, i4), i2, i4, i5);
    }

    public static int utf8Bytes(CharSequence charSequence, int i2, int i4) {
        return utf8ByteCount(checkCharSequenceBounds(charSequence, i2, i4), i2, i4);
    }

    public static int utf8MaxBytes(CharSequence charSequence) {
        return utf8MaxBytes(charSequence.length());
    }

    public static byte[] getBytes(ByteBuf byteBuf, int i2, int i4, boolean z3) {
        int capacity = byteBuf.capacity();
        if (!MathUtil.isOutOfBounds(i2, i4, capacity)) {
            if (!byteBuf.hasArray()) {
                byte[] allocateUninitializedArray = PlatformDependent.allocateUninitializedArray(i4);
                byteBuf.getBytes(i2, allocateUninitializedArray);
                return allocateUninitializedArray;
            } else if (!z3 && i2 == 0 && i4 == capacity) {
                return byteBuf.array();
            } else {
                int arrayOffset = byteBuf.arrayOffset() + i2;
                return Arrays.copyOfRange(byteBuf.array(), arrayOffset, i4 + arrayOffset);
            }
        }
        throw new IndexOutOfBoundsException("expected: 0 <= start(" + i2 + ") <= start + length(" + i4 + ") <= buf.capacity(" + capacity + ')');
    }

    public static String hexDump(byte[] bArr) {
        return hexDump(bArr, 0, bArr.length);
    }

    public static int writeAscii(ByteBuf byteBuf, CharSequence charSequence) {
        int length = charSequence.length();
        if (charSequence instanceof AsciiString) {
            AsciiString asciiString = (AsciiString) charSequence;
            byteBuf.writeBytes(asciiString.array(), asciiString.arrayOffset(), length);
            return length;
        }
        while (true) {
            if (byteBuf instanceof WrappedCompositeByteBuf) {
                byteBuf = byteBuf.unwrap();
            } else if (byteBuf instanceof AbstractByteBuf) {
                AbstractByteBuf abstractByteBuf = (AbstractByteBuf) byteBuf;
                abstractByteBuf.ensureWritable0(length);
                int writeAscii = writeAscii(abstractByteBuf, abstractByteBuf.writerIndex, charSequence, length);
                abstractByteBuf.writerIndex += writeAscii;
                return writeAscii;
            } else if (byteBuf instanceof WrappedByteBuf) {
                byteBuf = byteBuf.unwrap();
            } else {
                byte[] bytes = charSequence.toString().getBytes(CharsetUtil.US_ASCII);
                byteBuf.writeBytes(bytes);
                return bytes.length;
            }
        }
    }

    public static int writeUtf8(ByteBuf byteBuf, CharSequence charSequence) {
        int length = charSequence.length();
        return reserveAndWriteUtf8Seq(byteBuf, charSequence, 0, length, utf8MaxBytes(length));
    }

    public static String hexDump(byte[] bArr, int i2, int i4) {
        return HexUtil.hexDump(bArr, i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void readBytes(ByteBufAllocator byteBufAllocator, ByteBuffer byteBuffer, int i2, int i4, OutputStream outputStream) throws IOException {
        if (byteBuffer.hasArray()) {
            outputStream.write(byteBuffer.array(), i2 + byteBuffer.arrayOffset(), i4);
            return;
        }
        int min = Math.min(i4, 8192);
        byteBuffer.clear().position(i2);
        if (i4 > 1024 && byteBufAllocator.isDirectBufferPooled()) {
            ByteBuf heapBuffer = byteBufAllocator.heapBuffer(min);
            try {
                getBytes(byteBuffer, heapBuffer.array(), heapBuffer.arrayOffset(), min, outputStream, i4);
                return;
            } finally {
                heapBuffer.release();
            }
        }
        getBytes(byteBuffer, threadLocalTempArray(min), 0, min, outputStream, i4);
    }

    public static int writeUtf8(ByteBuf byteBuf, CharSequence charSequence, int i2, int i4) {
        checkCharSequenceBounds(charSequence, i2, i4);
        return reserveAndWriteUtf8Seq(byteBuf, charSequence, i2, i4, utf8MaxBytes(i4 - i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class HexUtil {
        private static final char[] BYTE2CHAR = new char[256];
        private static final char[] HEXDUMP_TABLE = new char[1024];
        private static final String[] HEXPADDING = new String[16];
        private static final String[] HEXDUMP_ROWPREFIXES = new String[4096];
        private static final String[] BYTE2HEX = new String[256];
        private static final String[] BYTEPADDING = new String[16];

        static {
            char[] charArray = "0123456789abcdef".toCharArray();
            int i2 = 0;
            for (int i4 = 0; i4 < 256; i4++) {
                char[] cArr = HEXDUMP_TABLE;
                int i5 = i4 << 1;
                cArr[i5] = charArray[(i4 >>> 4) & 15];
                cArr[i5 + 1] = charArray[i4 & 15];
            }
            int i6 = 0;
            while (true) {
                String[] strArr = HEXPADDING;
                if (i6 >= strArr.length) {
                    break;
                }
                int length = strArr.length - i6;
                StringBuilder sb = new StringBuilder(length * 3);
                for (int i7 = 0; i7 < length; i7++) {
                    sb.append("   ");
                }
                HEXPADDING[i6] = sb.toString();
                i6++;
            }
            int i8 = 0;
            while (true) {
                String[] strArr2 = HEXDUMP_ROWPREFIXES;
                if (i8 >= strArr2.length) {
                    break;
                }
                StringBuilder sb2 = new StringBuilder(12);
                sb2.append(StringUtil.NEWLINE);
                sb2.append(Long.toHexString(((i8 << 4) & 4294967295L) | IjkMediaMeta.AV_CH_WIDE_RIGHT));
                sb2.setCharAt(sb2.length() - 9, '|');
                sb2.append('|');
                strArr2[i8] = sb2.toString();
                i8++;
            }
            int i9 = 0;
            while (true) {
                String[] strArr3 = BYTE2HEX;
                if (i9 >= strArr3.length) {
                    break;
                }
                strArr3[i9] = ' ' + StringUtil.byteToHexStringPadded(i9);
                i9++;
            }
            int i10 = 0;
            while (true) {
                String[] strArr4 = BYTEPADDING;
                if (i10 >= strArr4.length) {
                    break;
                }
                int length2 = strArr4.length - i10;
                StringBuilder sb3 = new StringBuilder(length2);
                for (int i11 = 0; i11 < length2; i11++) {
                    sb3.append(' ');
                }
                BYTEPADDING[i10] = sb3.toString();
                i10++;
            }
            while (true) {
                char[] cArr2 = BYTE2CHAR;
                if (i2 >= cArr2.length) {
                    return;
                }
                if (i2 > 31 && i2 < 127) {
                    cArr2[i2] = (char) i2;
                } else {
                    cArr2[i2] = d.f65364a;
                }
                i2++;
            }
        }

        private HexUtil() {
        }

        private static void appendHexDumpRowPrefix(StringBuilder sb, int i2, int i4) {
            String[] strArr = HEXDUMP_ROWPREFIXES;
            if (i2 < strArr.length) {
                sb.append(strArr[i2]);
                return;
            }
            sb.append(StringUtil.NEWLINE);
            sb.append(Long.toHexString((i4 & 4294967295L) | IjkMediaMeta.AV_CH_WIDE_RIGHT));
            sb.setCharAt(sb.length() - 9, '|');
            sb.append('|');
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void appendPrettyHexDump(StringBuilder sb, ByteBuf byteBuf, int i2, int i4) {
            if (MathUtil.isOutOfBounds(i2, i4, byteBuf.capacity())) {
                throw new IndexOutOfBoundsException("expected: 0 <= offset(" + i2 + ") <= offset + length(" + i4 + ") <= buf.capacity(" + byteBuf.capacity() + ')');
            } else if (i4 != 0) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("         +-------------------------------------------------+");
                String str = StringUtil.NEWLINE;
                sb2.append(str);
                sb2.append("         |  0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f |");
                sb2.append(str);
                sb2.append("+--------+-------------------------------------------------+----------------+");
                sb.append(sb2.toString());
                int i5 = i4 >>> 4;
                int i6 = i4 & 15;
                for (int i7 = 0; i7 < i5; i7++) {
                    int i8 = (i7 << 4) + i2;
                    appendHexDumpRowPrefix(sb, i7, i8);
                    int i9 = i8 + 16;
                    for (int i10 = i8; i10 < i9; i10++) {
                        sb.append(BYTE2HEX[byteBuf.getUnsignedByte(i10)]);
                    }
                    sb.append(" |");
                    while (i8 < i9) {
                        sb.append(BYTE2CHAR[byteBuf.getUnsignedByte(i8)]);
                        i8++;
                    }
                    sb.append('|');
                }
                if (i6 != 0) {
                    int i11 = (i5 << 4) + i2;
                    appendHexDumpRowPrefix(sb, i5, i11);
                    int i12 = i11 + i6;
                    for (int i13 = i11; i13 < i12; i13++) {
                        sb.append(BYTE2HEX[byteBuf.getUnsignedByte(i13)]);
                    }
                    sb.append(HEXPADDING[i6]);
                    sb.append(" |");
                    while (i11 < i12) {
                        sb.append(BYTE2CHAR[byteBuf.getUnsignedByte(i11)]);
                        i11++;
                    }
                    sb.append(BYTEPADDING[i6]);
                    sb.append('|');
                }
                sb.append(StringUtil.NEWLINE + "+--------+-------------------------------------------------+----------------+");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String hexDump(ByteBuf byteBuf, int i2, int i4) {
            ObjectUtil.checkPositiveOrZero(i4, "length");
            if (i4 == 0) {
                return "";
            }
            int i5 = i2 + i4;
            char[] cArr = new char[i4 << 1];
            int i6 = 0;
            while (i2 < i5) {
                System.arraycopy(HEXDUMP_TABLE, byteBuf.getUnsignedByte(i2) << 1, cArr, i6, 2);
                i2++;
                i6 += 2;
            }
            return new String(cArr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String prettyHexDump(ByteBuf byteBuf, int i2, int i4) {
            if (i4 == 0) {
                return "";
            }
            StringBuilder sb = new StringBuilder(((i4 / 16) + ((i4 & 15) == 0 ? 0 : 1) + 4) * 80);
            appendPrettyHexDump(sb, byteBuf, i2, i4);
            return sb.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static String hexDump(byte[] bArr, int i2, int i4) {
            ObjectUtil.checkPositiveOrZero(i4, "length");
            if (i4 == 0) {
                return "";
            }
            int i5 = i2 + i4;
            char[] cArr = new char[i4 << 1];
            int i6 = 0;
            while (i2 < i5) {
                System.arraycopy(HEXDUMP_TABLE, (bArr[i2] & 255) << 1, cArr, i6, 2);
                i2++;
                i6 += 2;
            }
            return new String(cArr);
        }
    }

    public static void copy(AsciiString asciiString, int i2, ByteBuf byteBuf, int i4) {
        if (!MathUtil.isOutOfBounds(i2, i4, asciiString.length())) {
            ((ByteBuf) ObjectUtil.checkNotNull(byteBuf, "dst")).writeBytes(asciiString.array(), i2 + asciiString.arrayOffset(), i4);
            return;
        }
        throw new IndexOutOfBoundsException("expected: 0 <= srcIdx(" + i2 + ") <= srcIdx + length(" + i4 + ") <= srcLen(" + asciiString.length() + ')');
    }

    public static boolean equals(ByteBuf byteBuf, ByteBuf byteBuf2) {
        int readableBytes = byteBuf.readableBytes();
        if (readableBytes != byteBuf2.readableBytes()) {
            return false;
        }
        return equals(byteBuf, byteBuf.readerIndex(), byteBuf2, byteBuf2.readerIndex(), readableBytes);
    }

    public static int indexOf(ByteBuf byteBuf, int i2, int i4, byte b4) {
        if (i2 <= i4) {
            return firstIndexOf(byteBuf, i2, i4, b4);
        }
        return lastIndexOf(byteBuf, i2, i4, b4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int writeUtf8(AbstractByteBuf abstractByteBuf, int i2, CharSequence charSequence, int i4) {
        return writeUtf8(abstractByteBuf, i2, charSequence, 0, i4);
    }

    static int writeUtf8(AbstractByteBuf abstractByteBuf, int i2, CharSequence charSequence, int i4, int i5) {
        int i6 = i2;
        while (true) {
            if (i4 >= i5) {
                break;
            }
            char charAt = charSequence.charAt(i4);
            if (charAt < 128) {
                abstractByteBuf._setByte(i6, (byte) charAt);
                i6++;
            } else if (charAt < 2048) {
                int i7 = i6 + 1;
                abstractByteBuf._setByte(i6, (byte) ((charAt >> 6) | 192));
                i6 = i7 + 1;
                abstractByteBuf._setByte(i7, (byte) ((charAt & '?') | 128));
            } else if (StringUtil.isSurrogate(charAt)) {
                if (Character.isHighSurrogate(charAt)) {
                    i4++;
                    if (i4 == i5) {
                        abstractByteBuf._setByte(i6, 63);
                        i6++;
                        break;
                    }
                    i6 = writeUtf8Surrogate(abstractByteBuf, i6, charAt, charSequence.charAt(i4));
                } else {
                    abstractByteBuf._setByte(i6, 63);
                    i6++;
                }
            } else {
                int i8 = i6 + 1;
                abstractByteBuf._setByte(i6, (byte) ((charAt >> '\f') | Opcodes.SHL_INT_LIT8));
                int i9 = i8 + 1;
                abstractByteBuf._setByte(i8, (byte) ((63 & (charAt >> 6)) | 128));
                abstractByteBuf._setByte(i9, (byte) ((charAt & '?') | 128));
                i6 = i9 + 1;
            }
            i4++;
        }
        return i6 - i2;
    }

    private static void getBytes(ByteBuffer byteBuffer, byte[] bArr, int i2, int i4, OutputStream outputStream, int i5) throws IOException {
        do {
            int min = Math.min(i4, i5);
            byteBuffer.get(bArr, i2, min);
            outputStream.write(bArr, i2, min);
            i5 -= min;
        } while (i5 > 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int writeAscii(AbstractByteBuf abstractByteBuf, int i2, CharSequence charSequence, int i4) {
        int i5 = 0;
        while (i5 < i4) {
            abstractByteBuf._setByte(i2, AsciiString.c2b(charSequence.charAt(i5)));
            i5++;
            i2++;
        }
        return i4;
    }
}
