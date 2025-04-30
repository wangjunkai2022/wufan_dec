package kotlin.text;

import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.internal.InlineOnly;
/* compiled from: RegexExtensionsJVM.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\r\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0087\b¨\u0006\u0003"}, d2 = {"Ljava/util/regex/Pattern;", "Lkotlin/text/Regex;", "toRegex", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/text/StringsKt")
/* loaded from: classes.dex */
class StringsKt__RegexExtensionsJVMKt extends StringsKt__IndentKt {
    @InlineOnly
    private static final Regex toRegex(Pattern pattern) {
        return new Regex(pattern);
    }
}
