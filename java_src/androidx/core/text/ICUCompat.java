package androidx.core.text;

import android.icu.util.ULocale;
import android.os.Build;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;
/* loaded from: classes.dex */
public final class ICUCompat {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4626a = "ICUCompat";

    /* renamed from: b  reason: collision with root package name */
    private static Method f4627b;

    /* renamed from: c  reason: collision with root package name */
    private static Method f4628c;

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            if (i2 < 24) {
                try {
                    f4628c = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", Locale.class);
                    return;
                } catch (Exception e4) {
                    throw new IllegalStateException(e4);
                }
            }
            return;
        }
        try {
            Class<?> cls = Class.forName("libcore.icu.ICU");
            f4627b = cls.getMethod("getScript", String.class);
            f4628c = cls.getMethod("addLikelySubtags", String.class);
        } catch (Exception unused) {
            f4627b = null;
            f4628c = null;
        }
    }

    private ICUCompat() {
    }

    private static String a(Locale locale) {
        String locale2 = locale.toString();
        try {
            Method method = f4628c;
            if (method != null) {
                return (String) method.invoke(null, locale2);
            }
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
        return locale2;
    }

    private static String b(String str) {
        try {
            Method method = f4627b;
            if (method != null) {
                return (String) method.invoke(null, str);
            }
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
        return null;
    }

    @Nullable
    public static String maximizeAndGetScript(Locale locale) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 24) {
            return ULocale.addLikelySubtags(ULocale.forLocale(locale)).getScript();
        }
        if (i2 >= 21) {
            try {
                return ((Locale) f4628c.invoke(null, locale)).getScript();
            } catch (IllegalAccessException | InvocationTargetException unused) {
                return locale.getScript();
            }
        }
        String a4 = a(locale);
        if (a4 != null) {
            return b(a4);
        }
        return null;
    }
}
