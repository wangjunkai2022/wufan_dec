package kotlin.collections.unsigned;

import com.join.mgps.activity.MyAccountLoginActivity_;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.List;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.OverloadResolutionByLambdaReturnType;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.UnsignedKt;
import kotlin.collections.AbstractList;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: _UArraysJvm.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u001f\u0010\u0006\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001f\u0010\u0006\u001a\u00020\b*\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\bø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001a\u001f\u0010\u0006\u001a\u00020\f*\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\bø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a\u001f\u0010\u0006\u001a\u00020\u0010*\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001a\u001c\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00030\u0013*\u00020\u0000H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u001c\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\b0\u0013*\u00020\u0007H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a\u001c\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\f0\u0013*\u00020\u000bH\u0007ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u001a\u001c\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00100\u0013*\u00020\u000fH\u0007ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u001a2\u0010\"\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u00032\b\b\u0002\u0010\u001e\u001a\u00020\u00012\b\b\u0002\u0010\u001f\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b \u0010!\u001a2\u0010\"\u001a\u00020\u0001*\u00020\u00072\u0006\u0010\u001d\u001a\u00020\b2\b\b\u0002\u0010\u001e\u001a\u00020\u00012\b\b\u0002\u0010\u001f\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b#\u0010$\u001a2\u0010\"\u001a\u00020\u0001*\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\f2\b\b\u0002\u0010\u001e\u001a\u00020\u00012\b\b\u0002\u0010\u001f\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b%\u0010&\u001a2\u0010\"\u001a\u00020\u0001*\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u00102\b\b\u0002\u0010\u001e\u001a\u00020\u00012\b\b\u0002\u0010\u001f\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b'\u0010(\u001a.\u0010.\u001a\u00020**\u00020\u00002\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020*0)H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b,\u0010-\u001a.\u0010.\u001a\u00020**\u00020\u00072\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020*0)H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b,\u0010/\u001a.\u0010.\u001a\u00020**\u00020\u000b2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020*0)H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b,\u00100\u001a.\u0010.\u001a\u00020**\u00020\u000f2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020*0)H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b,\u00101\u001a.\u0010.\u001a\u000202*\u00020\u00002\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u0002020)H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b3\u00104\u001a.\u0010.\u001a\u000202*\u00020\u00072\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u0002020)H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b3\u00105\u001a.\u0010.\u001a\u000202*\u00020\u000b2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u0002020)H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b3\u00106\u001a.\u0010.\u001a\u000202*\u00020\u000f2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u0002020)H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b3\u00107\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b\u009920\u0001¨\u00068"}, d2 = {"Lkotlin/UIntArray;", "", "index", "Lkotlin/UInt;", "elementAt-qFRl0hI", "([II)I", "elementAt", "Lkotlin/ULongArray;", "Lkotlin/ULong;", "elementAt-r7IrZao", "([JI)J", "Lkotlin/UByteArray;", "Lkotlin/UByte;", "elementAt-PpDY95g", "([BI)B", "Lkotlin/UShortArray;", "Lkotlin/UShort;", "elementAt-nggk6HY", "([SI)S", "", "asList--ajY-9A", "([I)Ljava/util/List;", "asList", "asList-QwZRm1k", "([J)Ljava/util/List;", "asList-GBYM_sE", "([B)Ljava/util/List;", "asList-rL5Bavg", "([S)Ljava/util/List;", "element", MyAccountLoginActivity_.J, "toIndex", "binarySearch-2fe2U9s", "([IIII)I", "binarySearch", "binarySearch-K6DWlUc", "([JJII)I", "binarySearch-WpHrYlw", "([BBII)I", "binarySearch-EtDCXyQ", "([SSII)I", "Lkotlin/Function1;", "Ljava/math/BigDecimal;", "selector", "sumOfBigDecimal", "([ILkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "sumOf", "([JLkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "([BLkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "([SLkotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;", "Ljava/math/BigInteger;", "sumOfBigInteger", "([ILkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "([JLkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "([BLkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "([SLkotlin/jvm/functions/Function1;)Ljava/math/BigInteger;", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, pn = "kotlin.collections", xs = "kotlin/collections/unsigned/UArraysKt")
/* loaded from: classes.dex */
class UArraysKt___UArraysJvmKt {
    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: asList--ajY-9A  reason: not valid java name */
    public static final List<UInt> m495asListajY9A(@NotNull int[] asList) {
        Intrinsics.checkNotNullParameter(asList, "$this$asList");
        return new UArraysKt___UArraysJvmKt$asList$1(asList);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: asList-GBYM_sE  reason: not valid java name */
    public static final List<UByte> m496asListGBYM_sE(@NotNull byte[] asList) {
        Intrinsics.checkNotNullParameter(asList, "$this$asList");
        return new UArraysKt___UArraysJvmKt$asList$3(asList);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: asList-QwZRm1k  reason: not valid java name */
    public static final List<ULong> m497asListQwZRm1k(@NotNull long[] asList) {
        Intrinsics.checkNotNullParameter(asList, "$this$asList");
        return new UArraysKt___UArraysJvmKt$asList$2(asList);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: asList-rL5Bavg  reason: not valid java name */
    public static final List<UShort> m498asListrL5Bavg(@NotNull short[] asList) {
        Intrinsics.checkNotNullParameter(asList, "$this$asList");
        return new UArraysKt___UArraysJvmKt$asList$4(asList);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: binarySearch-2fe2U9s  reason: not valid java name */
    public static final int m499binarySearch2fe2U9s(@NotNull int[] binarySearch, int i2, int i4, int i5) {
        Intrinsics.checkNotNullParameter(binarySearch, "$this$binarySearch");
        AbstractList.Companion.checkRangeIndexes$kotlin_stdlib(i4, i5, UIntArray.m178getSizeimpl(binarySearch));
        int i6 = i5 - 1;
        while (i4 <= i6) {
            int i7 = (i4 + i6) >>> 1;
            int uintCompare = UnsignedKt.uintCompare(binarySearch[i7], i2);
            if (uintCompare < 0) {
                i4 = i7 + 1;
            } else if (uintCompare <= 0) {
                return i7;
            } else {
                i6 = i7 - 1;
            }
        }
        return -(i4 + 1);
    }

    /* renamed from: binarySearch-2fe2U9s$default  reason: not valid java name */
    public static /* synthetic */ int m500binarySearch2fe2U9s$default(int[] iArr, int i2, int i4, int i5, int i6, Object obj) {
        if ((i6 & 2) != 0) {
            i4 = 0;
        }
        if ((i6 & 4) != 0) {
            i5 = UIntArray.m178getSizeimpl(iArr);
        }
        return m499binarySearch2fe2U9s(iArr, i2, i4, i5);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: binarySearch-EtDCXyQ  reason: not valid java name */
    public static final int m501binarySearchEtDCXyQ(@NotNull short[] binarySearch, short s3, int i2, int i4) {
        Intrinsics.checkNotNullParameter(binarySearch, "$this$binarySearch");
        AbstractList.Companion.checkRangeIndexes$kotlin_stdlib(i2, i4, UShortArray.m360getSizeimpl(binarySearch));
        int i5 = s3 & UShort.MAX_VALUE;
        int i6 = i4 - 1;
        while (i2 <= i6) {
            int i7 = (i2 + i6) >>> 1;
            int uintCompare = UnsignedKt.uintCompare(binarySearch[i7], i5);
            if (uintCompare < 0) {
                i2 = i7 + 1;
            } else if (uintCompare <= 0) {
                return i7;
            } else {
                i6 = i7 - 1;
            }
        }
        return -(i2 + 1);
    }

    /* renamed from: binarySearch-EtDCXyQ$default  reason: not valid java name */
    public static /* synthetic */ int m502binarySearchEtDCXyQ$default(short[] sArr, short s3, int i2, int i4, int i5, Object obj) {
        if ((i5 & 2) != 0) {
            i2 = 0;
        }
        if ((i5 & 4) != 0) {
            i4 = UShortArray.m360getSizeimpl(sArr);
        }
        return m501binarySearchEtDCXyQ(sArr, s3, i2, i4);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: binarySearch-K6DWlUc  reason: not valid java name */
    public static final int m503binarySearchK6DWlUc(@NotNull long[] binarySearch, long j4, int i2, int i4) {
        Intrinsics.checkNotNullParameter(binarySearch, "$this$binarySearch");
        AbstractList.Companion.checkRangeIndexes$kotlin_stdlib(i2, i4, ULongArray.m256getSizeimpl(binarySearch));
        int i5 = i4 - 1;
        while (i2 <= i5) {
            int i6 = (i2 + i5) >>> 1;
            int ulongCompare = UnsignedKt.ulongCompare(binarySearch[i6], j4);
            if (ulongCompare < 0) {
                i2 = i6 + 1;
            } else if (ulongCompare <= 0) {
                return i6;
            } else {
                i5 = i6 - 1;
            }
        }
        return -(i2 + 1);
    }

    /* renamed from: binarySearch-K6DWlUc$default  reason: not valid java name */
    public static /* synthetic */ int m504binarySearchK6DWlUc$default(long[] jArr, long j4, int i2, int i4, int i5, Object obj) {
        if ((i5 & 2) != 0) {
            i2 = 0;
        }
        if ((i5 & 4) != 0) {
            i4 = ULongArray.m256getSizeimpl(jArr);
        }
        return m503binarySearchK6DWlUc(jArr, j4, i2, i4);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    /* renamed from: binarySearch-WpHrYlw  reason: not valid java name */
    public static final int m505binarySearchWpHrYlw(@NotNull byte[] binarySearch, byte b4, int i2, int i4) {
        Intrinsics.checkNotNullParameter(binarySearch, "$this$binarySearch");
        AbstractList.Companion.checkRangeIndexes$kotlin_stdlib(i2, i4, UByteArray.m100getSizeimpl(binarySearch));
        int i5 = b4 & 255;
        int i6 = i4 - 1;
        while (i2 <= i6) {
            int i7 = (i2 + i6) >>> 1;
            int uintCompare = UnsignedKt.uintCompare(binarySearch[i7], i5);
            if (uintCompare < 0) {
                i2 = i7 + 1;
            } else if (uintCompare <= 0) {
                return i7;
            } else {
                i6 = i7 - 1;
            }
        }
        return -(i2 + 1);
    }

    /* renamed from: binarySearch-WpHrYlw$default  reason: not valid java name */
    public static /* synthetic */ int m506binarySearchWpHrYlw$default(byte[] bArr, byte b4, int i2, int i4, int i5, Object obj) {
        if ((i5 & 2) != 0) {
            i2 = 0;
        }
        if ((i5 & 4) != 0) {
            i4 = UByteArray.m100getSizeimpl(bArr);
        }
        return m505binarySearchWpHrYlw(bArr, b4, i2, i4);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: elementAt-PpDY95g  reason: not valid java name */
    private static final byte m507elementAtPpDY95g(byte[] bArr, int i2) {
        return UByteArray.m99getw2LRezQ(bArr, i2);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: elementAt-nggk6HY  reason: not valid java name */
    private static final short m508elementAtnggk6HY(short[] sArr, int i2) {
        return UShortArray.m359getMh2AYeg(sArr, i2);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: elementAt-qFRl0hI  reason: not valid java name */
    private static final int m509elementAtqFRl0hI(int[] iArr, int i2) {
        return UIntArray.m177getpVg5ArA(iArr, i2);
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @InlineOnly
    /* renamed from: elementAt-r7IrZao  reason: not valid java name */
    private static final long m510elementAtr7IrZao(long[] jArr, int i2) {
        return ULongArray.m255getsVKNKU(jArr, i2);
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigDecimal")
    @OverloadResolutionByLambdaReturnType
    private static final BigDecimal sumOfBigDecimal(int[] iArr, Function1<? super UInt, ? extends BigDecimal> function1) {
        BigDecimal valueOf = BigDecimal.valueOf(0);
        Intrinsics.checkNotNullExpressionValue(valueOf, "BigDecimal.valueOf(this.toLong())");
        for (int i2 : iArr) {
            valueOf = valueOf.add(function1.invoke(UInt.m112boximpl(i2)));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigInteger")
    @OverloadResolutionByLambdaReturnType
    private static final BigInteger sumOfBigInteger(int[] iArr, Function1<? super UInt, ? extends BigInteger> function1) {
        BigInteger valueOf = BigInteger.valueOf(0);
        Intrinsics.checkNotNullExpressionValue(valueOf, "BigInteger.valueOf(this.toLong())");
        for (int i2 : iArr) {
            valueOf = valueOf.add(function1.invoke(UInt.m112boximpl(i2)));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigDecimal")
    @OverloadResolutionByLambdaReturnType
    private static final BigDecimal sumOfBigDecimal(long[] jArr, Function1<? super ULong, ? extends BigDecimal> function1) {
        BigDecimal valueOf = BigDecimal.valueOf(0);
        Intrinsics.checkNotNullExpressionValue(valueOf, "BigDecimal.valueOf(this.toLong())");
        for (long j4 : jArr) {
            valueOf = valueOf.add(function1.invoke(ULong.m190boximpl(j4)));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigInteger")
    @OverloadResolutionByLambdaReturnType
    private static final BigInteger sumOfBigInteger(long[] jArr, Function1<? super ULong, ? extends BigInteger> function1) {
        BigInteger valueOf = BigInteger.valueOf(0);
        Intrinsics.checkNotNullExpressionValue(valueOf, "BigInteger.valueOf(this.toLong())");
        for (long j4 : jArr) {
            valueOf = valueOf.add(function1.invoke(ULong.m190boximpl(j4)));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigDecimal")
    @OverloadResolutionByLambdaReturnType
    private static final BigDecimal sumOfBigDecimal(byte[] bArr, Function1<? super UByte, ? extends BigDecimal> function1) {
        BigDecimal valueOf = BigDecimal.valueOf(0);
        Intrinsics.checkNotNullExpressionValue(valueOf, "BigDecimal.valueOf(this.toLong())");
        for (byte b4 : bArr) {
            valueOf = valueOf.add(function1.invoke(UByte.m36boximpl(b4)));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigInteger")
    @OverloadResolutionByLambdaReturnType
    private static final BigInteger sumOfBigInteger(byte[] bArr, Function1<? super UByte, ? extends BigInteger> function1) {
        BigInteger valueOf = BigInteger.valueOf(0);
        Intrinsics.checkNotNullExpressionValue(valueOf, "BigInteger.valueOf(this.toLong())");
        for (byte b4 : bArr) {
            valueOf = valueOf.add(function1.invoke(UByte.m36boximpl(b4)));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigDecimal")
    @OverloadResolutionByLambdaReturnType
    private static final BigDecimal sumOfBigDecimal(short[] sArr, Function1<? super UShort, ? extends BigDecimal> function1) {
        BigDecimal valueOf = BigDecimal.valueOf(0);
        Intrinsics.checkNotNullExpressionValue(valueOf, "BigDecimal.valueOf(this.toLong())");
        for (short s3 : sArr) {
            valueOf = valueOf.add(function1.invoke(UShort.m296boximpl(s3)));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    @InlineOnly
    @JvmName(name = "sumOfBigInteger")
    @OverloadResolutionByLambdaReturnType
    private static final BigInteger sumOfBigInteger(short[] sArr, Function1<? super UShort, ? extends BigInteger> function1) {
        BigInteger valueOf = BigInteger.valueOf(0);
        Intrinsics.checkNotNullExpressionValue(valueOf, "BigInteger.valueOf(this.toLong())");
        for (short s3 : sArr) {
            valueOf = valueOf.add(function1.invoke(UShort.m296boximpl(s3)));
            Intrinsics.checkNotNullExpressionValue(valueOf, "this.add(other)");
        }
        return valueOf;
    }
}
