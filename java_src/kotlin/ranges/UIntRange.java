package kotlin.ranges;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UInt;
import kotlin.UnsignedKt;
import kotlin.WasExperimental;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UIntRange.kt */
@SinceKotlin(version = "1.5")
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0007\u0018\u0000 \u00182\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u0018B\u001a\u0012\u0006\u0010\u0015\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017J\u001b\u0010\b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\t\u001a\u00020\u0005H\u0016J\u0013\u0010\f\u001a\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0096\u0002J\b\u0010\u000e\u001a\u00020\rH\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0016R\u001c\u0010\u0013\u001a\u00020\u00038V@\u0016X\u0096\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0015\u001a\u00020\u00038V@\u0016X\u0096\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0012ø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0019"}, d2 = {"Lkotlin/ranges/UIntRange;", "Lkotlin/ranges/UIntProgression;", "Lkotlin/ranges/ClosedRange;", "Lkotlin/UInt;", "value", "", "contains-WZ4Q5Ns", "(I)Z", "contains", "isEmpty", "", "other", "equals", "", TTDownloadField.TT_HASHCODE, "", "toString", "getEndInclusive-pVg5ArA", "()I", "endInclusive", "getStart-pVg5ArA", "start", "<init>", "(IILkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
/* loaded from: classes5.dex */
public final class UIntRange extends UIntProgression implements ClosedRange<UInt> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final UIntRange EMPTY = new UIntRange(-1, 0);

    /* compiled from: UIntRange.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lkotlin/ranges/UIntRange$Companion;", "", "Lkotlin/ranges/UIntRange;", "EMPTY", "Lkotlin/ranges/UIntRange;", "getEMPTY", "()Lkotlin/ranges/UIntRange;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class Companion {
        private Companion() {
        }

        @NotNull
        public final UIntRange getEMPTY() {
            return UIntRange.EMPTY;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private UIntRange(int i2, int i4) {
        super(i2, i4, 1, null);
    }

    @Override // kotlin.ranges.ClosedRange
    public /* bridge */ /* synthetic */ boolean contains(UInt uInt) {
        return m1244containsWZ4Q5Ns(uInt.m169unboximpl());
    }

    /* renamed from: contains-WZ4Q5Ns  reason: not valid java name */
    public boolean m1244containsWZ4Q5Ns(int i2) {
        return UnsignedKt.uintCompare(m1241getFirstpVg5ArA(), i2) <= 0 && UnsignedKt.uintCompare(i2, m1242getLastpVg5ArA()) <= 0;
    }

    @Override // kotlin.ranges.UIntProgression
    public boolean equals(@Nullable Object obj) {
        if (obj instanceof UIntRange) {
            if (!isEmpty() || !((UIntRange) obj).isEmpty()) {
                UIntRange uIntRange = (UIntRange) obj;
                if (m1241getFirstpVg5ArA() != uIntRange.m1241getFirstpVg5ArA() || m1242getLastpVg5ArA() != uIntRange.m1242getLastpVg5ArA()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlin.ranges.ClosedRange
    public /* bridge */ /* synthetic */ UInt getEndInclusive() {
        return UInt.m112boximpl(m1245getEndInclusivepVg5ArA());
    }

    /* renamed from: getEndInclusive-pVg5ArA  reason: not valid java name */
    public int m1245getEndInclusivepVg5ArA() {
        return m1242getLastpVg5ArA();
    }

    @Override // kotlin.ranges.ClosedRange
    public /* bridge */ /* synthetic */ UInt getStart() {
        return UInt.m112boximpl(m1246getStartpVg5ArA());
    }

    /* renamed from: getStart-pVg5ArA  reason: not valid java name */
    public int m1246getStartpVg5ArA() {
        return m1241getFirstpVg5ArA();
    }

    @Override // kotlin.ranges.UIntProgression
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (m1241getFirstpVg5ArA() * 31) + m1242getLastpVg5ArA();
    }

    @Override // kotlin.ranges.UIntProgression, kotlin.ranges.ClosedRange
    public boolean isEmpty() {
        return UnsignedKt.uintCompare(m1241getFirstpVg5ArA(), m1242getLastpVg5ArA()) > 0;
    }

    @Override // kotlin.ranges.UIntProgression
    @NotNull
    public String toString() {
        return UInt.m163toStringimpl(m1241getFirstpVg5ArA()) + ".." + UInt.m163toStringimpl(m1242getLastpVg5ArA());
    }

    public /* synthetic */ UIntRange(int i2, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, i4);
    }
}
