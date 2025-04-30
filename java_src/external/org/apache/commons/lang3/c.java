package external.org.apache.commons.lang3;
/* compiled from: CharUtils.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f65361a = new String[128];

    /* renamed from: b  reason: collision with root package name */
    public static final char f65362b = '\n';

    /* renamed from: c  reason: collision with root package name */
    public static final char f65363c = '\r';

    static {
        char c4 = 0;
        while (true) {
            String[] strArr = f65361a;
            if (c4 >= strArr.length) {
                return;
            }
            strArr[c4] = String.valueOf(c4);
            c4 = (char) (c4 + 1);
        }
    }

    public static boolean a(char ch) {
        return ch < 128;
    }

    public static boolean b(char ch) {
        return (ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z');
    }

    public static boolean c(char ch) {
        return ch >= 'a' && ch <= 'z';
    }

    public static boolean d(char ch) {
        return ch >= 'A' && ch <= 'Z';
    }

    public static boolean e(char ch) {
        return (ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z') || (ch >= '0' && ch <= '9');
    }

    public static boolean f(char ch) {
        return ch < ' ' || ch == 127;
    }

    public static boolean g(char ch) {
        return ch >= '0' && ch <= '9';
    }

    public static boolean h(char ch) {
        return ch >= ' ' && ch < 127;
    }

    public static char i(Character ch) {
        if (ch != null) {
            return ch.charValue();
        }
        throw new IllegalArgumentException("The Character must not be null");
    }

    public static char j(Character ch, char defaultValue) {
        return ch == null ? defaultValue : ch.charValue();
    }

    public static char k(String str) {
        if (!e.f0(str)) {
            return str.charAt(0);
        }
        throw new IllegalArgumentException("The String must not be empty");
    }

    public static char l(String str, char defaultValue) {
        return e.f0(str) ? defaultValue : str.charAt(0);
    }

    @Deprecated
    public static Character m(char ch) {
        return Character.valueOf(ch);
    }

    public static Character n(String str) {
        if (e.f0(str)) {
            return null;
        }
        return Character.valueOf(str.charAt(0));
    }

    public static int o(char ch) {
        if (g(ch)) {
            return ch - '0';
        }
        throw new IllegalArgumentException("The character " + ch + " is not in the range '0' - '9'");
    }

    public static int p(char ch, int defaultValue) {
        return !g(ch) ? defaultValue : ch - '0';
    }

    public static int q(Character ch) {
        if (ch != null) {
            return o(ch.charValue());
        }
        throw new IllegalArgumentException("The character must not be null");
    }

    public static int r(Character ch, int defaultValue) {
        return ch == null ? defaultValue : p(ch.charValue(), defaultValue);
    }

    public static String s(char ch) {
        if (ch < 128) {
            return f65361a[ch];
        }
        return new String(new char[]{ch});
    }

    public static String t(Character ch) {
        if (ch == null) {
            return null;
        }
        return s(ch.charValue());
    }

    public static String u(char ch) {
        if (ch < 16) {
            return "\\u000" + Integer.toHexString(ch);
        } else if (ch < 256) {
            return "\\u00" + Integer.toHexString(ch);
        } else if (ch < 4096) {
            return "\\u0" + Integer.toHexString(ch);
        } else {
            return "\\u" + Integer.toHexString(ch);
        }
    }

    public static String v(Character ch) {
        if (ch == null) {
            return null;
        }
        return u(ch.charValue());
    }
}
