package kotlin.text;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StringNumberConversionsJVM.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000L\n\u0002\u0010\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\n\n\u0002\u0010\t\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u0015\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0003*\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0003*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010\u0004\u001a\u00020\u0003*\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\r\u0010\b\u001a\u00020\u0007*\u00020\u0003H\u0087\b\u001a\u0016\u0010\b\u001a\u00020\u0007*\u0004\u0018\u00010\u0003H\u0087\b¢\u0006\u0004\b\t\u0010\n\u001a\r\u0010\u000b\u001a\u00020\u0000*\u00020\u0003H\u0087\b\u001a\u0015\u0010\u000b\u001a\u00020\u0000*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\r\u0010\f\u001a\u00020\u0005*\u00020\u0003H\u0087\b\u001a\u0015\u0010\f\u001a\u00020\u0005*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\r\u0010\r\u001a\u00020\u0001*\u00020\u0003H\u0087\b\u001a\u0015\u0010\r\u001a\u00020\u0001*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\r\u0010\u000e\u001a\u00020\u0006*\u00020\u0003H\u0087\b\u001a\u0015\u0010\u000e\u001a\u00020\u0006*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\r\u0010\u0010\u001a\u00020\u000f*\u00020\u0003H\u0087\b\u001a\r\u0010\u0012\u001a\u00020\u0011*\u00020\u0003H\u0087\b\u001a\u0015\u0010\u0013\u001a\u0004\u0018\u00010\u000f*\u00020\u0003H\u0007¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u0015\u0010\u0015\u001a\u0004\u0018\u00010\u0011*\u00020\u0003H\u0007¢\u0006\u0004\b\u0015\u0010\u0016\u001a\r\u0010\u0018\u001a\u00020\u0017*\u00020\u0003H\u0087\b\u001a\u0015\u0010\u0018\u001a\u00020\u0017*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\b\u001a\u000e\u0010\u0019\u001a\u0004\u0018\u00010\u0017*\u00020\u0003H\u0007\u001a\u0016\u0010\u0019\u001a\u0004\u0018\u00010\u0017*\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007\u001a\r\u0010\u001b\u001a\u00020\u001a*\u00020\u0003H\u0087\b\u001a\u0015\u0010\u001b\u001a\u00020\u001a*\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u001cH\u0087\b\u001a\u000e\u0010\u001e\u001a\u0004\u0018\u00010\u001a*\u00020\u0003H\u0007\u001a\u0016\u0010\u001e\u001a\u0004\u0018\u00010\u001a*\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u001cH\u0007\u001a4\u0010%\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u001f2\u0006\u0010 \u001a\u00020\u00032\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00028\u00000!H\u0082\b¢\u0006\u0004\b#\u0010$¨\u0006&"}, d2 = {"", "", "radix", "", "toString", "", "", "", "toBoolean", "toBooleanNullable", "(Ljava/lang/String;)Z", "toByte", "toShort", "toInt", "toLong", "", "toFloat", "", "toDouble", "toFloatOrNull", "(Ljava/lang/String;)Ljava/lang/Float;", "toDoubleOrNull", "(Ljava/lang/String;)Ljava/lang/Double;", "Ljava/math/BigInteger;", "toBigInteger", "toBigIntegerOrNull", "Ljava/math/BigDecimal;", "toBigDecimal", "Ljava/math/MathContext;", "mathContext", "toBigDecimalOrNull", "T", "str", "Lkotlin/Function1;", "parse", "screenFloatValue$StringsKt__StringNumberConversionsJVMKt", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "screenFloatValue", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/text/StringsKt")
/* loaded from: classes.dex */
public class StringsKt__StringNumberConversionsJVMKt extends StringsKt__StringBuilderKt {
    private static final <T> T screenFloatValue$StringsKt__StringNumberConversionsJVMKt(String str, Function1<? super String, ? extends T> function1) {
        try {
            if (ScreenFloatValueRegEx.value.matches(str)) {
                return function1.invoke(str);
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(String str) {
        return new BigDecimal(str);
    }

    @SinceKotlin(version = "1.2")
    @Nullable
    public static final BigDecimal toBigDecimalOrNull(@NotNull String toBigDecimalOrNull) {
        Intrinsics.checkNotNullParameter(toBigDecimalOrNull, "$this$toBigDecimalOrNull");
        try {
            if (ScreenFloatValueRegEx.value.matches(toBigDecimalOrNull)) {
                return new BigDecimal(toBigDecimalOrNull);
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigInteger toBigInteger(String str) {
        return new BigInteger(str);
    }

    @SinceKotlin(version = "1.2")
    @Nullable
    public static final BigInteger toBigIntegerOrNull(@NotNull String toBigIntegerOrNull) {
        Intrinsics.checkNotNullParameter(toBigIntegerOrNull, "$this$toBigIntegerOrNull");
        return toBigIntegerOrNull(toBigIntegerOrNull, 10);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    @JvmName(name = "toBooleanNullable")
    private static final boolean toBooleanNullable(String str) {
        return Boolean.parseBoolean(str);
    }

    @InlineOnly
    private static final byte toByte(String str) {
        return Byte.parseByte(str);
    }

    @InlineOnly
    private static final double toDouble(String str) {
        return Double.parseDouble(str);
    }

    @SinceKotlin(version = "1.1")
    @Nullable
    public static final Double toDoubleOrNull(@NotNull String toDoubleOrNull) {
        Intrinsics.checkNotNullParameter(toDoubleOrNull, "$this$toDoubleOrNull");
        try {
            if (ScreenFloatValueRegEx.value.matches(toDoubleOrNull)) {
                return Double.valueOf(Double.parseDouble(toDoubleOrNull));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @InlineOnly
    private static final float toFloat(String str) {
        return Float.parseFloat(str);
    }

    @SinceKotlin(version = "1.1")
    @Nullable
    public static final Float toFloatOrNull(@NotNull String toFloatOrNull) {
        Intrinsics.checkNotNullParameter(toFloatOrNull, "$this$toFloatOrNull");
        try {
            if (ScreenFloatValueRegEx.value.matches(toFloatOrNull)) {
                return Float.valueOf(Float.parseFloat(toFloatOrNull));
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @InlineOnly
    private static final int toInt(String str) {
        return Integer.parseInt(str);
    }

    @InlineOnly
    private static final long toLong(String str) {
        return Long.parseLong(str);
    }

    @InlineOnly
    private static final short toShort(String str) {
        return Short.parseShort(str);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final String toString(byte b4, int i2) {
        int checkRadix;
        int checkRadix2;
        checkRadix = CharsKt__CharJVMKt.checkRadix(i2);
        checkRadix2 = CharsKt__CharJVMKt.checkRadix(checkRadix);
        String num = Integer.toString(b4, checkRadix2);
        Intrinsics.checkNotNullExpressionValue(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return num;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigDecimal toBigDecimal(String str, MathContext mathContext) {
        return new BigDecimal(str, mathContext);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final BigInteger toBigInteger(String str, int i2) {
        int checkRadix;
        checkRadix = CharsKt__CharJVMKt.checkRadix(i2);
        return new BigInteger(str, checkRadix);
    }

    @SinceKotlin(version = "1.2")
    @Nullable
    public static final BigInteger toBigIntegerOrNull(@NotNull String toBigIntegerOrNull, int i2) {
        int checkRadix;
        Intrinsics.checkNotNullParameter(toBigIntegerOrNull, "$this$toBigIntegerOrNull");
        CharsKt__CharJVMKt.checkRadix(i2);
        int length = toBigIntegerOrNull.length();
        if (length != 0) {
            if (length != 1) {
                for (int i4 = toBigIntegerOrNull.charAt(0) == '-' ? 1 : 0; i4 < length; i4++) {
                    if (CharsKt__CharJVMKt.digitOf(toBigIntegerOrNull.charAt(i4), i2) < 0) {
                        return null;
                    }
                }
            } else if (CharsKt__CharJVMKt.digitOf(toBigIntegerOrNull.charAt(0), i2) < 0) {
                return null;
            }
            checkRadix = CharsKt__CharJVMKt.checkRadix(i2);
            return new BigInteger(toBigIntegerOrNull, checkRadix);
        }
        return null;
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final byte toByte(String str, int i2) {
        int checkRadix;
        checkRadix = CharsKt__CharJVMKt.checkRadix(i2);
        return Byte.parseByte(str, checkRadix);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final int toInt(String str, int i2) {
        int checkRadix;
        checkRadix = CharsKt__CharJVMKt.checkRadix(i2);
        return Integer.parseInt(str, checkRadix);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final long toLong(String str, int i2) {
        int checkRadix;
        checkRadix = CharsKt__CharJVMKt.checkRadix(i2);
        return Long.parseLong(str, checkRadix);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final short toShort(String str, int i2) {
        int checkRadix;
        checkRadix = CharsKt__CharJVMKt.checkRadix(i2);
        return Short.parseShort(str, checkRadix);
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final String toString(short s3, int i2) {
        int checkRadix;
        int checkRadix2;
        checkRadix = CharsKt__CharJVMKt.checkRadix(i2);
        checkRadix2 = CharsKt__CharJVMKt.checkRadix(checkRadix);
        String num = Integer.toString(s3, checkRadix2);
        Intrinsics.checkNotNullExpressionValue(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return num;
    }

    @SinceKotlin(version = "1.2")
    @Nullable
    public static final BigDecimal toBigDecimalOrNull(@NotNull String toBigDecimalOrNull, @NotNull MathContext mathContext) {
        Intrinsics.checkNotNullParameter(toBigDecimalOrNull, "$this$toBigDecimalOrNull");
        Intrinsics.checkNotNullParameter(mathContext, "mathContext");
        try {
            if (ScreenFloatValueRegEx.value.matches(toBigDecimalOrNull)) {
                return new BigDecimal(toBigDecimalOrNull, mathContext);
            }
            return null;
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final String toString(int i2, int i4) {
        int checkRadix;
        checkRadix = CharsKt__CharJVMKt.checkRadix(i4);
        String num = Integer.toString(i2, checkRadix);
        Intrinsics.checkNotNullExpressionValue(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return num;
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final String toString(long j4, int i2) {
        int checkRadix;
        checkRadix = CharsKt__CharJVMKt.checkRadix(i2);
        String l4 = Long.toString(j4, checkRadix);
        Intrinsics.checkNotNullExpressionValue(l4, "java.lang.Long.toString(this, checkRadix(radix))");
        return l4;
    }
}
