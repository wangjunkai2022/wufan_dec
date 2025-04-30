package io.netty.buffer;

import io.netty.util.AsciiString;
import io.netty.util.ByteProcessor;
import io.netty.util.CharsetUtil;
import io.netty.util.IllegalReferenceCountException;
import io.netty.util.ResourceLeakDetector;
import io.netty.util.ResourceLeakDetectorFactory;
import io.netty.util.internal.MathUtil;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.StringUtil;
import io.netty.util.internal.SystemPropertyUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.nio.channels.GatheringByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.charset.Charset;
import kotlin.UShort;
/* loaded from: classes5.dex */
public abstract class AbstractByteBuf extends ByteBuf {
    private static final String LEGACY_PROP_CHECK_ACCESSIBLE = "io.netty.buffer.bytebuf.checkAccessible";
    private static final String PROP_CHECK_ACCESSIBLE = "io.netty.buffer.checkAccessible";
    private static final String PROP_CHECK_BOUNDS = "io.netty.buffer.checkBounds";
    static final boolean checkAccessible;
    private static final boolean checkBounds;
    static final ResourceLeakDetector<ByteBuf> leakDetector;
    private static final InternalLogger logger;
    private int markedReaderIndex;
    private int markedWriterIndex;
    private int maxCapacity;
    int readerIndex;
    int writerIndex;

    static {
        InternalLogger internalLoggerFactory = InternalLoggerFactory.getInstance(AbstractByteBuf.class);
        logger = internalLoggerFactory;
        if (SystemPropertyUtil.contains(PROP_CHECK_ACCESSIBLE)) {
            checkAccessible = SystemPropertyUtil.getBoolean(PROP_CHECK_ACCESSIBLE, true);
        } else {
            checkAccessible = SystemPropertyUtil.getBoolean(LEGACY_PROP_CHECK_ACCESSIBLE, true);
        }
        boolean z3 = SystemPropertyUtil.getBoolean(PROP_CHECK_BOUNDS, true);
        checkBounds = z3;
        if (internalLoggerFactory.isDebugEnabled()) {
            internalLoggerFactory.debug("-D{}: {}", PROP_CHECK_ACCESSIBLE, Boolean.valueOf(checkAccessible));
            internalLoggerFactory.debug("-D{}: {}", PROP_CHECK_BOUNDS, Boolean.valueOf(z3));
        }
        leakDetector = ResourceLeakDetectorFactory.instance().newResourceLeakDetector(ByteBuf.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractByteBuf(int i2) {
        ObjectUtil.checkPositiveOrZero(i2, "maxCapacity");
        this.maxCapacity = i2;
    }

    private static void checkIndexBounds(int i2, int i4, int i5) {
        if (i2 < 0 || i2 > i4 || i4 > i5) {
            throw new IndexOutOfBoundsException(String.format("readerIndex: %d, writerIndex: %d (expected: 0 <= readerIndex <= writerIndex <= capacity(%d))", Integer.valueOf(i2), Integer.valueOf(i4), Integer.valueOf(i5)));
        }
    }

    private static void checkRangeBounds(String str, int i2, int i4, int i5) {
        if (MathUtil.isOutOfBounds(i2, i4, i5)) {
            throw new IndexOutOfBoundsException(String.format("%s: %d, length: %d (expected: range(0, %d))", str, Integer.valueOf(i2), Integer.valueOf(i4), Integer.valueOf(i5)));
        }
    }

    private static void checkReadableBounds(ByteBuf byteBuf, int i2) {
        if (i2 > byteBuf.readableBytes()) {
            throw new IndexOutOfBoundsException(String.format("length(%d) exceeds src.readableBytes(%d) where src is: %s", Integer.valueOf(i2), Integer.valueOf(byteBuf.readableBytes()), byteBuf));
        }
    }

    private void checkReadableBytes0(int i2) {
        ensureAccessible();
        if (checkBounds && this.readerIndex > this.writerIndex - i2) {
            throw new IndexOutOfBoundsException(String.format("readerIndex(%d) + length(%d) exceeds writerIndex(%d): %s", Integer.valueOf(this.readerIndex), Integer.valueOf(i2), Integer.valueOf(this.writerIndex), this));
        }
    }

    private int firstIndexOf(int i2, int i4, byte b4) {
        int max = Math.max(i2, 0);
        if (max < i4 && capacity() != 0) {
            checkIndex(max, i4 - max);
            while (max < i4) {
                if (_getByte(max) == b4) {
                    return max;
                }
                max++;
            }
        }
        return -1;
    }

    private int lastIndexOf(int i2, int i4, byte b4) {
        int min = Math.min(i2, capacity());
        if (min >= 0 && capacity() != 0) {
            checkIndex(i4, min - i4);
            for (int i5 = min - 1; i5 >= i4; i5--) {
                if (_getByte(i5) == b4) {
                    return i5;
                }
            }
        }
        return -1;
    }

    private int setCharSequence0(int i2, CharSequence charSequence, Charset charset, boolean z3) {
        if (charset.equals(CharsetUtil.UTF_8)) {
            int utf8MaxBytes = ByteBufUtil.utf8MaxBytes(charSequence);
            if (z3) {
                ensureWritable0(utf8MaxBytes);
                checkIndex0(i2, utf8MaxBytes);
            } else {
                checkIndex(i2, utf8MaxBytes);
            }
            return ByteBufUtil.writeUtf8(this, i2, charSequence, charSequence.length());
        } else if (!charset.equals(CharsetUtil.US_ASCII) && !charset.equals(CharsetUtil.ISO_8859_1)) {
            byte[] bytes = charSequence.toString().getBytes(charset);
            if (z3) {
                ensureWritable0(bytes.length);
            }
            setBytes(i2, bytes);
            return bytes.length;
        } else {
            int length = charSequence.length();
            if (z3) {
                ensureWritable0(length);
                checkIndex0(i2, length);
            } else {
                checkIndex(i2, length);
            }
            return ByteBufUtil.writeAscii(this, i2, charSequence, length);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract byte _getByte(int i2);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int _getInt(int i2);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int _getIntLE(int i2);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract long _getLong(int i2);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract long _getLongLE(int i2);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract short _getShort(int i2);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract short _getShortLE(int i2);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int _getUnsignedMedium(int i2);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int _getUnsignedMediumLE(int i2);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void _setByte(int i2, int i4);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void _setInt(int i2, int i4);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void _setIntLE(int i2, int i4);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void _setLong(int i2, long j4);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void _setLongLE(int i2, long j4);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void _setMedium(int i2, int i4);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void _setMediumLE(int i2, int i4);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void _setShort(int i2, int i4);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void _setShortLE(int i2, int i4);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void adjustMarkers(int i2) {
        int i4 = this.markedReaderIndex;
        if (i4 <= i2) {
            this.markedReaderIndex = 0;
            int i5 = this.markedWriterIndex;
            if (i5 <= i2) {
                this.markedWriterIndex = 0;
                return;
            } else {
                this.markedWriterIndex = i5 - i2;
                return;
            }
        }
        this.markedReaderIndex = i4 - i2;
        this.markedWriterIndex -= i2;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf asReadOnly() {
        return isReadOnly() ? this : Unpooled.unmodifiableBuffer(this);
    }

    @Override // io.netty.buffer.ByteBuf
    public int bytesBefore(byte b4) {
        return bytesBefore(readerIndex(), readableBytes(), b4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void checkDstIndex(int i2, int i4, int i5, int i6) {
        checkIndex(i2, i4);
        if (checkBounds) {
            checkRangeBounds("dstIndex", i5, i4, i6);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void checkIndex(int i2) {
        checkIndex(i2, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void checkIndex0(int i2, int i4) {
        if (checkBounds) {
            checkRangeBounds("index", i2, i4, capacity());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void checkNewCapacity(int i2) {
        ensureAccessible();
        if (checkBounds) {
            if (i2 < 0 || i2 > maxCapacity()) {
                throw new IllegalArgumentException("newCapacity: " + i2 + " (expected: 0-" + maxCapacity() + ')');
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void checkReadableBytes(int i2) {
        checkReadableBytes0(ObjectUtil.checkPositiveOrZero(i2, "minimumReadableBytes"));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void checkSrcIndex(int i2, int i4, int i5, int i6) {
        checkIndex(i2, i4);
        if (checkBounds) {
            checkRangeBounds("srcIndex", i5, i4, i6);
        }
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf clear() {
        this.writerIndex = 0;
        this.readerIndex = 0;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf copy() {
        return copy(this.readerIndex, readableBytes());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void discardMarks() {
        this.markedWriterIndex = 0;
        this.markedReaderIndex = 0;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf discardReadBytes() {
        int i2 = this.readerIndex;
        if (i2 == 0) {
            ensureAccessible();
            return this;
        }
        int i4 = this.writerIndex;
        if (i2 != i4) {
            setBytes(0, this, i2, i4 - i2);
            int i5 = this.writerIndex;
            int i6 = this.readerIndex;
            this.writerIndex = i5 - i6;
            adjustMarkers(i6);
            this.readerIndex = 0;
        } else {
            ensureAccessible();
            adjustMarkers(this.readerIndex);
            this.readerIndex = 0;
            this.writerIndex = 0;
        }
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf discardSomeReadBytes() {
        int i2 = this.readerIndex;
        if (i2 > 0) {
            if (i2 == this.writerIndex) {
                ensureAccessible();
                adjustMarkers(this.readerIndex);
                this.readerIndex = 0;
                this.writerIndex = 0;
                return this;
            } else if (i2 >= (capacity() >>> 1)) {
                int i4 = this.readerIndex;
                setBytes(0, this, i4, this.writerIndex - i4);
                int i5 = this.writerIndex;
                int i6 = this.readerIndex;
                this.writerIndex = i5 - i6;
                adjustMarkers(i6);
                this.readerIndex = 0;
                return this;
            }
        }
        ensureAccessible();
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf duplicate() {
        ensureAccessible();
        return new UnpooledDuplicatedByteBuf(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void ensureAccessible() {
        if (checkAccessible && !isAccessible()) {
            throw new IllegalReferenceCountException(0);
        }
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf ensureWritable(int i2) {
        ensureWritable0(ObjectUtil.checkPositiveOrZero(i2, "minWritableBytes"));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void ensureWritable0(int i2) {
        int writerIndex = writerIndex();
        int i4 = writerIndex + i2;
        if (i4 <= capacity()) {
            ensureAccessible();
        } else if (checkBounds && i4 > this.maxCapacity) {
            ensureAccessible();
            throw new IndexOutOfBoundsException(String.format("writerIndex(%d) + minWritableBytes(%d) exceeds maxCapacity(%d): %s", Integer.valueOf(writerIndex), Integer.valueOf(i2), Integer.valueOf(this.maxCapacity), this));
        } else {
            int maxFastWritableBytes = maxFastWritableBytes();
            capacity(maxFastWritableBytes >= i2 ? writerIndex + maxFastWritableBytes : alloc().calculateNewCapacity(i4, this.maxCapacity));
        }
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof ByteBuf) && ByteBufUtil.equals(this, (ByteBuf) obj));
    }

    @Override // io.netty.buffer.ByteBuf
    public int forEachByte(ByteProcessor byteProcessor) {
        ensureAccessible();
        try {
            return forEachByteAsc0(this.readerIndex, this.writerIndex, byteProcessor);
        } catch (Exception e4) {
            PlatformDependent.throwException(e4);
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int forEachByteAsc0(int i2, int i4, ByteProcessor byteProcessor) throws Exception {
        while (i2 < i4) {
            if (!byteProcessor.process(_getByte(i2))) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    @Override // io.netty.buffer.ByteBuf
    public int forEachByteDesc(ByteProcessor byteProcessor) {
        ensureAccessible();
        try {
            return forEachByteDesc0(this.writerIndex - 1, this.readerIndex, byteProcessor);
        } catch (Exception e4) {
            PlatformDependent.throwException(e4);
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int forEachByteDesc0(int i2, int i4, ByteProcessor byteProcessor) throws Exception {
        while (i2 >= i4) {
            if (!byteProcessor.process(_getByte(i2))) {
                return i2;
            }
            i2--;
        }
        return -1;
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean getBoolean(int i2) {
        return getByte(i2) != 0;
    }

    @Override // io.netty.buffer.ByteBuf
    public byte getByte(int i2) {
        checkIndex(i2);
        return _getByte(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, byte[] bArr) {
        getBytes(i2, bArr, 0, bArr.length);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public char getChar(int i2) {
        return (char) getShort(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public CharSequence getCharSequence(int i2, int i4, Charset charset) {
        if (!CharsetUtil.US_ASCII.equals(charset) && !CharsetUtil.ISO_8859_1.equals(charset)) {
            return toString(i2, i4, charset);
        }
        return new AsciiString(ByteBufUtil.getBytes(this, i2, i4, true), false);
    }

    @Override // io.netty.buffer.ByteBuf
    public double getDouble(int i2) {
        return Double.longBitsToDouble(getLong(i2));
    }

    @Override // io.netty.buffer.ByteBuf
    public float getFloat(int i2) {
        return Float.intBitsToFloat(getInt(i2));
    }

    @Override // io.netty.buffer.ByteBuf
    public int getInt(int i2) {
        checkIndex(i2, 4);
        return _getInt(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public int getIntLE(int i2) {
        checkIndex(i2, 4);
        return _getIntLE(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public long getLong(int i2) {
        checkIndex(i2, 8);
        return _getLong(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public long getLongLE(int i2) {
        checkIndex(i2, 8);
        return _getLongLE(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public int getMedium(int i2) {
        int unsignedMedium = getUnsignedMedium(i2);
        return (8388608 & unsignedMedium) != 0 ? unsignedMedium | (-16777216) : unsignedMedium;
    }

    @Override // io.netty.buffer.ByteBuf
    public int getMediumLE(int i2) {
        int unsignedMediumLE = getUnsignedMediumLE(i2);
        return (8388608 & unsignedMediumLE) != 0 ? unsignedMediumLE | (-16777216) : unsignedMediumLE;
    }

    @Override // io.netty.buffer.ByteBuf
    public short getShort(int i2) {
        checkIndex(i2, 2);
        return _getShort(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public short getShortLE(int i2) {
        checkIndex(i2, 2);
        return _getShortLE(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public short getUnsignedByte(int i2) {
        return (short) (getByte(i2) & 255);
    }

    @Override // io.netty.buffer.ByteBuf
    public long getUnsignedInt(int i2) {
        return getInt(i2) & 4294967295L;
    }

    @Override // io.netty.buffer.ByteBuf
    public long getUnsignedIntLE(int i2) {
        return getIntLE(i2) & 4294967295L;
    }

    @Override // io.netty.buffer.ByteBuf
    public int getUnsignedMedium(int i2) {
        checkIndex(i2, 3);
        return _getUnsignedMedium(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public int getUnsignedMediumLE(int i2) {
        checkIndex(i2, 3);
        return _getUnsignedMediumLE(i2);
    }

    @Override // io.netty.buffer.ByteBuf
    public int getUnsignedShort(int i2) {
        return getShort(i2) & UShort.MAX_VALUE;
    }

    @Override // io.netty.buffer.ByteBuf
    public int getUnsignedShortLE(int i2) {
        return getShortLE(i2) & UShort.MAX_VALUE;
    }

    @Override // io.netty.buffer.ByteBuf
    public int hashCode() {
        return ByteBufUtil.hashCode(this);
    }

    @Override // io.netty.buffer.ByteBuf
    public int indexOf(int i2, int i4, byte b4) {
        if (i2 <= i4) {
            return firstIndexOf(i2, i4, b4);
        }
        return lastIndexOf(i2, i4, b4);
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isReadOnly() {
        return false;
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isReadable() {
        return this.writerIndex > this.readerIndex;
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isWritable() {
        return capacity() > this.writerIndex;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf markReaderIndex() {
        this.markedReaderIndex = this.readerIndex;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf markWriterIndex() {
        this.markedWriterIndex = this.writerIndex;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int maxCapacity() {
        return this.maxCapacity;
    }

    @Override // io.netty.buffer.ByteBuf
    public int maxWritableBytes() {
        return maxCapacity() - this.writerIndex;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SwappedByteBuf newSwappedByteBuf() {
        return new SwappedByteBuf(this);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer nioBuffer() {
        return nioBuffer(this.readerIndex, readableBytes());
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuffer[] nioBuffers() {
        return nioBuffers(this.readerIndex, readableBytes());
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf order(ByteOrder byteOrder) {
        if (byteOrder == order()) {
            return this;
        }
        ObjectUtil.checkNotNull(byteOrder, "endianness");
        return newSwappedByteBuf();
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean readBoolean() {
        return readByte() != 0;
    }

    @Override // io.netty.buffer.ByteBuf
    public byte readByte() {
        checkReadableBytes0(1);
        int i2 = this.readerIndex;
        byte _getByte = _getByte(i2);
        this.readerIndex = i2 + 1;
        return _getByte;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readBytes(int i2) {
        checkReadableBytes(i2);
        if (i2 == 0) {
            return Unpooled.EMPTY_BUFFER;
        }
        ByteBuf buffer = alloc().buffer(i2, this.maxCapacity);
        buffer.writeBytes(this, this.readerIndex, i2);
        this.readerIndex += i2;
        return buffer;
    }

    @Override // io.netty.buffer.ByteBuf
    public char readChar() {
        return (char) readShort();
    }

    @Override // io.netty.buffer.ByteBuf
    public CharSequence readCharSequence(int i2, Charset charset) {
        CharSequence charSequence = getCharSequence(this.readerIndex, i2, charset);
        this.readerIndex += i2;
        return charSequence;
    }

    @Override // io.netty.buffer.ByteBuf
    public double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    @Override // io.netty.buffer.ByteBuf
    public float readFloat() {
        return Float.intBitsToFloat(readInt());
    }

    @Override // io.netty.buffer.ByteBuf
    public int readInt() {
        checkReadableBytes0(4);
        int _getInt = _getInt(this.readerIndex);
        this.readerIndex += 4;
        return _getInt;
    }

    @Override // io.netty.buffer.ByteBuf
    public int readIntLE() {
        checkReadableBytes0(4);
        int _getIntLE = _getIntLE(this.readerIndex);
        this.readerIndex += 4;
        return _getIntLE;
    }

    @Override // io.netty.buffer.ByteBuf
    public long readLong() {
        checkReadableBytes0(8);
        long _getLong = _getLong(this.readerIndex);
        this.readerIndex += 8;
        return _getLong;
    }

    @Override // io.netty.buffer.ByteBuf
    public long readLongLE() {
        checkReadableBytes0(8);
        long _getLongLE = _getLongLE(this.readerIndex);
        this.readerIndex += 8;
        return _getLongLE;
    }

    @Override // io.netty.buffer.ByteBuf
    public int readMedium() {
        int readUnsignedMedium = readUnsignedMedium();
        return (8388608 & readUnsignedMedium) != 0 ? readUnsignedMedium | (-16777216) : readUnsignedMedium;
    }

    @Override // io.netty.buffer.ByteBuf
    public int readMediumLE() {
        int readUnsignedMediumLE = readUnsignedMediumLE();
        return (8388608 & readUnsignedMediumLE) != 0 ? readUnsignedMediumLE | (-16777216) : readUnsignedMediumLE;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readRetainedSlice(int i2) {
        checkReadableBytes(i2);
        ByteBuf retainedSlice = retainedSlice(this.readerIndex, i2);
        this.readerIndex += i2;
        return retainedSlice;
    }

    @Override // io.netty.buffer.ByteBuf
    public short readShort() {
        checkReadableBytes0(2);
        short _getShort = _getShort(this.readerIndex);
        this.readerIndex += 2;
        return _getShort;
    }

    @Override // io.netty.buffer.ByteBuf
    public short readShortLE() {
        checkReadableBytes0(2);
        short _getShortLE = _getShortLE(this.readerIndex);
        this.readerIndex += 2;
        return _getShortLE;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readSlice(int i2) {
        checkReadableBytes(i2);
        ByteBuf slice = slice(this.readerIndex, i2);
        this.readerIndex += i2;
        return slice;
    }

    @Override // io.netty.buffer.ByteBuf
    public short readUnsignedByte() {
        return (short) (readByte() & 255);
    }

    @Override // io.netty.buffer.ByteBuf
    public long readUnsignedInt() {
        return readInt() & 4294967295L;
    }

    @Override // io.netty.buffer.ByteBuf
    public long readUnsignedIntLE() {
        return readIntLE() & 4294967295L;
    }

    @Override // io.netty.buffer.ByteBuf
    public int readUnsignedMedium() {
        checkReadableBytes0(3);
        int _getUnsignedMedium = _getUnsignedMedium(this.readerIndex);
        this.readerIndex += 3;
        return _getUnsignedMedium;
    }

    @Override // io.netty.buffer.ByteBuf
    public int readUnsignedMediumLE() {
        checkReadableBytes0(3);
        int _getUnsignedMediumLE = _getUnsignedMediumLE(this.readerIndex);
        this.readerIndex += 3;
        return _getUnsignedMediumLE;
    }

    @Override // io.netty.buffer.ByteBuf
    public int readUnsignedShort() {
        return readShort() & UShort.MAX_VALUE;
    }

    @Override // io.netty.buffer.ByteBuf
    public int readUnsignedShortLE() {
        return readShortLE() & UShort.MAX_VALUE;
    }

    @Override // io.netty.buffer.ByteBuf
    public int readableBytes() {
        return this.writerIndex - this.readerIndex;
    }

    @Override // io.netty.buffer.ByteBuf
    public int readerIndex() {
        return this.readerIndex;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf resetReaderIndex() {
        readerIndex(this.markedReaderIndex);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf resetWriterIndex() {
        writerIndex(this.markedWriterIndex);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf retainedDuplicate() {
        return duplicate().retain();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf retainedSlice() {
        return slice().retain();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBoolean(int i2, boolean z3) {
        setByte(i2, z3 ? 1 : 0);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setByte(int i2, int i4) {
        checkIndex(i2);
        _setByte(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, byte[] bArr) {
        setBytes(i2, bArr, 0, bArr.length);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setChar(int i2, int i4) {
        setShort(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int setCharSequence(int i2, CharSequence charSequence, Charset charset) {
        return setCharSequence0(i2, charSequence, charset, false);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setDouble(int i2, double d4) {
        setLong(i2, Double.doubleToRawLongBits(d4));
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setFloat(int i2, float f4) {
        setInt(i2, Float.floatToRawIntBits(f4));
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setIndex(int i2, int i4) {
        if (checkBounds) {
            checkIndexBounds(i2, i4, capacity());
        }
        setIndex0(i2, i4);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void setIndex0(int i2, int i4) {
        this.readerIndex = i2;
        this.writerIndex = i4;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setInt(int i2, int i4) {
        checkIndex(i2, 4);
        _setInt(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setIntLE(int i2, int i4) {
        checkIndex(i2, 4);
        _setIntLE(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setLong(int i2, long j4) {
        checkIndex(i2, 8);
        _setLong(i2, j4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setLongLE(int i2, long j4) {
        checkIndex(i2, 8);
        _setLongLE(i2, j4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setMedium(int i2, int i4) {
        checkIndex(i2, 3);
        _setMedium(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setMediumLE(int i2, int i4) {
        checkIndex(i2, 3);
        _setMediumLE(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setShort(int i2, int i4) {
        checkIndex(i2, 2);
        _setShort(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setShortLE(int i2, int i4) {
        checkIndex(i2, 2);
        _setShortLE(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setZero(int i2, int i4) {
        if (i4 == 0) {
            return this;
        }
        checkIndex(i2, i4);
        int i5 = i4 & 7;
        for (int i6 = i4 >>> 3; i6 > 0; i6--) {
            _setLong(i2, 0L);
            i2 += 8;
        }
        if (i5 == 4) {
            _setInt(i2, 0);
        } else if (i5 < 4) {
            while (i5 > 0) {
                _setByte(i2, 0);
                i2++;
                i5--;
            }
        } else {
            _setInt(i2, 0);
            int i7 = i2 + 4;
            for (int i8 = i5 - 4; i8 > 0; i8--) {
                _setByte(i7, 0);
                i7++;
            }
        }
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf skipBytes(int i2) {
        checkReadableBytes(i2);
        this.readerIndex += i2;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf slice() {
        return slice(this.readerIndex, readableBytes());
    }

    @Override // io.netty.buffer.ByteBuf
    public String toString(Charset charset) {
        return toString(this.readerIndex, readableBytes(), charset);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void trimIndicesToCapacity(int i2) {
        if (writerIndex() > i2) {
            setIndex0(Math.min(readerIndex(), i2), i2);
        }
    }

    @Override // io.netty.buffer.ByteBuf
    public int writableBytes() {
        return capacity() - this.writerIndex;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeBoolean(boolean z3) {
        writeByte(z3 ? 1 : 0);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeByte(int i2) {
        ensureWritable0(1);
        int i4 = this.writerIndex;
        this.writerIndex = i4 + 1;
        _setByte(i4, i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeBytes(byte[] bArr, int i2, int i4) {
        ensureWritable(i4);
        setBytes(this.writerIndex, bArr, i2, i4);
        this.writerIndex += i4;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeChar(int i2) {
        writeShort(i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int writeCharSequence(CharSequence charSequence, Charset charset) {
        int charSequence0 = setCharSequence0(this.writerIndex, charSequence, charset, true);
        this.writerIndex += charSequence0;
        return charSequence0;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeDouble(double d4) {
        writeLong(Double.doubleToRawLongBits(d4));
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeFloat(float f4) {
        writeInt(Float.floatToRawIntBits(f4));
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeInt(int i2) {
        ensureWritable0(4);
        _setInt(this.writerIndex, i2);
        this.writerIndex += 4;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeIntLE(int i2) {
        ensureWritable0(4);
        _setIntLE(this.writerIndex, i2);
        this.writerIndex += 4;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeLong(long j4) {
        ensureWritable0(8);
        _setLong(this.writerIndex, j4);
        this.writerIndex += 8;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeLongLE(long j4) {
        ensureWritable0(8);
        _setLongLE(this.writerIndex, j4);
        this.writerIndex += 8;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeMedium(int i2) {
        ensureWritable0(3);
        _setMedium(this.writerIndex, i2);
        this.writerIndex += 3;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeMediumLE(int i2) {
        ensureWritable0(3);
        _setMediumLE(this.writerIndex, i2);
        this.writerIndex += 3;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeShort(int i2) {
        ensureWritable0(2);
        _setShort(this.writerIndex, i2);
        this.writerIndex += 2;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeShortLE(int i2) {
        ensureWritable0(2);
        _setShortLE(this.writerIndex, i2);
        this.writerIndex += 2;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeZero(int i2) {
        if (i2 == 0) {
            return this;
        }
        ensureWritable(i2);
        int i4 = this.writerIndex;
        checkIndex0(i4, i2);
        int i5 = i2 & 7;
        for (int i6 = i2 >>> 3; i6 > 0; i6--) {
            _setLong(i4, 0L);
            i4 += 8;
        }
        if (i5 == 4) {
            _setInt(i4, 0);
            i4 += 4;
        } else if (i5 < 4) {
            while (i5 > 0) {
                _setByte(i4, 0);
                i4++;
                i5--;
            }
        } else {
            _setInt(i4, 0);
            i4 += 4;
            for (int i7 = i5 - 4; i7 > 0; i7--) {
                _setByte(i4, 0);
                i4++;
            }
        }
        this.writerIndex = i4;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int writerIndex() {
        return this.writerIndex;
    }

    @Override // io.netty.buffer.ByteBuf
    public int bytesBefore(int i2, byte b4) {
        checkReadableBytes(i2);
        return bytesBefore(readerIndex(), i2, b4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void checkIndex(int i2, int i4) {
        ensureAccessible();
        checkIndex0(i2, i4);
    }

    @Override // io.netty.buffer.ByteBuf, java.lang.Comparable
    public int compareTo(ByteBuf byteBuf) {
        return ByteBufUtil.compare(this, byteBuf);
    }

    @Override // io.netty.buffer.ByteBuf
    public int ensureWritable(int i2, boolean z3) {
        ensureAccessible();
        ObjectUtil.checkPositiveOrZero(i2, "minWritableBytes");
        if (i2 <= writableBytes()) {
            return 0;
        }
        int maxCapacity = maxCapacity();
        int writerIndex = writerIndex();
        if (i2 > maxCapacity - writerIndex) {
            if (!z3 || capacity() == maxCapacity) {
                return 1;
            }
            capacity(maxCapacity);
            return 3;
        }
        int maxFastWritableBytes = maxFastWritableBytes();
        capacity(maxFastWritableBytes >= i2 ? writerIndex + maxFastWritableBytes : alloc().calculateNewCapacity(writerIndex + i2, maxCapacity));
        return 2;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, ByteBuf byteBuf) {
        getBytes(i2, byteBuf, byteBuf.writableBytes());
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isReadable(int i2) {
        return this.writerIndex - this.readerIndex >= i2;
    }

    @Override // io.netty.buffer.ByteBuf
    public boolean isWritable(int i2) {
        return capacity() - this.writerIndex >= i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void maxCapacity(int i2) {
        this.maxCapacity = i2;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readerIndex(int i2) {
        if (checkBounds) {
            checkIndexBounds(i2, this.writerIndex, capacity());
        }
        this.readerIndex = i2;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf retainedSlice(int i2, int i4) {
        return slice(i2, i4).retain();
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, ByteBuf byteBuf) {
        setBytes(i2, byteBuf, byteBuf.readableBytes());
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf slice(int i2, int i4) {
        ensureAccessible();
        return new UnpooledSlicedByteBuf(this, i2, i4);
    }

    @Override // io.netty.buffer.ByteBuf
    public String toString(int i2, int i4, Charset charset) {
        return ByteBufUtil.decodeString(this, i2, i4, charset);
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writerIndex(int i2) {
        if (checkBounds) {
            checkIndexBounds(this.readerIndex, i2, capacity());
        }
        this.writerIndex = i2;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf getBytes(int i2, ByteBuf byteBuf, int i4) {
        getBytes(i2, byteBuf, byteBuf.writerIndex(), i4);
        byteBuf.writerIndex(byteBuf.writerIndex() + i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf setBytes(int i2, ByteBuf byteBuf, int i4) {
        checkIndex(i2, i4);
        ObjectUtil.checkNotNull(byteBuf, "src");
        if (checkBounds) {
            checkReadableBounds(byteBuf, i4);
        }
        setBytes(i2, byteBuf, byteBuf.readerIndex(), i4);
        byteBuf.readerIndex(byteBuf.readerIndex() + i4);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public String toString() {
        if (refCnt() == 0) {
            return StringUtil.simpleClassName(this) + "(freed)";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(StringUtil.simpleClassName(this));
        sb.append("(ridx: ");
        sb.append(this.readerIndex);
        sb.append(", widx: ");
        sb.append(this.writerIndex);
        sb.append(", cap: ");
        sb.append(capacity());
        if (this.maxCapacity != Integer.MAX_VALUE) {
            sb.append('/');
            sb.append(this.maxCapacity);
        }
        ByteBuf unwrap = unwrap();
        if (unwrap != null) {
            sb.append(", unwrapped: ");
            sb.append(unwrap);
        }
        sb.append(')');
        return sb.toString();
    }

    @Override // io.netty.buffer.ByteBuf
    public int bytesBefore(int i2, int i4, byte b4) {
        int indexOf = indexOf(i2, i4 + i2, b4);
        if (indexOf < 0) {
            return -1;
        }
        return indexOf - i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void checkDstIndex(int i2, int i4, int i5) {
        checkReadableBytes(i2);
        if (checkBounds) {
            checkRangeBounds("dstIndex", i4, i2, i5);
        }
    }

    @Override // io.netty.buffer.ByteBuf
    public int forEachByte(int i2, int i4, ByteProcessor byteProcessor) {
        checkIndex(i2, i4);
        try {
            return forEachByteAsc0(i2, i4 + i2, byteProcessor);
        } catch (Exception e4) {
            PlatformDependent.throwException(e4);
            return -1;
        }
    }

    @Override // io.netty.buffer.ByteBuf
    public int forEachByteDesc(int i2, int i4, ByteProcessor byteProcessor) {
        checkIndex(i2, i4);
        try {
            return forEachByteDesc0((i4 + i2) - 1, i2, byteProcessor);
        } catch (Exception e4) {
            PlatformDependent.throwException(e4);
            return -1;
        }
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeBytes(byte[] bArr) {
        writeBytes(bArr, 0, bArr.length);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeBytes(ByteBuf byteBuf) {
        writeBytes(byteBuf, byteBuf.readableBytes());
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readBytes(byte[] bArr, int i2, int i4) {
        checkReadableBytes(i4);
        getBytes(this.readerIndex, bArr, i2, i4);
        this.readerIndex += i4;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeBytes(ByteBuf byteBuf, int i2) {
        if (checkBounds) {
            checkReadableBounds(byteBuf, i2);
        }
        writeBytes(byteBuf, byteBuf.readerIndex(), i2);
        byteBuf.readerIndex(byteBuf.readerIndex() + i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readBytes(byte[] bArr) {
        readBytes(bArr, 0, bArr.length);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readBytes(ByteBuf byteBuf) {
        readBytes(byteBuf, byteBuf.writableBytes());
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeBytes(ByteBuf byteBuf, int i2, int i4) {
        ensureWritable(i4);
        setBytes(this.writerIndex, byteBuf, i2, i4);
        this.writerIndex += i4;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readBytes(ByteBuf byteBuf, int i2) {
        if (checkBounds && i2 > byteBuf.writableBytes()) {
            throw new IndexOutOfBoundsException(String.format("length(%d) exceeds dst.writableBytes(%d) where dst is: %s", Integer.valueOf(i2), Integer.valueOf(byteBuf.writableBytes()), byteBuf));
        }
        readBytes(byteBuf, byteBuf.writerIndex(), i2);
        byteBuf.writerIndex(byteBuf.writerIndex() + i2);
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf writeBytes(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        ensureWritable0(remaining);
        setBytes(this.writerIndex, byteBuffer);
        this.writerIndex += remaining;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int writeBytes(InputStream inputStream, int i2) throws IOException {
        ensureWritable(i2);
        int bytes = setBytes(this.writerIndex, inputStream, i2);
        if (bytes > 0) {
            this.writerIndex += bytes;
        }
        return bytes;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readBytes(ByteBuf byteBuf, int i2, int i4) {
        checkReadableBytes(i4);
        getBytes(this.readerIndex, byteBuf, i2, i4);
        this.readerIndex += i4;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int writeBytes(ScatteringByteChannel scatteringByteChannel, int i2) throws IOException {
        ensureWritable(i2);
        int bytes = setBytes(this.writerIndex, scatteringByteChannel, i2);
        if (bytes > 0) {
            this.writerIndex += bytes;
        }
        return bytes;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readBytes(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        checkReadableBytes(remaining);
        getBytes(this.readerIndex, byteBuffer);
        this.readerIndex += remaining;
        return this;
    }

    @Override // io.netty.buffer.ByteBuf
    public int writeBytes(FileChannel fileChannel, long j4, int i2) throws IOException {
        ensureWritable(i2);
        int bytes = setBytes(this.writerIndex, fileChannel, j4, i2);
        if (bytes > 0) {
            this.writerIndex += bytes;
        }
        return bytes;
    }

    @Override // io.netty.buffer.ByteBuf
    public int readBytes(GatheringByteChannel gatheringByteChannel, int i2) throws IOException {
        checkReadableBytes(i2);
        int bytes = getBytes(this.readerIndex, gatheringByteChannel, i2);
        this.readerIndex += bytes;
        return bytes;
    }

    @Override // io.netty.buffer.ByteBuf
    public int readBytes(FileChannel fileChannel, long j4, int i2) throws IOException {
        checkReadableBytes(i2);
        int bytes = getBytes(this.readerIndex, fileChannel, j4, i2);
        this.readerIndex += bytes;
        return bytes;
    }

    @Override // io.netty.buffer.ByteBuf
    public ByteBuf readBytes(OutputStream outputStream, int i2) throws IOException {
        checkReadableBytes(i2);
        getBytes(this.readerIndex, outputStream, i2);
        this.readerIndex += i2;
        return this;
    }
}
