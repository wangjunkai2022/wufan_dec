package kotlin.ranges;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Progressions.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0016\u0018\u0000 \u001a2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001aB!\b\u0000\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\t\u0010\u0004\u001a\u00020\u0003H\u0096\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u0013\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0096\u0002J\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\r\u001a\u00020\fH\u0016R\u0019\u0010\u000e\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0012\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0013\u0010\u0011R\u0019\u0010\u0014\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0015\u0010\u0011¨\u0006\u001b"}, d2 = {"Lkotlin/ranges/LongProgression;", "", "", "Lkotlin/collections/LongIterator;", "iterator", "", "isEmpty", "", "other", "equals", "", TTDownloadField.TT_HASHCODE, "", "toString", "last", "J", "getLast", "()J", "first", "getFirst", "step", "getStep", "start", "endInclusive", "<init>", "(JJJ)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public class LongProgression implements Iterable<Long>, KMappedMarker {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private final long first;
    private final long last;
    private final long step;

    /* compiled from: Progressions.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u001e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002¨\u0006\n"}, d2 = {"Lkotlin/ranges/LongProgression$Companion;", "", "", "rangeStart", "rangeEnd", "step", "Lkotlin/ranges/LongProgression;", "fromClosedRange", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class Companion {
        private Companion() {
        }

        @NotNull
        public final LongProgression fromClosedRange(long j4, long j5, long j6) {
            return new LongProgression(j4, j5, j6);
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public LongProgression(long j4, long j5, long j6) {
        if (j6 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (j6 != Long.MIN_VALUE) {
            this.first = j4;
            this.last = ProgressionUtilKt.getProgressionLastElement(j4, j5, j6);
            this.step = j6;
            return;
        }
        throw new IllegalArgumentException("Step must be greater than Long.MIN_VALUE to avoid overflow on negation.");
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof LongProgression) {
            if (!isEmpty() || !((LongProgression) obj).isEmpty()) {
                LongProgression longProgression = (LongProgression) obj;
                if (this.first != longProgression.first || this.last != longProgression.last || this.step != longProgression.step) {
                }
            }
            return true;
        }
        return false;
    }

    public final long getFirst() {
        return this.first;
    }

    public final long getLast() {
        return this.last;
    }

    public final long getStep() {
        return this.step;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        long j4 = 31;
        long j5 = this.first;
        long j6 = this.last;
        long j7 = j4 * (((j5 ^ (j5 >>> 32)) * j4) + (j6 ^ (j6 >>> 32)));
        long j8 = this.step;
        return (int) (j7 + (j8 ^ (j8 >>> 32)));
    }

    public boolean isEmpty() {
        int i2 = (this.step > 0L ? 1 : (this.step == 0L ? 0 : -1));
        long j4 = this.first;
        long j5 = this.last;
        if (i2 > 0) {
            if (j4 > j5) {
                return true;
            }
        } else if (j4 < j5) {
            return true;
        }
        return false;
    }

    @NotNull
    public String toString() {
        StringBuilder sb;
        long j4;
        if (this.step > 0) {
            sb = new StringBuilder();
            sb.append(this.first);
            sb.append("..");
            sb.append(this.last);
            sb.append(" step ");
            j4 = this.step;
        } else {
            sb = new StringBuilder();
            sb.append(this.first);
            sb.append(" downTo ");
            sb.append(this.last);
            sb.append(" step ");
            j4 = -this.step;
        }
        sb.append(j4);
        return sb.toString();
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<Long> iterator() {
        return new LongProgressionIterator(this.first, this.last, this.step);
    }
}
