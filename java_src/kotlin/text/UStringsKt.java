package kotlin.text;

import kotlin.ExperimentalUnsignedTypes;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.UnsignedKt;
import kotlin.WasExperimental;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UStrings.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\u001a\u001e\u0010\u0006\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001e\u0010\u0006\u001a\u00020\u0003*\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001a\u001e\u0010\u0006\u001a\u00020\u0003*\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a\u001e\u0010\u0006\u001a\u00020\u0003*\u00020\r2\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u0016\u0010\u0010\u001a\u00020\u0000*\u00020\u0003H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u001e\u0010\u0010\u001a\u00020\u0000*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0012\u001a\u0016\u0010\u0013\u001a\u00020\u0007*\u00020\u0003H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u001e\u0010\u0013\u001a\u00020\u0007*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0015\u001a\u0016\u0010\u0016\u001a\u00020\n*\u00020\u0003H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u001a\u001e\u0010\u0016\u001a\u00020\n*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0018\u001a\u0016\u0010\u0019\u001a\u00020\r*\u00020\u0003H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u001a\u001e\u0010\u0019\u001a\u00020\r*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001b\u001a\u0011\u0010\u001c\u001a\u0004\u0018\u00010\u0000*\u00020\u0003H\u0007ø\u0001\u0000\u001a\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u0000*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001\u0000\u001a\u0011\u0010\u001d\u001a\u0004\u0018\u00010\u0007*\u00020\u0003H\u0007ø\u0001\u0000\u001a\u0019\u0010\u001d\u001a\u0004\u0018\u00010\u0007*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001\u0000\u001a\u0011\u0010\u001e\u001a\u0004\u0018\u00010\n*\u00020\u0003H\u0007ø\u0001\u0000\u001a\u0019\u0010\u001e\u001a\u0004\u0018\u00010\n*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001\u0000\u001a\u0011\u0010\u001f\u001a\u0004\u0018\u00010\r*\u00020\u0003H\u0007ø\u0001\u0000\u001a\u0019\u0010\u001f\u001a\u0004\u0018\u00010\r*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, d2 = {"Lkotlin/UByte;", "", "radix", "", "toString-LxnNnR4", "(BI)Ljava/lang/String;", "toString", "Lkotlin/UShort;", "toString-olVBNx4", "(SI)Ljava/lang/String;", "Lkotlin/UInt;", "toString-V7xB4Y4", "(II)Ljava/lang/String;", "Lkotlin/ULong;", "toString-JSWoG40", "(JI)Ljava/lang/String;", "toUByte", "(Ljava/lang/String;)B", "(Ljava/lang/String;I)B", "toUShort", "(Ljava/lang/String;)S", "(Ljava/lang/String;I)S", "toUInt", "(Ljava/lang/String;)I", "(Ljava/lang/String;I)I", "toULong", "(Ljava/lang/String;)J", "(Ljava/lang/String;I)J", "toUByteOrNull", "toUShortOrNull", "toUIntOrNull", "toULongOrNull", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
@JvmName(name = "UStringsKt")
/* loaded from: classes5.dex */
public final class UStringsKt {
    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: toString-JSWoG40  reason: not valid java name */
    public static final String m1307toStringJSWoG40(long j4, int i2) {
        int checkRadix;
        checkRadix = CharsKt__CharJVMKt.checkRadix(i2);
        return UnsignedKt.ulongToString(j4, checkRadix);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: toString-LxnNnR4  reason: not valid java name */
    public static final String m1308toStringLxnNnR4(byte b4, int i2) {
        int checkRadix;
        checkRadix = CharsKt__CharJVMKt.checkRadix(i2);
        String num = Integer.toString(b4 & 255, checkRadix);
        Intrinsics.checkNotNullExpressionValue(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return num;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: toString-V7xB4Y4  reason: not valid java name */
    public static final String m1309toStringV7xB4Y4(int i2, int i4) {
        int checkRadix;
        checkRadix = CharsKt__CharJVMKt.checkRadix(i4);
        String l4 = Long.toString(i2 & 4294967295L, checkRadix);
        Intrinsics.checkNotNullExpressionValue(l4, "java.lang.Long.toString(this, checkRadix(radix))");
        return l4;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @NotNull
    /* renamed from: toString-olVBNx4  reason: not valid java name */
    public static final String m1310toStringolVBNx4(short s3, int i2) {
        int checkRadix;
        int i4 = s3 & UShort.MAX_VALUE;
        checkRadix = CharsKt__CharJVMKt.checkRadix(i2);
        String num = Integer.toString(i4, checkRadix);
        Intrinsics.checkNotNullExpressionValue(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return num;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final byte toUByte(@NotNull String toUByte) {
        Intrinsics.checkNotNullParameter(toUByte, "$this$toUByte");
        UByte uByteOrNull = toUByteOrNull(toUByte);
        if (uByteOrNull != null) {
            return uByteOrNull.m91unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(toUByte);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @Nullable
    public static final UByte toUByteOrNull(@NotNull String toUByteOrNull) {
        Intrinsics.checkNotNullParameter(toUByteOrNull, "$this$toUByteOrNull");
        return toUByteOrNull(toUByteOrNull, 10);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final int toUInt(@NotNull String toUInt) {
        Intrinsics.checkNotNullParameter(toUInt, "$this$toUInt");
        UInt uIntOrNull = toUIntOrNull(toUInt);
        if (uIntOrNull != null) {
            return uIntOrNull.m169unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(toUInt);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @Nullable
    public static final UInt toUIntOrNull(@NotNull String toUIntOrNull) {
        Intrinsics.checkNotNullParameter(toUIntOrNull, "$this$toUIntOrNull");
        return toUIntOrNull(toUIntOrNull, 10);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final long toULong(@NotNull String toULong) {
        Intrinsics.checkNotNullParameter(toULong, "$this$toULong");
        ULong uLongOrNull = toULongOrNull(toULong);
        if (uLongOrNull != null) {
            return uLongOrNull.m247unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(toULong);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @Nullable
    public static final ULong toULongOrNull(@NotNull String toULongOrNull) {
        Intrinsics.checkNotNullParameter(toULongOrNull, "$this$toULongOrNull");
        return toULongOrNull(toULongOrNull, 10);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final short toUShort(@NotNull String toUShort) {
        Intrinsics.checkNotNullParameter(toUShort, "$this$toUShort");
        UShort uShortOrNull = toUShortOrNull(toUShort);
        if (uShortOrNull != null) {
            return uShortOrNull.m351unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(toUShort);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @Nullable
    public static final UShort toUShortOrNull(@NotNull String toUShortOrNull) {
        Intrinsics.checkNotNullParameter(toUShortOrNull, "$this$toUShortOrNull");
        return toUShortOrNull(toUShortOrNull, 10);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final byte toUByte(@NotNull String toUByte, int i2) {
        Intrinsics.checkNotNullParameter(toUByte, "$this$toUByte");
        UByte uByteOrNull = toUByteOrNull(toUByte, i2);
        if (uByteOrNull != null) {
            return uByteOrNull.m91unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(toUByte);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @Nullable
    public static final UByte toUByteOrNull(@NotNull String toUByteOrNull, int i2) {
        Intrinsics.checkNotNullParameter(toUByteOrNull, "$this$toUByteOrNull");
        UInt uIntOrNull = toUIntOrNull(toUByteOrNull, i2);
        if (uIntOrNull != null) {
            int m169unboximpl = uIntOrNull.m169unboximpl();
            if (UnsignedKt.uintCompare(m169unboximpl, UInt.m118constructorimpl(255)) > 0) {
                return null;
            }
            return UByte.m36boximpl(UByte.m42constructorimpl((byte) m169unboximpl));
        }
        return null;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final int toUInt(@NotNull String toUInt, int i2) {
        Intrinsics.checkNotNullParameter(toUInt, "$this$toUInt");
        UInt uIntOrNull = toUIntOrNull(toUInt, i2);
        if (uIntOrNull != null) {
            return uIntOrNull.m169unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(toUInt);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @Nullable
    public static final UInt toUIntOrNull(@NotNull String toUIntOrNull, int i2) {
        Intrinsics.checkNotNullParameter(toUIntOrNull, "$this$toUIntOrNull");
        CharsKt__CharJVMKt.checkRadix(i2);
        int length = toUIntOrNull.length();
        if (length == 0) {
            return null;
        }
        int i4 = 0;
        char charAt = toUIntOrNull.charAt(0);
        int i5 = 1;
        if (Intrinsics.compare((int) charAt, 48) >= 0) {
            i5 = 0;
        } else if (length == 1 || charAt != '+') {
            return null;
        }
        int m118constructorimpl = UInt.m118constructorimpl(i2);
        int i6 = 119304647;
        while (i5 < length) {
            int digitOf = CharsKt__CharJVMKt.digitOf(toUIntOrNull.charAt(i5), i2);
            if (digitOf < 0) {
                return null;
            }
            if (UnsignedKt.uintCompare(i4, i6) > 0) {
                if (i6 == 119304647) {
                    i6 = UnsignedKt.m371uintDivideJ1ME1BU(-1, m118constructorimpl);
                    if (UnsignedKt.uintCompare(i4, i6) > 0) {
                    }
                }
                return null;
            }
            int m118constructorimpl2 = UInt.m118constructorimpl(i4 * m118constructorimpl);
            int m118constructorimpl3 = UInt.m118constructorimpl(UInt.m118constructorimpl(digitOf) + m118constructorimpl2);
            if (UnsignedKt.uintCompare(m118constructorimpl3, m118constructorimpl2) < 0) {
                return null;
            }
            i5++;
            i4 = m118constructorimpl3;
        }
        return UInt.m112boximpl(i4);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final long toULong(@NotNull String toULong, int i2) {
        Intrinsics.checkNotNullParameter(toULong, "$this$toULong");
        ULong uLongOrNull = toULongOrNull(toULong, i2);
        if (uLongOrNull != null) {
            return uLongOrNull.m247unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(toULong);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @Nullable
    public static final ULong toULongOrNull(@NotNull String toULongOrNull, int i2) {
        int digitOf;
        Intrinsics.checkNotNullParameter(toULongOrNull, "$this$toULongOrNull");
        CharsKt__CharJVMKt.checkRadix(i2);
        int length = toULongOrNull.length();
        if (length == 0) {
            return null;
        }
        long j4 = -1;
        int i4 = 0;
        char charAt = toULongOrNull.charAt(0);
        if (Intrinsics.compare((int) charAt, 48) < 0) {
            if (length == 1 || charAt != '+') {
                return null;
            }
            i4 = 1;
        }
        long m196constructorimpl = ULong.m196constructorimpl(i2);
        long j5 = 0;
        long j6 = 512409557603043100L;
        while (i4 < length) {
            if (CharsKt__CharJVMKt.digitOf(toULongOrNull.charAt(i4), i2) < 0) {
                return null;
            }
            if (UnsignedKt.ulongCompare(j5, j6) > 0) {
                if (j6 == 512409557603043100L) {
                    j6 = UnsignedKt.m373ulongDivideeb3DHEI(j4, m196constructorimpl);
                    if (UnsignedKt.ulongCompare(j5, j6) > 0) {
                    }
                }
                return null;
            }
            long m196constructorimpl2 = ULong.m196constructorimpl(j5 * m196constructorimpl);
            long m196constructorimpl3 = ULong.m196constructorimpl(ULong.m196constructorimpl(UInt.m118constructorimpl(digitOf) & 4294967295L) + m196constructorimpl2);
            if (UnsignedKt.ulongCompare(m196constructorimpl3, m196constructorimpl2) < 0) {
                return null;
            }
            i4++;
            j5 = m196constructorimpl3;
            j4 = -1;
        }
        return ULong.m190boximpl(j5);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    public static final short toUShort(@NotNull String toUShort, int i2) {
        Intrinsics.checkNotNullParameter(toUShort, "$this$toUShort");
        UShort uShortOrNull = toUShortOrNull(toUShort, i2);
        if (uShortOrNull != null) {
            return uShortOrNull.m351unboximpl();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(toUShort);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalUnsignedTypes.class})
    @Nullable
    public static final UShort toUShortOrNull(@NotNull String toUShortOrNull, int i2) {
        Intrinsics.checkNotNullParameter(toUShortOrNull, "$this$toUShortOrNull");
        UInt uIntOrNull = toUIntOrNull(toUShortOrNull, i2);
        if (uIntOrNull != null) {
            int m169unboximpl = uIntOrNull.m169unboximpl();
            if (UnsignedKt.uintCompare(m169unboximpl, UInt.m118constructorimpl(65535)) > 0) {
                return null;
            }
            return UShort.m296boximpl(UShort.m302constructorimpl((short) m169unboximpl));
        }
        return null;
    }
}
