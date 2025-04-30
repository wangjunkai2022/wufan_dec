package kotlin.collections;

import com.join.mgps.activity.MyAccountLoginActivity_;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: UArraySorting.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\u001a*\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a*\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0003ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001a*\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0003ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a*\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0003ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a*\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a*\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001a*\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a*\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0003ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u001a*\u0010\u001e\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u0002H\u0001ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\n\u001a*\u0010\u001e\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u0002H\u0001ø\u0001\u0000¢\u0006\u0004\b\u001f\u0010\u0010\u001a*\u0010\u001e\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u0002H\u0001ø\u0001\u0000¢\u0006\u0004\b \u0010\u0015\u001a*\u0010\u001e\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u0002H\u0001ø\u0001\u0000¢\u0006\u0004\b!\u0010\u001a\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\""}, d2 = {"Lkotlin/UByteArray;", "array", "", "left", "right", "partition-4UcCI2c", "([BII)I", "partition", "", "quickSort-4UcCI2c", "([BII)V", "quickSort", "Lkotlin/UShortArray;", "partition-Aa5vz7o", "([SII)I", "quickSort-Aa5vz7o", "([SII)V", "Lkotlin/UIntArray;", "partition-oBK06Vg", "([III)I", "quickSort-oBK06Vg", "([III)V", "Lkotlin/ULongArray;", "partition--nroSd4", "([JII)I", "quickSort--nroSd4", "([JII)V", MyAccountLoginActivity_.J, "toIndex", "sortArray-4UcCI2c", "sortArray", "sortArray-Aa5vz7o", "sortArray-oBK06Vg", "sortArray--nroSd4", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class UArraySortingKt {
    @ExperimentalUnsignedTypes
    /* renamed from: partition--nroSd4  reason: not valid java name */
    private static final int m471partitionnroSd4(long[] jArr, int i2, int i4) {
        long m255getsVKNKU = ULongArray.m255getsVKNKU(jArr, (i2 + i4) / 2);
        while (i2 <= i4) {
            while (UnsignedKt.ulongCompare(ULongArray.m255getsVKNKU(jArr, i2), m255getsVKNKU) < 0) {
                i2++;
            }
            while (UnsignedKt.ulongCompare(ULongArray.m255getsVKNKU(jArr, i4), m255getsVKNKU) > 0) {
                i4--;
            }
            if (i2 <= i4) {
                long m255getsVKNKU2 = ULongArray.m255getsVKNKU(jArr, i2);
                ULongArray.m260setk8EXiF4(jArr, i2, ULongArray.m255getsVKNKU(jArr, i4));
                ULongArray.m260setk8EXiF4(jArr, i4, m255getsVKNKU2);
                i2++;
                i4--;
            }
        }
        return i2;
    }

    @ExperimentalUnsignedTypes
    /* renamed from: partition-4UcCI2c  reason: not valid java name */
    private static final int m472partition4UcCI2c(byte[] bArr, int i2, int i4) {
        int i5;
        byte m99getw2LRezQ = UByteArray.m99getw2LRezQ(bArr, (i2 + i4) / 2);
        while (i2 <= i4) {
            while (true) {
                i5 = m99getw2LRezQ & 255;
                if (Intrinsics.compare(UByteArray.m99getw2LRezQ(bArr, i2) & 255, i5) >= 0) {
                    break;
                }
                i2++;
            }
            while (Intrinsics.compare(UByteArray.m99getw2LRezQ(bArr, i4) & 255, i5) > 0) {
                i4--;
            }
            if (i2 <= i4) {
                byte m99getw2LRezQ2 = UByteArray.m99getw2LRezQ(bArr, i2);
                UByteArray.m104setVurrAj0(bArr, i2, UByteArray.m99getw2LRezQ(bArr, i4));
                UByteArray.m104setVurrAj0(bArr, i4, m99getw2LRezQ2);
                i2++;
                i4--;
            }
        }
        return i2;
    }

    @ExperimentalUnsignedTypes
    /* renamed from: partition-Aa5vz7o  reason: not valid java name */
    private static final int m473partitionAa5vz7o(short[] sArr, int i2, int i4) {
        int i5;
        short m359getMh2AYeg = UShortArray.m359getMh2AYeg(sArr, (i2 + i4) / 2);
        while (i2 <= i4) {
            while (true) {
                int m359getMh2AYeg2 = UShortArray.m359getMh2AYeg(sArr, i2) & UShort.MAX_VALUE;
                i5 = m359getMh2AYeg & UShort.MAX_VALUE;
                if (Intrinsics.compare(m359getMh2AYeg2, i5) >= 0) {
                    break;
                }
                i2++;
            }
            while (Intrinsics.compare(UShortArray.m359getMh2AYeg(sArr, i4) & UShort.MAX_VALUE, i5) > 0) {
                i4--;
            }
            if (i2 <= i4) {
                short m359getMh2AYeg3 = UShortArray.m359getMh2AYeg(sArr, i2);
                UShortArray.m364set01HTLdE(sArr, i2, UShortArray.m359getMh2AYeg(sArr, i4));
                UShortArray.m364set01HTLdE(sArr, i4, m359getMh2AYeg3);
                i2++;
                i4--;
            }
        }
        return i2;
    }

    @ExperimentalUnsignedTypes
    /* renamed from: partition-oBK06Vg  reason: not valid java name */
    private static final int m474partitionoBK06Vg(int[] iArr, int i2, int i4) {
        int m177getpVg5ArA = UIntArray.m177getpVg5ArA(iArr, (i2 + i4) / 2);
        while (i2 <= i4) {
            while (UnsignedKt.uintCompare(UIntArray.m177getpVg5ArA(iArr, i2), m177getpVg5ArA) < 0) {
                i2++;
            }
            while (UnsignedKt.uintCompare(UIntArray.m177getpVg5ArA(iArr, i4), m177getpVg5ArA) > 0) {
                i4--;
            }
            if (i2 <= i4) {
                int m177getpVg5ArA2 = UIntArray.m177getpVg5ArA(iArr, i2);
                UIntArray.m182setVXSXFK8(iArr, i2, UIntArray.m177getpVg5ArA(iArr, i4));
                UIntArray.m182setVXSXFK8(iArr, i4, m177getpVg5ArA2);
                i2++;
                i4--;
            }
        }
        return i2;
    }

    @ExperimentalUnsignedTypes
    /* renamed from: quickSort--nroSd4  reason: not valid java name */
    private static final void m475quickSortnroSd4(long[] jArr, int i2, int i4) {
        int m471partitionnroSd4 = m471partitionnroSd4(jArr, i2, i4);
        int i5 = m471partitionnroSd4 - 1;
        if (i2 < i5) {
            m475quickSortnroSd4(jArr, i2, i5);
        }
        if (m471partitionnroSd4 < i4) {
            m475quickSortnroSd4(jArr, m471partitionnroSd4, i4);
        }
    }

    @ExperimentalUnsignedTypes
    /* renamed from: quickSort-4UcCI2c  reason: not valid java name */
    private static final void m476quickSort4UcCI2c(byte[] bArr, int i2, int i4) {
        int m472partition4UcCI2c = m472partition4UcCI2c(bArr, i2, i4);
        int i5 = m472partition4UcCI2c - 1;
        if (i2 < i5) {
            m476quickSort4UcCI2c(bArr, i2, i5);
        }
        if (m472partition4UcCI2c < i4) {
            m476quickSort4UcCI2c(bArr, m472partition4UcCI2c, i4);
        }
    }

    @ExperimentalUnsignedTypes
    /* renamed from: quickSort-Aa5vz7o  reason: not valid java name */
    private static final void m477quickSortAa5vz7o(short[] sArr, int i2, int i4) {
        int m473partitionAa5vz7o = m473partitionAa5vz7o(sArr, i2, i4);
        int i5 = m473partitionAa5vz7o - 1;
        if (i2 < i5) {
            m477quickSortAa5vz7o(sArr, i2, i5);
        }
        if (m473partitionAa5vz7o < i4) {
            m477quickSortAa5vz7o(sArr, m473partitionAa5vz7o, i4);
        }
    }

    @ExperimentalUnsignedTypes
    /* renamed from: quickSort-oBK06Vg  reason: not valid java name */
    private static final void m478quickSortoBK06Vg(int[] iArr, int i2, int i4) {
        int m474partitionoBK06Vg = m474partitionoBK06Vg(iArr, i2, i4);
        int i5 = m474partitionoBK06Vg - 1;
        if (i2 < i5) {
            m478quickSortoBK06Vg(iArr, i2, i5);
        }
        if (m474partitionoBK06Vg < i4) {
            m478quickSortoBK06Vg(iArr, m474partitionoBK06Vg, i4);
        }
    }

    @ExperimentalUnsignedTypes
    /* renamed from: sortArray--nroSd4  reason: not valid java name */
    public static final void m479sortArraynroSd4(@NotNull long[] array, int i2, int i4) {
        Intrinsics.checkNotNullParameter(array, "array");
        m475quickSortnroSd4(array, i2, i4 - 1);
    }

    @ExperimentalUnsignedTypes
    /* renamed from: sortArray-4UcCI2c  reason: not valid java name */
    public static final void m480sortArray4UcCI2c(@NotNull byte[] array, int i2, int i4) {
        Intrinsics.checkNotNullParameter(array, "array");
        m476quickSort4UcCI2c(array, i2, i4 - 1);
    }

    @ExperimentalUnsignedTypes
    /* renamed from: sortArray-Aa5vz7o  reason: not valid java name */
    public static final void m481sortArrayAa5vz7o(@NotNull short[] array, int i2, int i4) {
        Intrinsics.checkNotNullParameter(array, "array");
        m477quickSortAa5vz7o(array, i2, i4 - 1);
    }

    @ExperimentalUnsignedTypes
    /* renamed from: sortArray-oBK06Vg  reason: not valid java name */
    public static final void m482sortArrayoBK06Vg(@NotNull int[] array, int i2, int i4) {
        Intrinsics.checkNotNullParameter(array, "array");
        m478quickSortoBK06Vg(array, i2, i4 - 1);
    }
}
