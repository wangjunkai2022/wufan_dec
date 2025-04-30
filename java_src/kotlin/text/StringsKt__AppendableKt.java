package kotlin.text;

import io.netty.handler.codec.rtsp.RtspHeaders;
import java.util.Objects;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Appendable.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a9\u0010\b\u001a\u00028\u0000\"\f\b\u0000\u0010\u0002*\u00060\u0000j\u0002`\u0001*\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\b\u0010\t\u001a7\u0010\u000b\u001a\u00028\u0000\"\f\b\u0000\u0010\u0002*\u00060\u0000j\u0002`\u0001*\u00028\u00002\u0016\u0010\u0004\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00030\n\"\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000b\u0010\f\u001a\u0015\u0010\r\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u0001H\u0087\b\u001a\u001f\u0010\r\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0087\b\u001a\u001d\u0010\r\u001a\u00060\u0000j\u0002`\u0001*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0004\u001a\u00020\u000eH\u0087\b\u001a;\u0010\u0013\u001a\u00020\u0012\"\u0004\b\u0000\u0010\u0002*\u00060\u0000j\u0002`\u00012\u0006\u0010\u000f\u001a\u00028\u00002\u0014\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010H\u0000¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Ljava/lang/Appendable;", "Lkotlin/text/Appendable;", "T", "", "value", "", "startIndex", "endIndex", "appendRange", "(Ljava/lang/Appendable;Ljava/lang/CharSequence;II)Ljava/lang/Appendable;", "", RtspHeaders.Values.APPEND, "(Ljava/lang/Appendable;[Ljava/lang/CharSequence;)Ljava/lang/Appendable;", "appendLine", "", "element", "Lkotlin/Function1;", "transform", "", "appendElement", "(Ljava/lang/Appendable;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/text/StringsKt")
/* loaded from: classes.dex */
public class StringsKt__AppendableKt {
    @NotNull
    public static final <T extends Appendable> T append(@NotNull T append, @NotNull CharSequence... value) {
        Intrinsics.checkNotNullParameter(append, "$this$append");
        Intrinsics.checkNotNullParameter(value, "value");
        for (CharSequence charSequence : value) {
            append.append(charSequence);
        }
        return append;
    }

    public static <T> void appendElement(@NotNull Appendable appendElement, T t3, @Nullable Function1<? super T, ? extends CharSequence> function1) {
        Intrinsics.checkNotNullParameter(appendElement, "$this$appendElement");
        if (function1 != null) {
            appendElement.append(function1.invoke(t3));
            return;
        }
        if (t3 != null ? t3 instanceof CharSequence : true) {
            appendElement.append((CharSequence) t3);
        } else if (t3 instanceof Character) {
            appendElement.append(((Character) t3).charValue());
        } else {
            appendElement.append(String.valueOf(t3));
        }
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final Appendable appendLine(Appendable appendable) {
        Appendable append = appendable.append('\n');
        Intrinsics.checkNotNullExpressionValue(append, "append('\\n')");
        return append;
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @NotNull
    public static final <T extends Appendable> T appendRange(@NotNull T appendRange, @NotNull CharSequence value, int i2, int i4) {
        Intrinsics.checkNotNullParameter(appendRange, "$this$appendRange");
        Intrinsics.checkNotNullParameter(value, "value");
        T t3 = (T) appendRange.append(value, i2, i4);
        Objects.requireNonNull(t3, "null cannot be cast to non-null type T");
        return t3;
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final Appendable appendLine(Appendable appendable, CharSequence charSequence) {
        Appendable append = appendable.append(charSequence);
        Intrinsics.checkNotNullExpressionValue(append, "append(value)");
        Appendable append2 = append.append('\n');
        Intrinsics.checkNotNullExpressionValue(append2, "append('\\n')");
        return append2;
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final Appendable appendLine(Appendable appendable, char c4) {
        Appendable append = appendable.append(c4);
        Intrinsics.checkNotNullExpressionValue(append, "append(value)");
        Appendable append2 = append.append('\n');
        Intrinsics.checkNotNullExpressionValue(append2, "append('\\n')");
        return append2;
    }
}
