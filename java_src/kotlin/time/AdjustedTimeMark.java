package kotlin.time;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: TimeSource.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0003\u0018\u00002\u00020\u0001B\u001a\u0012\u0006\u0010\n\u001a\u00020\u0001\u0012\u0006\u0010\u000e\u001a\u00020\u0002ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0005\u001a\u00020\u0002H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u001b\u0010\t\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0002H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\n\u001a\u00020\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001f\u0010\u000e\u001a\u00020\u00028\u0006@\u0006ø\u0001\u0000ø\u0001\u0001¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0004\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0013"}, d2 = {"Lkotlin/time/AdjustedTimeMark;", "Lkotlin/time/TimeMark;", "Lkotlin/time/Duration;", "elapsedNow-UwyO8pc", "()J", "elapsedNow", "duration", "plus-LRDsOJo", "(J)Lkotlin/time/TimeMark;", "plus", "mark", "Lkotlin/time/TimeMark;", "getMark", "()Lkotlin/time/TimeMark;", "adjustment", "J", "getAdjustment-UwyO8pc", "<init>", "(Lkotlin/time/TimeMark;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@ExperimentalTime
/* loaded from: classes5.dex */
final class AdjustedTimeMark extends TimeMark {
    private final long adjustment;
    @NotNull
    private final TimeMark mark;

    private AdjustedTimeMark(TimeMark timeMark, long j4) {
        this.mark = timeMark;
        this.adjustment = j4;
    }

    @Override // kotlin.time.TimeMark
    /* renamed from: elapsedNow-UwyO8pc */
    public long mo1311elapsedNowUwyO8pc() {
        return Duration.m1355minusLRDsOJo(this.mark.mo1311elapsedNowUwyO8pc(), this.adjustment);
    }

    /* renamed from: getAdjustment-UwyO8pc  reason: not valid java name */
    public final long m1313getAdjustmentUwyO8pc() {
        return this.adjustment;
    }

    @NotNull
    public final TimeMark getMark() {
        return this.mark;
    }

    @Override // kotlin.time.TimeMark
    @NotNull
    /* renamed from: plus-LRDsOJo */
    public TimeMark mo1312plusLRDsOJo(long j4) {
        return new AdjustedTimeMark(this.mark, Duration.m1356plusLRDsOJo(this.adjustment, j4));
    }

    public /* synthetic */ AdjustedTimeMark(TimeMark timeMark, long j4, DefaultConstructorMarker defaultConstructorMarker) {
        this(timeMark, j4);
    }
}
