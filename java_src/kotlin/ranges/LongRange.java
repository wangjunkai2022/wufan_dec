package kotlin.ranges;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Ranges.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u0000 \u00162\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u0016B\u0017\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0003¢\u0006\u0004\b\u0014\u0010\u0015J\u0011\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0016J\u0013\u0010\n\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0096\u0002J\b\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016R\u0016\u0010\u0011\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0013\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0010¨\u0006\u0017"}, d2 = {"Lkotlin/ranges/LongRange;", "Lkotlin/ranges/LongProgression;", "Lkotlin/ranges/ClosedRange;", "", "value", "", "contains", "isEmpty", "", "other", "equals", "", TTDownloadField.TT_HASHCODE, "", "toString", "getStart", "()Ljava/lang/Long;", "start", "getEndInclusive", "endInclusive", "<init>", "(JJ)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class LongRange extends LongProgression implements ClosedRange<Long> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final LongRange EMPTY = new LongRange(1, 0);

    /* compiled from: Ranges.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lkotlin/ranges/LongRange$Companion;", "", "Lkotlin/ranges/LongRange;", "EMPTY", "Lkotlin/ranges/LongRange;", "getEMPTY", "()Lkotlin/ranges/LongRange;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class Companion {
        private Companion() {
        }

        @NotNull
        public final LongRange getEMPTY() {
            return LongRange.EMPTY;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public LongRange(long j4, long j5) {
        super(j4, j5, 1L);
    }

    @Override // kotlin.ranges.ClosedRange
    public /* bridge */ /* synthetic */ boolean contains(Long l4) {
        return contains(l4.longValue());
    }

    @Override // kotlin.ranges.LongProgression
    public boolean equals(@Nullable Object obj) {
        if (obj instanceof LongRange) {
            if (!isEmpty() || !((LongRange) obj).isEmpty()) {
                LongRange longRange = (LongRange) obj;
                if (getFirst() != longRange.getFirst() || getLast() != longRange.getLast()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlin.ranges.LongProgression
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (int) ((31 * (getFirst() ^ (getFirst() >>> 32))) + (getLast() ^ (getLast() >>> 32)));
    }

    @Override // kotlin.ranges.LongProgression, kotlin.ranges.ClosedRange
    public boolean isEmpty() {
        return getFirst() > getLast();
    }

    @Override // kotlin.ranges.LongProgression
    @NotNull
    public String toString() {
        return getFirst() + ".." + getLast();
    }

    public boolean contains(long j4) {
        return getFirst() <= j4 && j4 <= getLast();
    }

    @Override // kotlin.ranges.ClosedRange
    @NotNull
    public Long getEndInclusive() {
        return Long.valueOf(getLast());
    }

    @Override // kotlin.ranges.ClosedRange
    @NotNull
    public Long getStart() {
        return Long.valueOf(getFirst());
    }
}
