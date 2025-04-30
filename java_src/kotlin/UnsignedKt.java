package kotlin;

import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharJVMKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: UnsignedUtils.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u0018\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0001\u001a\u0018\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00042\u0006\u0010\u0002\u001a\u00020\u0004H\u0001\u001a\"\u0010\t\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0006H\u0001ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\b\u001a\"\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0006H\u0001ø\u0001\u0000¢\u0006\u0004\b\n\u0010\b\u001a\"\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0001\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\fH\u0001ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a\"\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0001\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\fH\u0001ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u000e\u001a\u001a\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012H\u0001ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u001a\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0001ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u001a\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0000H\u0001\u001a\u0010\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0004H\u0001\u001a\u0010\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0013\u001a\u00020\u0004H\u0000\u001a\u0018\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0000H\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001d"}, d2 = {"", "v1", "v2", "uintCompare", "", "ulongCompare", "Lkotlin/UInt;", "uintDivide-J1ME1BU", "(II)I", "uintDivide", "uintRemainder-J1ME1BU", "uintRemainder", "Lkotlin/ULong;", "ulongDivide-eb3DHEI", "(JJ)J", "ulongDivide", "ulongRemainder-eb3DHEI", "ulongRemainder", "", "v", "doubleToUInt", "(D)I", "doubleToULong", "(D)J", "uintToDouble", "ulongToDouble", "", "ulongToString", "base", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
@JvmName(name = "UnsignedKt")
/* loaded from: classes5.dex */
public final class UnsignedKt {
    @PublishedApi
    public static final int doubleToUInt(double d4) {
        if (!Double.isNaN(d4) && d4 > uintToDouble(0)) {
            if (d4 >= uintToDouble(-1)) {
                return -1;
            }
            double d5 = Integer.MAX_VALUE;
            if (d4 <= d5) {
                return UInt.m118constructorimpl((int) d4);
            }
            Double.isNaN(d5);
            return UInt.m118constructorimpl(UInt.m118constructorimpl((int) (d4 - d5)) + UInt.m118constructorimpl(Integer.MAX_VALUE));
        }
        return 0;
    }

    @PublishedApi
    public static final long doubleToULong(double d4) {
        if (!Double.isNaN(d4) && d4 > ulongToDouble(0L)) {
            if (d4 >= ulongToDouble(-1L)) {
                return -1L;
            }
            if (d4 < Long.MAX_VALUE) {
                return ULong.m196constructorimpl((long) d4);
            }
            return ULong.m196constructorimpl(ULong.m196constructorimpl((long) (d4 - 9.223372036854776E18d)) - Long.MIN_VALUE);
        }
        return 0L;
    }

    @PublishedApi
    public static final int uintCompare(int i2, int i4) {
        return Intrinsics.compare(i2 ^ Integer.MIN_VALUE, i4 ^ Integer.MIN_VALUE);
    }

    @PublishedApi
    /* renamed from: uintDivide-J1ME1BU  reason: not valid java name */
    public static final int m371uintDivideJ1ME1BU(int i2, int i4) {
        return UInt.m118constructorimpl((int) ((i2 & 4294967295L) / (i4 & 4294967295L)));
    }

    @PublishedApi
    /* renamed from: uintRemainder-J1ME1BU  reason: not valid java name */
    public static final int m372uintRemainderJ1ME1BU(int i2, int i4) {
        return UInt.m118constructorimpl((int) ((i2 & 4294967295L) % (i4 & 4294967295L)));
    }

    @PublishedApi
    public static final double uintToDouble(int i2) {
        double d4 = Integer.MAX_VALUE & i2;
        double d5 = (i2 >>> 31) << 30;
        double d6 = 2;
        Double.isNaN(d5);
        Double.isNaN(d6);
        Double.isNaN(d4);
        return d4 + (d5 * d6);
    }

    @PublishedApi
    public static final int ulongCompare(long j4, long j5) {
        return ((j4 ^ Long.MIN_VALUE) > (j5 ^ Long.MIN_VALUE) ? 1 : ((j4 ^ Long.MIN_VALUE) == (j5 ^ Long.MIN_VALUE) ? 0 : -1));
    }

    @PublishedApi
    /* renamed from: ulongDivide-eb3DHEI  reason: not valid java name */
    public static final long m373ulongDivideeb3DHEI(long j4, long j5) {
        if (j5 < 0) {
            return ulongCompare(j4, j5) < 0 ? ULong.m196constructorimpl(0L) : ULong.m196constructorimpl(1L);
        } else if (j4 >= 0) {
            return ULong.m196constructorimpl(j4 / j5);
        } else {
            long j6 = ((j4 >>> 1) / j5) << 1;
            return ULong.m196constructorimpl(j6 + (ulongCompare(ULong.m196constructorimpl(j4 - (j6 * j5)), ULong.m196constructorimpl(j5)) < 0 ? 0 : 1));
        }
    }

    @PublishedApi
    /* renamed from: ulongRemainder-eb3DHEI  reason: not valid java name */
    public static final long m374ulongRemaindereb3DHEI(long j4, long j5) {
        if (j5 < 0) {
            return ulongCompare(j4, j5) < 0 ? j4 : ULong.m196constructorimpl(j4 - j5);
        } else if (j4 >= 0) {
            return ULong.m196constructorimpl(j4 % j5);
        } else {
            long j6 = j4 - ((((j4 >>> 1) / j5) << 1) * j5);
            if (ulongCompare(ULong.m196constructorimpl(j6), ULong.m196constructorimpl(j5)) < 0) {
                j5 = 0;
            }
            return ULong.m196constructorimpl(j6 - j5);
        }
    }

    @PublishedApi
    public static final double ulongToDouble(long j4) {
        double d4 = j4 >>> 11;
        double d5 = 2048;
        Double.isNaN(d4);
        Double.isNaN(d5);
        double d6 = j4 & 2047;
        Double.isNaN(d6);
        return (d4 * d5) + d6;
    }

    @NotNull
    public static final String ulongToString(long j4) {
        return ulongToString(j4, 10);
    }

    @NotNull
    public static final String ulongToString(long j4, int i2) {
        int checkRadix;
        int checkRadix2;
        int checkRadix3;
        if (j4 >= 0) {
            checkRadix3 = CharsKt__CharJVMKt.checkRadix(i2);
            String l4 = Long.toString(j4, checkRadix3);
            Intrinsics.checkNotNullExpressionValue(l4, "java.lang.Long.toString(this, checkRadix(radix))");
            return l4;
        }
        long j5 = i2;
        long j6 = ((j4 >>> 1) / j5) << 1;
        long j7 = j4 - (j6 * j5);
        if (j7 >= j5) {
            j7 -= j5;
            j6++;
        }
        StringBuilder sb = new StringBuilder();
        checkRadix = CharsKt__CharJVMKt.checkRadix(i2);
        String l5 = Long.toString(j6, checkRadix);
        Intrinsics.checkNotNullExpressionValue(l5, "java.lang.Long.toString(this, checkRadix(radix))");
        sb.append(l5);
        checkRadix2 = CharsKt__CharJVMKt.checkRadix(i2);
        String l6 = Long.toString(j7, checkRadix2);
        Intrinsics.checkNotNullExpressionValue(l6, "java.lang.Long.toString(this, checkRadix(radix))");
        sb.append(l6);
        return sb.toString();
    }
}
