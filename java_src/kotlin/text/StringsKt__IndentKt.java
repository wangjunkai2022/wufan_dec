package kotlin.text;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Indent.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0007\u001a\u0014\u0010\u0002\u001a\u00020\u0000*\u00020\u00002\b\b\u0002\u0010\u0001\u001a\u00020\u0000\u001a\u001e\u0010\u0004\u001a\u00020\u0000*\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00002\b\b\u0002\u0010\u0001\u001a\u00020\u0000\u001a\n\u0010\u0005\u001a\u00020\u0000*\u00020\u0000\u001a\u0014\u0010\u0006\u001a\u00020\u0000*\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0000\u001a\u0014\u0010\b\u001a\u00020\u0000*\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\u0000\u001a\u0013\u0010\f\u001a\u00020\t*\u00020\u0000H\u0002¢\u0006\u0004\b\n\u0010\u000b\u001a#\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00000\r2\u0006\u0010\u0007\u001a\u00020\u0000H\u0002¢\u0006\u0004\b\u000e\u0010\u000f\u001aL\u0010\u0017\u001a\u00020\u0000*\b\u0012\u0004\u0012\u00020\u00000\u00112\u0006\u0010\u0012\u001a\u00020\t2\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00000\r2\u0014\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0000\u0012\u0006\u0012\u0004\u0018\u00010\u00000\rH\u0082\b¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"", "marginPrefix", "trimMargin", "newIndent", "replaceIndentByMargin", "trimIndent", "replaceIndent", "indent", "prependIndent", "", "indentWidth$StringsKt__IndentKt", "(Ljava/lang/String;)I", "indentWidth", "Lkotlin/Function1;", "getIndentFunction$StringsKt__IndentKt", "(Ljava/lang/String;)Lkotlin/jvm/functions/Function1;", "getIndentFunction", "", "resultSizeEstimate", "indentAddFunction", "indentCutFunction", "reindent$StringsKt__IndentKt", "(Ljava/util/List;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;", "reindent", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/text/StringsKt")
/* loaded from: classes.dex */
public class StringsKt__IndentKt extends StringsKt__AppendableKt {
    private static final Function1<String, String> getIndentFunction$StringsKt__IndentKt(final String str) {
        return str.length() == 0 ? new Function1<String, String>() { // from class: kotlin.text.StringsKt__IndentKt$getIndentFunction$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull String line) {
                Intrinsics.checkNotNullParameter(line, "line");
                return line;
            }
        } : new Function1<String, String>() { // from class: kotlin.text.StringsKt__IndentKt$getIndentFunction$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull String line) {
                Intrinsics.checkNotNullParameter(line, "line");
                return str + line;
            }
        };
    }

    private static final int indentWidth$StringsKt__IndentKt(String str) {
        int length = str.length();
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                i2 = -1;
                break;
            } else if (!CharsKt__CharJVMKt.isWhitespace(str.charAt(i2))) {
                break;
            } else {
                i2++;
            }
        }
        return i2 == -1 ? str.length() : i2;
    }

    @NotNull
    public static final String prependIndent(@NotNull String prependIndent, @NotNull final String indent) {
        Sequence map;
        String joinToString$default;
        Intrinsics.checkNotNullParameter(prependIndent, "$this$prependIndent");
        Intrinsics.checkNotNullParameter(indent, "indent");
        map = SequencesKt___SequencesKt.map(StringsKt__StringsKt.lineSequence(prependIndent), new Function1<String, String>() { // from class: kotlin.text.StringsKt__IndentKt$prependIndent$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                if (StringsKt__StringsJVMKt.isBlank(it2)) {
                    return it2.length() < indent.length() ? indent : it2;
                }
                return indent + it2;
            }
        });
        joinToString$default = SequencesKt___SequencesKt.joinToString$default(map, "\n", null, null, 0, null, null, 62, null);
        return joinToString$default;
    }

    public static /* synthetic */ String prependIndent$default(String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str2 = "    ";
        }
        return prependIndent(str, str2);
    }

    private static final String reindent$StringsKt__IndentKt(List<String> list, int i2, Function1<? super String, String> function1, Function1<? super String, String> function12) {
        String str;
        String invoke;
        int lastIndex = CollectionsKt.getLastIndex(list);
        ArrayList arrayList = new ArrayList();
        int i4 = 0;
        for (Object obj : list) {
            int i5 = i4 + 1;
            if (i4 < 0) {
                if (!PlatformImplementationsKt.apiVersionIsAtLeast(1, 3, 0)) {
                    throw new ArithmeticException("Index overflow has happened.");
                }
                CollectionsKt.throwIndexOverflow();
            }
            String str2 = (String) obj;
            if ((i4 == 0 || i4 == lastIndex) && StringsKt__StringsJVMKt.isBlank(str2)) {
                str = null;
            } else {
                String invoke2 = function12.invoke(str2);
                if (invoke2 != null && (invoke = function1.invoke(invoke2)) != null) {
                    str2 = invoke;
                }
                str = str2;
            }
            if (str != null) {
                arrayList.add(str);
            }
            i4 = i5;
        }
        String sb = ((StringBuilder) CollectionsKt.joinTo$default(arrayList, new StringBuilder(i2), "\n", null, null, 0, null, null, 124, null)).toString();
        Intrinsics.checkNotNullExpressionValue(sb, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
        return sb;
    }

    @NotNull
    public static final String replaceIndent(@NotNull String replaceIndent, @NotNull String newIndent) {
        String str;
        String invoke;
        Intrinsics.checkNotNullParameter(replaceIndent, "$this$replaceIndent");
        Intrinsics.checkNotNullParameter(newIndent, "newIndent");
        List<String> lines = StringsKt__StringsKt.lines(replaceIndent);
        ArrayList<String> arrayList = new ArrayList();
        for (Object obj : lines) {
            if (!StringsKt__StringsJVMKt.isBlank((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
        for (String str2 : arrayList) {
            arrayList2.add(Integer.valueOf(indentWidth$StringsKt__IndentKt(str2)));
        }
        Integer num = (Integer) CollectionsKt.minOrNull((Iterable<? extends Comparable>) arrayList2);
        int i2 = 0;
        int intValue = num != null ? num.intValue() : 0;
        int length = replaceIndent.length() + (newIndent.length() * lines.size());
        Function1<String, String> indentFunction$StringsKt__IndentKt = getIndentFunction$StringsKt__IndentKt(newIndent);
        int lastIndex = CollectionsKt.getLastIndex(lines);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : lines) {
            int i4 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            String str3 = (String) obj2;
            if ((i2 == 0 || i2 == lastIndex) && StringsKt__StringsJVMKt.isBlank(str3)) {
                str = null;
            } else {
                String drop = StringsKt___StringsKt.drop(str3, intValue);
                if (drop != null && (invoke = indentFunction$StringsKt__IndentKt.invoke(drop)) != null) {
                    str3 = invoke;
                }
                str = str3;
            }
            if (str != null) {
                arrayList3.add(str);
            }
            i2 = i4;
        }
        String sb = ((StringBuilder) CollectionsKt.joinTo$default(arrayList3, new StringBuilder(length), "\n", null, null, 0, null, null, 124, null)).toString();
        Intrinsics.checkNotNullExpressionValue(sb, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
        return sb;
    }

    public static /* synthetic */ String replaceIndent$default(String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str2 = "";
        }
        return replaceIndent(str, str2);
    }

    @NotNull
    public static final String replaceIndentByMargin(@NotNull String replaceIndentByMargin, @NotNull String newIndent, @NotNull String marginPrefix) {
        int i2;
        String invoke;
        Intrinsics.checkNotNullParameter(replaceIndentByMargin, "$this$replaceIndentByMargin");
        Intrinsics.checkNotNullParameter(newIndent, "newIndent");
        Intrinsics.checkNotNullParameter(marginPrefix, "marginPrefix");
        if (!StringsKt__StringsJVMKt.isBlank(marginPrefix)) {
            List<String> lines = StringsKt__StringsKt.lines(replaceIndentByMargin);
            int length = replaceIndentByMargin.length() + (newIndent.length() * lines.size());
            Function1<String, String> indentFunction$StringsKt__IndentKt = getIndentFunction$StringsKt__IndentKt(newIndent);
            int lastIndex = CollectionsKt.getLastIndex(lines);
            ArrayList arrayList = new ArrayList();
            int i4 = 0;
            for (Object obj : lines) {
                int i5 = i4 + 1;
                if (i4 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                String str = (String) obj;
                String str2 = null;
                if ((i4 != 0 && i4 != lastIndex) || !StringsKt__StringsJVMKt.isBlank(str)) {
                    int length2 = str.length();
                    int i6 = 0;
                    while (true) {
                        if (i6 >= length2) {
                            i2 = -1;
                            break;
                        } else if (!CharsKt__CharJVMKt.isWhitespace(str.charAt(i6))) {
                            i2 = i6;
                            break;
                        } else {
                            i6++;
                        }
                    }
                    if (i2 != -1) {
                        int i7 = i2;
                        if (StringsKt__StringsJVMKt.startsWith$default(str, marginPrefix, i2, false, 4, null)) {
                            Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
                            str2 = str.substring(i7 + marginPrefix.length());
                            Intrinsics.checkNotNullExpressionValue(str2, "(this as java.lang.String).substring(startIndex)");
                        }
                    }
                    if (str2 != null && (invoke = indentFunction$StringsKt__IndentKt.invoke(str2)) != null) {
                        str = invoke;
                    }
                    str2 = str;
                }
                if (str2 != null) {
                    arrayList.add(str2);
                }
                i4 = i5;
            }
            String sb = ((StringBuilder) CollectionsKt.joinTo$default(arrayList, new StringBuilder(length), "\n", null, null, 0, null, null, 124, null)).toString();
            Intrinsics.checkNotNullExpressionValue(sb, "mapIndexedNotNull { inde…\"\\n\")\n        .toString()");
            return sb;
        }
        throw new IllegalArgumentException("marginPrefix must be non-blank string.".toString());
    }

    public static /* synthetic */ String replaceIndentByMargin$default(String str, String str2, String str3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str2 = "";
        }
        if ((i2 & 2) != 0) {
            str3 = "|";
        }
        return replaceIndentByMargin(str, str2, str3);
    }

    @NotNull
    public static String trimIndent(@NotNull String trimIndent) {
        Intrinsics.checkNotNullParameter(trimIndent, "$this$trimIndent");
        return replaceIndent(trimIndent, "");
    }

    @NotNull
    public static final String trimMargin(@NotNull String trimMargin, @NotNull String marginPrefix) {
        Intrinsics.checkNotNullParameter(trimMargin, "$this$trimMargin");
        Intrinsics.checkNotNullParameter(marginPrefix, "marginPrefix");
        return replaceIndentByMargin(trimMargin, "", marginPrefix);
    }

    public static /* synthetic */ String trimMargin$default(String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str2 = "|";
        }
        return trimMargin(str, str2);
    }
}
