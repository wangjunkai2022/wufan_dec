package kotlin.ranges;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.Iterator;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UInt;
import kotlin.UnsignedKt;
import kotlin.WasExperimental;
import kotlin.internal.UProgressionUtilKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UIntRange.kt */
@SinceKotlin(version = "1.5")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0017\u0018\u0000 \u001a2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001aB$\b\u0000\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\nø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019J\u0012\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0086\u0002ø\u0001\u0000J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u0013\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0096\u0002J\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\r\u001a\u00020\fH\u0016R\u001f\u0010\u000e\u001a\u00020\u00028\u0006@\u0006ø\u0001\u0000ø\u0001\u0001¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001f\u0010\u0012\u001a\u00020\u00028\u0006@\u0006ø\u0001\u0000ø\u0001\u0001¢\u0006\f\n\u0004\b\u0012\u0010\u000f\u001a\u0004\b\u0013\u0010\u0011R\u0019\u0010\u0014\u001a\u00020\n8\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0015\u0010\u0011ø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u001b"}, d2 = {"Lkotlin/ranges/UIntProgression;", "", "Lkotlin/UInt;", "", "iterator", "", "isEmpty", "", "other", "equals", "", TTDownloadField.TT_HASHCODE, "", "toString", "last", "I", "getLast-pVg5ArA", "()I", "first", "getFirst-pVg5ArA", "step", "getStep", "start", "endInclusive", "<init>", "(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
/* loaded from: classes5.dex */
public class UIntProgression implements Iterable<UInt>, KMappedMarker {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private final int first;
    private final int last;
    private final int step;

    /* compiled from: UIntRange.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ(\u0010\n\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005ø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"Lkotlin/ranges/UIntProgression$Companion;", "", "Lkotlin/UInt;", "rangeStart", "rangeEnd", "", "step", "Lkotlin/ranges/UIntProgression;", "fromClosedRange-Nkh28Cs", "(III)Lkotlin/ranges/UIntProgression;", "fromClosedRange", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class Companion {
        private Companion() {
        }

        @NotNull
        /* renamed from: fromClosedRange-Nkh28Cs  reason: not valid java name */
        public final UIntProgression m1243fromClosedRangeNkh28Cs(int i2, int i4, int i5) {
            return new UIntProgression(i2, i4, i5, null);
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ UIntProgression(int i2, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, i4, i5);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof UIntProgression) {
            if (!isEmpty() || !((UIntProgression) obj).isEmpty()) {
                UIntProgression uIntProgression = (UIntProgression) obj;
                if (this.first != uIntProgression.first || this.last != uIntProgression.last || this.step != uIntProgression.step) {
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: getFirst-pVg5ArA  reason: not valid java name */
    public final int m1241getFirstpVg5ArA() {
        return this.first;
    }

    /* renamed from: getLast-pVg5ArA  reason: not valid java name */
    public final int m1242getLastpVg5ArA() {
        return this.last;
    }

    public final int getStep() {
        return this.step;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.first * 31) + this.last) * 31) + this.step;
    }

    public boolean isEmpty() {
        if (this.step > 0) {
            if (UnsignedKt.uintCompare(this.first, this.last) > 0) {
                return true;
            }
        } else if (UnsignedKt.uintCompare(this.first, this.last) < 0) {
            return true;
        }
        return false;
    }

    @Override // java.lang.Iterable
    @NotNull
    public final Iterator<UInt> iterator() {
        return new UIntProgressionIterator(this.first, this.last, this.step, null);
    }

    @NotNull
    public String toString() {
        StringBuilder sb;
        int i2;
        if (this.step > 0) {
            sb = new StringBuilder();
            sb.append(UInt.m163toStringimpl(this.first));
            sb.append("..");
            sb.append(UInt.m163toStringimpl(this.last));
            sb.append(" step ");
            i2 = this.step;
        } else {
            sb = new StringBuilder();
            sb.append(UInt.m163toStringimpl(this.first));
            sb.append(" downTo ");
            sb.append(UInt.m163toStringimpl(this.last));
            sb.append(" step ");
            i2 = -this.step;
        }
        sb.append(i2);
        return sb.toString();
    }

    private UIntProgression(int i2, int i4, int i5) {
        if (i5 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i5 != Integer.MIN_VALUE) {
            this.first = i2;
            this.last = UProgressionUtilKt.m1227getProgressionLastElementNkh28Cs(i2, i4, i5);
            this.step = i5;
            return;
        }
        throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
    }
}
