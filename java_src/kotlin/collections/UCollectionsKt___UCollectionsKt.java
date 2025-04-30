package kotlin.collections;

import java.util.Collection;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.WasExperimental;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: _UCollections.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001c\n\u0002\b\b\u001a\u001c\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u001c\u0010\u0007\u001a\u00020\u0006*\b\u0012\u0004\u0012\u00020\u00050\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\b\u001a\u001c\u0010\u000b\u001a\u00020\n*\b\u0012\u0004\u0012\u00020\t0\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a\u001c\u0010\u000f\u001a\u00020\u000e*\b\u0012\u0004\u0012\u00020\r0\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u001c\u0010\u0014\u001a\u00020\u0005*\b\u0012\u0004\u0012\u00020\u00050\u0011H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u001c\u0010\u0014\u001a\u00020\t*\b\u0012\u0004\u0012\u00020\t0\u0011H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u001c\u0010\u0014\u001a\u00020\u0005*\b\u0012\u0004\u0012\u00020\u00010\u0011H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0013\u001a\u001c\u0010\u0014\u001a\u00020\u0005*\b\u0012\u0004\u0012\u00020\r0\u0011H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0013\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"", "Lkotlin/UByte;", "Lkotlin/UByteArray;", "toUByteArray", "(Ljava/util/Collection;)[B", "Lkotlin/UInt;", "Lkotlin/UIntArray;", "toUIntArray", "(Ljava/util/Collection;)[I", "Lkotlin/ULong;", "Lkotlin/ULongArray;", "toULongArray", "(Ljava/util/Collection;)[J", "Lkotlin/UShort;", "Lkotlin/UShortArray;", "toUShortArray", "(Ljava/util/Collection;)[S", "", "sumOfUInt", "(Ljava/lang/Iterable;)I", "sum", "sumOfULong", "(Ljava/lang/Iterable;)J", "sumOfUByte", "sumOfUShort", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/collections/UCollectionsKt")
/* loaded from: classes5.dex */
class UCollectionsKt___UCollectionsKt {
    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @JvmName(name = "sumOfUByte")
    public static final int sumOfUByte(@NotNull Iterable<UByte> sum) {
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
    public static final int sumOfUInt(@NotNull Iterable<UInt> sum) {
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
    public static final long sumOfULong(@NotNull Iterable<ULong> sum) {
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
    public static final int sumOfUShort(@NotNull Iterable<UShort> sum) {
        Intrinsics.checkNotNullParameter(sum, "$this$sum");
        int i2 = 0;
        for (UShort uShort : sum) {
            i2 = UInt.m118constructorimpl(i2 + UInt.m118constructorimpl(uShort.m351unboximpl() & UShort.MAX_VALUE));
        }
        return i2;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    public static final byte[] toUByteArray(@NotNull Collection<UByte> toUByteArray) {
        Intrinsics.checkNotNullParameter(toUByteArray, "$this$toUByteArray");
        byte[] m93constructorimpl = UByteArray.m93constructorimpl(toUByteArray.size());
        int i2 = 0;
        for (UByte uByte : toUByteArray) {
            UByteArray.m104setVurrAj0(m93constructorimpl, i2, uByte.m91unboximpl());
            i2++;
        }
        return m93constructorimpl;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    public static final int[] toUIntArray(@NotNull Collection<UInt> toUIntArray) {
        Intrinsics.checkNotNullParameter(toUIntArray, "$this$toUIntArray");
        int[] m171constructorimpl = UIntArray.m171constructorimpl(toUIntArray.size());
        int i2 = 0;
        for (UInt uInt : toUIntArray) {
            UIntArray.m182setVXSXFK8(m171constructorimpl, i2, uInt.m169unboximpl());
            i2++;
        }
        return m171constructorimpl;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    public static final long[] toULongArray(@NotNull Collection<ULong> toULongArray) {
        Intrinsics.checkNotNullParameter(toULongArray, "$this$toULongArray");
        long[] m249constructorimpl = ULongArray.m249constructorimpl(toULongArray.size());
        int i2 = 0;
        for (ULong uLong : toULongArray) {
            ULongArray.m260setk8EXiF4(m249constructorimpl, i2, uLong.m247unboximpl());
            i2++;
        }
        return m249constructorimpl;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    public static final short[] toUShortArray(@NotNull Collection<UShort> toUShortArray) {
        Intrinsics.checkNotNullParameter(toUShortArray, "$this$toUShortArray");
        short[] m353constructorimpl = UShortArray.m353constructorimpl(toUShortArray.size());
        int i2 = 0;
        for (UShort uShort : toUShortArray) {
            UShortArray.m364set01HTLdE(m353constructorimpl, i2, uShort.m351unboximpl());
            i2++;
        }
        return m353constructorimpl;
    }
}
