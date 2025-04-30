package kotlin.time;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: measureTime.kt */
@SinceKotlin(version = "1.3")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087\b\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u001a\u0012\u0006\u0010\t\u001a\u00028\u0000\u0012\u0006\u0010\n\u001a\u00020\u0005ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0003\u001a\u00028\u0000HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0016\u0010\b\u001a\u00020\u0005HÆ\u0003ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010\t\u001a\u00028\u00002\b\b\u0002\u0010\n\u001a\u00020\u0005HÆ\u0001ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u000f\u001a\u00020\u000eHÖ\u0001J\t\u0010\u0011\u001a\u00020\u0010HÖ\u0001J\u0013\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002HÖ\u0003R\u001f\u0010\n\u001a\u00020\u00058\u0006@\u0006ø\u0001\u0000ø\u0001\u0001¢\u0006\f\n\u0004\b\n\u0010\u0015\u001a\u0004\b\u0016\u0010\u0007R\u0019\u0010\t\u001a\u00028\u00008\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0017\u001a\u0004\b\u0018\u0010\u0004\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u001b"}, d2 = {"Lkotlin/time/TimedValue;", "T", "", "component1", "()Ljava/lang/Object;", "Lkotlin/time/Duration;", "component2-UwyO8pc", "()J", "component2", "value", "duration", "copy-RFiDyg4", "(Ljava/lang/Object;J)Lkotlin/time/TimedValue;", "copy", "", "toString", "", TTDownloadField.TT_HASHCODE, "other", "", "equals", "J", "getDuration-UwyO8pc", "Ljava/lang/Object;", "getValue", "<init>", "(Ljava/lang/Object;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@ExperimentalTime
/* loaded from: classes5.dex */
public final class TimedValue<T> {
    private final long duration;
    private final T value;

    private TimedValue(T t3, long j4) {
        this.value = t3;
        this.duration = j4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: copy-RFiDyg4$default  reason: not valid java name */
    public static /* synthetic */ TimedValue m1405copyRFiDyg4$default(TimedValue timedValue, Object obj, long j4, int i2, Object obj2) {
        if ((i2 & 1) != 0) {
            obj = timedValue.value;
        }
        if ((i2 & 2) != 0) {
            j4 = timedValue.duration;
        }
        return timedValue.m1407copyRFiDyg4(obj, j4);
    }

    public final T component1() {
        return this.value;
    }

    /* renamed from: component2-UwyO8pc  reason: not valid java name */
    public final long m1406component2UwyO8pc() {
        return this.duration;
    }

    @NotNull
    /* renamed from: copy-RFiDyg4  reason: not valid java name */
    public final TimedValue<T> m1407copyRFiDyg4(T t3, long j4) {
        return new TimedValue<>(t3, j4);
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof TimedValue) {
                TimedValue timedValue = (TimedValue) obj;
                return Intrinsics.areEqual(this.value, timedValue.value) && this.duration == timedValue.duration;
            }
            return false;
        }
        return true;
    }

    /* renamed from: getDuration-UwyO8pc  reason: not valid java name */
    public final long m1408getDurationUwyO8pc() {
        return this.duration;
    }

    public final T getValue() {
        return this.value;
    }

    public int hashCode() {
        T t3 = this.value;
        int hashCode = t3 != null ? t3.hashCode() : 0;
        long j4 = this.duration;
        return (hashCode * 31) + ((int) (j4 ^ (j4 >>> 32)));
    }

    @NotNull
    public String toString() {
        return "TimedValue(value=" + this.value + ", duration=" + Duration.m1370toStringimpl(this.duration) + ")";
    }

    public /* synthetic */ TimedValue(Object obj, long j4, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, j4);
    }
}
