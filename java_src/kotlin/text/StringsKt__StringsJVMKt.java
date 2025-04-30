package kotlin.text;

import com.join.mgps.activity.MyAccountLoginActivity_;
import external.org.apache.commons.lang3.d;
import io.netty.handler.codec.rtsp.RtspHeaders;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CodingErrorAction;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.regex.Pattern;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.IntIterator;
import kotlin.internal.InlineOnly;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import tv.danmaku.ijk.media.player.IjkMediaMeta;
/* compiled from: StringsJVM.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0080\u0001\n\u0002\u0010\u000e\n\u0002\u0010\f\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\u0019\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u001d\u0010\u0005\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0081\b\u001a\u001d\u0010\u0005\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0081\b\u001a\u001d\u0010\u0007\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0081\b\u001a\u001d\u0010\u0007\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0081\b\u001a \u0010\u000b\u001a\u00020\t*\u0004\u0018\u00010\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u00002\b\b\u0002\u0010\n\u001a\u00020\t\u001a$\u0010\u000e\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u00012\b\b\u0002\u0010\n\u001a\u00020\t\u001a$\u0010\u000e\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\n\u001a\u00020\t\u001a$\u0010\u0011\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u00012\b\b\u0002\u0010\n\u001a\u00020\t\u001a$\u0010\u0011\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\n\u001a\u00020\t\u001a\r\u0010\u0012\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\r\u0010\u0013\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\r\u0010\u0014\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\r\u0010\u0015\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\f\u0010\u0017\u001a\u00020\u0000*\u00020\u0016H\u0007\u001a \u0010\u0017\u001a\u00020\u0000*\u00020\u00162\b\b\u0002\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\u0003H\u0007\u001a \u0010\u001a\u001a\u00020\u0016*\u00020\u00002\b\b\u0002\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\u0003H\u0007\u001a\f\u0010\u001c\u001a\u00020\u0000*\u00020\u001bH\u0007\u001a*\u0010\u001c\u001a\u00020\u0000*\u00020\u001b2\b\b\u0002\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\u00032\b\b\u0002\u0010\u001d\u001a\u00020\tH\u0007\u001a\f\u0010\u001e\u001a\u00020\u001b*\u00020\u0000H\u0007\u001a*\u0010\u001e\u001a\u00020\u001b*\u00020\u00002\b\b\u0002\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\u00032\b\b\u0002\u0010\u001d\u001a\u00020\tH\u0007\u001a\r\u0010\u001a\u001a\u00020\u0016*\u00020\u0000H\u0087\b\u001a3\u0010\u001a\u001a\u00020\u0016*\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u00162\b\b\u0002\u0010 \u001a\u00020\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\u0003H\u0087\b\u001a,\u0010$\u001a\u00020\u0000*\u00020\u00002\u0016\u0010#\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\"0!\"\u0004\u0018\u00010\"H\u0087\b¢\u0006\u0004\b$\u0010%\u001a4\u0010$\u001a\u00020\u0000*\u00020&2\u0006\u0010$\u001a\u00020\u00002\u0016\u0010#\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\"0!\"\u0004\u0018\u00010\"H\u0087\b¢\u0006\u0004\b$\u0010'\u001a4\u0010$\u001a\u00020\u0000*\u00020\u00002\u0006\u0010)\u001a\u00020(2\u0016\u0010#\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\"0!\"\u0004\u0018\u00010\"H\u0087\b¢\u0006\u0004\b$\u0010*\u001a6\u0010$\u001a\u00020\u0000*\u00020\u00002\b\u0010)\u001a\u0004\u0018\u00010(2\u0016\u0010#\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\"0!\"\u0004\u0018\u00010\"H\u0087\b¢\u0006\u0004\b+\u0010*\u001a<\u0010$\u001a\u00020\u0000*\u00020&2\u0006\u0010)\u001a\u00020(2\u0006\u0010$\u001a\u00020\u00002\u0016\u0010#\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\"0!\"\u0004\u0018\u00010\"H\u0087\b¢\u0006\u0004\b$\u0010,\u001a>\u0010$\u001a\u00020\u0000*\u00020&2\b\u0010)\u001a\u0004\u0018\u00010(2\u0006\u0010$\u001a\u00020\u00002\u0016\u0010#\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\"0!\"\u0004\u0018\u00010\"H\u0087\b¢\u0006\u0004\b+\u0010,\u001a\"\u00102\u001a\b\u0012\u0004\u0012\u00020\u000001*\u00020-2\u0006\u0010/\u001a\u00020.2\b\b\u0002\u00100\u001a\u00020\u0003\u001a\u0015\u00103\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0003H\u0087\b\u001a\u001d\u00103\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0003H\u0087\b\u001a\u001c\u00105\u001a\u00020\t*\u00020\u00002\u0006\u00104\u001a\u00020\u00002\b\b\u0002\u0010\n\u001a\u00020\t\u001a$\u00105\u001a\u00020\t*\u00020\u00002\u0006\u00104\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\t\u001a\u001c\u00107\u001a\u00020\t*\u00020\u00002\u0006\u00106\u001a\u00020\u00002\b\b\u0002\u0010\n\u001a\u00020\t\u001a)\u0010=\u001a\u00020\u00002\u0006\u00108\u001a\u00020\u001b2\u0006\u00109\u001a\u00020\u00032\u0006\u0010:\u001a\u00020\u00032\u0006\u0010<\u001a\u00020;H\u0087\b\u001a\u0019\u0010=\u001a\u00020\u00002\u0006\u00108\u001a\u00020\u001b2\u0006\u0010<\u001a\u00020;H\u0087\b\u001a!\u0010=\u001a\u00020\u00002\u0006\u00108\u001a\u00020\u001b2\u0006\u00109\u001a\u00020\u00032\u0006\u0010:\u001a\u00020\u0003H\u0087\b\u001a\u0011\u0010=\u001a\u00020\u00002\u0006\u00108\u001a\u00020\u001bH\u0087\b\u001a\u0011\u0010=\u001a\u00020\u00002\u0006\u0010>\u001a\u00020\u0016H\u0087\b\u001a!\u0010=\u001a\u00020\u00002\u0006\u0010>\u001a\u00020\u00162\u0006\u00109\u001a\u00020\u00032\u0006\u0010:\u001a\u00020\u0003H\u0087\b\u001a!\u0010=\u001a\u00020\u00002\u0006\u0010@\u001a\u00020?2\u0006\u00109\u001a\u00020\u00032\u0006\u0010:\u001a\u00020\u0003H\u0087\b\u001a\u0011\u0010=\u001a\u00020\u00002\u0006\u0010B\u001a\u00020AH\u0087\b\u001a\u0011\u0010=\u001a\u00020\u00002\u0006\u0010D\u001a\u00020CH\u0087\b\u001a\u0015\u0010F\u001a\u00020\u0003*\u00020\u00002\u0006\u0010E\u001a\u00020\u0003H\u0087\b\u001a\u0015\u0010G\u001a\u00020\u0003*\u00020\u00002\u0006\u0010E\u001a\u00020\u0003H\u0087\b\u001a\u001d\u0010I\u001a\u00020\u0003*\u00020\u00002\u0006\u0010H\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0003H\u0087\b\u001a\u001c\u0010J\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\n\u001a\u00020\t\u001a\u0015\u0010L\u001a\u00020\t*\u00020\u00002\u0006\u0010K\u001a\u00020-H\u0087\b\u001a\u0015\u0010L\u001a\u00020\t*\u00020\u00002\u0006\u0010D\u001a\u00020AH\u0087\b\u001a\u0019\u0010L\u001a\u00020\t*\u0004\u0018\u00010-2\b\u0010\b\u001a\u0004\u0018\u00010-H\u0087\u0004\u001a \u0010L\u001a\u00020\t*\u0004\u0018\u00010-2\b\u0010\b\u001a\u0004\u0018\u00010-2\u0006\u0010\n\u001a\u00020\tH\u0007\u001a\r\u0010M\u001a\u00020\u0000*\u00020\u0000H\u0087\b\u001a\n\u0010N\u001a\u00020\t*\u00020-\u001a\u001d\u0010P\u001a\u00020\u0003*\u00020\u00002\u0006\u0010E\u001a\u00020\u00032\u0006\u0010O\u001a\u00020\u0003H\u0087\b\u001a4\u0010S\u001a\u00020\t*\u00020-2\u0006\u0010Q\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020-2\u0006\u0010R\u001a\u00020\u00032\u0006\u0010:\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\t\u001a4\u0010S\u001a\u00020\t*\u00020\u00002\u0006\u0010Q\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00002\u0006\u0010R\u001a\u00020\u00032\u0006\u0010:\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\t\u001a\u0015\u0010\u0014\u001a\u00020\u0000*\u00020\u00002\u0006\u0010)\u001a\u00020(H\u0087\b\u001a\u0015\u0010\u0015\u001a\u00020\u0000*\u00020\u00002\u0006\u0010)\u001a\u00020(H\u0087\b\u001a\u0015\u0010\u0012\u001a\u00020\u0000*\u00020\u00002\u0006\u0010)\u001a\u00020(H\u0087\b\u001a\u0015\u0010\u0013\u001a\u00020\u0000*\u00020\u00002\u0006\u0010)\u001a\u00020(H\u0087\b\u001a\u0017\u0010T\u001a\u00020\u001b*\u00020\u00002\b\b\u0002\u0010<\u001a\u00020;H\u0087\b\u001a\u0017\u0010V\u001a\u00020.*\u00020\u00002\b\b\u0002\u0010U\u001a\u00020\u0003H\u0087\b\u001a\f\u0010W\u001a\u00020\u0000*\u00020\u0000H\u0007\u001a\u0014\u0010W\u001a\u00020\u0000*\u00020\u00002\u0006\u0010)\u001a\u00020(H\u0007\u001a\f\u0010X\u001a\u00020\u0000*\u00020\u0000H\u0007\u001a\u0014\u0010X\u001a\u00020\u0000*\u00020\u00002\u0006\u0010)\u001a\u00020(H\u0007\u001a\u0012\u0010Z\u001a\u00020\u0000*\u00020-2\u0006\u0010Y\u001a\u00020\u0003\"'\u0010_\u001a\u0012\u0012\u0004\u0012\u00020\u00000[j\b\u0012\u0004\u0012\u00020\u0000`\\*\u00020&8F@\u0006¢\u0006\u0006\u001a\u0004\b]\u0010^¨\u0006`"}, d2 = {"", "", "ch", "", MyAccountLoginActivity_.J, "nativeIndexOf", "str", "nativeLastIndexOf", "other", "", "ignoreCase", "equals", "oldChar", "newChar", "replace", "oldValue", "newValue", "replaceFirst", "toUpperCase", "uppercase", "toLowerCase", "lowercase", "", "concatToString", "startIndex", "endIndex", "toCharArray", "", "decodeToString", "throwOnInvalidSequence", "encodeToByteArray", RtspHeaders.Values.DESTINATION, "destinationOffset", "", "", "args", IjkMediaMeta.IJKM_KEY_FORMAT, "(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "Lkotlin/String$Companion;", "(Lkotlin/jvm/internal/StringCompanionObject;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "Ljava/util/Locale;", "locale", "(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/Object;)Ljava/lang/String;", "formatNullable", "(Lkotlin/jvm/internal/StringCompanionObject;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "", "Ljava/util/regex/Pattern;", "regex", "limit", "", "split", "substring", "prefix", "startsWith", "suffix", "endsWith", "bytes", "offset", "length", "Ljava/nio/charset/Charset;", "charset", "String", "chars", "", "codePoints", "Ljava/lang/StringBuffer;", "stringBuffer", "Ljava/lang/StringBuilder;", "stringBuilder", "index", "codePointAt", "codePointBefore", "beginIndex", "codePointCount", "compareTo", "charSequence", "contentEquals", "intern", "isBlank", "codePointOffset", "offsetByCodePoints", "thisOffset", "otherOffset", "regionMatches", "toByteArray", "flags", "toPattern", "capitalize", "decapitalize", "n", "repeat", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "getCASE_INSENSITIVE_ORDER", "(Lkotlin/jvm/internal/StringCompanionObject;)Ljava/util/Comparator;", "CASE_INSENSITIVE_ORDER", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/text/StringsKt")
/* loaded from: classes.dex */
public class StringsKt__StringsJVMKt extends StringsKt__StringNumberConversionsKt {
    @InlineOnly
    private static final String String(byte[] bArr, int i2, int i4, Charset charset) {
        return new String(bArr, i2, i4, charset);
    }

    @Deprecated(message = "Use replaceFirstChar instead.", replaceWith = @ReplaceWith(expression = "replaceFirstChar { if (it.isLowerCase()) it.titlecase(Locale.getDefault()) else it.toString() }", imports = {"java.util.Locale"}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    @NotNull
    public static final String capitalize(@NotNull String capitalize) {
        Intrinsics.checkNotNullParameter(capitalize, "$this$capitalize");
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "Locale.getDefault()");
        return capitalize(capitalize, locale);
    }

    @InlineOnly
    private static final int codePointAt(String str, int i2) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        return str.codePointAt(i2);
    }

    @InlineOnly
    private static final int codePointBefore(String str, int i2) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        return str.codePointBefore(i2);
    }

    @InlineOnly
    private static final int codePointCount(String str, int i2, int i4) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        return str.codePointCount(i2, i4);
    }

    public static final int compareTo(@NotNull String compareTo, @NotNull String other, boolean z3) {
        Intrinsics.checkNotNullParameter(compareTo, "$this$compareTo");
        Intrinsics.checkNotNullParameter(other, "other");
        if (z3) {
            return compareTo.compareToIgnoreCase(other);
        }
        return compareTo.compareTo(other);
    }

    public static /* synthetic */ int compareTo$default(String str, String str2, boolean z3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z3 = false;
        }
        return compareTo(str, str2, z3);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @NotNull
    public static final String concatToString(@NotNull char[] concatToString) {
        Intrinsics.checkNotNullParameter(concatToString, "$this$concatToString");
        return new String(concatToString);
    }

    public static /* synthetic */ String concatToString$default(char[] cArr, int i2, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i2 = 0;
        }
        if ((i5 & 2) != 0) {
            i4 = cArr.length;
        }
        return concatToString(cArr, i2, i4);
    }

    @InlineOnly
    private static final boolean contentEquals(String str, CharSequence charSequence) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        return str.contentEquals(charSequence);
    }

    @Deprecated(message = "Use replaceFirstChar instead.", replaceWith = @ReplaceWith(expression = "replaceFirstChar { it.lowercase(Locale.getDefault()) }", imports = {"java.util.Locale"}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    @NotNull
    public static final String decapitalize(@NotNull String decapitalize) {
        Intrinsics.checkNotNullParameter(decapitalize, "$this$decapitalize");
        if (!(decapitalize.length() > 0) || Character.isLowerCase(decapitalize.charAt(0))) {
            return decapitalize;
        }
        StringBuilder sb = new StringBuilder();
        String substring = decapitalize.substring(0, 1);
        Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        Objects.requireNonNull(substring, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = substring.toLowerCase();
        Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.String).toLowerCase()");
        sb.append(lowerCase);
        String substring2 = decapitalize.substring(1);
        Intrinsics.checkNotNullExpressionValue(substring2, "(this as java.lang.String).substring(startIndex)");
        sb.append(substring2);
        return sb.toString();
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @NotNull
    public static final String decodeToString(@NotNull byte[] decodeToString) {
        Intrinsics.checkNotNullParameter(decodeToString, "$this$decodeToString");
        return new String(decodeToString, Charsets.UTF_8);
    }

    public static /* synthetic */ String decodeToString$default(byte[] bArr, int i2, int i4, boolean z3, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i2 = 0;
        }
        if ((i5 & 2) != 0) {
            i4 = bArr.length;
        }
        if ((i5 & 4) != 0) {
            z3 = false;
        }
        return decodeToString(bArr, i2, i4, z3);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @NotNull
    public static final byte[] encodeToByteArray(@NotNull String encodeToByteArray) {
        Intrinsics.checkNotNullParameter(encodeToByteArray, "$this$encodeToByteArray");
        byte[] bytes = encodeToByteArray.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    public static /* synthetic */ byte[] encodeToByteArray$default(String str, int i2, int i4, boolean z3, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i2 = 0;
        }
        if ((i5 & 2) != 0) {
            i4 = str.length();
        }
        if ((i5 & 4) != 0) {
            z3 = false;
        }
        return encodeToByteArray(str, i2, i4, z3);
    }

    public static final boolean endsWith(@NotNull String endsWith, @NotNull String suffix, boolean z3) {
        Intrinsics.checkNotNullParameter(endsWith, "$this$endsWith");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        if (!z3) {
            return endsWith.endsWith(suffix);
        }
        return regionMatches(endsWith, endsWith.length() - suffix.length(), suffix, 0, suffix.length(), true);
    }

    public static /* synthetic */ boolean endsWith$default(String str, String str2, boolean z3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z3 = false;
        }
        return endsWith(str, str2, z3);
    }

    public static boolean equals(@Nullable String str, @Nullable String str2, boolean z3) {
        if (str == null) {
            return str2 == null;
        } else if (!z3) {
            return str.equals(str2);
        } else {
            return str.equalsIgnoreCase(str2);
        }
    }

    public static /* synthetic */ boolean equals$default(String str, String str2, boolean z3, int i2, Object obj) {
        boolean equals;
        if ((i2 & 2) != 0) {
            z3 = false;
        }
        equals = equals(str, str2, z3);
        return equals;
    }

    @InlineOnly
    private static final String format(String str, Object... objArr) {
        String format = String.format(str, Arrays.copyOf(objArr, objArr.length));
        Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(this, *args)");
        return format;
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    @JvmName(name = "formatNullable")
    private static final String formatNullable(String str, Locale locale, Object... objArr) {
        String format = String.format(locale, str, Arrays.copyOf(objArr, objArr.length));
        Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(locale, this, *args)");
        return format;
    }

    @NotNull
    public static final Comparator<String> getCASE_INSENSITIVE_ORDER(@NotNull StringCompanionObject CASE_INSENSITIVE_ORDER) {
        Intrinsics.checkNotNullParameter(CASE_INSENSITIVE_ORDER, "$this$CASE_INSENSITIVE_ORDER");
        Comparator<String> comparator = String.CASE_INSENSITIVE_ORDER;
        Intrinsics.checkNotNullExpressionValue(comparator, "java.lang.String.CASE_INSENSITIVE_ORDER");
        return comparator;
    }

    @InlineOnly
    private static final String intern(String str) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String intern = str.intern();
        Intrinsics.checkNotNullExpressionValue(intern, "(this as java.lang.String).intern()");
        return intern;
    }

    public static final boolean isBlank(@NotNull CharSequence isBlank) {
        boolean z3;
        Intrinsics.checkNotNullParameter(isBlank, "$this$isBlank");
        if (isBlank.length() != 0) {
            IntRange indices = StringsKt__StringsKt.getIndices(isBlank);
            if (!(indices instanceof Collection) || !((Collection) indices).isEmpty()) {
                Iterator<Integer> it2 = indices.iterator();
                while (it2.hasNext()) {
                    if (!CharsKt__CharJVMKt.isWhitespace(isBlank.charAt(((IntIterator) it2).nextInt()))) {
                        z3 = false;
                        break;
                    }
                }
            }
            z3 = true;
            if (!z3) {
                return false;
            }
        }
        return true;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final String lowercase(String str) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = str.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.Strin….toLowerCase(Locale.ROOT)");
        return lowerCase;
    }

    @InlineOnly
    private static final int nativeIndexOf(String str, char c4, int i2) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        return str.indexOf(c4, i2);
    }

    @InlineOnly
    private static final int nativeLastIndexOf(String str, char c4, int i2) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        return str.lastIndexOf(c4, i2);
    }

    @InlineOnly
    private static final int offsetByCodePoints(String str, int i2, int i4) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        return str.offsetByCodePoints(i2, i4);
    }

    public static final boolean regionMatches(@NotNull CharSequence regionMatches, int i2, @NotNull CharSequence other, int i4, int i5, boolean z3) {
        Intrinsics.checkNotNullParameter(regionMatches, "$this$regionMatches");
        Intrinsics.checkNotNullParameter(other, "other");
        if ((regionMatches instanceof String) && (other instanceof String)) {
            return regionMatches((String) regionMatches, i2, (String) other, i4, i5, z3);
        }
        return StringsKt__StringsKt.regionMatchesImpl(regionMatches, i2, other, i4, i5, z3);
    }

    @NotNull
    public static String repeat(@NotNull CharSequence repeat, int i2) {
        Intrinsics.checkNotNullParameter(repeat, "$this$repeat");
        int i4 = 1;
        if (!(i2 >= 0)) {
            throw new IllegalArgumentException(("Count 'n' must be non-negative, but was " + i2 + d.f65364a).toString());
        } else if (i2 != 0) {
            if (i2 != 1) {
                int length = repeat.length();
                if (length != 0) {
                    if (length != 1) {
                        StringBuilder sb = new StringBuilder(repeat.length() * i2);
                        if (1 <= i2) {
                            while (true) {
                                sb.append(repeat);
                                if (i4 == i2) {
                                    break;
                                }
                                i4++;
                            }
                        }
                        String sb2 = sb.toString();
                        Intrinsics.checkNotNullExpressionValue(sb2, "sb.toString()");
                        return sb2;
                    }
                    char charAt = repeat.charAt(0);
                    char[] cArr = new char[i2];
                    for (int i5 = 0; i5 < i2; i5++) {
                        cArr[i5] = charAt;
                    }
                    return new String(cArr);
                }
                return "";
            }
            return repeat.toString();
        } else {
            return "";
        }
    }

    @NotNull
    public static final String replace(@NotNull String replace, char c4, char c5, boolean z3) {
        Intrinsics.checkNotNullParameter(replace, "$this$replace");
        if (!z3) {
            String replace2 = replace.replace(c4, c5);
            Intrinsics.checkNotNullExpressionValue(replace2, "(this as java.lang.Strin…replace(oldChar, newChar)");
            return replace2;
        }
        StringBuilder sb = new StringBuilder(replace.length());
        for (int i2 = 0; i2 < replace.length(); i2++) {
            char charAt = replace.charAt(i2);
            if (CharsKt__CharKt.equals(charAt, c4, z3)) {
                charAt = c5;
            }
            sb.append(charAt);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder(capacity).…builderAction).toString()");
        return sb2;
    }

    public static /* synthetic */ String replace$default(String str, char c4, char c5, boolean z3, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z3 = false;
        }
        return replace(str, c4, c5, z3);
    }

    @NotNull
    public static final String replaceFirst(@NotNull String replaceFirst, char c4, char c5, boolean z3) {
        int indexOf$default;
        Intrinsics.checkNotNullParameter(replaceFirst, "$this$replaceFirst");
        indexOf$default = StringsKt__StringsKt.indexOf$default(replaceFirst, c4, 0, z3, 2, (Object) null);
        return indexOf$default < 0 ? replaceFirst : StringsKt__StringsKt.replaceRange((CharSequence) replaceFirst, indexOf$default, indexOf$default + 1, (CharSequence) String.valueOf(c5)).toString();
    }

    public static /* synthetic */ String replaceFirst$default(String str, char c4, char c5, boolean z3, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z3 = false;
        }
        return replaceFirst(str, c4, c5, z3);
    }

    @NotNull
    public static final List<String> split(@NotNull CharSequence split, @NotNull Pattern regex, int i2) {
        List<String> asList;
        Intrinsics.checkNotNullParameter(split, "$this$split");
        Intrinsics.checkNotNullParameter(regex, "regex");
        if (i2 >= 0) {
            if (i2 == 0) {
                i2 = -1;
            }
            String[] split2 = regex.split(split, i2);
            Intrinsics.checkNotNullExpressionValue(split2, "regex.split(this, if (limit == 0) -1 else limit)");
            asList = ArraysKt___ArraysJvmKt.asList(split2);
            return asList;
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i2 + d.f65364a).toString());
    }

    public static /* synthetic */ List split$default(CharSequence charSequence, Pattern pattern, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        return split(charSequence, pattern, i2);
    }

    public static final boolean startsWith(@NotNull String startsWith, @NotNull String prefix, boolean z3) {
        Intrinsics.checkNotNullParameter(startsWith, "$this$startsWith");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        if (!z3) {
            return startsWith.startsWith(prefix);
        }
        return regionMatches(startsWith, 0, prefix, 0, prefix.length(), z3);
    }

    public static /* synthetic */ boolean startsWith$default(String str, String str2, boolean z3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z3 = false;
        }
        return startsWith(str, str2, z3);
    }

    @InlineOnly
    private static final String substring(String str, int i2) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String substring = str.substring(i2);
        Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.String).substring(startIndex)");
        return substring;
    }

    @InlineOnly
    private static final byte[] toByteArray(String str, Charset charset) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        byte[] bytes = str.getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    static /* synthetic */ byte[] toByteArray$default(String str, Charset charset, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        byte[] bytes = str.getBytes(charset);
        Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @NotNull
    public static final char[] toCharArray(@NotNull String toCharArray, int i2, int i4) {
        Intrinsics.checkNotNullParameter(toCharArray, "$this$toCharArray");
        AbstractList.Companion.checkBoundsIndexes$kotlin_stdlib(i2, i4, toCharArray.length());
        char[] cArr = new char[i4 - i2];
        toCharArray.getChars(i2, i4, cArr, 0);
        return cArr;
    }

    public static /* synthetic */ char[] toCharArray$default(String str, int i2, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i2 = 0;
        }
        if ((i5 & 2) != 0) {
            i4 = str.length();
        }
        return toCharArray(str, i2, i4);
    }

    @Deprecated(message = "Use lowercase() instead.", replaceWith = @ReplaceWith(expression = "lowercase(Locale.getDefault())", imports = {"java.util.Locale"}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    @InlineOnly
    private static final String toLowerCase(String str) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = str.toLowerCase();
        Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.String).toLowerCase()");
        return lowerCase;
    }

    @InlineOnly
    private static final Pattern toPattern(String str, int i2) {
        Pattern compile = Pattern.compile(str, i2);
        Intrinsics.checkNotNullExpressionValue(compile, "java.util.regex.Pattern.compile(this, flags)");
        return compile;
    }

    static /* synthetic */ Pattern toPattern$default(String str, int i2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i2 = 0;
        }
        Pattern compile = Pattern.compile(str, i2);
        Intrinsics.checkNotNullExpressionValue(compile, "java.util.regex.Pattern.compile(this, flags)");
        return compile;
    }

    @Deprecated(message = "Use uppercase() instead.", replaceWith = @ReplaceWith(expression = "uppercase(Locale.getDefault())", imports = {"java.util.Locale"}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    @InlineOnly
    private static final String toUpperCase(String str) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String upperCase = str.toUpperCase();
        Intrinsics.checkNotNullExpressionValue(upperCase, "(this as java.lang.String).toUpperCase()");
        return upperCase;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final String uppercase(String str) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String upperCase = str.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "(this as java.lang.Strin….toUpperCase(Locale.ROOT)");
        return upperCase;
    }

    @InlineOnly
    private static final String String(byte[] bArr, Charset charset) {
        return new String(bArr, charset);
    }

    @SinceKotlin(version = "1.4")
    @NotNull
    @Deprecated(message = "Use replaceFirstChar instead.", replaceWith = @ReplaceWith(expression = "replaceFirstChar { if (it.isLowerCase()) it.titlecase(locale) else it.toString() }", imports = {}))
    @LowPriorityInOverloadResolution
    @DeprecatedSinceKotlin(warningSince = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final String capitalize(@NotNull String capitalize, @NotNull Locale locale) {
        Intrinsics.checkNotNullParameter(capitalize, "$this$capitalize");
        Intrinsics.checkNotNullParameter(locale, "locale");
        if (capitalize.length() > 0) {
            char charAt = capitalize.charAt(0);
            if (Character.isLowerCase(charAt)) {
                StringBuilder sb = new StringBuilder();
                char titleCase = Character.toTitleCase(charAt);
                if (titleCase != Character.toUpperCase(charAt)) {
                    sb.append(titleCase);
                } else {
                    String substring = capitalize.substring(0, 1);
                    Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    Objects.requireNonNull(substring, "null cannot be cast to non-null type java.lang.String");
                    String upperCase = substring.toUpperCase(locale);
                    Intrinsics.checkNotNullExpressionValue(upperCase, "(this as java.lang.String).toUpperCase(locale)");
                    sb.append(upperCase);
                }
                String substring2 = capitalize.substring(1);
                Intrinsics.checkNotNullExpressionValue(substring2, "(this as java.lang.String).substring(startIndex)");
                sb.append(substring2);
                String sb2 = sb.toString();
                Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
                return sb2;
            }
            return capitalize;
        }
        return capitalize;
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @NotNull
    public static final String concatToString(@NotNull char[] concatToString, int i2, int i4) {
        Intrinsics.checkNotNullParameter(concatToString, "$this$concatToString");
        AbstractList.Companion.checkBoundsIndexes$kotlin_stdlib(i2, i4, concatToString.length);
        return new String(concatToString, i2, i4 - i2);
    }

    @InlineOnly
    private static final boolean contentEquals(String str, StringBuffer stringBuffer) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        return str.contentEquals(stringBuffer);
    }

    @SinceKotlin(version = "1.4")
    @NotNull
    @Deprecated(message = "Use replaceFirstChar instead.", replaceWith = @ReplaceWith(expression = "replaceFirstChar { it.lowercase(locale) }", imports = {}))
    @LowPriorityInOverloadResolution
    @DeprecatedSinceKotlin(warningSince = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final String decapitalize(@NotNull String decapitalize, @NotNull Locale locale) {
        Intrinsics.checkNotNullParameter(decapitalize, "$this$decapitalize");
        Intrinsics.checkNotNullParameter(locale, "locale");
        if (!(decapitalize.length() > 0) || Character.isLowerCase(decapitalize.charAt(0))) {
            return decapitalize;
        }
        StringBuilder sb = new StringBuilder();
        String substring = decapitalize.substring(0, 1);
        Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        Objects.requireNonNull(substring, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = substring.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        sb.append(lowerCase);
        String substring2 = decapitalize.substring(1);
        Intrinsics.checkNotNullExpressionValue(substring2, "(this as java.lang.String).substring(startIndex)");
        sb.append(substring2);
        return sb.toString();
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @NotNull
    public static final String decodeToString(@NotNull byte[] decodeToString, int i2, int i4, boolean z3) {
        Intrinsics.checkNotNullParameter(decodeToString, "$this$decodeToString");
        AbstractList.Companion.checkBoundsIndexes$kotlin_stdlib(i2, i4, decodeToString.length);
        if (!z3) {
            return new String(decodeToString, i2, i4 - i2, Charsets.UTF_8);
        }
        String charBuffer = Charsets.UTF_8.newDecoder().onMalformedInput(CodingErrorAction.REPORT).onUnmappableCharacter(CodingErrorAction.REPORT).decode(ByteBuffer.wrap(decodeToString, i2, i4 - i2)).toString();
        Intrinsics.checkNotNullExpressionValue(charBuffer, "decoder.decode(ByteBuffe…- startIndex)).toString()");
        return charBuffer;
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @NotNull
    public static final byte[] encodeToByteArray(@NotNull String encodeToByteArray, int i2, int i4, boolean z3) {
        Intrinsics.checkNotNullParameter(encodeToByteArray, "$this$encodeToByteArray");
        AbstractList.Companion.checkBoundsIndexes$kotlin_stdlib(i2, i4, encodeToByteArray.length());
        if (!z3) {
            String substring = encodeToByteArray.substring(i2, i4);
            Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            Charset charset = Charsets.UTF_8;
            Objects.requireNonNull(substring, "null cannot be cast to non-null type java.lang.String");
            byte[] bytes = substring.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
            return bytes;
        }
        ByteBuffer encode = Charsets.UTF_8.newEncoder().onMalformedInput(CodingErrorAction.REPORT).onUnmappableCharacter(CodingErrorAction.REPORT).encode(CharBuffer.wrap(encodeToByteArray, i2, i4));
        if (encode.hasArray() && encode.arrayOffset() == 0) {
            int remaining = encode.remaining();
            byte[] array = encode.array();
            Intrinsics.checkNotNull(array);
            if (remaining == array.length) {
                byte[] array2 = encode.array();
                Intrinsics.checkNotNullExpressionValue(array2, "byteBuffer.array()");
                return array2;
            }
        }
        byte[] bArr = new byte[encode.remaining()];
        encode.get(bArr);
        return bArr;
    }

    @InlineOnly
    private static final String format(StringCompanionObject stringCompanionObject, String str, Object... objArr) {
        String format = String.format(str, Arrays.copyOf(objArr, objArr.length));
        Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(format, *args)");
        return format;
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    @JvmName(name = "formatNullable")
    private static final String formatNullable(StringCompanionObject stringCompanionObject, Locale locale, String str, Object... objArr) {
        String format = String.format(locale, str, Arrays.copyOf(objArr, objArr.length));
        Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(locale, format, *args)");
        return format;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final String lowercase(String str, Locale locale) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = str.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        return lowerCase;
    }

    @InlineOnly
    private static final int nativeIndexOf(String str, String str2, int i2) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        return str.indexOf(str2, i2);
    }

    @InlineOnly
    private static final int nativeLastIndexOf(String str, String str2, int i2) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        return str.lastIndexOf(str2, i2);
    }

    public static /* synthetic */ String replace$default(String str, String str2, String str3, boolean z3, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z3 = false;
        }
        return replace(str, str2, str3, z3);
    }

    public static /* synthetic */ String replaceFirst$default(String str, String str2, String str3, boolean z3, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z3 = false;
        }
        return replaceFirst(str, str2, str3, z3);
    }

    public static /* synthetic */ boolean startsWith$default(String str, String str2, int i2, boolean z3, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            z3 = false;
        }
        return startsWith(str, str2, i2, z3);
    }

    @InlineOnly
    private static final String substring(String str, int i2, int i4) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String substring = str.substring(i2, i4);
        Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    static /* synthetic */ char[] toCharArray$default(String str, char[] cArr, int i2, int i4, int i5, int i6, Object obj) {
        if ((i6 & 2) != 0) {
            i2 = 0;
        }
        if ((i6 & 4) != 0) {
            i4 = 0;
        }
        if ((i6 & 8) != 0) {
            i5 = str.length();
        }
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        str.getChars(i4, i5, cArr, i2);
        return cArr;
    }

    @Deprecated(message = "Use lowercase() instead.", replaceWith = @ReplaceWith(expression = "lowercase(locale)", imports = {}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    @InlineOnly
    private static final String toLowerCase(String str, Locale locale) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = str.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        return lowerCase;
    }

    @Deprecated(message = "Use uppercase() instead.", replaceWith = @ReplaceWith(expression = "uppercase(locale)", imports = {}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    @InlineOnly
    private static final String toUpperCase(String str, Locale locale) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String upperCase = str.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "(this as java.lang.String).toUpperCase(locale)");
        return upperCase;
    }

    @SinceKotlin(version = "1.5")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final String uppercase(String str, Locale locale) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String upperCase = str.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "(this as java.lang.String).toUpperCase(locale)");
        return upperCase;
    }

    @InlineOnly
    private static final String String(byte[] bArr, int i2, int i4) {
        return new String(bArr, i2, i4, Charsets.UTF_8);
    }

    @SinceKotlin(version = "1.5")
    public static final boolean contentEquals(@Nullable CharSequence charSequence, @Nullable CharSequence charSequence2) {
        if ((charSequence instanceof String) && charSequence2 != null) {
            return ((String) charSequence).contentEquals(charSequence2);
        }
        return StringsKt__StringsKt.contentEqualsImpl(charSequence, charSequence2);
    }

    @Deprecated(message = "Use Kotlin compiler 1.4 to avoid deprecation warning.")
    @DeprecatedSinceKotlin(hiddenSince = "1.4")
    @InlineOnly
    private static final /* synthetic */ String format(String str, Locale locale, Object... objArr) {
        String format = String.format(locale, str, Arrays.copyOf(objArr, objArr.length));
        Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(locale, this, *args)");
        return format;
    }

    @NotNull
    public static final String replaceFirst(@NotNull String replaceFirst, @NotNull String oldValue, @NotNull String newValue, boolean z3) {
        int indexOf$default;
        Intrinsics.checkNotNullParameter(replaceFirst, "$this$replaceFirst");
        Intrinsics.checkNotNullParameter(oldValue, "oldValue");
        Intrinsics.checkNotNullParameter(newValue, "newValue");
        indexOf$default = StringsKt__StringsKt.indexOf$default(replaceFirst, oldValue, 0, z3, 2, (Object) null);
        return indexOf$default < 0 ? replaceFirst : StringsKt__StringsKt.replaceRange((CharSequence) replaceFirst, indexOf$default, oldValue.length() + indexOf$default, (CharSequence) newValue).toString();
    }

    public static final boolean startsWith(@NotNull String startsWith, @NotNull String prefix, int i2, boolean z3) {
        Intrinsics.checkNotNullParameter(startsWith, "$this$startsWith");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        if (!z3) {
            return startsWith.startsWith(prefix, i2);
        }
        return regionMatches(startsWith, i2, prefix, 0, prefix.length(), z3);
    }

    @InlineOnly
    private static final char[] toCharArray(String str) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        char[] charArray = str.toCharArray();
        Intrinsics.checkNotNullExpressionValue(charArray, "(this as java.lang.String).toCharArray()");
        return charArray;
    }

    @InlineOnly
    private static final String String(byte[] bArr) {
        return new String(bArr, Charsets.UTF_8);
    }

    @Deprecated(message = "Use Kotlin compiler 1.4 to avoid deprecation warning.")
    @DeprecatedSinceKotlin(hiddenSince = "1.4")
    @InlineOnly
    private static final /* synthetic */ String format(StringCompanionObject stringCompanionObject, Locale locale, String str, Object... objArr) {
        String format = String.format(locale, str, Arrays.copyOf(objArr, objArr.length));
        Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(locale, format, *args)");
        return format;
    }

    public static final boolean regionMatches(@NotNull String regionMatches, int i2, @NotNull String other, int i4, int i5, boolean z3) {
        Intrinsics.checkNotNullParameter(regionMatches, "$this$regionMatches");
        Intrinsics.checkNotNullParameter(other, "other");
        if (!z3) {
            return regionMatches.regionMatches(i2, other, i4, i5);
        }
        return regionMatches.regionMatches(z3, i2, other, i4, i5);
    }

    @InlineOnly
    private static final char[] toCharArray(String str, char[] cArr, int i2, int i4, int i5) {
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        str.getChars(i4, i5, cArr, i2);
        return cArr;
    }

    @InlineOnly
    private static final String String(char[] cArr) {
        return new String(cArr);
    }

    @InlineOnly
    private static final String String(char[] cArr, int i2, int i4) {
        return new String(cArr, i2, i4);
    }

    @SinceKotlin(version = "1.5")
    public static final boolean contentEquals(@Nullable CharSequence charSequence, @Nullable CharSequence charSequence2, boolean z3) {
        if (z3) {
            return StringsKt__StringsKt.contentEqualsIgnoreCaseImpl(charSequence, charSequence2);
        }
        return contentEquals(charSequence, charSequence2);
    }

    @NotNull
    public static final String replace(@NotNull String replace, @NotNull String oldValue, @NotNull String newValue, boolean z3) {
        int coerceAtLeast;
        Intrinsics.checkNotNullParameter(replace, "$this$replace");
        Intrinsics.checkNotNullParameter(oldValue, "oldValue");
        Intrinsics.checkNotNullParameter(newValue, "newValue");
        int i2 = 0;
        int indexOf = StringsKt__StringsKt.indexOf(replace, oldValue, 0, z3);
        if (indexOf < 0) {
            return replace;
        }
        int length = oldValue.length();
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(length, 1);
        int length2 = (replace.length() - length) + newValue.length();
        if (length2 >= 0) {
            StringBuilder sb = new StringBuilder(length2);
            do {
                sb.append((CharSequence) replace, i2, indexOf);
                sb.append(newValue);
                i2 = indexOf + length;
                if (indexOf >= replace.length()) {
                    break;
                }
                indexOf = StringsKt__StringsKt.indexOf(replace, oldValue, indexOf + coerceAtLeast, z3);
            } while (indexOf > 0);
            sb.append((CharSequence) replace, i2, replace.length());
            String sb2 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "stringBuilder.append(this, i, length).toString()");
            return sb2;
        }
        throw new OutOfMemoryError();
    }

    @InlineOnly
    private static final String String(int[] iArr, int i2, int i4) {
        return new String(iArr, i2, i4);
    }

    @InlineOnly
    private static final String String(StringBuffer stringBuffer) {
        return new String(stringBuffer);
    }

    @InlineOnly
    private static final String String(StringBuilder sb) {
        return new String(sb);
    }
}
