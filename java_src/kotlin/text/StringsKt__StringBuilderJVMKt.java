package kotlin.text;

import io.netty.handler.codec.rtsp.RtspHeaders;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: StringBuilderJVM.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0019\n\u0002\b\u0004\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\n\n\u0002\u0010\u0005\n\u0002\u0010\t\n\u0002\u0010\u0007\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u0014\u0010\u0002\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u0001H\u0007\u001a!\u0010\b\u001a\u00020\u0007*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0087\n\u001a-\u0010\f\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u000bH\u0087\b\u001a\u001d\u0010\r\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0087\b\u001a%\u0010\u000e\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003H\u0087\b\u001a7\u0010\u0012\u001a\u00020\u0007*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0010\u001a\u00020\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u0003H\u0087\b\u001a-\u0010\u0013\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003H\u0087\b\u001a-\u0010\u0013\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003H\u0087\b\u001a5\u0010\u0015\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u000f2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003H\u0087\b\u001a5\u0010\u0015\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003H\u0087\b\u001a\u001f\u0010\u0017\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0016H\u0087\b\u001a%\u0010\u0017\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u000e\u0010\u0006\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u0001H\u0087\b\u001a\u001d\u0010\u0017\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\u0003H\u0087\b\u001a\u001d\u0010\u0017\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\u0018H\u0087\b\u001a\u001d\u0010\u0017\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\u0019H\u0087\b\u001a\u001d\u0010\u0017\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\u001aH\u0087\b\u001a\u001d\u0010\u0017\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\u001bH\u0087\b\u001a\u001d\u0010\u0017\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\u001cH\u0087\b\u001a\u0014\u0010\u001f\u001a\u00060\u001dj\u0002`\u001e*\u00060\u001dj\u0002`\u001eH\u0007\u001a\u001f\u0010\u001f\u001a\u00060\u001dj\u0002`\u001e*\u00060\u001dj\u0002`\u001e2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0014H\u0087\b\u001a\u001d\u0010\u001f\u001a\u00060\u001dj\u0002`\u001e*\u00060\u001dj\u0002`\u001e2\u0006\u0010\u0006\u001a\u00020\u0005H\u0087\b\u001a\u0014\u0010\u001f\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u0001H\u0007\u001a\u001f\u0010\u001f\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0016H\u0087\b\u001a\u001f\u0010\u001f\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0014H\u0087\b\u001a\u001f\u0010\u001f\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\b\u0010\u0006\u001a\u0004\u0018\u00010\u000bH\u0087\b\u001a\u001f\u0010\u001f\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\b\u0010\u0006\u001a\u0004\u0018\u00010 H\u0087\b\u001a%\u0010\u001f\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u000e\u0010\u0006\u001a\n\u0018\u00010\u0000j\u0004\u0018\u0001`\u0001H\u0087\b\u001a\u001d\u0010\u001f\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\u000fH\u0087\b\u001a\u001d\u0010\u001f\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\u0005H\u0087\b\u001a\u001d\u0010\u001f\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020!H\u0087\b\u001a\u001d\u0010\u001f\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\u0003H\u0087\b\u001a\u001d\u0010\u001f\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\u0018H\u0087\b\u001a\u001d\u0010\u001f\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\u0019H\u0087\b\u001a\u001d\u0010\u001f\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\u001aH\u0087\b\u001a\u001d\u0010\u001f\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\u001bH\u0087\b\u001a\u001d\u0010\u001f\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0006\u001a\u00020\u001cH\u0087\b¨\u0006\""}, d2 = {"Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "clear", "", "index", "", "value", "", "set", "startIndex", "endIndex", "", "setRange", "deleteAt", "deleteRange", "", RtspHeaders.Values.DESTINATION, "destinationOffset", "toCharArray", "appendRange", "", "insertRange", "Ljava/lang/StringBuffer;", "appendLine", "", "", "", "", "", "Ljava/lang/Appendable;", "Lkotlin/text/Appendable;", "appendln", "", "", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/text/StringsKt")
/* loaded from: classes.dex */
class StringsKt__StringBuilderJVMKt extends StringsKt__RegexExtensionsKt {
    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final StringBuilder appendLine(StringBuilder sb, StringBuffer stringBuffer) {
        sb.append(stringBuffer);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        sb.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb, "append('\\n')");
        return sb;
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final StringBuilder appendRange(StringBuilder sb, char[] cArr, int i2, int i4) {
        sb.append(cArr, i2, i4 - i2);
        Intrinsics.checkNotNullExpressionValue(sb, "this.append(value, start…x, endIndex - startIndex)");
        return sb;
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @ReplaceWith(expression = "appendLine()", imports = {}))
    @NotNull
    public static final Appendable appendln(@NotNull Appendable appendln) {
        Intrinsics.checkNotNullParameter(appendln, "$this$appendln");
        Appendable append = appendln.append(SystemProperties.LINE_SEPARATOR);
        Intrinsics.checkNotNullExpressionValue(append, "append(SystemProperties.LINE_SEPARATOR)");
        return append;
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static final StringBuilder clear(@NotNull StringBuilder clear) {
        Intrinsics.checkNotNullParameter(clear, "$this$clear");
        clear.setLength(0);
        return clear;
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final StringBuilder deleteAt(StringBuilder sb, int i2) {
        StringBuilder deleteCharAt = sb.deleteCharAt(i2);
        Intrinsics.checkNotNullExpressionValue(deleteCharAt, "this.deleteCharAt(index)");
        return deleteCharAt;
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final StringBuilder deleteRange(StringBuilder sb, int i2, int i4) {
        StringBuilder delete = sb.delete(i2, i4);
        Intrinsics.checkNotNullExpressionValue(delete, "this.delete(startIndex, endIndex)");
        return delete;
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final StringBuilder insertRange(StringBuilder sb, int i2, char[] cArr, int i4, int i5) {
        StringBuilder insert = sb.insert(i2, cArr, i4, i5 - i4);
        Intrinsics.checkNotNullExpressionValue(insert, "this.insert(index, value…x, endIndex - startIndex)");
        return insert;
    }

    @InlineOnly
    private static final void set(StringBuilder set, int i2, char c4) {
        Intrinsics.checkNotNullParameter(set, "$this$set");
        set.setCharAt(i2, c4);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final StringBuilder setRange(StringBuilder sb, int i2, int i4, String str) {
        StringBuilder replace = sb.replace(i2, i4, str);
        Intrinsics.checkNotNullExpressionValue(replace, "this.replace(startIndex, endIndex, value)");
        return replace;
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final void toCharArray(StringBuilder sb, char[] cArr, int i2, int i4, int i5) {
        sb.getChars(i4, i5, cArr, i2);
    }

    static /* synthetic */ void toCharArray$default(StringBuilder sb, char[] cArr, int i2, int i4, int i5, int i6, Object obj) {
        if ((i6 & 2) != 0) {
            i2 = 0;
        }
        if ((i6 & 4) != 0) {
            i4 = 0;
        }
        if ((i6 & 8) != 0) {
            i5 = sb.length();
        }
        sb.getChars(i4, i5, cArr, i2);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final StringBuilder appendLine(StringBuilder sb, StringBuilder sb2) {
        sb.append((CharSequence) sb2);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        sb.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb, "append('\\n')");
        return sb;
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final StringBuilder appendRange(StringBuilder sb, CharSequence charSequence, int i2, int i4) {
        sb.append(charSequence, i2, i4);
        Intrinsics.checkNotNullExpressionValue(sb, "this.append(value, startIndex, endIndex)");
        return sb;
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @ReplaceWith(expression = "appendLine(value)", imports = {}))
    @InlineOnly
    private static final Appendable appendln(Appendable appendable, CharSequence charSequence) {
        Appendable append = appendable.append(charSequence);
        Intrinsics.checkNotNullExpressionValue(append, "append(value)");
        return appendln(append);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final StringBuilder insertRange(StringBuilder sb, int i2, CharSequence charSequence, int i4, int i5) {
        StringBuilder insert = sb.insert(i2, charSequence, i4, i5);
        Intrinsics.checkNotNullExpressionValue(insert, "this.insert(index, value, startIndex, endIndex)");
        return insert;
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final StringBuilder appendLine(StringBuilder sb, int i2) {
        sb.append(i2);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        sb.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb, "append('\\n')");
        return sb;
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @ReplaceWith(expression = "appendLine(value)", imports = {}))
    @InlineOnly
    private static final Appendable appendln(Appendable appendable, char c4) {
        Appendable append = appendable.append(c4);
        Intrinsics.checkNotNullExpressionValue(append, "append(value)");
        return appendln(append);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final StringBuilder appendLine(StringBuilder sb, short s3) {
        sb.append((int) s3);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value.toInt())");
        sb.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb, "append('\\n')");
        return sb;
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @ReplaceWith(expression = "appendLine()", imports = {}))
    @NotNull
    public static final StringBuilder appendln(@NotNull StringBuilder appendln) {
        Intrinsics.checkNotNullParameter(appendln, "$this$appendln");
        appendln.append(SystemProperties.LINE_SEPARATOR);
        Intrinsics.checkNotNullExpressionValue(appendln, "append(SystemProperties.LINE_SEPARATOR)");
        return appendln;
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final StringBuilder appendLine(StringBuilder sb, byte b4) {
        sb.append((int) b4);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value.toInt())");
        sb.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb, "append('\\n')");
        return sb;
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @ReplaceWith(expression = "appendLine(value)", imports = {}))
    @InlineOnly
    private static final StringBuilder appendln(StringBuilder sb, StringBuffer stringBuffer) {
        sb.append(stringBuffer);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        return appendln(sb);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final StringBuilder appendLine(StringBuilder sb, long j4) {
        sb.append(j4);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        sb.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb, "append('\\n')");
        return sb;
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @ReplaceWith(expression = "appendLine(value)", imports = {}))
    @InlineOnly
    private static final StringBuilder appendln(StringBuilder sb, CharSequence charSequence) {
        sb.append(charSequence);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        return appendln(sb);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final StringBuilder appendLine(StringBuilder sb, float f4) {
        sb.append(f4);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        sb.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb, "append('\\n')");
        return sb;
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @ReplaceWith(expression = "appendLine(value)", imports = {}))
    @InlineOnly
    private static final StringBuilder appendln(StringBuilder sb, String str) {
        sb.append(str);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        return appendln(sb);
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final StringBuilder appendLine(StringBuilder sb, double d4) {
        sb.append(d4);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        sb.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb, "append('\\n')");
        return sb;
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @ReplaceWith(expression = "appendLine(value)", imports = {}))
    @InlineOnly
    private static final StringBuilder appendln(StringBuilder sb, Object obj) {
        sb.append(obj);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        return appendln(sb);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @ReplaceWith(expression = "appendLine(value)", imports = {}))
    @InlineOnly
    private static final StringBuilder appendln(StringBuilder sb, StringBuilder sb2) {
        sb.append((CharSequence) sb2);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        return appendln(sb);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @ReplaceWith(expression = "appendLine(value)", imports = {}))
    @InlineOnly
    private static final StringBuilder appendln(StringBuilder sb, char[] cArr) {
        sb.append(cArr);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        return appendln(sb);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @ReplaceWith(expression = "appendLine(value)", imports = {}))
    @InlineOnly
    private static final StringBuilder appendln(StringBuilder sb, char c4) {
        sb.append(c4);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        return appendln(sb);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @ReplaceWith(expression = "appendLine(value)", imports = {}))
    @InlineOnly
    private static final StringBuilder appendln(StringBuilder sb, boolean z3) {
        sb.append(z3);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        return appendln(sb);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @ReplaceWith(expression = "appendLine(value)", imports = {}))
    @InlineOnly
    private static final StringBuilder appendln(StringBuilder sb, int i2) {
        sb.append(i2);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        return appendln(sb);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @ReplaceWith(expression = "appendLine(value)", imports = {}))
    @InlineOnly
    private static final StringBuilder appendln(StringBuilder sb, short s3) {
        sb.append((int) s3);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value.toInt())");
        return appendln(sb);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @ReplaceWith(expression = "appendLine(value)", imports = {}))
    @InlineOnly
    private static final StringBuilder appendln(StringBuilder sb, byte b4) {
        sb.append((int) b4);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value.toInt())");
        return appendln(sb);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @ReplaceWith(expression = "appendLine(value)", imports = {}))
    @InlineOnly
    private static final StringBuilder appendln(StringBuilder sb, long j4) {
        sb.append(j4);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        return appendln(sb);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @ReplaceWith(expression = "appendLine(value)", imports = {}))
    @InlineOnly
    private static final StringBuilder appendln(StringBuilder sb, float f4) {
        sb.append(f4);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        return appendln(sb);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Use appendLine instead. Note that the new method always appends the line feed character '\\n' regardless of the system line separator.", replaceWith = @ReplaceWith(expression = "appendLine(value)", imports = {}))
    @InlineOnly
    private static final StringBuilder appendln(StringBuilder sb, double d4) {
        sb.append(d4);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        return appendln(sb);
    }
}
