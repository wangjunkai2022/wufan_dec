package kotlin.time;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TimeSources.kt */
@SinceKotlin(version = "1.3")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b'\u0018\u00002\u00020\u0001:\u0001\u000eB\u0013\u0012\n\u0010\b\u001a\u00060\u0006j\u0002`\u0007¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H$J\b\u0010\u0005\u001a\u00020\u0004H\u0016R \u0010\b\u001a\u00060\u0006j\u0002`\u00078\u0004@\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lkotlin/time/AbstractLongTimeSource;", "Lkotlin/time/TimeSource;", "", "read", "Lkotlin/time/TimeMark;", "markNow", "Ljava/util/concurrent/TimeUnit;", "Lkotlin/time/DurationUnit;", "unit", "Ljava/util/concurrent/TimeUnit;", "getUnit", "()Ljava/util/concurrent/TimeUnit;", "<init>", "(Ljava/util/concurrent/TimeUnit;)V", "LongTimeMark", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@ExperimentalTime
/* loaded from: classes5.dex */
public abstract class AbstractLongTimeSource implements TimeSource {
    @NotNull
    private final TimeUnit unit;

    /* compiled from: TimeSources.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\"\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\u0002ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0005\u001a\u00020\u0002H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u001b\u0010\t\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0002H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bR\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\n\u0004\b\u0010\u0010\u000f\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0013"}, d2 = {"Lkotlin/time/AbstractLongTimeSource$LongTimeMark;", "Lkotlin/time/TimeMark;", "Lkotlin/time/Duration;", "elapsedNow-UwyO8pc", "()J", "elapsedNow", "duration", "plus-LRDsOJo", "(J)Lkotlin/time/TimeMark;", "plus", "Lkotlin/time/AbstractLongTimeSource;", "timeSource", "Lkotlin/time/AbstractLongTimeSource;", "", "startedAt", "J", "offset", "<init>", "(JLkotlin/time/AbstractLongTimeSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    private static final class LongTimeMark extends TimeMark {
        private final long offset;
        private final long startedAt;
        private final AbstractLongTimeSource timeSource;

        private LongTimeMark(long j4, AbstractLongTimeSource abstractLongTimeSource, long j5) {
            this.startedAt = j4;
            this.timeSource = abstractLongTimeSource;
            this.offset = j5;
        }

        @Override // kotlin.time.TimeMark
        /* renamed from: elapsedNow-UwyO8pc */
        public long mo1311elapsedNowUwyO8pc() {
            return Duration.m1355minusLRDsOJo(DurationKt.toDuration(this.timeSource.read() - this.startedAt, this.timeSource.getUnit()), this.offset);
        }

        @Override // kotlin.time.TimeMark
        @NotNull
        /* renamed from: plus-LRDsOJo */
        public TimeMark mo1312plusLRDsOJo(long j4) {
            return new LongTimeMark(this.startedAt, this.timeSource, Duration.m1356plusLRDsOJo(this.offset, j4));
        }

        public /* synthetic */ LongTimeMark(long j4, AbstractLongTimeSource abstractLongTimeSource, long j5, DefaultConstructorMarker defaultConstructorMarker) {
            this(j4, abstractLongTimeSource, j5);
        }
    }

    public AbstractLongTimeSource(@NotNull TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        this.unit = unit;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final TimeUnit getUnit() {
        return this.unit;
    }

    @Override // kotlin.time.TimeSource
    @NotNull
    public TimeMark markNow() {
        return new LongTimeMark(read(), this, Duration.Companion.m1381getZEROUwyO8pc(), null);
    }

    protected abstract long read();
}
