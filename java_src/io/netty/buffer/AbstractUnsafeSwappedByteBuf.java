package io.netty.buffer;

import io.netty.util.internal.PlatformDependent;
import java.nio.ByteOrder;
import kotlin.UShort;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class AbstractUnsafeSwappedByteBuf extends SwappedByteBuf {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final boolean nativeByteOrder;
    private final AbstractByteBuf wrapped;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractUnsafeSwappedByteBuf(AbstractByteBuf abstractByteBuf) {
        super(abstractByteBuf);
        this.wrapped = abstractByteBuf;
        this.nativeByteOrder = PlatformDependent.BIG_ENDIAN_NATIVE_ORDER == (order() == ByteOrder.BIG_ENDIAN);
    }

    protected abstract int _getInt(AbstractByteBuf abstractByteBuf, int i2);

    protected abstract long _getLong(AbstractByteBuf abstractByteBuf, int i2);

    protected abstract short _getShort(AbstractByteBuf abstractByteBuf, int i2);

    protected abstract void _setInt(AbstractByteBuf abstractByteBuf, int i2, int i4);

    protected abstract void _setLong(AbstractByteBuf abstractByteBuf, int i2, long j4);

    protected abstract void _setShort(AbstractByteBuf abstractByteBuf, int i2, short s3);

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public final char getChar(int i2) {
        return (char) getShort(i2);
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public final double getDouble(int i2) {
        return Double.longBitsToDouble(getLong(i2));
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public final float getFloat(int i2) {
        return Float.intBitsToFloat(getInt(i2));
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public final int getInt(int i2) {
        this.wrapped.checkIndex(i2, 4);
        int _getInt = _getInt(this.wrapped, i2);
        return this.nativeByteOrder ? _getInt : Integer.reverseBytes(_getInt);
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public final long getLong(int i2) {
        this.wrapped.checkIndex(i2, 8);
        long _getLong = _getLong(this.wrapped, i2);
        return this.nativeByteOrder ? _getLong : Long.reverseBytes(_getLong);
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public final short getShort(int i2) {
        this.wrapped.checkIndex(i2, 2);
        short _getShort = _getShort(this.wrapped, i2);
        return this.nativeByteOrder ? _getShort : Short.reverseBytes(_getShort);
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public final long getUnsignedInt(int i2) {
        return getInt(i2) & 4294967295L;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public final int getUnsignedShort(int i2) {
        return getShort(i2) & UShort.MAX_VALUE;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public final ByteBuf setChar(int i2, int i4) {
        setShort(i2, i4);
        return this;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public final ByteBuf setDouble(int i2, double d4) {
        setLong(i2, Double.doubleToRawLongBits(d4));
        return this;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public final ByteBuf setFloat(int i2, float f4) {
        setInt(i2, Float.floatToRawIntBits(f4));
        return this;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public final ByteBuf setInt(int i2, int i4) {
        this.wrapped.checkIndex(i2, 4);
        AbstractByteBuf abstractByteBuf = this.wrapped;
        if (!this.nativeByteOrder) {
            i4 = Integer.reverseBytes(i4);
        }
        _setInt(abstractByteBuf, i2, i4);
        return this;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public final ByteBuf setLong(int i2, long j4) {
        this.wrapped.checkIndex(i2, 8);
        AbstractByteBuf abstractByteBuf = this.wrapped;
        if (!this.nativeByteOrder) {
            j4 = Long.reverseBytes(j4);
        }
        _setLong(abstractByteBuf, i2, j4);
        return this;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public final ByteBuf setShort(int i2, int i4) {
        this.wrapped.checkIndex(i2, 2);
        AbstractByteBuf abstractByteBuf = this.wrapped;
        short s3 = (short) i4;
        if (!this.nativeByteOrder) {
            s3 = Short.reverseBytes(s3);
        }
        _setShort(abstractByteBuf, i2, s3);
        return this;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public final ByteBuf writeChar(int i2) {
        writeShort(i2);
        return this;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public final ByteBuf writeDouble(double d4) {
        writeLong(Double.doubleToRawLongBits(d4));
        return this;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public final ByteBuf writeFloat(float f4) {
        writeInt(Float.floatToRawIntBits(f4));
        return this;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public final ByteBuf writeInt(int i2) {
        this.wrapped.ensureWritable0(4);
        AbstractByteBuf abstractByteBuf = this.wrapped;
        int i4 = abstractByteBuf.writerIndex;
        if (!this.nativeByteOrder) {
            i2 = Integer.reverseBytes(i2);
        }
        _setInt(abstractByteBuf, i4, i2);
        this.wrapped.writerIndex += 4;
        return this;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public final ByteBuf writeLong(long j4) {
        this.wrapped.ensureWritable0(8);
        AbstractByteBuf abstractByteBuf = this.wrapped;
        int i2 = abstractByteBuf.writerIndex;
        if (!this.nativeByteOrder) {
            j4 = Long.reverseBytes(j4);
        }
        _setLong(abstractByteBuf, i2, j4);
        this.wrapped.writerIndex += 8;
        return this;
    }

    @Override // io.netty.buffer.SwappedByteBuf, io.netty.buffer.ByteBuf
    public final ByteBuf writeShort(int i2) {
        this.wrapped.ensureWritable0(2);
        AbstractByteBuf abstractByteBuf = this.wrapped;
        int i4 = abstractByteBuf.writerIndex;
        short s3 = (short) i2;
        if (!this.nativeByteOrder) {
            s3 = Short.reverseBytes(s3);
        }
        _setShort(abstractByteBuf, i4, s3);
        this.wrapped.writerIndex += 2;
        return this;
    }
}
