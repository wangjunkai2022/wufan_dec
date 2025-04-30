package io.netty.buffer;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import io.netty.buffer.CompositeByteBuf;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;
/* loaded from: classes5.dex */
public final class Unpooled {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final ByteBufAllocator ALLOC;
    public static final ByteOrder BIG_ENDIAN;
    public static final ByteBuf EMPTY_BUFFER;
    public static final ByteOrder LITTLE_ENDIAN;

    static {
        UnpooledByteBufAllocator unpooledByteBufAllocator = UnpooledByteBufAllocator.DEFAULT;
        ALLOC = unpooledByteBufAllocator;
        BIG_ENDIAN = ByteOrder.BIG_ENDIAN;
        LITTLE_ENDIAN = ByteOrder.LITTLE_ENDIAN;
        EMPTY_BUFFER = unpooledByteBufAllocator.buffer(0, 0);
    }

    private Unpooled() {
    }

    public static ByteBuf buffer() {
        return ALLOC.heapBuffer();
    }

    public static CompositeByteBuf compositeBuffer() {
        return compositeBuffer(16);
    }

    public static ByteBuf copiedBuffer(byte[] bArr) {
        if (bArr.length == 0) {
            return EMPTY_BUFFER;
        }
        return wrappedBuffer((byte[]) bArr.clone());
    }

    public static ByteBuf copyBoolean(boolean z3) {
        ByteBuf buffer = buffer(1);
        buffer.writeBoolean(z3);
        return buffer;
    }

    public static ByteBuf copyDouble(double d4) {
        ByteBuf buffer = buffer(8);
        buffer.writeDouble(d4);
        return buffer;
    }

    public static ByteBuf copyFloat(float f4) {
        ByteBuf buffer = buffer(4);
        buffer.writeFloat(f4);
        return buffer;
    }

    public static ByteBuf copyInt(int i2) {
        ByteBuf buffer = buffer(4);
        buffer.writeInt(i2);
        return buffer;
    }

    public static ByteBuf copyLong(long j4) {
        ByteBuf buffer = buffer(8);
        buffer.writeLong(j4);
        return buffer;
    }

    public static ByteBuf copyMedium(int i2) {
        ByteBuf buffer = buffer(3);
        buffer.writeMedium(i2);
        return buffer;
    }

    public static ByteBuf copyShort(int i2) {
        ByteBuf buffer = buffer(2);
        buffer.writeShort(i2);
        return buffer;
    }

    public static ByteBuf directBuffer() {
        return ALLOC.directBuffer();
    }

    @Deprecated
    public static ByteBuf unmodifiableBuffer(ByteBuf byteBuf) {
        ByteOrder order = byteBuf.order();
        ByteOrder byteOrder = BIG_ENDIAN;
        if (order == byteOrder) {
            return new ReadOnlyByteBuf(byteBuf);
        }
        return new ReadOnlyByteBuf(byteBuf.order(byteOrder)).order(LITTLE_ENDIAN);
    }

    public static ByteBuf unreleasableBuffer(ByteBuf byteBuf) {
        return new UnreleasableByteBuf(byteBuf);
    }

    public static ByteBuf wrappedBuffer(byte[] bArr) {
        if (bArr.length == 0) {
            return EMPTY_BUFFER;
        }
        return new UnpooledHeapByteBuf(ALLOC, bArr, bArr.length);
    }

    public static ByteBuf wrappedUnmodifiableBuffer(ByteBuf... byteBufArr) {
        return wrappedUnmodifiableBuffer(false, byteBufArr);
    }

    public static ByteBuf buffer(int i2) {
        return ALLOC.heapBuffer(i2);
    }

    public static CompositeByteBuf compositeBuffer(int i2) {
        return new CompositeByteBuf(ALLOC, false, i2);
    }

    public static ByteBuf directBuffer(int i2) {
        return ALLOC.directBuffer(i2);
    }

    private static ByteBuf wrappedUnmodifiableBuffer(boolean z3, ByteBuf... byteBufArr) {
        int length = byteBufArr.length;
        if (length != 0) {
            if (length != 1) {
                if (z3) {
                    byteBufArr = (ByteBuf[]) Arrays.copyOf(byteBufArr, byteBufArr.length, ByteBuf[].class);
                }
                return new FixedCompositeByteBuf(ALLOC, byteBufArr);
            }
            return byteBufArr[0].asReadOnly();
        }
        return EMPTY_BUFFER;
    }

    public static ByteBuf buffer(int i2, int i4) {
        return ALLOC.heapBuffer(i2, i4);
    }

    public static ByteBuf copyBoolean(boolean... zArr) {
        if (zArr != null && zArr.length != 0) {
            ByteBuf buffer = buffer(zArr.length);
            for (boolean z3 : zArr) {
                buffer.writeBoolean(z3);
            }
            return buffer;
        }
        return EMPTY_BUFFER;
    }

    public static ByteBuf copyDouble(double... dArr) {
        if (dArr != null && dArr.length != 0) {
            ByteBuf buffer = buffer(dArr.length * 8);
            for (double d4 : dArr) {
                buffer.writeDouble(d4);
            }
            return buffer;
        }
        return EMPTY_BUFFER;
    }

    public static ByteBuf copyFloat(float... fArr) {
        if (fArr != null && fArr.length != 0) {
            ByteBuf buffer = buffer(fArr.length * 4);
            for (float f4 : fArr) {
                buffer.writeFloat(f4);
            }
            return buffer;
        }
        return EMPTY_BUFFER;
    }

    public static ByteBuf copyInt(int... iArr) {
        if (iArr != null && iArr.length != 0) {
            ByteBuf buffer = buffer(iArr.length * 4);
            for (int i2 : iArr) {
                buffer.writeInt(i2);
            }
            return buffer;
        }
        return EMPTY_BUFFER;
    }

    public static ByteBuf copyLong(long... jArr) {
        if (jArr != null && jArr.length != 0) {
            ByteBuf buffer = buffer(jArr.length * 8);
            for (long j4 : jArr) {
                buffer.writeLong(j4);
            }
            return buffer;
        }
        return EMPTY_BUFFER;
    }

    public static ByteBuf copyMedium(int... iArr) {
        if (iArr != null && iArr.length != 0) {
            ByteBuf buffer = buffer(iArr.length * 3);
            for (int i2 : iArr) {
                buffer.writeMedium(i2);
            }
            return buffer;
        }
        return EMPTY_BUFFER;
    }

    public static ByteBuf copyShort(short... sArr) {
        if (sArr != null && sArr.length != 0) {
            ByteBuf buffer = buffer(sArr.length * 2);
            for (short s3 : sArr) {
                buffer.writeShort(s3);
            }
            return buffer;
        }
        return EMPTY_BUFFER;
    }

    public static ByteBuf directBuffer(int i2, int i4) {
        return ALLOC.directBuffer(i2, i4);
    }

    public static ByteBuf copiedBuffer(byte[] bArr, int i2, int i4) {
        if (i4 == 0) {
            return EMPTY_BUFFER;
        }
        byte[] allocateUninitializedArray = PlatformDependent.allocateUninitializedArray(i4);
        System.arraycopy(bArr, i2, allocateUninitializedArray, 0, i4);
        return wrappedBuffer(allocateUninitializedArray);
    }

    public static ByteBuf wrappedBuffer(byte[] bArr, int i2, int i4) {
        if (i4 == 0) {
            return EMPTY_BUFFER;
        }
        if (i2 == 0 && i4 == bArr.length) {
            return wrappedBuffer(bArr);
        }
        return wrappedBuffer(bArr).slice(i2, i4);
    }

    @Deprecated
    public static ByteBuf unmodifiableBuffer(ByteBuf... byteBufArr) {
        return wrappedUnmodifiableBuffer(true, byteBufArr);
    }

    public static ByteBuf copiedBuffer(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        if (remaining == 0) {
            return EMPTY_BUFFER;
        }
        byte[] allocateUninitializedArray = PlatformDependent.allocateUninitializedArray(remaining);
        ByteBuffer duplicate = byteBuffer.duplicate();
        duplicate.get(allocateUninitializedArray);
        return wrappedBuffer(allocateUninitializedArray).order(duplicate.order());
    }

    public static ByteBuf copyShort(int... iArr) {
        if (iArr != null && iArr.length != 0) {
            ByteBuf buffer = buffer(iArr.length * 2);
            for (int i2 : iArr) {
                buffer.writeShort(i2);
            }
            return buffer;
        }
        return EMPTY_BUFFER;
    }

    public static ByteBuf wrappedBuffer(ByteBuffer byteBuffer) {
        if (!byteBuffer.hasRemaining()) {
            return EMPTY_BUFFER;
        }
        if (!byteBuffer.isDirect() && byteBuffer.hasArray()) {
            return wrappedBuffer(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining()).order(byteBuffer.order());
        }
        if (PlatformDependent.hasUnsafe()) {
            if (byteBuffer.isReadOnly()) {
                if (byteBuffer.isDirect()) {
                    return new ReadOnlyUnsafeDirectByteBuf(ALLOC, byteBuffer);
                }
                return new ReadOnlyByteBufferBuf(ALLOC, byteBuffer);
            }
            return new UnpooledUnsafeDirectByteBuf(ALLOC, byteBuffer, byteBuffer.remaining());
        } else if (byteBuffer.isReadOnly()) {
            return new ReadOnlyByteBufferBuf(ALLOC, byteBuffer);
        } else {
            return new UnpooledDirectByteBuf(ALLOC, byteBuffer, byteBuffer.remaining());
        }
    }

    public static ByteBuf copiedBuffer(ByteBuf byteBuf) {
        int readableBytes = byteBuf.readableBytes();
        if (readableBytes > 0) {
            ByteBuf buffer = buffer(readableBytes);
            buffer.writeBytes(byteBuf, byteBuf.readerIndex(), readableBytes);
            return buffer;
        }
        return EMPTY_BUFFER;
    }

    public static ByteBuf copiedBuffer(byte[]... bArr) {
        int length = bArr.length;
        if (length != 0) {
            if (length != 1) {
                int i2 = 0;
                for (byte[] bArr2 : bArr) {
                    if (Integer.MAX_VALUE - i2 >= bArr2.length) {
                        i2 += bArr2.length;
                    } else {
                        throw new IllegalArgumentException("The total length of the specified arrays is too big.");
                    }
                }
                if (i2 == 0) {
                    return EMPTY_BUFFER;
                }
                byte[] allocateUninitializedArray = PlatformDependent.allocateUninitializedArray(i2);
                int i4 = 0;
                for (byte[] bArr3 : bArr) {
                    System.arraycopy(bArr3, 0, allocateUninitializedArray, i4, bArr3.length);
                    i4 += bArr3.length;
                }
                return wrappedBuffer(allocateUninitializedArray);
            } else if (bArr[0].length == 0) {
                return EMPTY_BUFFER;
            } else {
                return copiedBuffer(bArr[0]);
            }
        }
        return EMPTY_BUFFER;
    }

    public static ByteBuf wrappedBuffer(long j4, int i2, boolean z3) {
        return new WrappedUnpooledUnsafeDirectByteBuf(ALLOC, j4, i2, z3);
    }

    public static ByteBuf wrappedBuffer(ByteBuf byteBuf) {
        if (byteBuf.isReadable()) {
            return byteBuf.slice();
        }
        byteBuf.release();
        return EMPTY_BUFFER;
    }

    public static ByteBuf wrappedBuffer(byte[]... bArr) {
        return wrappedBuffer(bArr.length, bArr);
    }

    public static ByteBuf wrappedBuffer(ByteBuf... byteBufArr) {
        return wrappedBuffer(byteBufArr.length, byteBufArr);
    }

    public static ByteBuf wrappedBuffer(ByteBuffer... byteBufferArr) {
        return wrappedBuffer(byteBufferArr.length, byteBufferArr);
    }

    static <T> ByteBuf wrappedBuffer(int i2, CompositeByteBuf.ByteWrapper<T> byteWrapper, T[] tArr) {
        int length = tArr.length;
        if (length != 0) {
            if (length != 1) {
                int length2 = tArr.length;
                for (int i4 = 0; i4 < length2; i4++) {
                    T t3 = tArr[i4];
                    if (t3 == null) {
                        return EMPTY_BUFFER;
                    }
                    if (!byteWrapper.isEmpty(t3)) {
                        return new CompositeByteBuf(ALLOC, false, i2, byteWrapper, tArr, i4);
                    }
                }
            } else if (!byteWrapper.isEmpty(tArr[0])) {
                return byteWrapper.wrap(tArr[0]);
            }
        }
        return EMPTY_BUFFER;
    }

    public static ByteBuf copiedBuffer(ByteBuf... byteBufArr) {
        int length = byteBufArr.length;
        if (length != 0) {
            if (length != 1) {
                ByteOrder byteOrder = null;
                int i2 = 0;
                for (ByteBuf byteBuf : byteBufArr) {
                    int readableBytes = byteBuf.readableBytes();
                    if (readableBytes > 0) {
                        if (Integer.MAX_VALUE - i2 < readableBytes) {
                            throw new IllegalArgumentException("The total length of the specified buffers is too big.");
                        }
                        i2 += readableBytes;
                        if (byteOrder != null) {
                            if (!byteOrder.equals(byteBuf.order())) {
                                throw new IllegalArgumentException("inconsistent byte order");
                            }
                        } else {
                            byteOrder = byteBuf.order();
                        }
                    }
                }
                if (i2 == 0) {
                    return EMPTY_BUFFER;
                }
                byte[] allocateUninitializedArray = PlatformDependent.allocateUninitializedArray(i2);
                int i4 = 0;
                for (ByteBuf byteBuf2 : byteBufArr) {
                    int readableBytes2 = byteBuf2.readableBytes();
                    byteBuf2.getBytes(byteBuf2.readerIndex(), allocateUninitializedArray, i4, readableBytes2);
                    i4 += readableBytes2;
                }
                return wrappedBuffer(allocateUninitializedArray).order(byteOrder);
            }
            return copiedBuffer(byteBufArr[0]);
        }
        return EMPTY_BUFFER;
    }

    public static ByteBuf wrappedBuffer(int i2, byte[]... bArr) {
        return wrappedBuffer(i2, CompositeByteBuf.BYTE_ARRAY_WRAPPER, bArr);
    }

    public static ByteBuf wrappedBuffer(int i2, ByteBuf... byteBufArr) {
        int length = byteBufArr.length;
        if (length != 0) {
            if (length != 1) {
                for (int i4 = 0; i4 < byteBufArr.length; i4++) {
                    ByteBuf byteBuf = byteBufArr[i4];
                    if (byteBuf.isReadable()) {
                        return new CompositeByteBuf(ALLOC, false, i2, byteBufArr, i4);
                    }
                    byteBuf.release();
                }
            } else {
                ByteBuf byteBuf2 = byteBufArr[0];
                if (byteBuf2.isReadable()) {
                    return wrappedBuffer(byteBuf2.order(BIG_ENDIAN));
                }
                byteBuf2.release();
            }
        }
        return EMPTY_BUFFER;
    }

    public static ByteBuf copiedBuffer(ByteBuffer... byteBufferArr) {
        int length = byteBufferArr.length;
        if (length != 0) {
            if (length != 1) {
                ByteOrder byteOrder = null;
                int i2 = 0;
                for (ByteBuffer byteBuffer : byteBufferArr) {
                    int remaining = byteBuffer.remaining();
                    if (remaining > 0) {
                        if (Integer.MAX_VALUE - i2 < remaining) {
                            throw new IllegalArgumentException("The total length of the specified buffers is too big.");
                        }
                        i2 += remaining;
                        if (byteOrder != null) {
                            if (!byteOrder.equals(byteBuffer.order())) {
                                throw new IllegalArgumentException("inconsistent byte order");
                            }
                        } else {
                            byteOrder = byteBuffer.order();
                        }
                    }
                }
                if (i2 == 0) {
                    return EMPTY_BUFFER;
                }
                byte[] allocateUninitializedArray = PlatformDependent.allocateUninitializedArray(i2);
                int i4 = 0;
                for (ByteBuffer byteBuffer2 : byteBufferArr) {
                    ByteBuffer duplicate = byteBuffer2.duplicate();
                    int remaining2 = duplicate.remaining();
                    duplicate.get(allocateUninitializedArray, i4, remaining2);
                    i4 += remaining2;
                }
                return wrappedBuffer(allocateUninitializedArray).order(byteOrder);
            }
            return copiedBuffer(byteBufferArr[0]);
        }
        return EMPTY_BUFFER;
    }

    public static ByteBuf wrappedBuffer(int i2, ByteBuffer... byteBufferArr) {
        return wrappedBuffer(i2, CompositeByteBuf.BYTE_BUFFER_WRAPPER, byteBufferArr);
    }

    public static ByteBuf copiedBuffer(CharSequence charSequence, Charset charset) {
        ObjectUtil.checkNotNull(charSequence, TypedValues.Custom.S_STRING);
        if (charSequence instanceof CharBuffer) {
            return copiedBuffer((CharBuffer) charSequence, charset);
        }
        return copiedBuffer(CharBuffer.wrap(charSequence), charset);
    }

    public static ByteBuf copiedBuffer(CharSequence charSequence, int i2, int i4, Charset charset) {
        ObjectUtil.checkNotNull(charSequence, TypedValues.Custom.S_STRING);
        if (i4 == 0) {
            return EMPTY_BUFFER;
        }
        if (charSequence instanceof CharBuffer) {
            CharBuffer charBuffer = (CharBuffer) charSequence;
            if (charBuffer.hasArray()) {
                return copiedBuffer(charBuffer.array(), charBuffer.arrayOffset() + charBuffer.position() + i2, i4, charset);
            }
            CharBuffer slice = charBuffer.slice();
            slice.limit(i4);
            slice.position(i2);
            return copiedBuffer(slice, charset);
        }
        return copiedBuffer(CharBuffer.wrap(charSequence, i2, i4 + i2), charset);
    }

    public static ByteBuf copiedBuffer(char[] cArr, Charset charset) {
        ObjectUtil.checkNotNull(cArr, "array");
        return copiedBuffer(cArr, 0, cArr.length, charset);
    }

    public static ByteBuf copiedBuffer(char[] cArr, int i2, int i4, Charset charset) {
        ObjectUtil.checkNotNull(cArr, "array");
        if (i4 == 0) {
            return EMPTY_BUFFER;
        }
        return copiedBuffer(CharBuffer.wrap(cArr, i2, i4), charset);
    }

    private static ByteBuf copiedBuffer(CharBuffer charBuffer, Charset charset) {
        return ByteBufUtil.encodeString0(ALLOC, true, charBuffer, charset, 0);
    }
}
