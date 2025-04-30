package kotlin.ranges;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import external.org.apache.commons.lang3.d;
import java.util.NoSuchElementException;
import kotlin.ExperimentalStdlibApi;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.UnsignedKt;
import kotlin.WasExperimental;
import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.random.URandomKt;
import kotlin.ranges.UIntProgression;
import kotlin.ranges.ULongProgression;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: _URanges.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\"\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u0017\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0017\u0010\u0002\u001a\u00020\u0005*\u00020\u0004H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0002\u0010\u0006\u001a\u001e\u0010\u0002\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0007H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0002\u0010\b\u001a\u001e\u0010\u0002\u001a\u00020\u0005*\u00020\u00042\u0006\u0010\u0002\u001a\u00020\u0007H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0002\u0010\t\u001a\u0012\u0010\n\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u0087\bø\u0001\u0000\u001a\u0012\u0010\n\u001a\u0004\u0018\u00010\u0005*\u00020\u0004H\u0087\bø\u0001\u0000\u001a\u0019\u0010\n\u001a\u0004\u0018\u00010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0007H\u0007ø\u0001\u0000\u001a\u0019\u0010\n\u001a\u0004\u0018\u00010\u0005*\u00020\u00042\u0006\u0010\u0002\u001a\u00020\u0007H\u0007ø\u0001\u0000\u001a!\u0010\u000f\u001a\u00020\f*\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001H\u0087\nø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a!\u0010\u000f\u001a\u00020\f*\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0087\nø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u001f\u0010\u000f\u001a\u00020\f*\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0012H\u0087\u0002ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u001f\u0010\u000f\u001a\u00020\f*\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0087\u0002ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u001a\u001f\u0010\u000f\u001a\u00020\f*\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0001H\u0087\u0002ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u001a\u001f\u0010\u000f\u001a\u00020\f*\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0005H\u0087\u0002ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001b\u001a\u001f\u0010\u000f\u001a\u00020\f*\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u001cH\u0087\u0002ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001e\u001a\u001f\u0010\u000f\u001a\u00020\f*\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u001cH\u0087\u0002ø\u0001\u0000¢\u0006\u0004\b\u001f\u0010 \u001a\u001f\u0010%\u001a\u00020\"*\u00020\u00122\u0006\u0010!\u001a\u00020\u0012H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b#\u0010$\u001a\u001f\u0010%\u001a\u00020\"*\u00020\u00012\u0006\u0010!\u001a\u00020\u0001H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b&\u0010'\u001a\u001f\u0010%\u001a\u00020(*\u00020\u00052\u0006\u0010!\u001a\u00020\u0005H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b)\u0010*\u001a\u001f\u0010%\u001a\u00020\"*\u00020\u001c2\u0006\u0010!\u001a\u00020\u001cH\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b+\u0010,\u001a\f\u0010-\u001a\u00020\"*\u00020\"H\u0007\u001a\f\u0010-\u001a\u00020(*\u00020(H\u0007\u001a\u0015\u0010/\u001a\u00020\"*\u00020\"2\u0006\u0010/\u001a\u00020.H\u0087\u0004\u001a\u0015\u0010/\u001a\u00020(*\u00020(2\u0006\u0010/\u001a\u000200H\u0087\u0004\u001a\u001f\u00103\u001a\u00020\u0000*\u00020\u00122\u0006\u0010!\u001a\u00020\u0012H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b1\u00102\u001a\u001f\u00103\u001a\u00020\u0000*\u00020\u00012\u0006\u0010!\u001a\u00020\u0001H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b4\u00105\u001a\u001f\u00103\u001a\u00020\u0004*\u00020\u00052\u0006\u0010!\u001a\u00020\u0005H\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b6\u00107\u001a\u001f\u00103\u001a\u00020\u0000*\u00020\u001c2\u0006\u0010!\u001a\u00020\u001cH\u0087\u0004ø\u0001\u0000¢\u0006\u0004\b8\u00109\u001a\u001e\u0010=\u001a\u00020\u0001*\u00020\u00012\u0006\u0010:\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b;\u0010<\u001a\u001e\u0010=\u001a\u00020\u0005*\u00020\u00052\u0006\u0010:\u001a\u00020\u0005H\u0007ø\u0001\u0000¢\u0006\u0004\b>\u0010?\u001a\u001e\u0010=\u001a\u00020\u0012*\u00020\u00122\u0006\u0010:\u001a\u00020\u0012H\u0007ø\u0001\u0000¢\u0006\u0004\b@\u0010A\u001a\u001e\u0010=\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010:\u001a\u00020\u001cH\u0007ø\u0001\u0000¢\u0006\u0004\bB\u0010C\u001a\u001e\u0010F\u001a\u00020\u0001*\u00020\u00012\u0006\u0010D\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\bE\u0010<\u001a\u001e\u0010F\u001a\u00020\u0005*\u00020\u00052\u0006\u0010D\u001a\u00020\u0005H\u0007ø\u0001\u0000¢\u0006\u0004\bG\u0010?\u001a\u001e\u0010F\u001a\u00020\u0012*\u00020\u00122\u0006\u0010D\u001a\u00020\u0012H\u0007ø\u0001\u0000¢\u0006\u0004\bH\u0010A\u001a\u001e\u0010F\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010D\u001a\u00020\u001cH\u0007ø\u0001\u0000¢\u0006\u0004\bI\u0010C\u001a&\u0010L\u001a\u00020\u0001*\u00020\u00012\u0006\u0010:\u001a\u00020\u00012\u0006\u0010D\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\bJ\u0010K\u001a&\u0010L\u001a\u00020\u0005*\u00020\u00052\u0006\u0010:\u001a\u00020\u00052\u0006\u0010D\u001a\u00020\u0005H\u0007ø\u0001\u0000¢\u0006\u0004\bM\u0010N\u001a&\u0010L\u001a\u00020\u0012*\u00020\u00122\u0006\u0010:\u001a\u00020\u00122\u0006\u0010D\u001a\u00020\u0012H\u0007ø\u0001\u0000¢\u0006\u0004\bO\u0010P\u001a&\u0010L\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010:\u001a\u00020\u001c2\u0006\u0010D\u001a\u00020\u001cH\u0007ø\u0001\u0000¢\u0006\u0004\bQ\u0010R\u001a$\u0010L\u001a\u00020\u0001*\u00020\u00012\f\u0010T\u001a\b\u0012\u0004\u0012\u00020\u00010SH\u0007ø\u0001\u0000¢\u0006\u0004\bU\u0010V\u001a$\u0010L\u001a\u00020\u0005*\u00020\u00052\f\u0010T\u001a\b\u0012\u0004\u0012\u00020\u00050SH\u0007ø\u0001\u0000¢\u0006\u0004\bW\u0010X\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006Y"}, d2 = {"Lkotlin/ranges/UIntRange;", "Lkotlin/UInt;", "random", "(Lkotlin/ranges/UIntRange;)I", "Lkotlin/ranges/ULongRange;", "Lkotlin/ULong;", "(Lkotlin/ranges/ULongRange;)J", "Lkotlin/random/Random;", "(Lkotlin/ranges/UIntRange;Lkotlin/random/Random;)I", "(Lkotlin/ranges/ULongRange;Lkotlin/random/Random;)J", "randomOrNull", "element", "", "contains-biwQdVI", "(Lkotlin/ranges/UIntRange;Lkotlin/UInt;)Z", "contains", "contains-GYNo2lE", "(Lkotlin/ranges/ULongRange;Lkotlin/ULong;)Z", "Lkotlin/UByte;", "value", "contains-68kG9v0", "(Lkotlin/ranges/UIntRange;B)Z", "contains-ULb-yJY", "(Lkotlin/ranges/ULongRange;B)Z", "contains-Gab390E", "(Lkotlin/ranges/ULongRange;I)Z", "contains-fz5IDCE", "(Lkotlin/ranges/UIntRange;J)Z", "Lkotlin/UShort;", "contains-ZsK3CEQ", "(Lkotlin/ranges/UIntRange;S)Z", "contains-uhHAxoY", "(Lkotlin/ranges/ULongRange;S)Z", TypedValues.TransitionType.S_TO, "Lkotlin/ranges/UIntProgression;", "downTo-Kr8caGY", "(BB)Lkotlin/ranges/UIntProgression;", "downTo", "downTo-J1ME1BU", "(II)Lkotlin/ranges/UIntProgression;", "Lkotlin/ranges/ULongProgression;", "downTo-eb3DHEI", "(JJ)Lkotlin/ranges/ULongProgression;", "downTo-5PvTz6A", "(SS)Lkotlin/ranges/UIntProgression;", "reversed", "", "step", "", "until-Kr8caGY", "(BB)Lkotlin/ranges/UIntRange;", "until", "until-J1ME1BU", "(II)Lkotlin/ranges/UIntRange;", "until-eb3DHEI", "(JJ)Lkotlin/ranges/ULongRange;", "until-5PvTz6A", "(SS)Lkotlin/ranges/UIntRange;", "minimumValue", "coerceAtLeast-J1ME1BU", "(II)I", "coerceAtLeast", "coerceAtLeast-eb3DHEI", "(JJ)J", "coerceAtLeast-Kr8caGY", "(BB)B", "coerceAtLeast-5PvTz6A", "(SS)S", "maximumValue", "coerceAtMost-J1ME1BU", "coerceAtMost", "coerceAtMost-eb3DHEI", "coerceAtMost-Kr8caGY", "coerceAtMost-5PvTz6A", "coerceIn-WZ9TVnA", "(III)I", "coerceIn", "coerceIn-sambcqE", "(JJJ)J", "coerceIn-b33U2AM", "(BBB)B", "coerceIn-VKSA0NQ", "(SSS)S", "Lkotlin/ranges/ClosedRange;", "range", "coerceIn-wuiCnnA", "(ILkotlin/ranges/ClosedRange;)I", "coerceIn-JPwROB0", "(JLkotlin/ranges/ClosedRange;)J", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/ranges/URangesKt")
/* loaded from: classes5.dex */
class URangesKt___URangesKt {
    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtLeast-5PvTz6A  reason: not valid java name */
    public static final short m1253coerceAtLeast5PvTz6A(short s3, short s4) {
        return Intrinsics.compare(s3 & UShort.MAX_VALUE, 65535 & s4) < 0 ? s4 : s3;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtLeast-J1ME1BU  reason: not valid java name */
    public static final int m1254coerceAtLeastJ1ME1BU(int i2, int i4) {
        return UnsignedKt.uintCompare(i2, i4) < 0 ? i4 : i2;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtLeast-Kr8caGY  reason: not valid java name */
    public static final byte m1255coerceAtLeastKr8caGY(byte b4, byte b5) {
        return Intrinsics.compare(b4 & 255, b5 & 255) < 0 ? b5 : b4;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtLeast-eb3DHEI  reason: not valid java name */
    public static final long m1256coerceAtLeasteb3DHEI(long j4, long j5) {
        return UnsignedKt.ulongCompare(j4, j5) < 0 ? j5 : j4;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtMost-5PvTz6A  reason: not valid java name */
    public static final short m1257coerceAtMost5PvTz6A(short s3, short s4) {
        return Intrinsics.compare(s3 & UShort.MAX_VALUE, 65535 & s4) > 0 ? s4 : s3;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtMost-J1ME1BU  reason: not valid java name */
    public static final int m1258coerceAtMostJ1ME1BU(int i2, int i4) {
        return UnsignedKt.uintCompare(i2, i4) > 0 ? i4 : i2;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtMost-Kr8caGY  reason: not valid java name */
    public static final byte m1259coerceAtMostKr8caGY(byte b4, byte b5) {
        return Intrinsics.compare(b4 & 255, b5 & 255) > 0 ? b5 : b4;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceAtMost-eb3DHEI  reason: not valid java name */
    public static final long m1260coerceAtMosteb3DHEI(long j4, long j5) {
        return UnsignedKt.ulongCompare(j4, j5) > 0 ? j5 : j4;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceIn-JPwROB0  reason: not valid java name */
    public static final long m1261coerceInJPwROB0(long j4, @NotNull ClosedRange<ULong> range) {
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return ((ULong) RangesKt___RangesKt.coerceIn(ULong.m190boximpl(j4), (ClosedFloatingPointRange<ULong>) range)).m247unboximpl();
        }
        if (!range.isEmpty()) {
            return UnsignedKt.ulongCompare(j4, range.getStart().m247unboximpl()) < 0 ? range.getStart().m247unboximpl() : UnsignedKt.ulongCompare(j4, range.getEndInclusive().m247unboximpl()) > 0 ? range.getEndInclusive().m247unboximpl() : j4;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + d.f65364a);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceIn-VKSA0NQ  reason: not valid java name */
    public static final short m1262coerceInVKSA0NQ(short s3, short s4, short s5) {
        int i2 = s4 & UShort.MAX_VALUE;
        int i4 = s5 & UShort.MAX_VALUE;
        if (Intrinsics.compare(i2, i4) <= 0) {
            int i5 = 65535 & s3;
            return Intrinsics.compare(i5, i2) < 0 ? s4 : Intrinsics.compare(i5, i4) > 0 ? s5 : s3;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + UShort.m345toStringimpl(s5) + " is less than minimum " + UShort.m345toStringimpl(s4) + d.f65364a);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceIn-WZ9TVnA  reason: not valid java name */
    public static final int m1263coerceInWZ9TVnA(int i2, int i4, int i5) {
        if (UnsignedKt.uintCompare(i4, i5) <= 0) {
            return UnsignedKt.uintCompare(i2, i4) < 0 ? i4 : UnsignedKt.uintCompare(i2, i5) > 0 ? i5 : i2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + UInt.m163toStringimpl(i5) + " is less than minimum " + UInt.m163toStringimpl(i4) + d.f65364a);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceIn-b33U2AM  reason: not valid java name */
    public static final byte m1264coerceInb33U2AM(byte b4, byte b5, byte b6) {
        int i2 = b5 & 255;
        int i4 = b6 & 255;
        if (Intrinsics.compare(i2, i4) <= 0) {
            int i5 = b4 & 255;
            return Intrinsics.compare(i5, i2) < 0 ? b5 : Intrinsics.compare(i5, i4) > 0 ? b6 : b4;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + UByte.m85toStringimpl(b6) + " is less than minimum " + UByte.m85toStringimpl(b5) + d.f65364a);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceIn-sambcqE  reason: not valid java name */
    public static final long m1265coerceInsambcqE(long j4, long j5, long j6) {
        if (UnsignedKt.ulongCompare(j5, j6) <= 0) {
            return UnsignedKt.ulongCompare(j4, j5) < 0 ? j5 : UnsignedKt.ulongCompare(j4, j6) > 0 ? j6 : j4;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ULong.m241toStringimpl(j6) + " is less than minimum " + ULong.m241toStringimpl(j5) + d.f65364a);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: coerceIn-wuiCnnA  reason: not valid java name */
    public static final int m1266coerceInwuiCnnA(int i2, @NotNull ClosedRange<UInt> range) {
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return ((UInt) RangesKt___RangesKt.coerceIn(UInt.m112boximpl(i2), (ClosedFloatingPointRange<UInt>) range)).m169unboximpl();
        }
        if (!range.isEmpty()) {
            return UnsignedKt.uintCompare(i2, range.getStart().m169unboximpl()) < 0 ? range.getStart().m169unboximpl() : UnsignedKt.uintCompare(i2, range.getEndInclusive().m169unboximpl()) > 0 ? range.getEndInclusive().m169unboximpl() : i2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + d.f65364a);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: contains-68kG9v0  reason: not valid java name */
    public static final boolean m1267contains68kG9v0(@NotNull UIntRange contains, byte b4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m1244containsWZ4Q5Ns(UInt.m118constructorimpl(b4 & 255));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    /* renamed from: contains-GYNo2lE  reason: not valid java name */
    private static final boolean m1268containsGYNo2lE(ULongRange contains, ULong uLong) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return uLong != null && contains.m1250containsVKZWuLQ(uLong.m247unboximpl());
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: contains-Gab390E  reason: not valid java name */
    public static final boolean m1269containsGab390E(@NotNull ULongRange contains, int i2) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m1250containsVKZWuLQ(ULong.m196constructorimpl(i2 & 4294967295L));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: contains-ULb-yJY  reason: not valid java name */
    public static final boolean m1270containsULbyJY(@NotNull ULongRange contains, byte b4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m1250containsVKZWuLQ(ULong.m196constructorimpl(b4 & 255));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: contains-ZsK3CEQ  reason: not valid java name */
    public static final boolean m1271containsZsK3CEQ(@NotNull UIntRange contains, short s3) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m1244containsWZ4Q5Ns(UInt.m118constructorimpl(s3 & UShort.MAX_VALUE));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    /* renamed from: contains-biwQdVI  reason: not valid java name */
    private static final boolean m1272containsbiwQdVI(UIntRange contains, UInt uInt) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return uInt != null && contains.m1244containsWZ4Q5Ns(uInt.m169unboximpl());
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: contains-fz5IDCE  reason: not valid java name */
    public static final boolean m1273containsfz5IDCE(@NotNull UIntRange contains, long j4) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return ULong.m196constructorimpl(j4 >>> 32) == 0 && contains.m1244containsWZ4Q5Ns(UInt.m118constructorimpl((int) j4));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: contains-uhHAxoY  reason: not valid java name */
    public static final boolean m1274containsuhHAxoY(@NotNull ULongRange contains, short s3) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m1250containsVKZWuLQ(ULong.m196constructorimpl(s3 & 65535));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: downTo-5PvTz6A  reason: not valid java name */
    public static final UIntProgression m1275downTo5PvTz6A(short s3, short s4) {
        return UIntProgression.Companion.m1243fromClosedRangeNkh28Cs(UInt.m118constructorimpl(s3 & UShort.MAX_VALUE), UInt.m118constructorimpl(s4 & UShort.MAX_VALUE), -1);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: downTo-J1ME1BU  reason: not valid java name */
    public static final UIntProgression m1276downToJ1ME1BU(int i2, int i4) {
        return UIntProgression.Companion.m1243fromClosedRangeNkh28Cs(i2, i4, -1);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: downTo-Kr8caGY  reason: not valid java name */
    public static final UIntProgression m1277downToKr8caGY(byte b4, byte b5) {
        return UIntProgression.Companion.m1243fromClosedRangeNkh28Cs(UInt.m118constructorimpl(b4 & 255), UInt.m118constructorimpl(b5 & 255), -1);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: downTo-eb3DHEI  reason: not valid java name */
    public static final ULongProgression m1278downToeb3DHEI(long j4, long j5) {
        return ULongProgression.Companion.m1249fromClosedRange7ftBX0g(j4, j5, -1L);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    private static final int random(UIntRange uIntRange) {
        return random(uIntRange, Random.Default);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class, ExperimentalUnsignedTypes.class})
    @InlineOnly
    private static final UInt randomOrNull(UIntRange uIntRange) {
        return randomOrNull(uIntRange, Random.Default);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    public static final UIntProgression reversed(@NotNull UIntProgression reversed) {
        Intrinsics.checkNotNullParameter(reversed, "$this$reversed");
        return UIntProgression.Companion.m1243fromClosedRangeNkh28Cs(reversed.m1242getLastpVg5ArA(), reversed.m1241getFirstpVg5ArA(), -reversed.getStep());
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    public static final UIntProgression step(@NotNull UIntProgression step, int i2) {
        Intrinsics.checkNotNullParameter(step, "$this$step");
        RangesKt__RangesKt.checkStepIsPositive(i2 > 0, Integer.valueOf(i2));
        UIntProgression.Companion companion = UIntProgression.Companion;
        int m1241getFirstpVg5ArA = step.m1241getFirstpVg5ArA();
        int m1242getLastpVg5ArA = step.m1242getLastpVg5ArA();
        if (step.getStep() <= 0) {
            i2 = -i2;
        }
        return companion.m1243fromClosedRangeNkh28Cs(m1241getFirstpVg5ArA, m1242getLastpVg5ArA, i2);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: until-5PvTz6A  reason: not valid java name */
    public static final UIntRange m1279until5PvTz6A(short s3, short s4) {
        int i2 = s4 & UShort.MAX_VALUE;
        return Intrinsics.compare(i2, 0) <= 0 ? UIntRange.Companion.getEMPTY() : new UIntRange(UInt.m118constructorimpl(s3 & UShort.MAX_VALUE), UInt.m118constructorimpl(UInt.m118constructorimpl(i2) - 1), null);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: until-J1ME1BU  reason: not valid java name */
    public static final UIntRange m1280untilJ1ME1BU(int i2, int i4) {
        return UnsignedKt.uintCompare(i4, 0) <= 0 ? UIntRange.Companion.getEMPTY() : new UIntRange(i2, UInt.m118constructorimpl(i4 - 1), null);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: until-Kr8caGY  reason: not valid java name */
    public static final UIntRange m1281untilKr8caGY(byte b4, byte b5) {
        int i2 = b5 & 255;
        return Intrinsics.compare(i2, 0) <= 0 ? UIntRange.Companion.getEMPTY() : new UIntRange(UInt.m118constructorimpl(b4 & 255), UInt.m118constructorimpl(UInt.m118constructorimpl(i2) - 1), null);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: until-eb3DHEI  reason: not valid java name */
    public static final ULongRange m1282untileb3DHEI(long j4, long j5) {
        return UnsignedKt.ulongCompare(j5, 0L) <= 0 ? ULongRange.Companion.getEMPTY() : new ULongRange(j4, ULong.m196constructorimpl(j5 - ULong.m196constructorimpl(1 & 4294967295L)), null);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    private static final long random(ULongRange uLongRange) {
        return random(uLongRange, Random.Default);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class, ExperimentalUnsignedTypes.class})
    @InlineOnly
    private static final ULong randomOrNull(ULongRange uLongRange) {
        return randomOrNull(uLongRange, Random.Default);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    public static final ULongProgression reversed(@NotNull ULongProgression reversed) {
        Intrinsics.checkNotNullParameter(reversed, "$this$reversed");
        return ULongProgression.Companion.m1249fromClosedRange7ftBX0g(reversed.m1248getLastsVKNKU(), reversed.m1247getFirstsVKNKU(), -reversed.getStep());
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final int random(@NotNull UIntRange random, @NotNull Random random2) {
        Intrinsics.checkNotNullParameter(random, "$this$random");
        Intrinsics.checkNotNullParameter(random2, "random");
        try {
            return URandomKt.nextUInt(random2, random);
        } catch (IllegalArgumentException e4) {
            throw new NoSuchElementException(e4.getMessage());
        }
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class, ExperimentalUnsignedTypes.class})
    @Nullable
    public static final UInt randomOrNull(@NotNull UIntRange randomOrNull, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(randomOrNull, "$this$randomOrNull");
        Intrinsics.checkNotNullParameter(random, "random");
        if (randomOrNull.isEmpty()) {
            return null;
        }
        return UInt.m112boximpl(URandomKt.nextUInt(random, randomOrNull));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    public static final ULongProgression step(@NotNull ULongProgression step, long j4) {
        Intrinsics.checkNotNullParameter(step, "$this$step");
        RangesKt__RangesKt.checkStepIsPositive(j4 > 0, Long.valueOf(j4));
        ULongProgression.Companion companion = ULongProgression.Companion;
        long m1247getFirstsVKNKU = step.m1247getFirstsVKNKU();
        long m1248getLastsVKNKU = step.m1248getLastsVKNKU();
        if (step.getStep() <= 0) {
            j4 = -j4;
        }
        return companion.m1249fromClosedRange7ftBX0g(m1247getFirstsVKNKU, m1248getLastsVKNKU, j4);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final long random(@NotNull ULongRange random, @NotNull Random random2) {
        Intrinsics.checkNotNullParameter(random, "$this$random");
        Intrinsics.checkNotNullParameter(random2, "random");
        try {
            return URandomKt.nextULong(random2, random);
        } catch (IllegalArgumentException e4) {
            throw new NoSuchElementException(e4.getMessage());
        }
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class, ExperimentalUnsignedTypes.class})
    @Nullable
    public static final ULong randomOrNull(@NotNull ULongRange randomOrNull, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(randomOrNull, "$this$randomOrNull");
        Intrinsics.checkNotNullParameter(random, "random");
        if (randomOrNull.isEmpty()) {
            return null;
        }
        return ULong.m190boximpl(URandomKt.nextULong(random, randomOrNull));
    }
}
