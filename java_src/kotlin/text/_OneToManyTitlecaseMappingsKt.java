package kotlin.text;

import java.util.Locale;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: _OneToManyTitlecaseMappings.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0010\f\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\f\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0000¨\u0006\u0003"}, d2 = {"", "", "titlecaseImpl", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class _OneToManyTitlecaseMappingsKt {
    @NotNull
    public static final String titlecaseImpl(char c4) {
        String valueOf = String.valueOf(c4);
        Objects.requireNonNull(valueOf, "null cannot be cast to non-null type java.lang.String");
        Locale locale = Locale.ROOT;
        String upperCase = valueOf.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "(this as java.lang.Strin….toUpperCase(Locale.ROOT)");
        if (upperCase.length() > 1) {
            if (c4 == 329) {
                return upperCase;
            }
            char charAt = upperCase.charAt(0);
            String substring = upperCase.substring(1);
            Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.String).substring(startIndex)");
            Objects.requireNonNull(substring, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = substring.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.Strin….toLowerCase(Locale.ROOT)");
            return String.valueOf(charAt) + lowerCase;
        }
        return String.valueOf(Character.toTitleCase(c4));
    }
}
