package kotlin.time;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TimeSources.kt */
@SinceKotlin(version = "1.3")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b'\u0018\u00002\u00020\u0001:\u0001\u000eB\u0013\u0012\n\u0010\b\u001a\u00060\u0006j\u0002`\u0007¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H$J\b\u0010\u0005\u001a\u00020\u0004H\u0016R \u0010\b\u001a\u00060\u0006j\u0002`\u00078\u0004@\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lkotlin/time/AbstractDoubleTimeSource;", "Lkotlin/time/TimeSource;", "", "read", "Lkotlin/time/TimeMark;", "markNow", "Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/DurationUnit;", "unit", "Ljava/util/concurrent/TimeUnit;", "getUnit", "()Ljava/util/concurrent/TimeUnit;", "<init>", "(Ljava/util/concurrent/TimeUnit;)V", "DoubleTimeMark", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@ExperimentalTime
/* loaded from: classes5.dex */
public abstract class AbstractDoubleTimeSource implements TimeSource {
    @NotNull
    private final TimeUnit unit;

    /* compiled from: TimeSources.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\"\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\n\u001a\u00020\u0002ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u0015\u0010\u0005\u001a\u00020\u0002H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u001b\u0010\t\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0002H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bR\u001c\u0010\n\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0014"}, d2 = {"Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;", "Lkotlin/time/TimeMark;", "Lkotlin/time/Duration;", "elapsedNow-UwyO8pc", "()J", "elapsedNow", "duration", "plus-LRDsOJo", "(J)Lkotlin/time/TimeMark;", "plus", "offset", "J", "Lkotlin/time/AbstractDoubleTimeSource;", "timeSource", "Lkotlin/time/AbstractDoubleTimeSource;", "", "startedAt", "D", "<init>", "(DLkotlin/time/AbstractDoubleTimeSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    private static final class DoubleTimeMark extends TimeMark {
        private final long offset;
        private final double startedAt;
        private final AbstractDoubleTimeSource timeSource;

        private DoubleTimeMark(double d4, AbstractDoubleTimeSource abstractDoubleTimeSource, long j4) {
            this.startedAt = d4;
            this.timeSource = abstractDoubleTimeSource;
            this.offset = j4;
        }

        @Override // kotlin.time.TimeMark
        /* renamed from: elapsedNow-UwyO8pc  reason: not valid java name */
        public long mo1311elapsedNowUwyO8pc() {
            return Duration.m1355minusLRDsOJo(DurationKt.toDuration(this.timeSource.read() - this.startedAt, this.timeSource.getUnit()), this.offset);
        }

        @Override // kotlin.time.TimeMark
        @NotNull
        /* renamed from: plus-LRDsOJo  reason: not valid java name */
        public TimeMark mo1312plusLRDsOJo(long j4) {
            return new DoubleTimeMark(this.startedAt, this.timeSource, Duration.m1356plusLRDsOJo(this.offset, j4));
        }

        public /* synthetic */ DoubleTimeMark(double d4, AbstractDoubleTimeSource abstractDoubleTimeSource, long j4, DefaultConstructorMarker defaultConstructorMarker) {
            this(d4, abstractDoubleTimeSource, j4);
        }
    }

    public AbstractDoubleTimeSource(@NotNull TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        this.unit = unit;
    }

    @NotNull
    protected final TimeUnit getUnit() {
        return this.unit;
    }

    @Override // kotlin.time.TimeSource
    @NotNull
    public TimeMark markNow() {
        return new DoubleTimeMark(read(), this, Duration.Companion.m1381getZEROUwyO8pc(), null);
    }

    protected abstract double read();
}
