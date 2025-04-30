package kotlin.ranges;

import external.org.apache.commons.lang3.d;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Ranges.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0010\u000f\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010\u0000\n\u0002\u0010\u001c\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0004\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a2\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u0000*\u00028\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001b\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0007*\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0006H\u0087\u0002\u001a\u001b\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\b0\u0007*\u00020\b2\u0006\u0010\u0002\u001a\u00020\bH\u0087\u0002\u001aB\u0010\u000e\u001a\u00020\r\"\b\b\u0000\u0010\u0001*\u00020\t\"\u0018\b\u0001\u0010\u000b*\b\u0012\u0004\u0012\u00028\u00000\n*\b\u0012\u0004\u0012\u00028\u00000\u0003*\u00028\u00012\b\u0010\f\u001a\u0004\u0018\u00018\u0000H\u0087\n¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u0018\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0011H\u0000¨\u0006\u0015"}, d2 = {"", "T", "that", "Lkotlin/ranges/ClosedRange;", "rangeTo", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lkotlin/ranges/ClosedRange;", "", "Lkotlin/ranges/ClosedFloatingPointRange;", "", "", "", "R", "element", "", "contains", "(Ljava/lang/Iterable;Ljava/lang/Object;)Z", "isPositive", "", "step", "", "checkStepIsPositive", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/ranges/RangesKt")
/* loaded from: classes.dex */
public class RangesKt__RangesKt {
    public static final void checkStepIsPositive(boolean z3, @NotNull Number step) {
        Intrinsics.checkNotNullParameter(step, "step");
        if (z3) {
            return;
        }
        throw new IllegalArgumentException("Step must be positive, was: " + step + d.f65364a);
    }

    /* JADX WARN: Incorrect types in method signature: <T:Ljava/lang/Object;R::Ljava/lang/Iterable<+TT;>;:Lkotlin/ranges/ClosedRange<TT;>;>(TR;TT;)Z */
    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final boolean contains(Iterable contains, Object obj) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return obj != null && ((ClosedRange) contains).contains((Comparable) obj);
    }

    @NotNull
    public static final <T extends Comparable<? super T>> ClosedRange<T> rangeTo(@NotNull T rangeTo, @NotNull T that) {
        Intrinsics.checkNotNullParameter(rangeTo, "$this$rangeTo");
        Intrinsics.checkNotNullParameter(that, "that");
        return new ComparableRange(rangeTo, that);
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final ClosedFloatingPointRange<Double> rangeTo(double d4, double d5) {
        return new ClosedDoubleRange(d4, d5);
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final ClosedFloatingPointRange<Float> rangeTo(float f4, float f5) {
        return new ClosedFloatRange(f4, f5);
    }
}
