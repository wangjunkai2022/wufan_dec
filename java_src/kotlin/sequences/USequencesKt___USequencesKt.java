package kotlin.sequences;

import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.WasExperimental;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: _USequences.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001c\u0010\u0004\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u001c\u0010\u0004\u001a\u00020\u0005*\b\u0012\u0004\u0012\u00020\u00050\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u001c\u0010\u0004\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\b0\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b\t\u0010\u0003\u001a\u001c\u0010\u0004\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\n0\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\u0003\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {"Lkotlin/sequences/Sequence;", "Lkotlin/UInt;", "sumOfUInt", "(Lkotlin/sequences/Sequence;)I", "sum", "Lkotlin/ULong;", "sumOfULong", "(Lkotlin/sequences/Sequence;)J", "Lkotlin/UByte;", "sumOfUByte", "Lkotlin/UShort;", "sumOfUShort", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/sequences/USequencesKt")
/* loaded from: classes5.dex */
class USequencesKt___USequencesKt {
    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @JvmName(name = "sumOfUByte")
    public static final int sumOfUByte(@NotNull Sequence<UByte> sum) {
        Intrinsics.checkNotNullParameter(sum, "$this$sum");
        int i2 = 0;
        for (UByte uByte : sum) {
            i2 = UInt.m118constructorimpl(i2 + UInt.m118constructorimpl(uByte.m91unboximpl() & 255));
        }
        return i2;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @JvmName(name = "sumOfUInt")
    public static final int sumOfUInt(@NotNull Sequence<UInt> sum) {
        Intrinsics.checkNotNullParameter(sum, "$this$sum");
        int i2 = 0;
        for (UInt uInt : sum) {
            i2 = UInt.m118constructorimpl(i2 + uInt.m169unboximpl());
        }
        return i2;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @JvmName(name = "sumOfULong")
    public static final long sumOfULong(@NotNull Sequence<ULong> sum) {
        Intrinsics.checkNotNullParameter(sum, "$this$sum");
        long j4 = 0;
        for (ULong uLong : sum) {
            j4 = ULong.m196constructorimpl(j4 + uLong.m247unboximpl());
        }
        return j4;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @JvmName(name = "sumOfUShort")
    public static final int sumOfUShort(@NotNull Sequence<UShort> sum) {
        Intrinsics.checkNotNullParameter(sum, "$this$sum");
        int i2 = 0;
        for (UShort uShort : sum) {
            i2 = UInt.m118constructorimpl(i2 + UInt.m118constructorimpl(uShort.m351unboximpl() & UShort.MAX_VALUE));
        }
        return i2;
    }
}
