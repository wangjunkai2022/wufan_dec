package kotlin.random;

import com.join.mgps.activity.MyAccountLoginActivity_;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UnsignedKt;
import kotlin.WasExperimental;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.UIntRange;
import kotlin.ranges.ULongRange;
import org.jetbrains.annotations.NotNull;
/* compiled from: URandom.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0007\u001a\u0016\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u001e\u0010\u0002\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a&\u0010\u0002\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001a\u001e\u0010\u0002\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nH\u0007ø\u0001\u0000¢\u0006\u0004\b\u0002\u0010\f\u001a\u0016\u0010\u000e\u001a\u00020\r*\u00020\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u001e\u0010\u000e\u001a\u00020\r*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\rH\u0007ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001a&\u0010\u000e\u001a\u00020\r*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\rH\u0007ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u001e\u0010\u000e\u001a\u00020\r*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0014H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u0015\u001a\u001e\u0010\u001a\u001a\u00020\u0016*\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0016H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u001a\u001e\u0010\u001a\u001a\u00020\u0016*\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001bH\u0007ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001d\u001a2\u0010\u001a\u001a\u00020\u0016*\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u00162\b\b\u0002\u0010\u001e\u001a\u00020\u001b2\b\b\u0002\u0010\u001f\u001a\u00020\u001bH\u0007ø\u0001\u0000¢\u0006\u0004\b \u0010!\u001a\"\u0010%\u001a\u00020\"2\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0000ø\u0001\u0000¢\u0006\u0004\b#\u0010$\u001a\"\u0010(\u001a\u00020\"2\u0006\u0010\u0007\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\rH\u0000ø\u0001\u0000¢\u0006\u0004\b&\u0010'\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006)"}, d2 = {"Lkotlin/random/Random;", "Lkotlin/UInt;", "nextUInt", "(Lkotlin/random/Random;)I", "until", "nextUInt-qCasIEU", "(Lkotlin/random/Random;I)I", "from", "nextUInt-a8DCA5k", "(Lkotlin/random/Random;II)I", "Lkotlin/ranges/UIntRange;", "range", "(Lkotlin/random/Random;Lkotlin/ranges/UIntRange;)I", "Lkotlin/ULong;", "nextULong", "(Lkotlin/random/Random;)J", "nextULong-V1Xi4fY", "(Lkotlin/random/Random;J)J", "nextULong-jmpaW-c", "(Lkotlin/random/Random;JJ)J", "Lkotlin/ranges/ULongRange;", "(Lkotlin/random/Random;Lkotlin/ranges/ULongRange;)J", "Lkotlin/UByteArray;", "array", "nextUBytes-EVgfTAA", "(Lkotlin/random/Random;[B)[B", "nextUBytes", "", "size", "(Lkotlin/random/Random;I)[B", MyAccountLoginActivity_.J, "toIndex", "nextUBytes-Wvrt4B4", "(Lkotlin/random/Random;[BII)[B", "", "checkUIntRangeBounds-J1ME1BU", "(II)V", "checkUIntRangeBounds", "checkULongRangeBounds-eb3DHEI", "(JJ)V", "checkULongRangeBounds", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class URandomKt {
    /* renamed from: checkUIntRangeBounds-J1ME1BU  reason: not valid java name */
    public static final void m1232checkUIntRangeBoundsJ1ME1BU(int i2, int i4) {
        if (!(UnsignedKt.uintCompare(i4, i2) > 0)) {
            throw new IllegalArgumentException(RandomKt.boundsErrorMessage(UInt.m112boximpl(i2), UInt.m112boximpl(i4)).toString());
        }
    }

    /* renamed from: checkULongRangeBounds-eb3DHEI  reason: not valid java name */
    public static final void m1233checkULongRangeBoundseb3DHEI(long j4, long j5) {
        if (!(UnsignedKt.ulongCompare(j5, j4) > 0)) {
            throw new IllegalArgumentException(RandomKt.boundsErrorMessage(ULong.m190boximpl(j4), ULong.m190boximpl(j5)).toString());
        }
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    public static final byte[] nextUBytes(@NotNull Random nextUBytes, int i2) {
        Intrinsics.checkNotNullParameter(nextUBytes, "$this$nextUBytes");
        return UByteArray.m94constructorimpl(nextUBytes.nextBytes(i2));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: nextUBytes-EVgfTAA  reason: not valid java name */
    public static final byte[] m1234nextUBytesEVgfTAA(@NotNull Random nextUBytes, @NotNull byte[] array) {
        Intrinsics.checkNotNullParameter(nextUBytes, "$this$nextUBytes");
        Intrinsics.checkNotNullParameter(array, "array");
        nextUBytes.nextBytes(array);
        return array;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: nextUBytes-Wvrt4B4  reason: not valid java name */
    public static final byte[] m1235nextUBytesWvrt4B4(@NotNull Random nextUBytes, @NotNull byte[] array, int i2, int i4) {
        Intrinsics.checkNotNullParameter(nextUBytes, "$this$nextUBytes");
        Intrinsics.checkNotNullParameter(array, "array");
        nextUBytes.nextBytes(array, i2, i4);
        return array;
    }

    /* renamed from: nextUBytes-Wvrt4B4$default  reason: not valid java name */
    public static /* synthetic */ byte[] m1236nextUBytesWvrt4B4$default(Random random, byte[] bArr, int i2, int i4, int i5, Object obj) {
        if ((i5 & 2) != 0) {
            i2 = 0;
        }
        if ((i5 & 4) != 0) {
            i4 = UByteArray.m100getSizeimpl(bArr);
        }
        return m1235nextUBytesWvrt4B4(random, bArr, i2, i4);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final int nextUInt(@NotNull Random nextUInt) {
        Intrinsics.checkNotNullParameter(nextUInt, "$this$nextUInt");
        return UInt.m118constructorimpl(nextUInt.nextInt());
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: nextUInt-a8DCA5k  reason: not valid java name */
    public static final int m1237nextUInta8DCA5k(@NotNull Random nextUInt, int i2, int i4) {
        Intrinsics.checkNotNullParameter(nextUInt, "$this$nextUInt");
        m1232checkUIntRangeBoundsJ1ME1BU(i2, i4);
        return UInt.m118constructorimpl(nextUInt.nextInt(i2 ^ Integer.MIN_VALUE, i4 ^ Integer.MIN_VALUE) ^ Integer.MIN_VALUE);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: nextUInt-qCasIEU  reason: not valid java name */
    public static final int m1238nextUIntqCasIEU(@NotNull Random nextUInt, int i2) {
        Intrinsics.checkNotNullParameter(nextUInt, "$this$nextUInt");
        return m1237nextUInta8DCA5k(nextUInt, 0, i2);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final long nextULong(@NotNull Random nextULong) {
        Intrinsics.checkNotNullParameter(nextULong, "$this$nextULong");
        return ULong.m196constructorimpl(nextULong.nextLong());
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: nextULong-V1Xi4fY  reason: not valid java name */
    public static final long m1239nextULongV1Xi4fY(@NotNull Random nextULong, long j4) {
        Intrinsics.checkNotNullParameter(nextULong, "$this$nextULong");
        return m1240nextULongjmpaWc(nextULong, 0L, j4);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: nextULong-jmpaW-c  reason: not valid java name */
    public static final long m1240nextULongjmpaWc(@NotNull Random nextULong, long j4, long j5) {
        Intrinsics.checkNotNullParameter(nextULong, "$this$nextULong");
        m1233checkULongRangeBoundseb3DHEI(j4, j5);
        return ULong.m196constructorimpl(nextULong.nextLong(j4 ^ Long.MIN_VALUE, j5 ^ Long.MIN_VALUE) ^ Long.MIN_VALUE);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final int nextUInt(@NotNull Random nextUInt, @NotNull UIntRange range) {
        Intrinsics.checkNotNullParameter(nextUInt, "$this$nextUInt");
        Intrinsics.checkNotNullParameter(range, "range");
        if (!range.isEmpty()) {
            return UnsignedKt.uintCompare(range.m1242getLastpVg5ArA(), -1) < 0 ? m1237nextUInta8DCA5k(nextUInt, range.m1241getFirstpVg5ArA(), UInt.m118constructorimpl(range.m1242getLastpVg5ArA() + 1)) : UnsignedKt.uintCompare(range.m1241getFirstpVg5ArA(), 0) > 0 ? UInt.m118constructorimpl(m1237nextUInta8DCA5k(nextUInt, UInt.m118constructorimpl(range.m1241getFirstpVg5ArA() - 1), range.m1242getLastpVg5ArA()) + 1) : nextUInt(nextUInt);
        }
        throw new IllegalArgumentException("Cannot get random in empty range: " + range);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final long nextULong(@NotNull Random nextULong, @NotNull ULongRange range) {
        Intrinsics.checkNotNullParameter(nextULong, "$this$nextULong");
        Intrinsics.checkNotNullParameter(range, "range");
        if (!range.isEmpty()) {
            if (UnsignedKt.ulongCompare(range.m1248getLastsVKNKU(), -1L) < 0) {
                return m1240nextULongjmpaWc(nextULong, range.m1247getFirstsVKNKU(), ULong.m196constructorimpl(range.m1248getLastsVKNKU() + ULong.m196constructorimpl(4294967295L & 1)));
            }
            if (UnsignedKt.ulongCompare(range.m1247getFirstsVKNKU(), 0L) > 0) {
                long j4 = 4294967295L & 1;
                return ULong.m196constructorimpl(m1240nextULongjmpaWc(nextULong, ULong.m196constructorimpl(range.m1247getFirstsVKNKU() - ULong.m196constructorimpl(j4)), range.m1248getLastsVKNKU()) + ULong.m196constructorimpl(j4));
            }
            return nextULong(nextULong);
        }
        throw new IllegalArgumentException("Cannot get random in empty range: " + range);
    }
}
