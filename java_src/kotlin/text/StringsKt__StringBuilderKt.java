package kotlin.text;

import io.netty.handler.codec.rtsp.RtspHeaders;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: StringBuilder.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\r\n\u0002\u0010\u0019\n\u0002\u0010\f\n\u0002\u0010\u000b\n\u0000\u001a\u001f\u0010\u0004\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0087\b\u001a6\u0010\n\u001a\u00020\t2\u001b\u0010\b\u001a\u0017\u0012\b\u0012\u00060\u0000j\u0002`\u0001\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\b\u0007H\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001\u001a>\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u001b\u0010\b\u001a\u0017\u0012\b\u0012\u00060\u0000j\u0002`\u0001\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\b\u0007H\u0087\bø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001\u001a1\u0010\u0004\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0016\u0010\u000e\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\t0\r\"\u0004\u0018\u00010\t¢\u0006\u0004\b\u0004\u0010\u000f\u001a1\u0010\u0004\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0016\u0010\u000e\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00020\r\"\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0010\u001a\u0015\u0010\u0011\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u0001H\u0087\b\u001a\u001f\u0010\u0011\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0012H\u0087\b\u001a\u001f\u0010\u0011\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\b\u0010\u000e\u001a\u0004\u0018\u00010\tH\u0087\b\u001a\u001f\u0010\u0011\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0087\b\u001a\u001d\u0010\u0011\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u000e\u001a\u00020\u0013H\u0087\b\u001a\u001d\u0010\u0011\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u000e\u001a\u00020\u0014H\u0087\b\u001a\u001d\u0010\u0011\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u000e\u001a\u00020\u0015H\u0087\b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0016"}, d2 = {"Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "", "obj", RtspHeaders.Values.APPEND, "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "builderAction", "", "buildString", "", "capacity", "", "value", "(Ljava/lang/StringBuilder;[Ljava/lang/String;)Ljava/lang/StringBuilder;", "(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;", "appendLine", "", "", "", "", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/text/StringsKt")
/* loaded from: classes.dex */
class StringsKt__StringBuilderKt extends StringsKt__StringBuilderJVMKt {
    @Deprecated(level = DeprecationLevel.WARNING, message = "Use append(value: Any?) instead", replaceWith = @ReplaceWith(expression = "append(value = obj)", imports = {}))
    @InlineOnly
    private static final StringBuilder append(StringBuilder sb, Object obj) {
        sb.append(obj);
        Intrinsics.checkNotNullExpressionValue(sb, "this.append(obj)");
        return sb;
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final StringBuilder appendLine(StringBuilder sb) {
        sb.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb, "append('\\n')");
        return sb;
    }

    @InlineOnly
    private static final String buildString(Function1<? super StringBuilder, Unit> function1) {
        StringBuilder sb = new StringBuilder();
        function1.invoke(sb);
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    @NotNull
    public static final StringBuilder append(@NotNull StringBuilder append, @NotNull String... value) {
        Intrinsics.checkNotNullParameter(append, "$this$append");
        Intrinsics.checkNotNullParameter(value, "value");
        for (String str : value) {
            append.append(str);
        }
        return append;
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final StringBuilder appendLine(StringBuilder sb, CharSequence charSequence) {
        sb.append(charSequence);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        sb.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb, "append('\\n')");
        return sb;
    }

    @SinceKotlin(version = "1.1")
    @InlineOnly
    private static final String buildString(int i2, Function1<? super StringBuilder, Unit> function1) {
        StringBuilder sb = new StringBuilder(i2);
        function1.invoke(sb);
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder(capacity).…builderAction).toString()");
        return sb2;
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final StringBuilder appendLine(StringBuilder sb, String str) {
        sb.append(str);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        sb.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb, "append('\\n')");
        return sb;
    }

    @NotNull
    public static final StringBuilder append(@NotNull StringBuilder append, @NotNull Object... value) {
        Intrinsics.checkNotNullParameter(append, "$this$append");
        Intrinsics.checkNotNullParameter(value, "value");
        for (Object obj : value) {
            append.append(obj);
        }
        return append;
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final StringBuilder appendLine(StringBuilder sb, Object obj) {
        sb.append(obj);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        sb.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb, "append('\\n')");
        return sb;
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final StringBuilder appendLine(StringBuilder sb, char[] cArr) {
        sb.append(cArr);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        sb.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb, "append('\\n')");
        return sb;
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final StringBuilder appendLine(StringBuilder sb, char c4) {
        sb.append(c4);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        sb.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb, "append('\\n')");
        return sb;
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final StringBuilder appendLine(StringBuilder sb, boolean z3) {
        sb.append(z3);
        Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
        sb.append('\n');
        Intrinsics.checkNotNullExpressionValue(sb, "append('\\n')");
        return sb;
    }
}
