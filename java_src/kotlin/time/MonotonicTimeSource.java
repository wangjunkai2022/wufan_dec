package kotlin.time;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import org.jetbrains.annotations.NotNull;
/* compiled from: MonoTimeSource.kt */
@SinceKotlin(version = "1.3")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\bÁ\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\u0004\u001a\u00020\u0003H\u0014J\b\u0010\u0006\u001a\u00020\u0005H\u0016¨\u0006\t"}, d2 = {"Lkotlin/time/MonotonicTimeSource;", "Lkotlin/time/AbstractLongTimeSource;", "Lkotlin/time/TimeSource;", "", "read", "", "toString", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@ExperimentalTime
/* loaded from: classes5.dex */
public final class MonotonicTimeSource extends AbstractLongTimeSource implements TimeSource {
    @NotNull
    public static final MonotonicTimeSource INSTANCE = new MonotonicTimeSource();

    private MonotonicTimeSource() {
        super(TimeUnit.NANOSECONDS);
    }

    @Override // kotlin.time.AbstractLongTimeSource
    protected long read() {
        return System.nanoTime();
    }

    @NotNull
    public String toString() {
        return "TimeSource(System.nanoTime())";
    }
}
