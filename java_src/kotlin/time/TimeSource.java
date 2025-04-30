package kotlin.time;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import org.jetbrains.annotations.NotNull;
/* compiled from: TimeSource.kt */
@SinceKotlin(version = "1.3")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u0000 \u00042\u00020\u0001:\u0002\u0004\u0005J\b\u0010\u0003\u001a\u00020\u0002H&¨\u0006\u0006"}, d2 = {"Lkotlin/time/TimeSource;", "", "Lkotlin/time/TimeMark;", "markNow", "Companion", "Monotonic", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@ExperimentalTime
/* loaded from: classes5.dex */
public interface TimeSource {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: TimeSource.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lkotlin/time/TimeSource$Companion;", "", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }

    /* compiled from: TimeSource.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\t\u0010\u0005\u001a\u00020\u0004H\u0096\u0001¨\u0006\b"}, d2 = {"Lkotlin/time/TimeSource$Monotonic;", "Lkotlin/time/TimeSource;", "", "toString", "Lkotlin/time/TimeMark;", "markNow", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class Monotonic implements TimeSource {
        @NotNull
        public static final Monotonic INSTANCE = new Monotonic();
        private final /* synthetic */ MonotonicTimeSource $$delegate_0 = MonotonicTimeSource.INSTANCE;

        private Monotonic() {
        }

        @Override // kotlin.time.TimeSource
        @NotNull
        public TimeMark markNow() {
            return this.$$delegate_0.markNow();
        }

        @NotNull
        public String toString() {
            return MonotonicTimeSource.INSTANCE.toString();
        }
    }

    @NotNull
    TimeMark markNow();
}
