package kotlin.time;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DurationUnitJvm.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a(\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u00032\n\u0010\u0005\u001a\u00060\u0002j\u0002`\u0003H\u0001\u001a(\u0010\b\u001a\u00020\u00072\u0006\u0010\u0001\u001a\u00020\u00072\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u00032\n\u0010\u0005\u001a\u00060\u0002j\u0002`\u0003H\u0001\u001a(\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0001\u001a\u00020\u00072\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u00032\n\u0010\u0005\u001a\u00060\u0002j\u0002`\u0003H\u0001*\u001e\b\u0007\u0010\r\"\u00020\u00022\u00020\u0002B\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000bB\u0002\b\f¨\u0006\u000e"}, d2 = {"", "value", "Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/DurationUnit;", "sourceUnit", "targetUnit", "convertDurationUnit", "", "convertDurationUnitOverflow", "Lkotlin/SinceKotlin;", "version", "1.3", "Lkotlin/time/ExperimentalTime;", "DurationUnit", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/time/DurationUnitKt")
/* loaded from: classes5.dex */
class DurationUnitKt__DurationUnitJvmKt {
    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static /* synthetic */ void DurationUnit$annotations() {
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static final double convertDurationUnit(double d4, @NotNull TimeUnit sourceUnit, @NotNull TimeUnit targetUnit) {
        Intrinsics.checkNotNullParameter(sourceUnit, "sourceUnit");
        Intrinsics.checkNotNullParameter(targetUnit, "targetUnit");
        long convert = targetUnit.convert(1L, sourceUnit);
        if (convert > 0) {
            double d5 = convert;
            Double.isNaN(d5);
            return d4 * d5;
        }
        double convert2 = sourceUnit.convert(1L, targetUnit);
        Double.isNaN(convert2);
        return d4 / convert2;
    }

    @SinceKotlin(version = "1.5")
    @ExperimentalTime
    public static final long convertDurationUnitOverflow(long j4, @NotNull TimeUnit sourceUnit, @NotNull TimeUnit targetUnit) {
        Intrinsics.checkNotNullParameter(sourceUnit, "sourceUnit");
        Intrinsics.checkNotNullParameter(targetUnit, "targetUnit");
        return targetUnit.convert(j4, sourceUnit);
    }

    @SinceKotlin(version = "1.5")
    @ExperimentalTime
    public static final long convertDurationUnit(long j4, @NotNull TimeUnit sourceUnit, @NotNull TimeUnit targetUnit) {
        Intrinsics.checkNotNullParameter(sourceUnit, "sourceUnit");
        Intrinsics.checkNotNullParameter(targetUnit, "targetUnit");
        return targetUnit.convert(j4, sourceUnit);
    }
}
