package io.netty.buffer;

import io.netty.util.internal.ObjectPool;
import io.netty.util.internal.PlatformDependent;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class PooledUnsafeHeapByteBuf extends PooledHeapByteBuf {
    private static final ObjectPool<PooledUnsafeHeapByteBuf> RECYCLER = ObjectPool.newPool(new ObjectPool.ObjectCreator<PooledUnsafeHeapByteBuf>() { // from class: io.netty.buffer.PooledUnsafeHeapByteBuf.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.netty.util.internal.ObjectPool.ObjectCreator
        public PooledUnsafeHeapByteBuf newObject(ObjectPool.Handle<PooledUnsafeHeapByteBuf> handle) {
            return new PooledUnsafeHeapByteBuf(handle, 0);
        }
    });

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PooledUnsafeHeapByteBuf newUnsafeInstance(int i2) {
        PooledUnsafeHeapByteBuf pooledUnsafeHeapByteBuf = RECYCLER.get();
        pooledUnsafeHeapByteBuf.reuse(i2);
        return pooledUnsafeHeapByteBuf;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.PooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public byte _getByte(int i2) {
        return UnsafeByteBufUtil.getByte((byte[]) this.memory, idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.PooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public int _getInt(int i2) {
        return UnsafeByteBufUtil.getInt((byte[]) this.memory, idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.PooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public int _getIntLE(int i2) {
        return UnsafeByteBufUtil.getIntLE((byte[]) this.memory, idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.PooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public long _getLong(int i2) {
        return UnsafeByteBufUtil.getLong((byte[]) this.memory, idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.PooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public long _getLongLE(int i2) {
        return UnsafeByteBufUtil.getLongLE((byte[]) this.memory, idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.PooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public short _getShort(int i2) {
        return UnsafeByteBufUtil.getShort((byte[]) this.memory, idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.PooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public short _getShortLE(int i2) {
        return UnsafeByteBufUtil.getShortLE((byte[]) this.memory, idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.PooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMedium(int i2) {
        return UnsafeByteBufUtil.getUnsignedMedium((byte[]) this.memory, idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.PooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMediumLE(int i2) {
        return UnsafeByteBufUtil.getUnsignedMediumLE((byte[]) this.memory, idx(i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.PooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setByte(int i2, int i4) {
        UnsafeByteBufUtil.setByte((byte[]) this.memory, idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.PooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setInt(int i2, int i4) {
        UnsafeByteBufUtil.setInt((byte[]) this.memory, idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.PooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setIntLE(int i2, int i4) {
        UnsafeByteBufUtil.setIntLE((byte[]) this.memory, idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.PooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setLong(int i2, long j4) {
        UnsafeByteBufUtil.setLong((byte[]) this.memory, idx(i2), j4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.PooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setLongLE(int i2, long j4) {
        UnsafeByteBufUtil.setLongLE((byte[]) this.memory, idx(i2), j4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.PooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setMedium(int i2, int i4) {
        UnsafeByteBufUtil.setMedium((byte[]) this.memory, idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.PooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setMediumLE(int i2, int i4) {
        UnsafeByteBufUtil.setMediumLE((byte[]) this.memory, idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.PooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setShort(int i2, int i4) {
        UnsafeByteBufUtil.setShort((byte[]) this.memory, idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.PooledHeapByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setShortLE(int i2, int i4) {
        UnsafeByteBufUtil.setShortLE((byte[]) this.memory, idx(i2), i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.AbstractByteBuf
    @Deprecated
    public SwappedByteBuf newSwappedByteBuf() {
        if (PlatformDependent.isUnaligned()) {
            return new UnsafeHeapSwappedByteBuf(this);
        }
        return super.newSwappedByteBuf();
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf setZero(int i2, int i4) {
        if (PlatformDependent.javaVersion() >= 7) {
            checkIndex(i2, i4);
            UnsafeByteBufUtil.setZero((byte[]) this.memory, idx(i2), i4);
            return this;
        }
        return super.setZero(i2, i4);
    }

    @Override // io.netty.buffer.AbstractByteBuf, io.netty.buffer.ByteBuf
    public ByteBuf writeZero(int i2) {
        if (PlatformDependent.javaVersion() >= 7) {
            ensureWritable(i2);
            int i4 = this.writerIndex;
            UnsafeByteBufUtil.setZero((byte[]) this.memory, idx(i4), i2);
            this.writerIndex = i4 + i2;
            return this;
        }
        return super.writeZero(i2);
    }

    private PooledUnsafeHeapByteBuf(ObjectPool.Handle<PooledUnsafeHeapByteBuf> handle, int i2) {
        super(handle, i2);
    }
}
