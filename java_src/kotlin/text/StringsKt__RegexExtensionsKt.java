package kotlin.text;

import java.util.Set;
import kotlin.Metadata;
import kotlin.internal.InlineOnly;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RegexExtensions.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\b\u0002\u001a\r\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0087\b\u001a\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0087\b\u001a\u001b\u0010\u0002\u001a\u00020\u0001*\u00020\u00002\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005H\u0087\b¨\u0006\u0007"}, d2 = {"", "Lkotlin/text/Regex;", "toRegex", "Lkotlin/text/RegexOption;", "option", "", "options", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/text/StringsKt")
/* loaded from: classes.dex */
public class StringsKt__RegexExtensionsKt extends StringsKt__RegexExtensionsJVMKt {
    @InlineOnly
    private static final Regex toRegex(String str) {
        return new Regex(str);
    }

    @InlineOnly
    private static final Regex toRegex(String str, RegexOption regexOption) {
        return new Regex(str, regexOption);
    }

    @InlineOnly
    private static final Regex toRegex(String str, Set<? extends RegexOption> set) {
        return new Regex(str, set);
    }
}
