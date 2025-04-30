package kotlin;

import kotlin.internal.InlineOnly;
/* compiled from: Numbers.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0010\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\n\n\u0000\u001a\r\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\u0005\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\r\u0010\u0006\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\u0014\u0010\b\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0001H\u0007\u001a\u0014\u0010\t\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0001H\u0007\u001a\r\u0010\u0002\u001a\u00020\u0001*\u00020\nH\u0087\b\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\nH\u0087\b\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\nH\u0087\b\u001a\r\u0010\u0005\u001a\u00020\n*\u00020\nH\u0087\b\u001a\r\u0010\u0006\u001a\u00020\n*\u00020\nH\u0087\b\u001a\u0014\u0010\b\u001a\u00020\n*\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0001H\u0007\u001a\u0014\u0010\t\u001a\u00020\n*\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0001H\u0007¨\u0006\u000b"}, d2 = {"", "", "countOneBits", "countLeadingZeroBits", "countTrailingZeroBits", "takeHighestOneBit", "takeLowestOneBit", "bitCount", "rotateLeft", "rotateRight", "", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/NumbersKt")
/* loaded from: classes5.dex */
class NumbersKt__NumbersKt extends NumbersKt__NumbersJVMKt {
    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final int countLeadingZeroBits(byte b4) {
        return Integer.numberOfLeadingZeros(b4 & 255) - 24;
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final int countOneBits(byte b4) {
        return Integer.bitCount(b4 & 255);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final int countTrailingZeroBits(byte b4) {
        return Integer.numberOfTrailingZeros(b4 | 256);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    public static final byte rotateLeft(byte b4, int i2) {
        int i4 = i2 & 7;
        return (byte) (((b4 & 255) >>> (8 - i4)) | (b4 << i4));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    public static final short rotateLeft(short s3, int i2) {
        int i4 = i2 & 15;
        return (short) (((s3 & 65535) >>> (16 - i4)) | (s3 << i4));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    public static final byte rotateRight(byte b4, int i2) {
        int i4 = i2 & 7;
        return (byte) (((b4 & 255) >>> i4) | (b4 << (8 - i4)));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    public static final short rotateRight(short s3, int i2) {
        int i4 = i2 & 15;
        return (short) (((s3 & 65535) >>> i4) | (s3 << (16 - i4)));
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final byte takeHighestOneBit(byte b4) {
        return (byte) Integer.highestOneBit(b4 & 255);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final byte takeLowestOneBit(byte b4) {
        return (byte) Integer.lowestOneBit(b4);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final int countLeadingZeroBits(short s3) {
        return Integer.numberOfLeadingZeros(s3 & UShort.MAX_VALUE) - 16;
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final int countOneBits(short s3) {
        return Integer.bitCount(s3 & UShort.MAX_VALUE);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final int countTrailingZeroBits(short s3) {
        return Integer.numberOfTrailingZeros(s3 | 65536);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final short takeHighestOneBit(short s3) {
        return (short) Integer.highestOneBit(s3 & UShort.MAX_VALUE);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final short takeLowestOneBit(short s3) {
        return (short) Integer.lowestOneBit(s3);
    }
}
