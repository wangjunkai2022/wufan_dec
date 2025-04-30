package io.netty.handler.codec;
/* loaded from: classes5.dex */
public final class UnsupportedValueConverter<V> implements ValueConverter<V> {
    private static final UnsupportedValueConverter INSTANCE = new UnsupportedValueConverter();

    private UnsupportedValueConverter() {
    }

    public static <V> UnsupportedValueConverter<V> instance() {
        return INSTANCE;
    }

    @Override // io.netty.handler.codec.ValueConverter
    public V convertBoolean(boolean z3) {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.handler.codec.ValueConverter
    public V convertByte(byte b4) {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.handler.codec.ValueConverter
    public V convertChar(char c4) {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.handler.codec.ValueConverter
    public V convertDouble(double d4) {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.handler.codec.ValueConverter
    public V convertFloat(float f4) {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.handler.codec.ValueConverter
    public V convertInt(int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.handler.codec.ValueConverter
    public V convertLong(long j4) {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.handler.codec.ValueConverter
    public V convertObject(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.handler.codec.ValueConverter
    public V convertShort(short s3) {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.handler.codec.ValueConverter
    public V convertTimeMillis(long j4) {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.handler.codec.ValueConverter
    public boolean convertToBoolean(V v3) {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.handler.codec.ValueConverter
    public byte convertToByte(V v3) {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.handler.codec.ValueConverter
    public char convertToChar(V v3) {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.handler.codec.ValueConverter
    public double convertToDouble(V v3) {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.handler.codec.ValueConverter
    public float convertToFloat(V v3) {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.handler.codec.ValueConverter
    public int convertToInt(V v3) {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.handler.codec.ValueConverter
    public long convertToLong(V v3) {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.handler.codec.ValueConverter
    public short convertToShort(V v3) {
        throw new UnsupportedOperationException();
    }

    @Override // io.netty.handler.codec.ValueConverter
    public long convertToTimeMillis(V v3) {
        throw new UnsupportedOperationException();
    }
}
