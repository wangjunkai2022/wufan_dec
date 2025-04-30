package kotlin.text;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.util.Locale;
import java.util.Objects;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CharJVM.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0010\f\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\r\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\u0005\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\u0006\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\u0007\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\b\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\t\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\n\u0010\n\u001a\u00020\u0001*\u00020\u0000\u001a\r\u0010\u000b\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\f\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\r\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\r\u0010\u000e\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\r\u0010\u0010\u001a\u00020\u000f*\u00020\u0000H\u0087\b\u001a\u0014\u0010\u0010\u001a\u00020\u000f*\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0007\u001a\r\u0010\u0013\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\r\u0010\u0014\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\r\u0010\u0015\u001a\u00020\u000f*\u00020\u0000H\u0087\b\u001a\u0014\u0010\u0015\u001a\u00020\u000f*\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0007\u001a\r\u0010\u0016\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\u0017\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\r\u0010\u0018\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\u0014\u0010\u0019\u001a\u00020\u000f*\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0007\u001a\r\u0010\u001a\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\r\u0010\u001b\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\u0018\u0010\u001f\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001dH\u0000\u001a\u0010\u0010 \u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001dH\u0001\"\u0017\u0010$\u001a\u00020!*\u00020\u00008F@\u0006¢\u0006\u0006\u001a\u0004\b\"\u0010#\"\u0017\u0010(\u001a\u00020%*\u00020\u00008F@\u0006¢\u0006\u0006\u001a\u0004\b&\u0010'¨\u0006)"}, d2 = {"", "", "isDefined", "isLetter", "isLetterOrDigit", "isDigit", "isIdentifierIgnorable", "isISOControl", "isJavaIdentifierPart", "isJavaIdentifierStart", "isWhitespace", "isUpperCase", "isLowerCase", "toUpperCase", "uppercaseChar", "", "uppercase", "Ljava/util/Locale;", "locale", "toLowerCase", "lowercaseChar", "lowercase", "isTitleCase", "toTitleCase", "titlecaseChar", "titlecase", "isHighSurrogate", "isLowSurrogate", MethodReflectParams.CHAR, "", "radix", "digitOf", "checkRadix", "Lkotlin/text/CharCategory;", "getCategory", "(C)Lkotlin/text/CharCategory;", "category", "Lkotlin/text/CharDirectionality;", "getDirectionality", "(C)Lkotlin/text/CharDirectionality;", "directionality", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/text/CharsKt")
/* loaded from: classes.dex */
public class CharsKt__CharJVMKt {
    @PublishedApi
    public static int checkRadix(int i2) {
        if (2 > i2 || 36 < i2) {
            throw new IllegalArgumentException("radix " + i2 + " was not in valid range " + new IntRange(2, 36));
        }
        return i2;
    }

    public static final int digitOf(char c4, int i2) {
        return Character.digit((int) c4, i2);
    }

    @NotNull
    public static final CharCategory getCategory(char c4) {
        return CharCategory.Companion.valueOf(Character.getType(c4));
    }

    @NotNull
    public static final CharDirectionality getDirectionality(char c4) {
        return CharDirectionality.Companion.valueOf(Character.getDirectionality(c4));
    }

    @InlineOnly
    private static final boolean isDefined(char c4) {
        return Character.isDefined(c4);
    }

    @InlineOnly
    private static final boolean isDigit(char c4) {
        return Character.isDigit(c4);
    }

    @InlineOnly
    private static final boolean isHighSurrogate(char c4) {
        return Character.isHighSurrogate(c4);
    }

    @InlineOnly
    private static final boolean isISOControl(char c4) {
        return Character.isISOControl(c4);
    }

    @InlineOnly
    private static final boolean isIdentifierIgnorable(char c4) {
        return Character.isIdentifierIgnorable(c4);
    }

    @InlineOnly
    private static final boolean isJavaIdentifierPart(char c4) {
        return Character.isJavaIdentifierPart(c4);
    }

    @InlineOnly
    private static final boolean isJavaIdentifierStart(char c4) {
        return Character.isJavaIdentifierStart(c4);
    }

    @InlineOnly
    private static final boolean isLetter(char c4) {
        return Character.isLetter(c4);
    }

    @InlineOnly
    private static final boolean isLetterOrDigit(char c4) {
        return Character.isLetterOrDigit(c4);
    }

    @InlineOnly
    private static final boolean isLowSurrogate(char c4) {
        return Character.isLowSurrogate(c4);
    }

    @InlineOnly
    private static final boolean isLowerCase(char c4) {
        return Character.isLowerCase(c4);
    }

    @InlineOnly
    private static final boolean isTitleCase(char c4) {
        return Character.isTitleCase(c4);
    }

    @InlineOnly
    private static final boolean isUpperCase(char c4) {
        return Character.isUpperCase(c4);
    }

    public static final boolean isWhitespace(char c4) {
        return Character.isWhitespace(c4) || Character.isSpaceChar(c4);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final String lowercase(char c4) {
        String valueOf = String.valueOf(c4);
        Objects.requireNonNull(valueOf, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = valueOf.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.Strin….toLowerCase(Locale.ROOT)");
        return lowerCase;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final char lowercaseChar(char c4) {
        return Character.toLowerCase(c4);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @NotNull
    public static final String titlecase(char c4, @NotNull Locale locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        String uppercase = uppercase(c4, locale);
        if (uppercase.length() <= 1) {
            String valueOf = String.valueOf(c4);
            Objects.requireNonNull(valueOf, "null cannot be cast to non-null type java.lang.String");
            String upperCase = valueOf.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "(this as java.lang.Strin….toUpperCase(Locale.ROOT)");
            return Intrinsics.areEqual(uppercase, upperCase) ^ true ? uppercase : String.valueOf(Character.toTitleCase(c4));
        } else if (c4 == 329) {
            return uppercase;
        } else {
            char charAt = uppercase.charAt(0);
            String substring = uppercase.substring(1);
            Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.String).substring(startIndex)");
            Objects.requireNonNull(substring, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = substring.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.Strin….toLowerCase(Locale.ROOT)");
            return String.valueOf(charAt) + lowerCase;
        }
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final char titlecaseChar(char c4) {
        return Character.toTitleCase(c4);
    }

    @Deprecated(message = "Use lowercaseChar() instead.", replaceWith = @ReplaceWith(expression = "lowercaseChar()", imports = {}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    @InlineOnly
    private static final char toLowerCase(char c4) {
        return Character.toLowerCase(c4);
    }

    @Deprecated(message = "Use titlecaseChar() instead.", replaceWith = @ReplaceWith(expression = "titlecaseChar()", imports = {}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    @InlineOnly
    private static final char toTitleCase(char c4) {
        return Character.toTitleCase(c4);
    }

    @Deprecated(message = "Use uppercaseChar() instead.", replaceWith = @ReplaceWith(expression = "uppercaseChar()", imports = {}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    @InlineOnly
    private static final char toUpperCase(char c4) {
        return Character.toUpperCase(c4);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final String uppercase(char c4) {
        String valueOf = String.valueOf(c4);
        Objects.requireNonNull(valueOf, "null cannot be cast to non-null type java.lang.String");
        String upperCase = valueOf.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "(this as java.lang.Strin….toUpperCase(Locale.ROOT)");
        return upperCase;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final char uppercaseChar(char c4) {
        return Character.toUpperCase(c4);
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @NotNull
    public static final String lowercase(char c4, @NotNull Locale locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        String valueOf = String.valueOf(c4);
        Objects.requireNonNull(valueOf, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = valueOf.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        return lowerCase;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @NotNull
    public static final String uppercase(char c4, @NotNull Locale locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        String valueOf = String.valueOf(c4);
        Objects.requireNonNull(valueOf, "null cannot be cast to non-null type java.lang.String");
        String upperCase = valueOf.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "(this as java.lang.String).toUpperCase(locale)");
        return upperCase;
    }
}
