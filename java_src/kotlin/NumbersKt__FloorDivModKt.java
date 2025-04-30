package kotlin;

import kotlin.internal.InlineOnly;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FloorDivMod.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\u0010\t\n\u0002\u0010\u0007\n\u0002\u0010\u0006\n\u0000\u001a\u0015\u0010\u0003\u001a\u00020\u0002*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0015\u0010\u0003\u001a\u00020\u0002*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0003\u001a\u00020\u0002*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0002*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0003\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0003\u001a\u00020\u0002*\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0000*\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0015\u0010\u0003\u001a\u00020\u0002*\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0003\u001a\u00020\u0002*\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0002*\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0003\u001a\u00020\u0006*\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0006*\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0003\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0000*\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0015\u0010\u0003\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0003\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0003\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0003\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0000*\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\b\u001a\u0015\u0010\u0003\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u0005H\u0087\b\u001a\u0015\u0010\u0003\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0002*\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u0002H\u0087\b\u001a\u0015\u0010\u0003\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\u0001\u001a\u00020\u0007H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\b*\u00020\u00072\u0006\u0010\u0001\u001a\u00020\bH\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\b*\u00020\b2\u0006\u0010\u0001\u001a\u00020\u0007H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\b*\u00020\b2\u0006\u0010\u0001\u001a\u00020\bH\u0087\b¨\u0006\t"}, d2 = {"", "other", "", "floorDiv", "mod", "", "", "", "", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/NumbersKt")
/* loaded from: classes5.dex */
public class NumbersKt__FloorDivModKt extends NumbersKt__BigIntegersKt {
    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int floorDiv(byte b4, byte b5) {
        int i2 = b4 / b5;
        return ((b4 ^ b5) >= 0 || b5 * i2 == b4) ? i2 : i2 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final byte mod(byte b4, byte b5) {
        int i2 = b4 % b5;
        return (byte) (i2 + (b5 & (((i2 ^ b5) & ((-i2) | i2)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int floorDiv(byte b4, short s3) {
        int i2 = b4 / s3;
        return ((b4 ^ s3) >= 0 || s3 * i2 == b4) ? i2 : i2 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final short mod(byte b4, short s3) {
        int i2 = b4 % s3;
        return (short) (i2 + (s3 & (((i2 ^ s3) & ((-i2) | i2)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int floorDiv(byte b4, int i2) {
        int i4 = b4 / i2;
        return ((b4 ^ i2) >= 0 || i2 * i4 == b4) ? i4 : i4 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int mod(byte b4, int i2) {
        int i4 = b4 % i2;
        return i4 + (i2 & (((i4 ^ i2) & ((-i4) | i4)) >> 31));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long floorDiv(byte b4, long j4) {
        long j5 = b4;
        long j6 = j5 / j4;
        return ((j5 ^ j4) >= 0 || j4 * j6 == j5) ? j6 : j6 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long mod(byte b4, long j4) {
        long j5 = b4 % j4;
        return j5 + (j4 & (((j5 ^ j4) & ((-j5) | j5)) >> 63));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int floorDiv(short s3, byte b4) {
        int i2 = s3 / b4;
        return ((s3 ^ b4) >= 0 || b4 * i2 == s3) ? i2 : i2 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final byte mod(short s3, byte b4) {
        int i2 = s3 % b4;
        return (byte) (i2 + (b4 & (((i2 ^ b4) & ((-i2) | i2)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int floorDiv(short s3, short s4) {
        int i2 = s3 / s4;
        return ((s3 ^ s4) >= 0 || s4 * i2 == s3) ? i2 : i2 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final short mod(short s3, short s4) {
        int i2 = s3 % s4;
        return (short) (i2 + (s4 & (((i2 ^ s4) & ((-i2) | i2)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int floorDiv(short s3, int i2) {
        int i4 = s3 / i2;
        return ((s3 ^ i2) >= 0 || i2 * i4 == s3) ? i4 : i4 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int mod(short s3, int i2) {
        int i4 = s3 % i2;
        return i4 + (i2 & (((i4 ^ i2) & ((-i4) | i4)) >> 31));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long floorDiv(short s3, long j4) {
        long j5 = s3;
        long j6 = j5 / j4;
        return ((j5 ^ j4) >= 0 || j4 * j6 == j5) ? j6 : j6 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long mod(short s3, long j4) {
        long j5 = s3 % j4;
        return j5 + (j4 & (((j5 ^ j4) & ((-j5) | j5)) >> 63));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int floorDiv(int i2, byte b4) {
        int i4 = i2 / b4;
        return ((i2 ^ b4) >= 0 || b4 * i4 == i2) ? i4 : i4 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final byte mod(int i2, byte b4) {
        int i4 = i2 % b4;
        return (byte) (i4 + (b4 & (((i4 ^ b4) & ((-i4) | i4)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int floorDiv(int i2, short s3) {
        int i4 = i2 / s3;
        return ((i2 ^ s3) >= 0 || s3 * i4 == i2) ? i4 : i4 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final short mod(int i2, short s3) {
        int i4 = i2 % s3;
        return (short) (i4 + (s3 & (((i4 ^ s3) & ((-i4) | i4)) >> 31)));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int floorDiv(int i2, int i4) {
        int i5 = i2 / i4;
        return ((i2 ^ i4) >= 0 || i4 * i5 == i2) ? i5 : i5 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int mod(int i2, int i4) {
        int i5 = i2 % i4;
        return i5 + (i4 & (((i5 ^ i4) & ((-i5) | i5)) >> 31));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long floorDiv(int i2, long j4) {
        long j5 = i2;
        long j6 = j5 / j4;
        return ((j5 ^ j4) >= 0 || j4 * j6 == j5) ? j6 : j6 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long mod(int i2, long j4) {
        long j5 = i2 % j4;
        return j5 + (j4 & (((j5 ^ j4) & ((-j5) | j5)) >> 63));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long floorDiv(long j4, byte b4) {
        long j5 = b4;
        long j6 = j4 / j5;
        return ((j4 ^ j5) >= 0 || j5 * j6 == j4) ? j6 : j6 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final byte mod(long j4, byte b4) {
        long j5;
        long j6 = j4 % b4;
        return (byte) (j6 + (j5 & (((j6 ^ j5) & ((-j6) | j6)) >> 63)));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long floorDiv(long j4, short s3) {
        long j5 = s3;
        long j6 = j4 / j5;
        return ((j4 ^ j5) >= 0 || j5 * j6 == j4) ? j6 : j6 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final short mod(long j4, short s3) {
        long j5;
        long j6 = j4 % s3;
        return (short) (j6 + (j5 & (((j6 ^ j5) & ((-j6) | j6)) >> 63)));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long floorDiv(long j4, int i2) {
        long j5 = i2;
        long j6 = j4 / j5;
        return ((j4 ^ j5) >= 0 || j5 * j6 == j4) ? j6 : j6 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int mod(long j4, int i2) {
        long j5 = i2;
        long j6 = j4 % j5;
        return (int) (j6 + (j5 & (((j6 ^ j5) & ((-j6) | j6)) >> 63)));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long floorDiv(long j4, long j5) {
        long j6 = j4 / j5;
        return ((j4 ^ j5) >= 0 || j5 * j6 == j4) ? j6 : j6 - 1;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long mod(long j4, long j5) {
        long j6 = j4 % j5;
        return j6 + (j5 & (((j6 ^ j5) & ((-j6) | j6)) >> 63));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final float mod(float f4, float f5) {
        float f6 = f4 % f5;
        return (f6 == ((float) 0.0d) || Math.signum(f6) == Math.signum(f5)) ? f6 : f6 + f5;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final double mod(float f4, double d4) {
        double d5 = f4;
        Double.isNaN(d5);
        double d6 = d5 % d4;
        return (d6 == 0.0d || Math.signum(d6) == Math.signum(d4)) ? d6 : d6 + d4;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final double mod(double d4, float f4) {
        double d5 = f4;
        Double.isNaN(d5);
        double d6 = d4 % d5;
        if (d6 == 0.0d || Math.signum(d6) == Math.signum(d5)) {
            return d6;
        }
        Double.isNaN(d5);
        return d6 + d5;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final double mod(double d4, double d5) {
        double d6 = d4 % d5;
        return (d6 == 0.0d || Math.signum(d6) == Math.signum(d5)) ? d6 : d6 + d5;
    }
}
