package kotlin.ranges;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.ULong;
import kotlin.UnsignedKt;
import kotlin.WasExperimental;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ULongRange.kt */
@SinceKotlin(version = "1.5")
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0007\u0018\u0000 \u00182\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u0018B\u001a\u0012\u0006\u0010\u0015\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017J\u001b\u0010\b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\t\u001a\u00020\u0005H\u0016J\u0013\u0010\f\u001a\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0096\u0002J\b\u0010\u000e\u001a\u00020\rH\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0016R\u001c\u0010\u0013\u001a\u00020\u00038V@\u0016X\u0096\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0015\u001a\u00020\u00038V@\u0016X\u0096\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0012ø\u0001\u0000\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0019"}, d2 = {"Lkotlin/ranges/ULongRange;", "Lkotlin/ranges/ULongProgression;", "Lkotlin/ranges/ClosedRange;", "Lkotlin/ULong;", "value", "", "contains-VKZWuLQ", "(J)Z", "contains", "isEmpty", "", "other", "equals", "", TTDownloadField.TT_HASHCODE, "", "toString", "getEndInclusive-s-VKNKU", "()J", "endInclusive", "getStart-s-VKNKU", "start", "<init>", "(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
@WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
/* loaded from: classes5.dex */
public final class ULongRange extends ULongProgression implements ClosedRange<ULong> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final ULongRange EMPTY = new ULongRange(-1, 0);

    /* compiled from: ULongRange.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lkotlin/ranges/ULongRange$Companion;", "", "Lkotlin/ranges/ULongRange;", "EMPTY", "Lkotlin/ranges/ULongRange;", "getEMPTY", "()Lkotlin/ranges/ULongRange;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class Companion {
        private Companion() {
        }

        @NotNull
        public final ULongRange getEMPTY() {
            return ULongRange.EMPTY;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private ULongRange(long j4, long j5) {
        super(j4, j5, 1L, null);
    }

    @Override // kotlin.ranges.ClosedRange
    public /* bridge */ /* synthetic */ boolean contains(ULong uLong) {
        return m1250containsVKZWuLQ(uLong.m247unboximpl());
    }

    /* renamed from: contains-VKZWuLQ  reason: not valid java name */
    public boolean m1250containsVKZWuLQ(long j4) {
        return UnsignedKt.ulongCompare(m1247getFirstsVKNKU(), j4) <= 0 && UnsignedKt.ulongCompare(j4, m1248getLastsVKNKU()) <= 0;
    }

    @Override // kotlin.ranges.ULongProgression
    public boolean equals(@Nullable Object obj) {
        if (obj instanceof ULongRange) {
            if (!isEmpty() || !((ULongRange) obj).isEmpty()) {
                ULongRange uLongRange = (ULongRange) obj;
                if (m1247getFirstsVKNKU() != uLongRange.m1247getFirstsVKNKU() || m1248getLastsVKNKU() != uLongRange.m1248getLastsVKNKU()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlin.ranges.ClosedRange
    public /* bridge */ /* synthetic */ ULong getEndInclusive() {
        return ULong.m190boximpl(m1251getEndInclusivesVKNKU());
    }

    /* renamed from: getEndInclusive-s-VKNKU  reason: not valid java name */
    public long m1251getEndInclusivesVKNKU() {
        return m1248getLastsVKNKU();
    }

    @Override // kotlin.ranges.ClosedRange
    public /* bridge */ /* synthetic */ ULong getStart() {
        return ULong.m190boximpl(m1252getStartsVKNKU());
    }

    /* renamed from: getStart-s-VKNKU  reason: not valid java name */
    public long m1252getStartsVKNKU() {
        return m1247getFirstsVKNKU();
    }

    @Override // kotlin.ranges.ULongProgression
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return ((int) ULong.m196constructorimpl(m1248getLastsVKNKU() ^ ULong.m196constructorimpl(m1248getLastsVKNKU() >>> 32))) + (((int) ULong.m196constructorimpl(m1247getFirstsVKNKU() ^ ULong.m196constructorimpl(m1247getFirstsVKNKU() >>> 32))) * 31);
    }

    @Override // kotlin.ranges.ULongProgression, kotlin.ranges.ClosedRange
    public boolean isEmpty() {
        return UnsignedKt.ulongCompare(m1247getFirstsVKNKU(), m1248getLastsVKNKU()) > 0;
    }

    @Override // kotlin.ranges.ULongProgression
    @NotNull
    public String toString() {
        return ULong.m241toStringimpl(m1247getFirstsVKNKU()) + ".." + ULong.m241toStringimpl(m1248getLastsVKNKU());
    }

    public /* synthetic */ ULongRange(long j4, long j5, DefaultConstructorMarker defaultConstructorMarker) {
        this(j4, j5);
    }
}
