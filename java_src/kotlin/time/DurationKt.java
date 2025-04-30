package kotlin.time;

import java.util.concurrent.TimeUnit;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Duration.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0002\b7\u001a\"\u0010\u0005\u001a\u00020\u0004*\u00020\u00002\n\u0010\u0003\u001a\u00060\u0001j\u0002`\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\"\u0010\u0005\u001a\u00020\u0004*\u00020\u00072\n\u0010\u0003\u001a\u00060\u0001j\u0002`\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\b\u001a\"\u0010\u0005\u001a\u00020\u0004*\u00020\t2\n\u0010\u0003\u001a\u00060\u0001j\u0002`\u0002H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\n\u001a\u001f\u0010\u000e\u001a\u00020\u0004*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0004H\u0087\nø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u001a\u001f\u0010\u000e\u001a\u00020\u0004*\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0004H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u0010\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0007H\u0002\u001a\u0010\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0002\u001a\u001a\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0007H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u001a\u001a\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0007H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u0017\u001a\"\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0000H\u0003ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001d\u001a\u001a\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0007H\u0003ø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u0017\u001a\u001a\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0007H\u0003ø\u0001\u0000¢\u0006\u0004\b\u001f\u0010\u0017\"#\u0010$\u001a\u00020\u0004*\u00020\t8F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\"\u0010#\u001a\u0004\b \u0010!\"#\u0010)\u001a\u00020\u0004*\u00020\u00008F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b'\u0010(\u001a\u0004\b%\u0010&\"#\u0010,\u001a\u00020\u0004*\u00020\t8F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b+\u0010#\u001a\u0004\b*\u0010!\"#\u0010/\u001a\u00020\u0004*\u00020\u00008F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b.\u0010(\u001a\u0004\b-\u0010&\"#\u00102\u001a\u00020\u0004*\u00020\t8F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b1\u0010#\u001a\u0004\b0\u0010!\"#\u00105\u001a\u00020\u0004*\u00020\u00008F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b4\u0010(\u001a\u0004\b3\u0010&\"#\u00105\u001a\u00020\u0004*\u00020\t8F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b4\u0010#\u001a\u0004\b3\u0010!\"#\u0010,\u001a\u00020\u0004*\u00020\u00078F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b+\u00106\u001a\u0004\b*\u0010\u0017\"#\u0010)\u001a\u00020\u0004*\u00020\u00078F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b'\u00106\u001a\u0004\b%\u0010\u0017\"#\u00109\u001a\u00020\u0004*\u00020\u00008F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b8\u0010(\u001a\u0004\b7\u0010&\"#\u0010)\u001a\u00020\u0004*\u00020\t8F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b'\u0010#\u001a\u0004\b%\u0010!\"#\u00109\u001a\u00020\u0004*\u00020\u00078F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b8\u00106\u001a\u0004\b7\u0010\u0017\"\u0016\u0010:\u001a\u00020\u00008\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b:\u0010;\"#\u00105\u001a\u00020\u0004*\u00020\u00078F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b4\u00106\u001a\u0004\b3\u0010\u0017\"\u0016\u0010<\u001a\u00020\u00078\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b<\u0010=\"#\u0010$\u001a\u00020\u0004*\u00020\u00078F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\"\u00106\u001a\u0004\b \u0010\u0017\"\u0016\u0010>\u001a\u00020\u00078\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b>\u0010=\"#\u0010$\u001a\u00020\u0004*\u00020\u00008F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\"\u0010(\u001a\u0004\b \u0010&\"#\u00102\u001a\u00020\u0004*\u00020\u00008F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b1\u0010(\u001a\u0004\b0\u0010&\"\u0016\u0010?\u001a\u00020\u00078\u0000@\u0000X\u0080T¢\u0006\u0006\n\u0004\b?\u0010=\"#\u00102\u001a\u00020\u0004*\u00020\u00078F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b1\u00106\u001a\u0004\b0\u0010\u0017\"#\u0010/\u001a\u00020\u0004*\u00020\u00078F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b.\u00106\u001a\u0004\b-\u0010\u0017\"#\u00109\u001a\u00020\u0004*\u00020\t8F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b8\u0010#\u001a\u0004\b7\u0010!\"#\u0010,\u001a\u00020\u0004*\u00020\u00008F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b+\u0010(\u001a\u0004\b*\u0010&\"#\u0010/\u001a\u00020\u0004*\u00020\t8F@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b.\u0010#\u001a\u0004\b-\u0010!\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006@"}, d2 = {"", "Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/DurationUnit;", "unit", "Lkotlin/time/Duration;", "toDuration", "(ILjava/util/concurrent/TimeUnit;)J", "", "(JLjava/util/concurrent/TimeUnit;)J", "", "(DLjava/util/concurrent/TimeUnit;)J", "duration", "times-mvk6XK0", "(IJ)J", "times", "times-kIfJnKk", "(DJ)J", "nanos", "nanosToMillis", "millis", "millisToNanos", "normalNanos", "durationOfNanos", "(J)J", "normalMillis", "durationOfMillis", "normalValue", "unitDiscriminator", "durationOf", "(JI)J", "durationOfNanosNormalized", "durationOfMillisNormalized", "getNanoseconds", "(D)J", "getNanoseconds$annotations", "(D)V", "nanoseconds", "getMilliseconds", "(I)J", "getMilliseconds$annotations", "(I)V", "milliseconds", "getMicroseconds", "getMicroseconds$annotations", "microseconds", "getSeconds", "getSeconds$annotations", "seconds", "getHours", "getHours$annotations", "hours", "getMinutes", "getMinutes$annotations", "minutes", "(J)V", "getDays", "getDays$annotations", "days", "NANOS_IN_MILLIS", "I", "MAX_MILLIS", "J", "MAX_NANOS_IN_MILLIS", "MAX_NANOS", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class DurationKt {
    public static final long MAX_MILLIS = 4611686018427387903L;
    public static final long MAX_NANOS = 4611686018426999999L;
    private static final long MAX_NANOS_IN_MILLIS = 4611686018426L;
    public static final int NANOS_IN_MILLIS = 1000000;

    public static final /* synthetic */ long access$durationOf(long j4, int i2) {
        return durationOf(j4, i2);
    }

    public static final /* synthetic */ long access$durationOfMillis(long j4) {
        return durationOfMillis(j4);
    }

    public static final /* synthetic */ long access$durationOfMillisNormalized(long j4) {
        return durationOfMillisNormalized(j4);
    }

    public static final /* synthetic */ long access$durationOfNanos(long j4) {
        return durationOfNanos(j4);
    }

    public static final /* synthetic */ long access$durationOfNanosNormalized(long j4) {
        return durationOfNanosNormalized(j4);
    }

    public static final /* synthetic */ long access$millisToNanos(long j4) {
        return millisToNanos(j4);
    }

    public static final /* synthetic */ long access$nanosToMillis(long j4) {
        return nanosToMillis(j4);
    }

    @ExperimentalTime
    public static final long durationOf(long j4, int i2) {
        return Duration.m1320constructorimpl((j4 << 1) + i2);
    }

    @ExperimentalTime
    public static final long durationOfMillis(long j4) {
        return Duration.m1320constructorimpl((j4 << 1) + 1);
    }

    @ExperimentalTime
    public static final long durationOfMillisNormalized(long j4) {
        long coerceIn;
        if (-4611686018426L <= j4 && MAX_NANOS_IN_MILLIS >= j4) {
            return durationOfNanos(millisToNanos(j4));
        }
        coerceIn = RangesKt___RangesKt.coerceIn(j4, -4611686018427387903L, (long) MAX_MILLIS);
        return durationOfMillis(coerceIn);
    }

    @ExperimentalTime
    public static final long durationOfNanos(long j4) {
        return Duration.m1320constructorimpl(j4 << 1);
    }

    @ExperimentalTime
    public static final long durationOfNanosNormalized(long j4) {
        if (-4611686018426999999L <= j4 && MAX_NANOS >= j4) {
            return durationOfNanos(j4);
        }
        return durationOfMillis(nanosToMillis(j4));
    }

    public static final long getDays(int i2) {
        return toDuration(i2, TimeUnit.DAYS);
    }

    @Deprecated(message = "Use Duration.days() function instead.", replaceWith = @ReplaceWith(expression = "Duration.days(this)", imports = {"kotlin.time.Duration"}))
    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static /* synthetic */ void getDays$annotations(double d4) {
    }

    @Deprecated(message = "Use Duration.days() function instead.", replaceWith = @ReplaceWith(expression = "Duration.days(this)", imports = {"kotlin.time.Duration"}))
    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static /* synthetic */ void getDays$annotations(int i2) {
    }

    @Deprecated(message = "Use Duration.days() function instead.", replaceWith = @ReplaceWith(expression = "Duration.days(this)", imports = {"kotlin.time.Duration"}))
    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static /* synthetic */ void getDays$annotations(long j4) {
    }

    public static final long getHours(int i2) {
        return toDuration(i2, TimeUnit.HOURS);
    }

    @Deprecated(message = "Use Duration.hours() function instead.", replaceWith = @ReplaceWith(expression = "Duration.hours(this)", imports = {"kotlin.time.Duration"}))
    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static /* synthetic */ void getHours$annotations(double d4) {
    }

    @Deprecated(message = "Use Duration.hours() function instead.", replaceWith = @ReplaceWith(expression = "Duration.hours(this)", imports = {"kotlin.time.Duration"}))
    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static /* synthetic */ void getHours$annotations(int i2) {
    }

    @Deprecated(message = "Use Duration.hours() function instead.", replaceWith = @ReplaceWith(expression = "Duration.hours(this)", imports = {"kotlin.time.Duration"}))
    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static /* synthetic */ void getHours$annotations(long j4) {
    }

    public static final long getMicroseconds(int i2) {
        return toDuration(i2, TimeUnit.MICROSECONDS);
    }

    @Deprecated(message = "Use Duration.microseconds() function instead.", replaceWith = @ReplaceWith(expression = "Duration.microseconds(this)", imports = {"kotlin.time.Duration"}))
    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static /* synthetic */ void getMicroseconds$annotations(double d4) {
    }

    @Deprecated(message = "Use Duration.microseconds() function instead.", replaceWith = @ReplaceWith(expression = "Duration.microseconds(this)", imports = {"kotlin.time.Duration"}))
    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static /* synthetic */ void getMicroseconds$annotations(int i2) {
    }

    @Deprecated(message = "Use Duration.microseconds() function instead.", replaceWith = @ReplaceWith(expression = "Duration.microseconds(this)", imports = {"kotlin.time.Duration"}))
    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static /* synthetic */ void getMicroseconds$annotations(long j4) {
    }

    public static final long getMilliseconds(int i2) {
        return toDuration(i2, TimeUnit.MILLISECONDS);
    }

    @Deprecated(message = "Use Duration.milliseconds() function instead.", replaceWith = @ReplaceWith(expression = "Duration.milliseconds(this)", imports = {"kotlin.time.Duration"}))
    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static /* synthetic */ void getMilliseconds$annotations(double d4) {
    }

    @Deprecated(message = "Use Duration.milliseconds() function instead.", replaceWith = @ReplaceWith(expression = "Duration.milliseconds(this)", imports = {"kotlin.time.Duration"}))
    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static /* synthetic */ void getMilliseconds$annotations(int i2) {
    }

    @Deprecated(message = "Use Duration.milliseconds() function instead.", replaceWith = @ReplaceWith(expression = "Duration.milliseconds(this)", imports = {"kotlin.time.Duration"}))
    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static /* synthetic */ void getMilliseconds$annotations(long j4) {
    }

    public static final long getMinutes(int i2) {
        return toDuration(i2, TimeUnit.MINUTES);
    }

    @Deprecated(message = "Use Duration.minutes() function instead.", replaceWith = @ReplaceWith(expression = "Duration.minutes(this)", imports = {"kotlin.time.Duration"}))
    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static /* synthetic */ void getMinutes$annotations(double d4) {
    }

    @Deprecated(message = "Use Duration.minutes() function instead.", replaceWith = @ReplaceWith(expression = "Duration.minutes(this)", imports = {"kotlin.time.Duration"}))
    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static /* synthetic */ void getMinutes$annotations(int i2) {
    }

    @Deprecated(message = "Use Duration.minutes() function instead.", replaceWith = @ReplaceWith(expression = "Duration.minutes(this)", imports = {"kotlin.time.Duration"}))
    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static /* synthetic */ void getMinutes$annotations(long j4) {
    }

    public static final long getNanoseconds(int i2) {
        return toDuration(i2, TimeUnit.NANOSECONDS);
    }

    @Deprecated(message = "Use Duration.nanoseconds() function instead.", replaceWith = @ReplaceWith(expression = "Duration.nanoseconds(this)", imports = {"kotlin.time.Duration"}))
    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static /* synthetic */ void getNanoseconds$annotations(double d4) {
    }

    @Deprecated(message = "Use Duration.nanoseconds() function instead.", replaceWith = @ReplaceWith(expression = "Duration.nanoseconds(this)", imports = {"kotlin.time.Duration"}))
    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static /* synthetic */ void getNanoseconds$annotations(int i2) {
    }

    @Deprecated(message = "Use Duration.nanoseconds() function instead.", replaceWith = @ReplaceWith(expression = "Duration.nanoseconds(this)", imports = {"kotlin.time.Duration"}))
    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static /* synthetic */ void getNanoseconds$annotations(long j4) {
    }

    public static final long getSeconds(int i2) {
        return toDuration(i2, TimeUnit.SECONDS);
    }

    @Deprecated(message = "Use Duration.seconds() function instead.", replaceWith = @ReplaceWith(expression = "Duration.seconds(this)", imports = {"kotlin.time.Duration"}))
    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static /* synthetic */ void getSeconds$annotations(double d4) {
    }

    @Deprecated(message = "Use Duration.seconds() function instead.", replaceWith = @ReplaceWith(expression = "Duration.seconds(this)", imports = {"kotlin.time.Duration"}))
    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static /* synthetic */ void getSeconds$annotations(int i2) {
    }

    @Deprecated(message = "Use Duration.seconds() function instead.", replaceWith = @ReplaceWith(expression = "Duration.seconds(this)", imports = {"kotlin.time.Duration"}))
    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static /* synthetic */ void getSeconds$annotations(long j4) {
    }

    public static final long millisToNanos(long j4) {
        return j4 * ((long) NANOS_IN_MILLIS);
    }

    public static final long nanosToMillis(long j4) {
        return j4 / ((long) NANOS_IN_MILLIS);
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    @ExperimentalTime
    /* renamed from: times-kIfJnKk */
    private static final long m1400timeskIfJnKk(double d4, long j4) {
        return Duration.m1358timesUwyO8pc(j4, d4);
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    @ExperimentalTime
    /* renamed from: times-mvk6XK0 */
    private static final long m1401timesmvk6XK0(int i2, long j4) {
        return Duration.m1359timesUwyO8pc(j4, i2);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static final long toDuration(int i2, @NotNull TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (unit.compareTo(TimeUnit.SECONDS) <= 0) {
            return durationOfNanos(DurationUnitKt__DurationUnitJvmKt.convertDurationUnitOverflow(i2, unit, TimeUnit.NANOSECONDS));
        }
        return toDuration(i2, unit);
    }

    public static final long getDays(long j4) {
        return toDuration(j4, TimeUnit.DAYS);
    }

    public static final long getHours(long j4) {
        return toDuration(j4, TimeUnit.HOURS);
    }

    public static final long getMicroseconds(long j4) {
        return toDuration(j4, TimeUnit.MICROSECONDS);
    }

    public static final long getMilliseconds(long j4) {
        return toDuration(j4, TimeUnit.MILLISECONDS);
    }

    public static final long getMinutes(long j4) {
        return toDuration(j4, TimeUnit.MINUTES);
    }

    public static final long getNanoseconds(long j4) {
        return toDuration(j4, TimeUnit.NANOSECONDS);
    }

    public static final long getSeconds(long j4) {
        return toDuration(j4, TimeUnit.SECONDS);
    }

    public static final long getDays(double d4) {
        return toDuration(d4, TimeUnit.DAYS);
    }

    public static final long getHours(double d4) {
        return toDuration(d4, TimeUnit.HOURS);
    }

    public static final long getMicroseconds(double d4) {
        return toDuration(d4, TimeUnit.MICROSECONDS);
    }

    public static final long getMilliseconds(double d4) {
        return toDuration(d4, TimeUnit.MILLISECONDS);
    }

    public static final long getMinutes(double d4) {
        return toDuration(d4, TimeUnit.MINUTES);
    }

    public static final long getNanoseconds(double d4) {
        return toDuration(d4, TimeUnit.NANOSECONDS);
    }

    public static final long getSeconds(double d4) {
        return toDuration(d4, TimeUnit.SECONDS);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static final long toDuration(long j4, @NotNull TimeUnit unit) {
        long coerceIn;
        Intrinsics.checkNotNullParameter(unit, "unit");
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        long convertDurationUnitOverflow = DurationUnitKt__DurationUnitJvmKt.convertDurationUnitOverflow(MAX_NANOS, timeUnit, unit);
        if ((-convertDurationUnitOverflow) <= j4 && convertDurationUnitOverflow >= j4) {
            return durationOfNanos(DurationUnitKt__DurationUnitJvmKt.convertDurationUnitOverflow(j4, unit, timeUnit));
        }
        coerceIn = RangesKt___RangesKt.coerceIn(DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(j4, unit, TimeUnit.MILLISECONDS), -4611686018427387903L, (long) MAX_MILLIS);
        return durationOfMillis(coerceIn);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalTime
    public static final long toDuration(double d4, @NotNull TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        double convertDurationUnit = DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(d4, unit, TimeUnit.NANOSECONDS);
        if (!Double.isNaN(convertDurationUnit)) {
            long j4 = (long) convertDurationUnit;
            if (-4611686018426999999L <= j4 && MAX_NANOS >= j4) {
                return durationOfNanos(j4);
            }
            return durationOfMillisNormalized((long) DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(d4, unit, TimeUnit.MILLISECONDS));
        }
        throw new IllegalArgumentException("Duration value cannot be NaN.".toString());
    }
}
