package kotlin;

import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.DoubleCompanionObject;
import kotlin.jvm.internal.FloatCompanionObject;
/* compiled from: NumbersJVM.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0010\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\t\u001a\r\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\u0002\u001a\u00020\u0001*\u00020\u0003H\u0087\b\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0003H\u0087\b\u001a\r\u0010\u0005\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\u0005\u001a\u00020\u0001*\u00020\u0003H\u0087\b\u001a\r\u0010\u0007\u001a\u00020\u0006*\u00020\u0000H\u0087\b\u001a\r\u0010\b\u001a\u00020\u0006*\u00020\u0000H\u0087\b\u001a\u0015\u0010\u000b\u001a\u00020\u0000*\u00020\t2\u0006\u0010\n\u001a\u00020\u0006H\u0087\b\u001a\r\u0010\u0007\u001a\u00020\f*\u00020\u0003H\u0087\b\u001a\r\u0010\b\u001a\u00020\f*\u00020\u0003H\u0087\b\u001a\u0015\u0010\u000b\u001a\u00020\u0003*\u00020\r2\u0006\u0010\n\u001a\u00020\fH\u0087\b\u001a\r\u0010\u000e\u001a\u00020\f*\u00020\fH\u0087\b\u001a\r\u0010\u000f\u001a\u00020\f*\u00020\fH\u0087\b\u001a\r\u0010\u0010\u001a\u00020\f*\u00020\fH\u0087\b\u001a\r\u0010\u0011\u001a\u00020\f*\u00020\fH\u0087\b\u001a\r\u0010\u0012\u001a\u00020\f*\u00020\fH\u0087\b\u001a\u0015\u0010\u0014\u001a\u00020\f*\u00020\f2\u0006\u0010\u0013\u001a\u00020\fH\u0087\b\u001a\u0015\u0010\u0015\u001a\u00020\f*\u00020\f2\u0006\u0010\u0013\u001a\u00020\fH\u0087\b\u001a\r\u0010\u000e\u001a\u00020\f*\u00020\u0006H\u0087\b\u001a\r\u0010\u000f\u001a\u00020\f*\u00020\u0006H\u0087\b\u001a\r\u0010\u0010\u001a\u00020\f*\u00020\u0006H\u0087\b\u001a\r\u0010\u0011\u001a\u00020\u0006*\u00020\u0006H\u0087\b\u001a\r\u0010\u0012\u001a\u00020\u0006*\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0014\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0013\u001a\u00020\fH\u0087\b\u001a\u0015\u0010\u0015\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0013\u001a\u00020\fH\u0087\b¨\u0006\u0016"}, d2 = {"", "", "isNaN", "", "isInfinite", "isFinite", "", "toBits", "toRawBits", "Lkotlin/Double$Companion;", "bits", "fromBits", "", "Lkotlin/Float$Companion;", "countOneBits", "countLeadingZeroBits", "countTrailingZeroBits", "takeHighestOneBit", "takeLowestOneBit", "bitCount", "rotateLeft", "rotateRight", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/NumbersKt")
/* loaded from: classes5.dex */
class NumbersKt__NumbersJVMKt extends NumbersKt__FloorDivModKt {
    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final int countLeadingZeroBits(int i2) {
        return Integer.numberOfLeadingZeros(i2);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final int countOneBits(int i2) {
        return Integer.bitCount(i2);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final int countTrailingZeroBits(int i2) {
        return Integer.numberOfTrailingZeros(i2);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double fromBits(DoubleCompanionObject doubleCompanionObject, long j4) {
        return Double.longBitsToDouble(j4);
    }

    @InlineOnly
    private static final boolean isFinite(double d4) {
        return (Double.isInfinite(d4) || Double.isNaN(d4)) ? false : true;
    }

    @InlineOnly
    private static final boolean isInfinite(double d4) {
        return Double.isInfinite(d4);
    }

    @InlineOnly
    private static final boolean isNaN(double d4) {
        return Double.isNaN(d4);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @InlineOnly
    private static final int rotateLeft(int i2, int i4) {
        return Integer.rotateLeft(i2, i4);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @InlineOnly
    private static final int rotateRight(int i2, int i4) {
        return Integer.rotateRight(i2, i4);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final int takeHighestOneBit(int i2) {
        return Integer.highestOneBit(i2);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final int takeLowestOneBit(int i2) {
        return Integer.lowestOneBit(i2);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final long toBits(double d4) {
        return Double.doubleToLongBits(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final long toRawBits(double d4) {
        return Double.doubleToRawLongBits(d4);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final int countLeadingZeroBits(long j4) {
        return Long.numberOfLeadingZeros(j4);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final int countOneBits(long j4) {
        return Long.bitCount(j4);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final int countTrailingZeroBits(long j4) {
        return Long.numberOfTrailingZeros(j4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float fromBits(FloatCompanionObject floatCompanionObject, int i2) {
        return Float.intBitsToFloat(i2);
    }

    @InlineOnly
    private static final boolean isFinite(float f4) {
        return (Float.isInfinite(f4) || Float.isNaN(f4)) ? false : true;
    }

    @InlineOnly
    private static final boolean isInfinite(float f4) {
        return Float.isInfinite(f4);
    }

    @InlineOnly
    private static final boolean isNaN(float f4) {
        return Float.isNaN(f4);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @InlineOnly
    private static final long rotateLeft(long j4, int i2) {
        return Long.rotateLeft(j4, i2);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalStdlibApi
    @InlineOnly
    private static final long rotateRight(long j4, int i2) {
        return Long.rotateRight(j4, i2);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final long takeHighestOneBit(long j4) {
        return Long.highestOneBit(j4);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final long takeLowestOneBit(long j4) {
        return Long.lowestOneBit(j4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final int toBits(float f4) {
        return Float.floatToIntBits(f4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final int toRawBits(float f4) {
        return Float.floatToRawIntBits(f4);
    }
}
