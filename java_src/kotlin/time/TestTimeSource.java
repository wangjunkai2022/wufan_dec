package kotlin.time;

import external.org.apache.commons.lang3.d;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.SinceKotlin;
/* compiled from: TimeSources.kt */
@SinceKotlin(version = "1.3")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\t\u001a\u00020\bH\u0014J\u001b\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u0006R\u0016\u0010\f\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0010"}, d2 = {"Lkotlin/time/TestTimeSource;", "Lkotlin/time/AbstractLongTimeSource;", "Lkotlin/time/Duration;", "duration", "", "overflow-LRDsOJo", "(J)V", "overflow", "", "read", "plusAssign-LRDsOJo", "plusAssign", "reading", "J", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@ExperimentalTime
/* loaded from: classes5.dex */
public final class TestTimeSource extends AbstractLongTimeSource {
    private long reading;

    public TestTimeSource() {
        super(TimeUnit.NANOSECONDS);
    }

    /* renamed from: overflow-LRDsOJo  reason: not valid java name */
    private final void m1402overflowLRDsOJo(long j4) {
        throw new IllegalStateException("TestTimeSource will overflow if its reading " + this.reading + "ns is advanced by " + Duration.m1370toStringimpl(j4) + d.f65364a);
    }

    /* renamed from: plusAssign-LRDsOJo  reason: not valid java name */
    public final void m1403plusAssignLRDsOJo(long j4) {
        long j5;
        long m1367toLongimpl = Duration.m1367toLongimpl(j4, getUnit());
        if (m1367toLongimpl != Long.MIN_VALUE && m1367toLongimpl != Long.MAX_VALUE) {
            long j6 = this.reading;
            j5 = j6 + m1367toLongimpl;
            if ((m1367toLongimpl ^ j6) >= 0 && (j6 ^ j5) < 0) {
                m1402overflowLRDsOJo(j4);
            }
        } else {
            double m1364toDoubleimpl = Duration.m1364toDoubleimpl(j4, getUnit());
            double d4 = this.reading;
            Double.isNaN(d4);
            double d5 = d4 + m1364toDoubleimpl;
            if (d5 > Long.MAX_VALUE || d5 < Long.MIN_VALUE) {
                m1402overflowLRDsOJo(j4);
            }
            j5 = (long) d5;
        }
        this.reading = j5;
    }

    @Override // kotlin.time.AbstractLongTimeSource
    protected long read() {
        return this.reading;
    }
}
