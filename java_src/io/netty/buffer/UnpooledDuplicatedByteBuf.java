package io.netty.buffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class UnpooledDuplicatedByteBuf extends DuplicatedByteBuf {
    /* JADX INFO: Access modifiers changed from: package-private */
    public UnpooledDuplicatedByteBuf(AbstractByteBuf abstractByteBuf) {
        super(abstractByteBuf);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    public byte _getByte(int i2) {
        return unwrap()._getByte(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    public int _getInt(int i2) {
        return unwrap()._getInt(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    public int _getIntLE(int i2) {
        return unwrap()._getIntLE(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    public long _getLong(int i2) {
        return unwrap()._getLong(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    public long _getLongLE(int i2) {
        return unwrap()._getLongLE(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    public short _getShort(int i2) {
        return unwrap()._getShort(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    public short _getShortLE(int i2) {
        return unwrap()._getShortLE(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMedium(int i2) {
        return unwrap()._getUnsignedMedium(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    public int _getUnsignedMediumLE(int i2) {
        return unwrap()._getUnsignedMediumLE(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setByte(int i2, int i4) {
        unwrap()._setByte(i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setInt(int i2, int i4) {
        unwrap()._setInt(i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setIntLE(int i2, int i4) {
        unwrap()._setIntLE(i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setLong(int i2, long j4) {
        unwrap()._setLong(i2, j4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setLongLE(int i2, long j4) {
        unwrap()._setLongLE(i2, j4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setMedium(int i2, int i4) {
        unwrap()._setMedium(i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setMediumLE(int i2, int i4) {
        unwrap()._setMediumLE(i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setShort(int i2, int i4) {
        unwrap()._setShort(i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.AbstractByteBuf
    public void _setShortLE(int i2, int i4) {
        unwrap()._setShortLE(i2, i4);
    }

    @Override // io.netty.buffer.DuplicatedByteBuf, io.netty.buffer.ByteBuf
    public AbstractByteBuf unwrap() {
        return (AbstractByteBuf) super.unwrap();
    }
}
