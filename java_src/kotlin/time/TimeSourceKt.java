package kotlin.time;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TimeSource.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u001a\u001f\u0010\u0003\u001a\u00020\u0002*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u0015\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0087\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007"}, d2 = {"Lkotlin/time/TimeMark;", "other", "Lkotlin/time/Duration;", "minus", "(Lkotlin/time/TimeMark;Lkotlin/time/TimeMark;)J", "", "compareTo", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class TimeSourceKt {
    @SinceKotlin(version = "1.3")
    @InlineOnly
    @Deprecated(level = DeprecationLevel.ERROR, message = "Comparing one TimeMark to another is not a well defined operation because these time marks could have been obtained from the different time sources.")
    @ExperimentalTime
    private static final int compareTo(TimeMark compareTo, TimeMark timeMark) {
        Intrinsics.checkNotNullParameter(compareTo, "$this$compareTo");
        throw new Error("Operation is disallowed.");
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    @Deprecated(level = DeprecationLevel.ERROR, message = "Subtracting one TimeMark from another is not a well defined operation because these time marks could have been obtained from the different time sources.")
    @ExperimentalTime
    private static final long minus(TimeMark minus, TimeMark timeMark) {
        Intrinsics.checkNotNullParameter(minus, "$this$minus");
        throw new Error("Operation is disallowed.");
    }
}
