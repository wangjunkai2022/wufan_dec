package kotlin.time;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import org.jetbrains.annotations.NotNull;
/* compiled from: TimeSource.kt */
@SinceKotlin(version = "1.3")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0005\b'\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0005\u001a\u00020\u0002H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u001b\u0010\t\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0002H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bJ\u001b\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0002H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\n\u0010\bJ\u0006\u0010\r\u001a\u00020\fJ\u0006\u0010\u000e\u001a\u00020\f\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0011"}, d2 = {"Lkotlin/time/TimeMark;", "", "Lkotlin/time/Duration;", "elapsedNow-UwyO8pc", "()J", "elapsedNow", "duration", "plus-LRDsOJo", "(J)Lkotlin/time/TimeMark;", "plus", "minus-LRDsOJo", "minus", "", "hasPassedNow", "hasNotPassedNow", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@ExperimentalTime
/* loaded from: classes5.dex */
public abstract class TimeMark {
    /* renamed from: elapsedNow-UwyO8pc */
    public abstract long mo1311elapsedNowUwyO8pc();

    public final boolean hasNotPassedNow() {
        return Duration.m1353isNegativeimpl(mo1311elapsedNowUwyO8pc());
    }

    public final boolean hasPassedNow() {
        return !Duration.m1353isNegativeimpl(mo1311elapsedNowUwyO8pc());
    }

    @NotNull
    /* renamed from: minus-LRDsOJo  reason: not valid java name */
    public TimeMark m1404minusLRDsOJo(long j4) {
        return mo1312plusLRDsOJo(Duration.m1373unaryMinusUwyO8pc(j4));
    }

    @NotNull
    /* renamed from: plus-LRDsOJo */
    public TimeMark mo1312plusLRDsOJo(long j4) {
        return new AdjustedTimeMark(this, j4, null);
    }
}
