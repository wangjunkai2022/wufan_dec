package kotlin.comparisons;

import com.umeng.analytics.pro.ai;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UShort;
import kotlin.UnsignedKt;
import kotlin.WasExperimental;
import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _UComparisons.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\u001a\"\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a\"\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0006H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\b\u001a\"\u0010\u0005\u001a\u00020\t2\u0006\u0010\u0001\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\tH\u0007ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a\"\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0001\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\fH\u0007ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a+\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001a+\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a+\u0010\u0005\u001a\u00020\t2\u0006\u0010\u0001\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tH\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001a+\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0001\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\fH\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u001a&\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\n\u0010\u0019\u001a\u00020\u0018\"\u00020\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001b\u001a&\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00062\n\u0010\u0019\u001a\u00020\u001c\"\u00020\u0006H\u0007ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001e\u001a&\u0010\u0005\u001a\u00020\t2\u0006\u0010\u0001\u001a\u00020\t2\n\u0010\u0019\u001a\u00020\u001f\"\u00020\tH\u0007ø\u0001\u0000¢\u0006\u0004\b \u0010!\u001a&\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0001\u001a\u00020\f2\n\u0010\u0019\u001a\u00020\"\"\u00020\fH\u0007ø\u0001\u0000¢\u0006\u0004\b#\u0010$\u001a\"\u0010&\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b%\u0010\u0004\u001a\"\u0010&\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0006H\u0007ø\u0001\u0000¢\u0006\u0004\b'\u0010\b\u001a\"\u0010&\u001a\u00020\t2\u0006\u0010\u0001\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\tH\u0007ø\u0001\u0000¢\u0006\u0004\b(\u0010\u000b\u001a\"\u0010&\u001a\u00020\f2\u0006\u0010\u0001\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\fH\u0007ø\u0001\u0000¢\u0006\u0004\b)\u0010\u000e\u001a+\u0010&\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0000H\u0087\bø\u0001\u0000¢\u0006\u0004\b*\u0010\u0011\u001a+\u0010&\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0087\bø\u0001\u0000¢\u0006\u0004\b+\u0010\u0013\u001a+\u0010&\u001a\u00020\t2\u0006\u0010\u0001\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tH\u0087\bø\u0001\u0000¢\u0006\u0004\b,\u0010\u0015\u001a+\u0010&\u001a\u00020\f2\u0006\u0010\u0001\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\fH\u0087\bø\u0001\u0000¢\u0006\u0004\b-\u0010\u0017\u001a&\u0010&\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\n\u0010\u0019\u001a\u00020\u0018\"\u00020\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b.\u0010\u001b\u001a&\u0010&\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00062\n\u0010\u0019\u001a\u00020\u001c\"\u00020\u0006H\u0007ø\u0001\u0000¢\u0006\u0004\b/\u0010\u001e\u001a&\u0010&\u001a\u00020\t2\u0006\u0010\u0001\u001a\u00020\t2\n\u0010\u0019\u001a\u00020\u001f\"\u00020\tH\u0007ø\u0001\u0000¢\u0006\u0004\b0\u0010!\u001a&\u0010&\u001a\u00020\f2\u0006\u0010\u0001\u001a\u00020\f2\n\u0010\u0019\u001a\u00020\"\"\u00020\fH\u0007ø\u0001\u0000¢\u0006\u0004\b1\u0010$\u0082\u0002\u0004\n\u0002\b\u0019¨\u00062"}, d2 = {"Lkotlin/UInt;", "a", "b", "maxOf-J1ME1BU", "(II)I", "maxOf", "Lkotlin/ULong;", "maxOf-eb3DHEI", "(JJ)J", "Lkotlin/UByte;", "maxOf-Kr8caGY", "(BB)B", "Lkotlin/UShort;", "maxOf-5PvTz6A", "(SS)S", ai.aD, "maxOf-WZ9TVnA", "(III)I", "maxOf-sambcqE", "(JJJ)J", "maxOf-b33U2AM", "(BBB)B", "maxOf-VKSA0NQ", "(SSS)S", "Lkotlin/UIntArray;", "other", "maxOf-Md2H83M", "(I[I)I", "Lkotlin/ULongArray;", "maxOf-R03FKyM", "(J[J)J", "Lkotlin/UByteArray;", "maxOf-Wr6uiD8", "(B[B)B", "Lkotlin/UShortArray;", "maxOf-t1qELG4", "(S[S)S", "minOf-J1ME1BU", "minOf", "minOf-eb3DHEI", "minOf-Kr8caGY", "minOf-5PvTz6A", "minOf-WZ9TVnA", "minOf-sambcqE", "minOf-b33U2AM", "minOf-VKSA0NQ", "minOf-Md2H83M", "minOf-R03FKyM", "minOf-Wr6uiD8", "minOf-t1qELG4", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/comparisons/UComparisonsKt")
/* loaded from: classes5.dex */
public class UComparisonsKt___UComparisonsKt {
    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: maxOf-5PvTz6A  reason: not valid java name */
    public static final short m1199maxOf5PvTz6A(short s3, short s4) {
        return Intrinsics.compare(s3 & UShort.MAX_VALUE, 65535 & s4) >= 0 ? s3 : s4;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: maxOf-J1ME1BU  reason: not valid java name */
    public static int m1200maxOfJ1ME1BU(int i2, int i4) {
        return UnsignedKt.uintCompare(i2, i4) >= 0 ? i2 : i4;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: maxOf-Kr8caGY  reason: not valid java name */
    public static final byte m1201maxOfKr8caGY(byte b4, byte b5) {
        return Intrinsics.compare(b4 & 255, b5 & 255) >= 0 ? b4 : b5;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: maxOf-Md2H83M  reason: not valid java name */
    public static final int m1202maxOfMd2H83M(int i2, @NotNull int... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (int i4 : other) {
            i2 = m1200maxOfJ1ME1BU(i2, i4);
        }
        return i2;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: maxOf-R03FKyM  reason: not valid java name */
    public static final long m1203maxOfR03FKyM(long j4, @NotNull long... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (long j5 : other) {
            j4 = m1208maxOfeb3DHEI(j4, j5);
        }
        return j4;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    /* renamed from: maxOf-VKSA0NQ  reason: not valid java name */
    private static final short m1204maxOfVKSA0NQ(short s3, short s4, short s5) {
        return m1199maxOf5PvTz6A(s3, m1199maxOf5PvTz6A(s4, s5));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    /* renamed from: maxOf-WZ9TVnA  reason: not valid java name */
    private static final int m1205maxOfWZ9TVnA(int i2, int i4, int i5) {
        int m1200maxOfJ1ME1BU;
        int m1200maxOfJ1ME1BU2;
        m1200maxOfJ1ME1BU = m1200maxOfJ1ME1BU(i4, i5);
        m1200maxOfJ1ME1BU2 = m1200maxOfJ1ME1BU(i2, m1200maxOfJ1ME1BU);
        return m1200maxOfJ1ME1BU2;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: maxOf-Wr6uiD8  reason: not valid java name */
    public static final byte m1206maxOfWr6uiD8(byte b4, @NotNull byte... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (byte b5 : other) {
            b4 = m1201maxOfKr8caGY(b4, b5);
        }
        return b4;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    /* renamed from: maxOf-b33U2AM  reason: not valid java name */
    private static final byte m1207maxOfb33U2AM(byte b4, byte b5, byte b6) {
        return m1201maxOfKr8caGY(b4, m1201maxOfKr8caGY(b5, b6));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: maxOf-eb3DHEI  reason: not valid java name */
    public static long m1208maxOfeb3DHEI(long j4, long j5) {
        return UnsignedKt.ulongCompare(j4, j5) >= 0 ? j4 : j5;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    /* renamed from: maxOf-sambcqE  reason: not valid java name */
    private static final long m1209maxOfsambcqE(long j4, long j5, long j6) {
        long m1208maxOfeb3DHEI;
        long m1208maxOfeb3DHEI2;
        m1208maxOfeb3DHEI = m1208maxOfeb3DHEI(j5, j6);
        m1208maxOfeb3DHEI2 = m1208maxOfeb3DHEI(j4, m1208maxOfeb3DHEI);
        return m1208maxOfeb3DHEI2;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: maxOf-t1qELG4  reason: not valid java name */
    public static final short m1210maxOft1qELG4(short s3, @NotNull short... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (short s4 : other) {
            s3 = m1199maxOf5PvTz6A(s3, s4);
        }
        return s3;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: minOf-5PvTz6A  reason: not valid java name */
    public static final short m1211minOf5PvTz6A(short s3, short s4) {
        return Intrinsics.compare(s3 & UShort.MAX_VALUE, 65535 & s4) <= 0 ? s3 : s4;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: minOf-J1ME1BU  reason: not valid java name */
    public static int m1212minOfJ1ME1BU(int i2, int i4) {
        return UnsignedKt.uintCompare(i2, i4) <= 0 ? i2 : i4;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: minOf-Kr8caGY  reason: not valid java name */
    public static final byte m1213minOfKr8caGY(byte b4, byte b5) {
        return Intrinsics.compare(b4 & 255, b5 & 255) <= 0 ? b4 : b5;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: minOf-Md2H83M  reason: not valid java name */
    public static final int m1214minOfMd2H83M(int i2, @NotNull int... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (int i4 : other) {
            i2 = m1212minOfJ1ME1BU(i2, i4);
        }
        return i2;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: minOf-R03FKyM  reason: not valid java name */
    public static final long m1215minOfR03FKyM(long j4, @NotNull long... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (long j5 : other) {
            j4 = m1220minOfeb3DHEI(j4, j5);
        }
        return j4;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    /* renamed from: minOf-VKSA0NQ  reason: not valid java name */
    private static final short m1216minOfVKSA0NQ(short s3, short s4, short s5) {
        return m1211minOf5PvTz6A(s3, m1211minOf5PvTz6A(s4, s5));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    /* renamed from: minOf-WZ9TVnA  reason: not valid java name */
    private static final int m1217minOfWZ9TVnA(int i2, int i4, int i5) {
        int m1212minOfJ1ME1BU;
        int m1212minOfJ1ME1BU2;
        m1212minOfJ1ME1BU = m1212minOfJ1ME1BU(i4, i5);
        m1212minOfJ1ME1BU2 = m1212minOfJ1ME1BU(i2, m1212minOfJ1ME1BU);
        return m1212minOfJ1ME1BU2;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: minOf-Wr6uiD8  reason: not valid java name */
    public static final byte m1218minOfWr6uiD8(byte b4, @NotNull byte... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (byte b5 : other) {
            b4 = m1213minOfKr8caGY(b4, b5);
        }
        return b4;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    /* renamed from: minOf-b33U2AM  reason: not valid java name */
    private static final byte m1219minOfb33U2AM(byte b4, byte b5, byte b6) {
        return m1213minOfKr8caGY(b4, m1213minOfKr8caGY(b5, b6));
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    /* renamed from: minOf-eb3DHEI  reason: not valid java name */
    public static long m1220minOfeb3DHEI(long j4, long j5) {
        return UnsignedKt.ulongCompare(j4, j5) <= 0 ? j4 : j5;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @InlineOnly
    /* renamed from: minOf-sambcqE  reason: not valid java name */
    private static final long m1221minOfsambcqE(long j4, long j5, long j6) {
        long m1220minOfeb3DHEI;
        long m1220minOfeb3DHEI2;
        m1220minOfeb3DHEI = m1220minOfeb3DHEI(j5, j6);
        m1220minOfeb3DHEI2 = m1220minOfeb3DHEI(j4, m1220minOfeb3DHEI);
        return m1220minOfeb3DHEI2;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: minOf-t1qELG4  reason: not valid java name */
    public static final short m1222minOft1qELG4(short s3, @NotNull short... other) {
        Intrinsics.checkNotNullParameter(other, "other");
        for (short s4 : other) {
            s3 = m1211minOf5PvTz6A(s3, s4);
        }
        return s3;
    }
}
