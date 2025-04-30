package external.org.apache.commons.lang3;
/* compiled from: CharSequenceUtils.java */
/* loaded from: classes3.dex */
public class b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(CharSequence cs, int searchChar, int start) {
        if (cs instanceof String) {
            return ((String) cs).indexOf(searchChar, start);
        }
        int length = cs.length();
        if (start < 0) {
            start = 0;
        }
        while (start < length) {
            if (cs.charAt(start) == searchChar) {
                return start;
            }
            start++;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(CharSequence cs, CharSequence searchChar, int start) {
        return cs.toString().indexOf(searchChar.toString(), start);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(CharSequence cs, int searchChar, int start) {
        if (cs instanceof String) {
            return ((String) cs).lastIndexOf(searchChar, start);
        }
        int length = cs.length();
        if (start < 0) {
            return -1;
        }
        if (start >= length) {
            start = length - 1;
        }
        while (start >= 0) {
            if (cs.charAt(start) == searchChar) {
                return start;
            }
            start--;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(CharSequence cs, CharSequence searchChar, int start) {
        return cs.toString().lastIndexOf(searchChar.toString(), start);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e(CharSequence cs, boolean ignoreCase, int thisStart, CharSequence substring, int start, int length) {
        if ((cs instanceof String) && (substring instanceof String)) {
            return ((String) cs).regionMatches(ignoreCase, thisStart, (String) substring, start, length);
        }
        return cs.toString().regionMatches(ignoreCase, thisStart, substring.toString(), start, length);
    }

    public static CharSequence f(CharSequence cs, int start) {
        if (cs == null) {
            return null;
        }
        return cs.subSequence(start, cs.length());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static char[] g(CharSequence cs) {
        if (cs instanceof String) {
            return ((String) cs).toCharArray();
        }
        int length = cs.length();
        char[] cArr = new char[cs.length()];
        for (int i2 = 0; i2 < length; i2++) {
            cArr[i2] = cs.charAt(i2);
        }
        return cArr;
    }
}
