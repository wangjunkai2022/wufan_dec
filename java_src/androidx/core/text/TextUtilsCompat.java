package androidx.core.text;

import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Locale;
/* loaded from: classes.dex */
public final class TextUtilsCompat {

    /* renamed from: a  reason: collision with root package name */
    private static final Locale f4656a = new Locale("", "");

    /* renamed from: b  reason: collision with root package name */
    private static final String f4657b = "Arab";

    /* renamed from: c  reason: collision with root package name */
    private static final String f4658c = "Hebr";

    private TextUtilsCompat() {
    }

    private static int a(@NonNull Locale locale) {
        byte directionality = Character.getDirectionality(locale.getDisplayName(locale).charAt(0));
        return (directionality == 1 || directionality == 2) ? 1 : 0;
    }

    public static int getLayoutDirectionFromLocale(@Nullable Locale locale) {
        if (Build.VERSION.SDK_INT >= 17) {
            return TextUtils.getLayoutDirectionFromLocale(locale);
        }
        if (locale == null || locale.equals(f4656a)) {
            return 0;
        }
        String maximizeAndGetScript = ICUCompat.maximizeAndGetScript(locale);
        if (maximizeAndGetScript == null) {
            return a(locale);
        }
        return (maximizeAndGetScript.equalsIgnoreCase(f4657b) || maximizeAndGetScript.equalsIgnoreCase(f4658c)) ? 1 : 0;
    }

    @NonNull
    public static String htmlEncode(@NonNull String str) {
        if (Build.VERSION.SDK_INT >= 17) {
            return TextUtils.htmlEncode(str);
        }
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if (charAt == '\"') {
                sb.append("&quot;");
            } else if (charAt == '<') {
                sb.append("&lt;");
            } else if (charAt == '>') {
                sb.append("&gt;");
            } else if (charAt == '&') {
                sb.append("&amp;");
            } else if (charAt != '\'') {
                sb.append(charAt);
            } else {
                sb.append("&#39;");
            }
        }
        return sb.toString();
    }
}
