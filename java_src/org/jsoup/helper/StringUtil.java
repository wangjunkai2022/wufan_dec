package org.jsoup.helper;

import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes5.dex */
public final class StringUtil {
    private static final String[] padding = {"", " ", "  ", "   ", "    ", "     ", "      ", "       ", "        ", "         ", "          "};

    public static boolean in(String str, String... strArr) {
        for (String str2 : strArr) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isBlank(String str) {
        if (str != null && str.length() != 0) {
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                if (!isWhitespace(str.codePointAt(i2))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean isNumeric(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isDigit(str.codePointAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isWhitespace(int i2) {
        return i2 == 32 || i2 == 9 || i2 == 10 || i2 == 12 || i2 == 13;
    }

    public static String join(Collection collection, String str) {
        return join(collection.iterator(), str);
    }

    public static String normaliseWhitespace(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        int length = str.length();
        int i2 = 0;
        boolean z3 = false;
        boolean z4 = false;
        while (i2 < length) {
            int codePointAt = str.codePointAt(i2);
            if (!isWhitespace(codePointAt)) {
                sb.appendCodePoint(codePointAt);
                z4 = false;
            } else if (z4) {
                z3 = true;
            } else {
                if (codePointAt != 32) {
                    z3 = true;
                }
                sb.append(' ');
                z4 = true;
            }
            i2 += Character.charCount(codePointAt);
        }
        return z3 ? sb.toString() : str;
    }

    public static String padding(int i2) {
        if (i2 >= 0) {
            String[] strArr = padding;
            if (i2 < strArr.length) {
                return strArr[i2];
            }
            char[] cArr = new char[i2];
            for (int i4 = 0; i4 < i2; i4++) {
                cArr[i4] = ' ';
            }
            return String.valueOf(cArr);
        }
        throw new IllegalArgumentException("width must be > 0");
    }

    public static String join(Iterator it2, String str) {
        if (it2.hasNext()) {
            String obj = it2.next().toString();
            if (it2.hasNext()) {
                StringBuilder sb = new StringBuilder(64);
                sb.append(obj);
                while (it2.hasNext()) {
                    sb.append(str);
                    sb.append(it2.next());
                }
                return sb.toString();
            }
            return obj;
        }
        return "";
    }
}
