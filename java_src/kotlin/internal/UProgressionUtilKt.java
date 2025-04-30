package kotlin.internal;

import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UnsignedKt;
/* compiled from: UProgressionUtil.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\u001a*\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0002ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a*\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0001\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0007H\u0002ø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001a*\u0010\u000f\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\fH\u0001ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u0005\u001a*\u0010\u000f\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0010H\u0001ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Lkotlin/UInt;", "a", "b", ai.aD, "differenceModulo-WZ9TVnA", "(III)I", "differenceModulo", "Lkotlin/ULong;", "differenceModulo-sambcqE", "(JJJ)J", "start", "end", "", "step", "getProgressionLastElement-Nkh28Cs", "getProgressionLastElement", "", "getProgressionLastElement-7ftBX0g", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class UProgressionUtilKt {
    /* renamed from: differenceModulo-WZ9TVnA  reason: not valid java name */
    private static final int m1224differenceModuloWZ9TVnA(int i2, int i4, int i5) {
        int m372uintRemainderJ1ME1BU = UnsignedKt.m372uintRemainderJ1ME1BU(i2, i5);
        int m372uintRemainderJ1ME1BU2 = UnsignedKt.m372uintRemainderJ1ME1BU(i4, i5);
        int uintCompare = UnsignedKt.uintCompare(m372uintRemainderJ1ME1BU, m372uintRemainderJ1ME1BU2);
        int m118constructorimpl = UInt.m118constructorimpl(m372uintRemainderJ1ME1BU - m372uintRemainderJ1ME1BU2);
        return uintCompare >= 0 ? m118constructorimpl : UInt.m118constructorimpl(m118constructorimpl + i5);
    }

    /* renamed from: differenceModulo-sambcqE  reason: not valid java name */
    private static final long m1225differenceModulosambcqE(long j4, long j5, long j6) {
        long m374ulongRemaindereb3DHEI = UnsignedKt.m374ulongRemaindereb3DHEI(j4, j6);
        long m374ulongRemaindereb3DHEI2 = UnsignedKt.m374ulongRemaindereb3DHEI(j5, j6);
        int ulongCompare = UnsignedKt.ulongCompare(m374ulongRemaindereb3DHEI, m374ulongRemaindereb3DHEI2);
        long m196constructorimpl = ULong.m196constructorimpl(m374ulongRemaindereb3DHEI - m374ulongRemaindereb3DHEI2);
        return ulongCompare >= 0 ? m196constructorimpl : ULong.m196constructorimpl(m196constructorimpl + j6);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* renamed from: getProgressionLastElement-7ftBX0g  reason: not valid java name */
    public static final long m1226getProgressionLastElement7ftBX0g(long j4, long j5, long j6) {
        if (j6 > 0) {
            return UnsignedKt.ulongCompare(j4, j5) >= 0 ? j5 : ULong.m196constructorimpl(j5 - m1225differenceModulosambcqE(j5, j4, ULong.m196constructorimpl(j6)));
        } else if (j6 < 0) {
            return UnsignedKt.ulongCompare(j4, j5) <= 0 ? j5 : ULong.m196constructorimpl(j5 + m1225differenceModulosambcqE(j4, j5, ULong.m196constructorimpl(-j6)));
        } else {
            throw new IllegalArgumentException("Step is zero.");
        }
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* renamed from: getProgressionLastElement-Nkh28Cs  reason: not valid java name */
    public static final int m1227getProgressionLastElementNkh28Cs(int i2, int i4, int i5) {
        if (i5 > 0) {
            return UnsignedKt.uintCompare(i2, i4) >= 0 ? i4 : UInt.m118constructorimpl(i4 - m1224differenceModuloWZ9TVnA(i4, i2, UInt.m118constructorimpl(i5)));
        } else if (i5 < 0) {
            return UnsignedKt.uintCompare(i2, i4) <= 0 ? i4 : UInt.m118constructorimpl(i4 + m1224differenceModuloWZ9TVnA(i2, i4, UInt.m118constructorimpl(-i5)));
        } else {
            throw new IllegalArgumentException("Step is zero.");
        }
    }
}
