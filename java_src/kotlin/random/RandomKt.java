package kotlin.random;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.LongRange;
import org.jetbrains.annotations.NotNull;
/* compiled from: Random.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0007\u001a\u0010\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0004H\u0007\u001a\u0014\u0010\u0007\u001a\u00020\u0000*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0007\u001a\u0014\u0010\t\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\bH\u0007\u001a\u0010\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0000\u001a\u0014\u0010\r\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\f\u001a\u00020\u0000H\u0000\u001a\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0000H\u0000\u001a\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004H\u0000\u001a\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u0012H\u0000\u001a\u0018\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u0013H\u0000¨\u0006\u0016"}, d2 = {"", "seed", "Lkotlin/random/Random;", "Random", "", "Lkotlin/ranges/IntRange;", "range", "nextInt", "Lkotlin/ranges/LongRange;", "nextLong", "value", "fastLog2", "bitCount", "takeUpperBits", "from", "until", "", "checkRangeBounds", "", "", "", "boundsErrorMessage", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class RandomKt {
    @SinceKotlin(version = "1.3")
    @NotNull
    public static final Random Random(int i2) {
        return new XorWowRandom(i2, i2 >> 31);
    }

    @NotNull
    public static final String boundsErrorMessage(@NotNull Object from, @NotNull Object until) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(until, "until");
        return "Random range is empty: [" + from + ", " + until + ").";
    }

    public static final void checkRangeBounds(int i2, int i4) {
        if (!(i4 > i2)) {
            throw new IllegalArgumentException(boundsErrorMessage(Integer.valueOf(i2), Integer.valueOf(i4)).toString());
        }
    }

    public static final int fastLog2(int i2) {
        return 31 - Integer.numberOfLeadingZeros(i2);
    }

    @SinceKotlin(version = "1.3")
    public static final int nextInt(@NotNull Random nextInt, @NotNull IntRange range) {
        Intrinsics.checkNotNullParameter(nextInt, "$this$nextInt");
        Intrinsics.checkNotNullParameter(range, "range");
        if (!range.isEmpty()) {
            return range.getLast() < Integer.MAX_VALUE ? nextInt.nextInt(range.getFirst(), range.getLast() + 1) : range.getFirst() > Integer.MIN_VALUE ? nextInt.nextInt(range.getFirst() - 1, range.getLast()) + 1 : nextInt.nextInt();
        }
        throw new IllegalArgumentException("Cannot get random in empty range: " + range);
    }

    @SinceKotlin(version = "1.3")
    public static final long nextLong(@NotNull Random nextLong, @NotNull LongRange range) {
        Intrinsics.checkNotNullParameter(nextLong, "$this$nextLong");
        Intrinsics.checkNotNullParameter(range, "range");
        if (!range.isEmpty()) {
            return range.getLast() < Long.MAX_VALUE ? nextLong.nextLong(range.getFirst(), range.getLast() + 1) : range.getFirst() > Long.MIN_VALUE ? nextLong.nextLong(range.getFirst() - 1, range.getLast()) + 1 : nextLong.nextLong();
        }
        throw new IllegalArgumentException("Cannot get random in empty range: " + range);
    }

    public static final int takeUpperBits(int i2, int i4) {
        return (i2 >>> (32 - i4)) & ((-i4) >> 31);
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static final Random Random(long j4) {
        return new XorWowRandom((int) j4, (int) (j4 >> 32));
    }

    public static final void checkRangeBounds(long j4, long j5) {
        if (!(j5 > j4)) {
            throw new IllegalArgumentException(boundsErrorMessage(Long.valueOf(j4), Long.valueOf(j5)).toString());
        }
    }

    public static final void checkRangeBounds(double d4, double d5) {
        if (!(d5 > d4)) {
            throw new IllegalArgumentException(boundsErrorMessage(Double.valueOf(d4), Double.valueOf(d5)).toString());
        }
    }
}
