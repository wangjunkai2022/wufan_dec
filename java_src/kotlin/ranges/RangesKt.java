package kotlin.ranges;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"kotlin/ranges/RangesKt__RangesKt", "kotlin/ranges/RangesKt___RangesKt"}, d2 = {}, k = 4, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class RangesKt extends RangesKt___RangesKt {
    private RangesKt() {
    }

    public static /* bridge */ /* synthetic */ int coerceAtLeast(int i2, int i4) {
        return RangesKt___RangesKt.coerceAtLeast(i2, i4);
    }

    public static /* bridge */ /* synthetic */ int coerceAtMost(int i2, int i4) {
        return RangesKt___RangesKt.coerceAtMost(i2, i4);
    }

    public static /* bridge */ /* synthetic */ long coerceIn(long j4, long j5, long j6) {
        return RangesKt___RangesKt.coerceIn(j4, j5, j6);
    }

    public static /* bridge */ /* synthetic */ long coerceIn(long j4, @NotNull ClosedRange<Long> closedRange) {
        return RangesKt___RangesKt.coerceIn(j4, closedRange);
    }
}
