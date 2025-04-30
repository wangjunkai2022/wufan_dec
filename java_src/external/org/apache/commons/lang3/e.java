package external.org.apache.commons.lang3;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Pattern;
/* compiled from: StringUtils.java */
/* loaded from: classes3.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public static final String f65372a = "";

    /* renamed from: b  reason: collision with root package name */
    public static final int f65373b = -1;

    /* renamed from: c  reason: collision with root package name */
    private static final int f65374c = 8192;

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f65375d = Pattern.compile("\\s+");

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: StringUtils.java */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final Throwable f65376a;

        /* renamed from: b  reason: collision with root package name */
        private static final Method f65377b;

        /* renamed from: c  reason: collision with root package name */
        private static final Pattern f65378c;

        /* renamed from: d  reason: collision with root package name */
        private static final Throwable f65379d;

        /* renamed from: e  reason: collision with root package name */
        private static final Method f65380e;

        /* renamed from: f  reason: collision with root package name */
        private static final Object f65381f;

        /* renamed from: g  reason: collision with root package name */
        private static final Pattern f65382g;

        static {
            Object obj;
            Exception exc;
            Method method;
            Method method2;
            Class<?> loadClass;
            Pattern compile = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
            f65378c = compile;
            f65382g = compile;
            Exception exc2 = null;
            try {
                loadClass = Thread.currentThread().getContextClassLoader().loadClass("java.text.Normalizer$Form");
                obj = loadClass.getField("NFD").get(null);
            } catch (Exception e4) {
                e = e4;
                obj = null;
            }
            try {
                method = Thread.currentThread().getContextClassLoader().loadClass("java.text.Normalizer").getMethod("normalize", CharSequence.class, loadClass);
                exc = null;
                method2 = null;
            } catch (Exception e5) {
                e = e5;
                try {
                    method2 = Thread.currentThread().getContextClassLoader().loadClass("sun.text.Normalizer").getMethod("decompose", String.class, Boolean.TYPE, Integer.TYPE);
                    method = null;
                    exc = null;
                } catch (Exception e6) {
                    exc = e6;
                    method = null;
                    method2 = null;
                }
                exc2 = e;
                f65379d = exc2;
                f65381f = obj;
                f65380e = method;
                f65376a = exc;
                f65377b = method2;
            }
            f65379d = exc2;
            f65381f = obj;
            f65380e = method;
            f65376a = exc;
            f65377b = method2;
        }

        private a() {
        }
    }

    public static String A(String str1, String str2) {
        if (str1 == null) {
            return str2;
        }
        if (str2 == null) {
            return str1;
        }
        int T = T(str1, str2);
        return T == -1 ? "" : str2.substring(T);
    }

    public static int A0(CharSequence str, CharSequence searchStr, int startPos) {
        if (str != null && searchStr != null) {
            if (startPos > str.length() - searchStr.length()) {
                startPos = str.length() - searchStr.length();
            }
            if (startPos < 0) {
                return -1;
            }
            if (searchStr.length() == 0) {
                return startPos;
            }
            while (startPos >= 0) {
                if (b.e(str, true, startPos, searchStr, 0, searchStr.length())) {
                    return startPos;
                }
                startPos--;
            }
        }
        return -1;
    }

    public static String[] A1(String str, char separatorChar) {
        return D1(str, separatorChar, true);
    }

    public static boolean B(CharSequence str, CharSequence suffix) {
        return C(str, suffix, false);
    }

    public static int B0(CharSequence str, CharSequence searchStr, int ordinal) {
        return M0(str, searchStr, ordinal, true);
    }

    public static String[] B1(String str, String separatorChars) {
        return E1(str, separatorChars, -1, true);
    }

    private static boolean C(CharSequence str, CharSequence suffix, boolean ignoreCase) {
        if (str == null || suffix == null) {
            return str == null && suffix == null;
        } else if (suffix.length() > str.length()) {
            return false;
        } else {
            return b.e(str, ignoreCase, str.length() - suffix.length(), suffix, 0, suffix.length());
        }
    }

    public static String C0(String str, int len) {
        if (str == null) {
            return null;
        }
        return len < 0 ? "" : str.length() <= len ? str : str.substring(0, len);
    }

    public static String[] C1(String str, String separatorChars, int max) {
        return E1(str, separatorChars, max, true);
    }

    public static boolean D(CharSequence string, CharSequence... searchStrings) {
        if (!f0(string) && !external.org.apache.commons.lang3.a.z0(searchStrings)) {
            for (CharSequence charSequence : searchStrings) {
                if (B(string, charSequence)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static String D0(String str, int size) {
        return E0(str, size, ' ');
    }

    private static String[] D1(String str, char separatorChar, boolean preserveAllTokens) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return external.org.apache.commons.lang3.a.f65301c;
        }
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        boolean z3 = false;
        boolean z4 = false;
        int i4 = 0;
        while (i2 < length) {
            if (str.charAt(i2) == separatorChar) {
                if (z3 || preserveAllTokens) {
                    arrayList.add(str.substring(i4, i2));
                    z3 = false;
                    z4 = true;
                }
                i4 = i2 + 1;
                i2 = i4;
            } else {
                i2++;
                z3 = true;
                z4 = false;
            }
        }
        if (z3 || (preserveAllTokens && z4)) {
            arrayList.add(str.substring(i4, i2));
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean E(CharSequence str, CharSequence suffix) {
        return C(str, suffix, true);
    }

    public static String E0(String str, int size, char padChar) {
        if (str == null) {
            return null;
        }
        int length = size - str.length();
        if (length <= 0) {
            return str;
        }
        if (length > 8192) {
            return F0(str, size, String.valueOf(padChar));
        }
        return W0(padChar, length).concat(str);
    }

    private static String[] E1(String str, String separatorChars, int max, boolean preserveAllTokens) {
        int i2;
        boolean z3;
        boolean z4;
        int i4;
        int i5;
        boolean z5;
        boolean z6;
        int i6;
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return external.org.apache.commons.lang3.a.f65301c;
        }
        ArrayList arrayList = new ArrayList();
        if (separatorChars == null) {
            i5 = 0;
            z5 = false;
            z6 = false;
            i6 = 0;
            int i7 = 1;
            while (i5 < length) {
                if (Character.isWhitespace(str.charAt(i5))) {
                    if (z5 || preserveAllTokens) {
                        int i8 = i7 + 1;
                        if (i7 == max) {
                            i5 = length;
                            z6 = false;
                        } else {
                            z6 = true;
                        }
                        arrayList.add(str.substring(i6, i5));
                        i7 = i8;
                        z5 = false;
                    }
                    i6 = i5 + 1;
                    i5 = i6;
                } else {
                    i5++;
                    z5 = true;
                    z6 = false;
                }
            }
        } else {
            if (separatorChars.length() == 1) {
                char charAt = separatorChars.charAt(0);
                i2 = 0;
                z3 = false;
                z4 = false;
                i4 = 0;
                int i9 = 1;
                while (i2 < length) {
                    if (str.charAt(i2) == charAt) {
                        if (z3 || preserveAllTokens) {
                            int i10 = i9 + 1;
                            if (i9 == max) {
                                i2 = length;
                                z4 = false;
                            } else {
                                z4 = true;
                            }
                            arrayList.add(str.substring(i4, i2));
                            i9 = i10;
                            z3 = false;
                        }
                        i4 = i2 + 1;
                        i2 = i4;
                    } else {
                        i2++;
                        z3 = true;
                        z4 = false;
                    }
                }
            } else {
                i2 = 0;
                z3 = false;
                z4 = false;
                i4 = 0;
                int i11 = 1;
                while (i2 < length) {
                    if (separatorChars.indexOf(str.charAt(i2)) >= 0) {
                        if (z3 || preserveAllTokens) {
                            int i12 = i11 + 1;
                            if (i11 == max) {
                                i2 = length;
                                z4 = false;
                            } else {
                                z4 = true;
                            }
                            arrayList.add(str.substring(i4, i2));
                            i11 = i12;
                            z3 = false;
                        }
                        i4 = i2 + 1;
                        i2 = i4;
                    } else {
                        i2++;
                        z3 = true;
                        z4 = false;
                    }
                }
            }
            i5 = i2;
            z5 = z3;
            z6 = z4;
            i6 = i4;
        }
        if (z5 || (preserveAllTokens && z6)) {
            arrayList.add(str.substring(i6, i5));
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean F(CharSequence cs1, CharSequence cs2) {
        if (cs1 == null) {
            return cs2 == null;
        }
        return cs1.equals(cs2);
    }

    public static String F0(String str, int size, String padStr) {
        if (str == null) {
            return null;
        }
        if (f0(padStr)) {
            padStr = " ";
        }
        int length = padStr.length();
        int length2 = size - str.length();
        if (length2 <= 0) {
            return str;
        }
        if (length != 1 || length2 > 8192) {
            if (length2 == length) {
                return padStr.concat(str);
            }
            if (length2 < length) {
                return padStr.substring(0, length2).concat(str);
            }
            char[] cArr = new char[length2];
            char[] charArray = padStr.toCharArray();
            for (int i2 = 0; i2 < length2; i2++) {
                cArr[i2] = charArray[i2 % length];
            }
            return new String(cArr).concat(str);
        }
        return E0(str, size, padStr.charAt(0));
    }

    public static boolean F1(CharSequence str, CharSequence prefix) {
        return G1(str, prefix, false);
    }

    public static boolean G(CharSequence str1, CharSequence str2) {
        if (str1 == null || str2 == null) {
            return str1 == str2;
        }
        return b.e(str1, true, 0, str2, 0, Math.max(str1.length(), str2.length()));
    }

    public static int G0(CharSequence cs) {
        if (cs == null) {
            return 0;
        }
        return cs.length();
    }

    private static boolean G1(CharSequence str, CharSequence prefix, boolean ignoreCase) {
        if (str == null || prefix == null) {
            return str == null && prefix == null;
        } else if (prefix.length() > str.length()) {
            return false;
        } else {
            return b.e(str, ignoreCase, 0, prefix, 0, prefix.length());
        }
    }

    public static String H(String... strs) {
        if (strs == null || strs.length == 0) {
            return "";
        }
        int U = U(strs);
        return U == -1 ? strs[0] == null ? "" : strs[0] : U == 0 ? "" : strs[0].substring(0, U);
    }

    public static String H0(String str) {
        if (str == null) {
            return null;
        }
        return str.toLowerCase();
    }

    public static boolean H1(CharSequence string, CharSequence... searchStrings) {
        if (!f0(string) && !external.org.apache.commons.lang3.a.z0(searchStrings)) {
            for (CharSequence charSequence : searchStrings) {
                if (F1(string, charSequence)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static int I(CharSequence s3, CharSequence t3) {
        if (s3 != null && t3 != null) {
            int length = s3.length();
            int length2 = t3.length();
            if (length == 0) {
                return length2;
            }
            if (length2 == 0) {
                return length;
            }
            if (length > length2) {
                length2 = s3.length();
                length = length2;
            } else {
                t3 = s3;
                s3 = t3;
            }
            int i2 = length + 1;
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            for (int i4 = 0; i4 <= length; i4++) {
                iArr[i4] = i4;
            }
            int i5 = 1;
            while (i5 <= length2) {
                char charAt = s3.charAt(i5 - 1);
                iArr2[0] = i5;
                for (int i6 = 1; i6 <= length; i6++) {
                    int i7 = i6 - 1;
                    iArr2[i6] = Math.min(Math.min(iArr2[i7] + 1, iArr[i6] + 1), iArr[i7] + (t3.charAt(i7) == charAt ? 0 : 1));
                }
                i5++;
                int[] iArr3 = iArr;
                iArr = iArr2;
                iArr2 = iArr3;
            }
            return iArr[length];
        }
        throw new IllegalArgumentException("Strings must not be null");
    }

    public static String I0(String str, Locale locale) {
        if (str == null) {
            return null;
        }
        return str.toLowerCase(locale);
    }

    public static boolean I1(CharSequence str, CharSequence prefix) {
        return G1(str, prefix, true);
    }

    public static int J(CharSequence s3, CharSequence t3, int threshold) {
        int i2;
        int i4;
        CharSequence charSequence;
        CharSequence charSequence2;
        if (s3 == null || t3 == null) {
            throw new IllegalArgumentException("Strings must not be null");
        }
        if (threshold >= 0) {
            int length = s3.length();
            int length2 = t3.length();
            if (length == 0) {
                if (length2 <= threshold) {
                    return length2;
                }
                return -1;
            } else if (length2 == 0) {
                if (length <= threshold) {
                    return length;
                }
                return -1;
            } else {
                if (length > length2) {
                    i4 = s3.length();
                    i2 = length2;
                    charSequence2 = s3;
                    charSequence = t3;
                } else {
                    i2 = length;
                    i4 = length2;
                    charSequence = s3;
                    charSequence2 = t3;
                }
                int i5 = i2 + 1;
                int[] iArr = new int[i5];
                int[] iArr2 = new int[i5];
                int min = Math.min(i2, threshold) + 1;
                char c4 = 0;
                for (int i6 = 0; i6 < min; i6++) {
                    iArr[i6] = i6;
                }
                int i7 = Integer.MAX_VALUE;
                Arrays.fill(iArr, min, i5, Integer.MAX_VALUE);
                Arrays.fill(iArr2, Integer.MAX_VALUE);
                int i8 = 1;
                while (i8 <= i4) {
                    char charAt = charSequence2.charAt(i8 - 1);
                    iArr2[c4] = i8;
                    int max = Math.max(1, i8 - threshold);
                    int min2 = Math.min(i2, i8 + threshold);
                    if (max > min2) {
                        return -1;
                    }
                    if (max > 1) {
                        iArr2[max - 1] = i7;
                    }
                    while (max <= min2) {
                        int i9 = max - 1;
                        if (charSequence.charAt(i9) == charAt) {
                            iArr2[max] = iArr[i9];
                        } else {
                            iArr2[max] = Math.min(Math.min(iArr2[i9], iArr[max]), iArr[i9]) + 1;
                        }
                        max++;
                    }
                    i8++;
                    c4 = 0;
                    i7 = Integer.MAX_VALUE;
                    int[] iArr3 = iArr2;
                    iArr2 = iArr;
                    iArr = iArr3;
                }
                if (iArr[i2] <= threshold) {
                    return iArr[i2];
                }
                return -1;
            }
        }
        throw new IllegalArgumentException("Threshold must not be negative");
    }

    public static String J0(String str, int pos, int len) {
        if (str == null) {
            return null;
        }
        if (len < 0 || pos > str.length()) {
            return "";
        }
        if (pos < 0) {
            pos = 0;
        }
        int i2 = len + pos;
        if (str.length() <= i2) {
            return str.substring(pos);
        }
        return str.substring(pos, i2);
    }

    public static String J1(String str) {
        return K1(str, null);
    }

    public static int K(CharSequence seq, int searchChar) {
        if (f0(seq)) {
            return -1;
        }
        return b.a(seq, searchChar, 0);
    }

    public static String K0(String str) {
        if (str == null) {
            return null;
        }
        return f65375d.matcher(d2(str)).replaceAll(" ");
    }

    public static String K1(String str, String stripChars) {
        return f0(str) ? str : O1(P1(str, stripChars), stripChars);
    }

    public static int L(CharSequence seq, int searchChar, int startPos) {
        if (f0(seq)) {
            return -1;
        }
        return b.a(seq, searchChar, startPos);
    }

    public static int L0(CharSequence str, CharSequence searchStr, int ordinal) {
        return M0(str, searchStr, ordinal, false);
    }

    public static String L1(String input) {
        if (input == null) {
            return null;
        }
        try {
            if (a.f65380e == null) {
                if (a.f65377b == null) {
                    throw new UnsupportedOperationException("The stripAccents(CharSequence) method requires at least Java6, but got: " + a.f65379d + "; or a Sun JVM: " + a.f65376a);
                }
                return R0(input);
            }
            return Q0(input);
        } catch (IllegalAccessException e4) {
            throw new RuntimeException("IllegalAccessException occurred", e4);
        } catch (IllegalArgumentException e5) {
            throw new RuntimeException("IllegalArgumentException occurred", e5);
        } catch (SecurityException e6) {
            throw new RuntimeException("SecurityException occurred", e6);
        } catch (InvocationTargetException e7) {
            throw new RuntimeException("InvocationTargetException occurred", e7);
        }
    }

    public static int M(CharSequence seq, CharSequence searchSeq) {
        if (seq == null || searchSeq == null) {
            return -1;
        }
        return b.b(seq, searchSeq, 0);
    }

    private static int M0(CharSequence str, CharSequence searchStr, int ordinal, boolean lastIndex) {
        if (str == null || searchStr == null || ordinal <= 0) {
            return r0;
        }
        int i2 = 0;
        if (searchStr.length() == 0) {
            if (lastIndex) {
                return str.length();
            }
            return 0;
        }
        r0 = lastIndex ? str.length() : -1;
        do {
            if (lastIndex) {
                r0 = b.d(str, searchStr, r0 - 1);
            } else {
                r0 = b.b(str, searchStr, r0 + 1);
            }
            if (r0 < 0) {
                return r0;
            }
            i2++;
        } while (i2 < ordinal);
        return r0;
    }

    public static String[] M1(String... strs) {
        return N1(strs, null);
    }

    public static int N(CharSequence seq, CharSequence searchSeq, int startPos) {
        if (seq == null || searchSeq == null) {
            return -1;
        }
        return b.b(seq, searchSeq, startPos);
    }

    public static String N0(String str, String overlay, int start, int end) {
        if (str == null) {
            return null;
        }
        if (overlay == null) {
            overlay = "";
        }
        int length = str.length();
        if (start < 0) {
            start = 0;
        }
        if (start > length) {
            start = length;
        }
        if (end < 0) {
            end = 0;
        }
        if (end > length) {
            end = length;
        }
        if (start > end) {
            int i2 = end;
            end = start;
            start = i2;
        }
        StringBuilder sb = new StringBuilder(((length + start) - end) + overlay.length() + 1);
        sb.append(str.substring(0, start));
        sb.append(overlay);
        sb.append(str.substring(end));
        return sb.toString();
    }

    public static String[] N1(String[] strs, String stripChars) {
        int length;
        if (strs == null || (length = strs.length) == 0) {
            return strs;
        }
        String[] strArr = new String[length];
        for (int i2 = 0; i2 < length; i2++) {
            strArr[i2] = K1(strs[i2], stripChars);
        }
        return strArr;
    }

    public static int O(CharSequence cs, String searchChars) {
        if (f0(cs) || f0(searchChars)) {
            return -1;
        }
        return P(cs, searchChars.toCharArray());
    }

    public static String O0(String str, char remove) {
        if (f0(str) || str.indexOf(remove) == -1) {
            return str;
        }
        char[] charArray = str.toCharArray();
        int i2 = 0;
        for (int i4 = 0; i4 < charArray.length; i4++) {
            if (charArray[i4] != remove) {
                charArray[i2] = charArray[i4];
                i2++;
            }
        }
        return new String(charArray, 0, i2);
    }

    public static String O1(String str, String stripChars) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return str;
        }
        if (stripChars == null) {
            while (length != 0 && Character.isWhitespace(str.charAt(length - 1))) {
                length--;
            }
        } else if (stripChars.length() == 0) {
            return str;
        } else {
            while (length != 0 && stripChars.indexOf(str.charAt(length - 1)) != -1) {
                length--;
            }
        }
        return str.substring(0, length);
    }

    public static int P(CharSequence cs, char... searchChars) {
        if (!f0(cs) && !external.org.apache.commons.lang3.a.u0(searchChars)) {
            int length = cs.length();
            int i2 = length - 1;
            int length2 = searchChars.length;
            int i4 = length2 - 1;
            for (int i5 = 0; i5 < length; i5++) {
                char charAt = cs.charAt(i5);
                for (int i6 = 0; i6 < length2; i6++) {
                    if (searchChars[i6] == charAt && (i5 >= i2 || i6 >= i4 || !Character.isHighSurrogate(charAt) || searchChars[i6 + 1] == cs.charAt(i5 + 1))) {
                        return i5;
                    }
                }
            }
        }
        return -1;
    }

    public static String P0(String str, String remove) {
        return (f0(str) || f0(remove)) ? str : a1(str, remove, "", -1);
    }

    public static String P1(String str, String stripChars) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return str;
        }
        int i2 = 0;
        if (stripChars == null) {
            while (i2 != length && Character.isWhitespace(str.charAt(i2))) {
                i2++;
            }
        } else if (stripChars.length() == 0) {
            return str;
        } else {
            while (i2 != length && stripChars.indexOf(str.charAt(i2)) != -1) {
                i2++;
            }
        }
        return str.substring(i2);
    }

    public static int Q(CharSequence str, CharSequence... searchStrs) {
        int b4;
        if (str == null || searchStrs == null) {
            return -1;
        }
        int i2 = Integer.MAX_VALUE;
        for (CharSequence charSequence : searchStrs) {
            if (charSequence != null && (b4 = b.b(str, charSequence, 0)) != -1 && b4 < i2) {
                i2 = b4;
            }
        }
        if (i2 == Integer.MAX_VALUE) {
            return -1;
        }
        return i2;
    }

    private static String Q0(CharSequence text) throws IllegalAccessException, InvocationTargetException {
        if (a.f65380e != null && a.f65381f != null) {
            return a.f65382g.matcher((String) a.f65380e.invoke(null, text, a.f65381f)).replaceAll("");
        }
        throw new IllegalStateException("java.text.Normalizer is not available", a.f65379d);
    }

    public static String Q1(String str) {
        return str == null ? "" : K1(str, null);
    }

    public static int R(CharSequence seq, CharSequence searchChars) {
        if (!f0(seq) && !f0(searchChars)) {
            int length = seq.length();
            int i2 = 0;
            while (i2 < length) {
                char charAt = seq.charAt(i2);
                boolean z3 = b.a(searchChars, charAt, 0) >= 0;
                int i4 = i2 + 1;
                if (i4 < length && Character.isHighSurrogate(charAt)) {
                    char charAt2 = seq.charAt(i4);
                    if (z3 && b.a(searchChars, charAt2, 0) < 0) {
                        return i2;
                    }
                } else if (!z3) {
                    return i2;
                }
                i2 = i4;
            }
        }
        return -1;
    }

    private static String R0(CharSequence text) throws IllegalAccessException, InvocationTargetException {
        if (a.f65377b != null) {
            return a.f65378c.matcher((String) a.f65377b.invoke(null, text, Boolean.FALSE, 0)).replaceAll("");
        }
        throw new IllegalStateException("sun.text.Normalizer is not available", a.f65376a);
    }

    public static String R1(String str) {
        if (str == null) {
            return null;
        }
        String K1 = K1(str, null);
        if (K1.length() == 0) {
            return null;
        }
        return K1;
    }

    public static int S(CharSequence cs, char... searchChars) {
        if (!f0(cs) && !external.org.apache.commons.lang3.a.u0(searchChars)) {
            int length = cs.length();
            int i2 = length - 1;
            int length2 = searchChars.length;
            int i4 = length2 - 1;
            for (int i5 = 0; i5 < length; i5++) {
                char charAt = cs.charAt(i5);
                for (int i6 = 0; i6 < length2; i6++) {
                    if (searchChars[i6] != charAt || (i5 < i2 && i6 < i4 && Character.isHighSurrogate(charAt) && searchChars[i6 + 1] != cs.charAt(i5 + 1))) {
                    }
                }
                return i5;
            }
        }
        return -1;
    }

    public static String S0(String str, String remove) {
        return (f0(str) || f0(remove) || !str.endsWith(remove)) ? str : str.substring(0, str.length() - remove.length());
    }

    public static String S1(String str, int start) {
        if (str == null) {
            return null;
        }
        if (start < 0) {
            start += str.length();
        }
        if (start < 0) {
            start = 0;
        }
        return start > str.length() ? "" : str.substring(start);
    }

    public static int T(CharSequence cs1, CharSequence cs2) {
        if (cs1 == cs2) {
            return -1;
        }
        int i2 = 0;
        if (cs1 != null && cs2 != null) {
            while (i2 < cs1.length() && i2 < cs2.length() && cs1.charAt(i2) == cs2.charAt(i2)) {
                i2++;
            }
            if (i2 >= cs2.length() && i2 >= cs1.length()) {
                return -1;
            }
        }
        return i2;
    }

    public static String T0(String str, String remove) {
        return (f0(str) || f0(remove) || !E(str, remove)) ? str : str.substring(0, str.length() - remove.length());
    }

    public static String T1(String str, int start, int end) {
        if (str == null) {
            return null;
        }
        if (end < 0) {
            end += str.length();
        }
        if (start < 0) {
            start += str.length();
        }
        if (end > str.length()) {
            end = str.length();
        }
        if (start > end) {
            return "";
        }
        if (start < 0) {
            start = 0;
        }
        if (end < 0) {
            end = 0;
        }
        return str.substring(start, end);
    }

    public static int U(CharSequence... css) {
        if (css != null && css.length > 1) {
            int length = css.length;
            int i2 = Integer.MAX_VALUE;
            boolean z3 = true;
            int i4 = 0;
            boolean z4 = false;
            for (int i5 = 0; i5 < length; i5++) {
                if (css[i5] == null) {
                    i2 = 0;
                    z4 = true;
                } else {
                    i2 = Math.min(css[i5].length(), i2);
                    i4 = Math.max(css[i5].length(), i4);
                    z3 = false;
                }
            }
            if (!z3 && (i4 != 0 || z4)) {
                if (i2 == 0) {
                    return 0;
                }
                int i6 = -1;
                for (int i7 = 0; i7 < i2; i7++) {
                    char charAt = css[0].charAt(i7);
                    int i8 = 1;
                    while (true) {
                        if (i8 >= length) {
                            break;
                        } else if (css[i8].charAt(i7) != charAt) {
                            i6 = i7;
                            break;
                        } else {
                            i8++;
                        }
                    }
                    if (i6 != -1) {
                        break;
                    }
                }
                return (i6 != -1 || i2 == i4) ? i6 : i2;
            }
        }
        return -1;
    }

    public static String U0(String str, String remove) {
        return (f0(str) || f0(remove) || !str.startsWith(remove)) ? str : str.substring(remove.length());
    }

    public static String U1(String str, String separator) {
        int indexOf;
        return f0(str) ? str : (separator == null || (indexOf = str.indexOf(separator)) == -1) ? "" : str.substring(indexOf + separator.length());
    }

    public static int V(CharSequence str, CharSequence searchStr) {
        return W(str, searchStr, 0);
    }

    public static String V0(String str, String remove) {
        return (f0(str) || f0(remove) || !I1(str, remove)) ? str : str.substring(remove.length());
    }

    public static String V1(String str, String separator) {
        int lastIndexOf;
        return f0(str) ? str : (f0(separator) || (lastIndexOf = str.lastIndexOf(separator)) == -1 || lastIndexOf == str.length() - separator.length()) ? "" : str.substring(lastIndexOf + separator.length());
    }

    public static int W(CharSequence str, CharSequence searchStr, int startPos) {
        if (str != null && searchStr != null) {
            if (startPos < 0) {
                startPos = 0;
            }
            int length = (str.length() - searchStr.length()) + 1;
            if (startPos > length) {
                return -1;
            }
            if (searchStr.length() == 0) {
                return startPos;
            }
            while (startPos < length) {
                if (b.e(str, true, startPos, searchStr, 0, searchStr.length())) {
                    return startPos;
                }
                startPos++;
            }
        }
        return -1;
    }

    public static String W0(char ch, int repeat) {
        char[] cArr = new char[repeat];
        for (int i2 = repeat - 1; i2 >= 0; i2--) {
            cArr[i2] = ch;
        }
        return new String(cArr);
    }

    public static String W1(String str, String separator) {
        if (f0(str) || separator == null) {
            return str;
        }
        if (separator.length() == 0) {
            return "";
        }
        int indexOf = str.indexOf(separator);
        return indexOf == -1 ? str : str.substring(0, indexOf);
    }

    public static boolean X(CharSequence cs) {
        if (cs == null || f0(cs)) {
            return false;
        }
        int length = cs.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isLowerCase(cs.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static String X0(String str, int repeat) {
        if (str == null) {
            return null;
        }
        if (repeat <= 0) {
            return "";
        }
        int length = str.length();
        if (repeat == 1 || length == 0) {
            return str;
        }
        if (length != 1 || repeat > 8192) {
            int i2 = length * repeat;
            if (length != 1) {
                if (length != 2) {
                    StringBuilder sb = new StringBuilder(i2);
                    for (int i4 = 0; i4 < repeat; i4++) {
                        sb.append(str);
                    }
                    return sb.toString();
                }
                char charAt = str.charAt(0);
                char charAt2 = str.charAt(1);
                char[] cArr = new char[i2];
                for (int i5 = (repeat * 2) - 2; i5 >= 0; i5 = (i5 - 1) - 1) {
                    cArr[i5] = charAt;
                    cArr[i5 + 1] = charAt2;
                }
                return new String(cArr);
            }
            return W0(str.charAt(0), repeat);
        }
        return W0(str.charAt(0), repeat);
    }

    public static String X1(String str, String separator) {
        int lastIndexOf;
        return (f0(str) || f0(separator) || (lastIndexOf = str.lastIndexOf(separator)) == -1) ? str : str.substring(0, lastIndexOf);
    }

    public static boolean Y(CharSequence cs) {
        if (cs == null || f0(cs)) {
            return false;
        }
        int length = cs.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isUpperCase(cs.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static String Y0(String str, String separator, int repeat) {
        if (str != null && separator != null) {
            return S0(X0(str + separator, repeat), separator);
        }
        return X0(str, repeat);
    }

    public static String Y1(String str, String tag) {
        return Z1(str, tag, tag);
    }

    public static boolean Z(CharSequence cs) {
        if (cs == null || cs.length() == 0) {
            return false;
        }
        int length = cs.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isLetter(cs.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static String Z0(String text, String searchString, String replacement) {
        return a1(text, searchString, replacement, -1);
    }

    public static String Z1(String str, String open, String close) {
        int indexOf;
        int indexOf2;
        if (str == null || open == null || close == null || (indexOf = str.indexOf(open)) == -1 || (indexOf2 = str.indexOf(close, open.length() + indexOf)) == -1) {
            return null;
        }
        return str.substring(indexOf + open.length(), indexOf2);
    }

    public static String a(String str, int maxWidth) {
        return b(str, 0, maxWidth);
    }

    public static boolean a0(CharSequence cs) {
        if (cs == null) {
            return false;
        }
        int length = cs.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isLetter(cs.charAt(i2)) && cs.charAt(i2) != ' ') {
                return false;
            }
        }
        return true;
    }

    public static String a1(String text, String searchString, String replacement, int max) {
        if (f0(text) || f0(searchString) || replacement == null || max == 0) {
            return text;
        }
        int i2 = 0;
        int indexOf = text.indexOf(searchString, 0);
        if (indexOf == -1) {
            return text;
        }
        int length = searchString.length();
        int length2 = replacement.length() - length;
        if (length2 < 0) {
            length2 = 0;
        }
        int i4 = 64;
        if (max < 0) {
            i4 = 16;
        } else if (max <= 64) {
            i4 = max;
        }
        StringBuilder sb = new StringBuilder(text.length() + (length2 * i4));
        while (indexOf != -1) {
            sb.append(text.substring(i2, indexOf));
            sb.append(replacement);
            i2 = indexOf + length;
            max--;
            if (max == 0) {
                break;
            }
            indexOf = text.indexOf(searchString, i2);
        }
        sb.append(text.substring(i2));
        return sb.toString();
    }

    public static String[] a2(String str, String open, String close) {
        int indexOf;
        int i2;
        int indexOf2;
        if (str == null || f0(open) || f0(close)) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return external.org.apache.commons.lang3.a.f65301c;
        }
        int length2 = close.length();
        int length3 = open.length();
        ArrayList arrayList = new ArrayList();
        int i4 = 0;
        while (i4 < length - length2 && (indexOf = str.indexOf(open, i4)) >= 0 && (indexOf2 = str.indexOf(close, (i2 = indexOf + length3))) >= 0) {
            arrayList.add(str.substring(i2, indexOf2));
            i4 = indexOf2 + length2;
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String b(String str, int offset, int maxWidth) {
        if (str == null) {
            return null;
        }
        if (maxWidth >= 4) {
            if (str.length() <= maxWidth) {
                return str;
            }
            if (offset > str.length()) {
                offset = str.length();
            }
            int i2 = maxWidth - 3;
            if (str.length() - offset < i2) {
                offset = str.length() - i2;
            }
            if (offset <= 4) {
                return str.substring(0, i2) + "...";
            } else if (maxWidth >= 7) {
                if ((maxWidth + offset) - 3 < str.length()) {
                    return "..." + a(str.substring(offset), i2);
                }
                return "..." + str.substring(str.length() - i2);
            } else {
                throw new IllegalArgumentException("Minimum abbreviation width with offset is 7");
            }
        }
        throw new IllegalArgumentException("Minimum abbreviation width is 4");
    }

    public static boolean b0(CharSequence cs) {
        if (cs == null || cs.length() == 0) {
            return false;
        }
        int length = cs.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isLetterOrDigit(cs.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static String b1(String str, char searchChar, char replaceChar) {
        if (str == null) {
            return null;
        }
        return str.replace(searchChar, replaceChar);
    }

    public static String b2(String str) {
        if (f0(str)) {
            return str;
        }
        char[] charArray = str.toCharArray();
        for (int i2 = 0; i2 < charArray.length; i2++) {
            char c4 = charArray[i2];
            if (Character.isUpperCase(c4)) {
                charArray[i2] = Character.toLowerCase(c4);
            } else if (Character.isTitleCase(c4)) {
                charArray[i2] = Character.toLowerCase(c4);
            } else if (Character.isLowerCase(c4)) {
                charArray[i2] = Character.toUpperCase(c4);
            }
        }
        return new String(charArray);
    }

    public static String c(String str, String middle, int length) {
        if (f0(str) || f0(middle) || length >= str.length() || length < middle.length() + 2) {
            return str;
        }
        int length2 = length - middle.length();
        int i2 = length2 / 2;
        int i4 = (length2 % 2) + i2;
        int length3 = str.length() - i2;
        StringBuilder sb = new StringBuilder(length);
        sb.append(str.substring(0, i4));
        sb.append(middle);
        sb.append(str.substring(length3));
        return sb.toString();
    }

    public static boolean c0(CharSequence cs) {
        if (cs == null) {
            return false;
        }
        int length = cs.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isLetterOrDigit(cs.charAt(i2)) && cs.charAt(i2) != ' ') {
                return false;
            }
        }
        return true;
    }

    public static String c1(String str, String searchChars, String replaceChars) {
        if (f0(str) || f0(searchChars)) {
            return str;
        }
        if (replaceChars == null) {
            replaceChars = "";
        }
        int length = replaceChars.length();
        int length2 = str.length();
        StringBuilder sb = new StringBuilder(length2);
        boolean z3 = false;
        for (int i2 = 0; i2 < length2; i2++) {
            char charAt = str.charAt(i2);
            int indexOf = searchChars.indexOf(charAt);
            if (indexOf >= 0) {
                if (indexOf < length) {
                    sb.append(replaceChars.charAt(indexOf));
                }
                z3 = true;
            } else {
                sb.append(charAt);
            }
        }
        return z3 ? sb.toString() : str;
    }

    public static String c2(byte[] bytes, String charsetName) throws UnsupportedEncodingException {
        return charsetName == null ? new String(bytes) : new String(bytes, charsetName);
    }

    public static String d(String str) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder(length);
        sb.append(Character.toTitleCase(str.charAt(0)));
        sb.append(str.substring(1));
        return sb.toString();
    }

    public static boolean d0(CharSequence cs) {
        if (cs == null) {
            return false;
        }
        int length = cs.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!c.h(cs.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static String d1(String text, String[] searchList, String[] replacementList) {
        return e1(text, searchList, replacementList, false, 0);
    }

    public static String d2(String str) {
        if (str == null) {
            return null;
        }
        return str.trim();
    }

    public static String e(String str, int size) {
        return f(str, size, ' ');
    }

    public static boolean e0(CharSequence cs) {
        int length;
        if (cs != null && (length = cs.length()) != 0) {
            for (int i2 = 0; i2 < length; i2++) {
                if (!Character.isWhitespace(cs.charAt(i2))) {
                    return false;
                }
            }
        }
        return true;
    }

    private static String e1(String text, String[] searchList, String[] replacementList, boolean repeat, int timeToLive) {
        int length;
        if (text == null || text.length() == 0 || searchList == null || searchList.length == 0 || replacementList == null || replacementList.length == 0) {
            return text;
        }
        if (timeToLive >= 0) {
            int length2 = searchList.length;
            int length3 = replacementList.length;
            if (length2 == length3) {
                boolean[] zArr = new boolean[length2];
                int i2 = -1;
                int i4 = -1;
                for (int i5 = 0; i5 < length2; i5++) {
                    if (!zArr[i5] && searchList[i5] != null && searchList[i5].length() != 0 && replacementList[i5] != null) {
                        int indexOf = text.indexOf(searchList[i5]);
                        if (indexOf == -1) {
                            zArr[i5] = true;
                        } else if (i2 == -1 || indexOf < i2) {
                            i4 = i5;
                            i2 = indexOf;
                        }
                    }
                }
                if (i2 == -1) {
                    return text;
                }
                int i6 = 0;
                for (int i7 = 0; i7 < searchList.length; i7++) {
                    if (searchList[i7] != null && replacementList[i7] != null && (length = replacementList[i7].length() - searchList[i7].length()) > 0) {
                        i6 += length * 3;
                    }
                }
                StringBuilder sb = new StringBuilder(text.length() + Math.min(i6, text.length() / 5));
                int i8 = 0;
                while (i2 != -1) {
                    while (i8 < i2) {
                        sb.append(text.charAt(i8));
                        i8++;
                    }
                    sb.append(replacementList[i4]);
                    i8 = searchList[i4].length() + i2;
                    i2 = -1;
                    i4 = -1;
                    for (int i9 = 0; i9 < length2; i9++) {
                        if (!zArr[i9] && searchList[i9] != null && searchList[i9].length() != 0 && replacementList[i9] != null) {
                            int indexOf2 = text.indexOf(searchList[i9], i8);
                            if (indexOf2 == -1) {
                                zArr[i9] = true;
                            } else if (i2 == -1 || indexOf2 < i2) {
                                i4 = i9;
                                i2 = indexOf2;
                            }
                        }
                    }
                }
                int length4 = text.length();
                while (i8 < length4) {
                    sb.append(text.charAt(i8));
                    i8++;
                }
                String sb2 = sb.toString();
                return !repeat ? sb2 : e1(sb2, searchList, replacementList, repeat, timeToLive - 1);
            }
            throw new IllegalArgumentException("Search and Replace array lengths don't match: " + length2 + " vs " + length3);
        }
        throw new IllegalStateException("Aborting to protect against StackOverflowError - output of one loop is the input of another");
    }

    public static String e2(String str) {
        return str == null ? "" : str.trim();
    }

    public static String f(String str, int size, char padChar) {
        int length;
        int length2;
        return (str == null || size <= 0 || (length2 = size - (length = str.length())) <= 0) ? str : l1(E0(str, length + (length2 / 2), padChar), size, padChar);
    }

    public static boolean f0(CharSequence cs) {
        return cs == null || cs.length() == 0;
    }

    public static String f1(String text, String[] searchList, String[] replacementList) {
        return e1(text, searchList, replacementList, true, searchList == null ? 0 : searchList.length);
    }

    public static String f2(String str) {
        String d22 = d2(str);
        if (f0(d22)) {
            return null;
        }
        return d22;
    }

    public static String g(String str, int size, String padStr) {
        if (str == null || size <= 0) {
            return str;
        }
        if (f0(padStr)) {
            padStr = " ";
        }
        int length = str.length();
        int i2 = size - length;
        return i2 <= 0 ? str : m1(F0(str, length + (i2 / 2), padStr), size, padStr);
    }

    public static boolean g0(CharSequence cs) {
        return !e0(cs);
    }

    public static String g1(String text, String searchString, String replacement) {
        return a1(text, searchString, replacement, 1);
    }

    public static String g2(String str) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder(length);
        sb.append(Character.toLowerCase(str.charAt(0)));
        sb.append(str.substring(1));
        return sb.toString();
    }

    public static String h(String str) {
        if (f0(str)) {
            return str;
        }
        if (str.length() == 1) {
            char charAt = str.charAt(0);
            return (charAt == '\r' || charAt == '\n') ? "" : str;
        }
        int length = str.length() - 1;
        char charAt2 = str.charAt(length);
        if (charAt2 == '\n') {
            if (str.charAt(length - 1) == '\r') {
                length--;
            }
        } else if (charAt2 != '\r') {
            length++;
        }
        return str.substring(0, length);
    }

    public static boolean h0(CharSequence cs) {
        return !f0(cs);
    }

    public static String h1(String str) {
        if (str == null) {
            return null;
        }
        return new StringBuilder(str).reverse().toString();
    }

    public static String h2(String str) {
        if (str == null) {
            return null;
        }
        return str.toUpperCase();
    }

    @Deprecated
    public static String i(String str, String separator) {
        return S0(str, separator);
    }

    public static boolean i0(CharSequence cs) {
        if (cs == null || cs.length() == 0) {
            return false;
        }
        int length = cs.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isDigit(cs.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static String i1(String str, char separatorChar) {
        if (str == null) {
            return null;
        }
        String[] o12 = o1(str, separatorChar);
        external.org.apache.commons.lang3.a.A2(o12);
        return q0(o12, separatorChar);
    }

    public static String i2(String str, Locale locale) {
        if (str == null) {
            return null;
        }
        return str.toUpperCase(locale);
    }

    public static String j(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length < 2) {
            return "";
        }
        int i2 = length - 1;
        String substring = str.substring(0, i2);
        if (str.charAt(i2) == '\n') {
            int i4 = i2 - 1;
            if (substring.charAt(i4) == '\r') {
                return substring.substring(0, i4);
            }
        }
        return substring;
    }

    public static boolean j0(CharSequence cs) {
        if (cs == null) {
            return false;
        }
        int length = cs.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isDigit(cs.charAt(i2)) && cs.charAt(i2) != ' ') {
                return false;
            }
        }
        return true;
    }

    public static String j1(String str, int len) {
        if (str == null) {
            return null;
        }
        return len < 0 ? "" : str.length() <= len ? str : str.substring(str.length() - len);
    }

    public static boolean k(CharSequence seq, int searchChar) {
        return !f0(seq) && b.a(seq, searchChar, 0) >= 0;
    }

    public static boolean k0(CharSequence cs) {
        if (cs == null) {
            return false;
        }
        int length = cs.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!Character.isWhitespace(cs.charAt(i2))) {
                return false;
            }
        }
        return true;
    }

    public static String k1(String str, int size) {
        return l1(str, size, ' ');
    }

    public static boolean l(CharSequence seq, CharSequence searchSeq) {
        return (seq == null || searchSeq == null || b.b(seq, searchSeq, 0) < 0) ? false : true;
    }

    public static String l0(Iterable<?> iterable, char separator) {
        if (iterable == null) {
            return null;
        }
        return n0(iterable.iterator(), separator);
    }

    public static String l1(String str, int size, char padChar) {
        if (str == null) {
            return null;
        }
        int length = size - str.length();
        if (length <= 0) {
            return str;
        }
        if (length > 8192) {
            return m1(str, size, String.valueOf(padChar));
        }
        return str.concat(W0(padChar, length));
    }

    public static boolean m(CharSequence cs, CharSequence searchChars) {
        if (searchChars == null) {
            return false;
        }
        return n(cs, b.g(searchChars));
    }

    public static String m0(Iterable<?> iterable, String separator) {
        if (iterable == null) {
            return null;
        }
        return o0(iterable.iterator(), separator);
    }

    public static String m1(String str, int size, String padStr) {
        if (str == null) {
            return null;
        }
        if (f0(padStr)) {
            padStr = " ";
        }
        int length = padStr.length();
        int length2 = size - str.length();
        if (length2 <= 0) {
            return str;
        }
        if (length != 1 || length2 > 8192) {
            if (length2 == length) {
                return str.concat(padStr);
            }
            if (length2 < length) {
                return str.concat(padStr.substring(0, length2));
            }
            char[] cArr = new char[length2];
            char[] charArray = padStr.toCharArray();
            for (int i2 = 0; i2 < length2; i2++) {
                cArr[i2] = charArray[i2 % length];
            }
            return str.concat(new String(cArr));
        }
        return l1(str, size, padStr.charAt(0));
    }

    public static boolean n(CharSequence cs, char... searchChars) {
        if (!f0(cs) && !external.org.apache.commons.lang3.a.u0(searchChars)) {
            int length = cs.length();
            int length2 = searchChars.length;
            int i2 = length - 1;
            int i4 = length2 - 1;
            for (int i5 = 0; i5 < length; i5++) {
                char charAt = cs.charAt(i5);
                for (int i6 = 0; i6 < length2; i6++) {
                    if (searchChars[i6] == charAt) {
                        if (!Character.isHighSurrogate(charAt) || i6 == i4) {
                            return true;
                        }
                        if (i5 < i2 && searchChars[i6 + 1] == cs.charAt(i5 + 1)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static String n0(Iterator<?> iterator, char separator) {
        if (iterator == null) {
            return null;
        }
        if (iterator.hasNext()) {
            Object next = iterator.next();
            if (!iterator.hasNext()) {
                return ObjectUtils.r(next);
            }
            StringBuilder sb = new StringBuilder(256);
            if (next != null) {
                sb.append(next);
            }
            while (iterator.hasNext()) {
                sb.append(separator);
                Object next2 = iterator.next();
                if (next2 != null) {
                    sb.append(next2);
                }
            }
            return sb.toString();
        }
        return "";
    }

    public static String[] n1(String str) {
        return q1(str, null, -1);
    }

    public static boolean o(CharSequence str, CharSequence searchStr) {
        if (str != null && searchStr != null) {
            int length = searchStr.length();
            int length2 = str.length() - length;
            for (int i2 = 0; i2 <= length2; i2++) {
                if (b.e(str, true, i2, searchStr, 0, length)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static String o0(Iterator<?> iterator, String separator) {
        if (iterator == null) {
            return null;
        }
        if (iterator.hasNext()) {
            Object next = iterator.next();
            if (!iterator.hasNext()) {
                return ObjectUtils.r(next);
            }
            StringBuilder sb = new StringBuilder(256);
            if (next != null) {
                sb.append(next);
            }
            while (iterator.hasNext()) {
                if (separator != null) {
                    sb.append(separator);
                }
                Object next2 = iterator.next();
                if (next2 != null) {
                    sb.append(next2);
                }
            }
            return sb.toString();
        }
        return "";
    }

    public static String[] o1(String str, char separatorChar) {
        return D1(str, separatorChar, false);
    }

    public static boolean p(CharSequence cs, String invalidChars) {
        if (cs == null || invalidChars == null) {
            return true;
        }
        return q(cs, invalidChars.toCharArray());
    }

    public static <T> String p0(T... elements) {
        return s0(elements, null);
    }

    public static String[] p1(String str, String separatorChars) {
        return E1(str, separatorChars, -1, false);
    }

    public static boolean q(CharSequence cs, char... searchChars) {
        if (cs != null && searchChars != null) {
            int length = cs.length();
            int i2 = length - 1;
            int length2 = searchChars.length;
            int i4 = length2 - 1;
            for (int i5 = 0; i5 < length; i5++) {
                char charAt = cs.charAt(i5);
                for (int i6 = 0; i6 < length2; i6++) {
                    if (searchChars[i6] == charAt) {
                        if (!Character.isHighSurrogate(charAt) || i6 == i4) {
                            return false;
                        }
                        if (i5 < i2 && searchChars[i6 + 1] == cs.charAt(i5 + 1)) {
                            return false;
                        }
                    }
                }
            }
        }
        return true;
    }

    public static String q0(Object[] array, char separator) {
        if (array == null) {
            return null;
        }
        return r0(array, separator, 0, array.length);
    }

    public static String[] q1(String str, String separatorChars, int max) {
        return E1(str, separatorChars, max, false);
    }

    public static boolean r(CharSequence cs, String validChars) {
        if (cs == null || validChars == null) {
            return false;
        }
        return s(cs, validChars.toCharArray());
    }

    public static String r0(Object[] array, char separator, int startIndex, int endIndex) {
        if (array == null) {
            return null;
        }
        int i2 = endIndex - startIndex;
        if (i2 <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(i2 * 16);
        for (int i4 = startIndex; i4 < endIndex; i4++) {
            if (i4 > startIndex) {
                sb.append(separator);
            }
            if (array[i4] != null) {
                sb.append(array[i4]);
            }
        }
        return sb.toString();
    }

    public static String[] r1(String str) {
        return s1(str, false);
    }

    public static boolean s(CharSequence cs, char... valid) {
        if (valid == null || cs == null) {
            return false;
        }
        if (cs.length() == 0) {
            return true;
        }
        return valid.length != 0 && S(cs, valid) == -1;
    }

    public static String s0(Object[] array, String separator) {
        if (array == null) {
            return null;
        }
        return t0(array, separator, 0, array.length);
    }

    private static String[] s1(String str, boolean camelCase) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return external.org.apache.commons.lang3.a.f65301c;
        }
        char[] charArray = str.toCharArray();
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        int type = Character.getType(charArray[0]);
        for (int i4 = 1; i4 < charArray.length; i4++) {
            int type2 = Character.getType(charArray[i4]);
            if (type2 != type) {
                if (camelCase && type2 == 2 && type == 1) {
                    int i5 = i4 - 1;
                    if (i5 != i2) {
                        arrayList.add(new String(charArray, i2, i5 - i2));
                        i2 = i5;
                    }
                } else {
                    arrayList.add(new String(charArray, i2, i4 - i2));
                    i2 = i4;
                }
                type = type2;
            }
        }
        arrayList.add(new String(charArray, i2, charArray.length - i2));
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean t(CharSequence seq) {
        if (f0(seq)) {
            return false;
        }
        int length = seq.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (Character.isWhitespace(seq.charAt(i2))) {
                return true;
            }
        }
        return false;
    }

    public static String t0(Object[] array, String separator, int startIndex, int endIndex) {
        if (array == null) {
            return null;
        }
        if (separator == null) {
            separator = "";
        }
        int i2 = endIndex - startIndex;
        if (i2 <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(i2 * 16);
        for (int i4 = startIndex; i4 < endIndex; i4++) {
            if (i4 > startIndex) {
                sb.append(separator);
            }
            if (array[i4] != null) {
                sb.append(array[i4]);
            }
        }
        return sb.toString();
    }

    public static String[] t1(String str) {
        return s1(str, true);
    }

    public static int u(CharSequence str, CharSequence sub) {
        int i2 = 0;
        if (f0(str) || f0(sub)) {
            return 0;
        }
        int i4 = 0;
        while (true) {
            int b4 = b.b(str, sub, i2);
            if (b4 == -1) {
                return i4;
            }
            i4++;
            i2 = b4 + sub.length();
        }
    }

    public static int u0(CharSequence seq, int searchChar) {
        if (f0(seq)) {
            return -1;
        }
        return b.c(seq, searchChar, seq.length());
    }

    public static String[] u1(String str, String separator) {
        return y1(str, separator, -1, false);
    }

    public static <T extends CharSequence> T v(T str, T defaultStr) {
        return e0(str) ? defaultStr : str;
    }

    public static int v0(CharSequence seq, int searchChar, int startPos) {
        if (f0(seq)) {
            return -1;
        }
        return b.c(seq, searchChar, startPos);
    }

    public static String[] v1(String str, String separator, int max) {
        return y1(str, separator, max, false);
    }

    public static <T extends CharSequence> T w(T str, T defaultStr) {
        return f0(str) ? defaultStr : str;
    }

    public static int w0(CharSequence seq, CharSequence searchSeq) {
        if (seq == null || searchSeq == null) {
            return -1;
        }
        return b.d(seq, searchSeq, seq.length());
    }

    public static String[] w1(String str, String separator) {
        return y1(str, separator, -1, true);
    }

    public static String x(String str) {
        return str == null ? "" : str;
    }

    public static int x0(CharSequence seq, CharSequence searchSeq, int startPos) {
        if (seq == null || searchSeq == null) {
            return -1;
        }
        return b.d(seq, searchSeq, startPos);
    }

    public static String[] x1(String str, String separator, int max) {
        return y1(str, separator, max, true);
    }

    public static String y(String str, String defaultStr) {
        return str == null ? defaultStr : str;
    }

    public static int y0(CharSequence str, CharSequence... searchStrs) {
        int d4;
        int i2 = -1;
        if (str != null && searchStrs != null) {
            for (CharSequence charSequence : searchStrs) {
                if (charSequence != null && (d4 = b.d(str, charSequence, str.length())) > i2) {
                    i2 = d4;
                }
            }
        }
        return i2;
    }

    private static String[] y1(String str, String separator, int max, boolean preserveAllTokens) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length == 0) {
            return external.org.apache.commons.lang3.a.f65301c;
        }
        if (separator != null && !"".equals(separator)) {
            int length2 = separator.length();
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            int i4 = 0;
            int i5 = 0;
            while (i2 < length) {
                i2 = str.indexOf(separator, i4);
                if (i2 > -1) {
                    if (i2 > i4) {
                        i5++;
                        if (i5 == max) {
                            arrayList.add(str.substring(i4));
                        } else {
                            arrayList.add(str.substring(i4, i2));
                        }
                    } else if (preserveAllTokens) {
                        i5++;
                        if (i5 == max) {
                            arrayList.add(str.substring(i4));
                            i2 = length;
                        } else {
                            arrayList.add("");
                        }
                    }
                    i4 = i2 + length2;
                } else {
                    arrayList.add(str.substring(i4));
                }
                i2 = length;
            }
            return (String[]) arrayList.toArray(new String[arrayList.size()]);
        }
        return E1(str, null, max, preserveAllTokens);
    }

    public static String z(String str) {
        if (f0(str)) {
            return str;
        }
        int length = str.length();
        char[] cArr = new char[length];
        int i2 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            if (!Character.isWhitespace(str.charAt(i4))) {
                cArr[i2] = str.charAt(i4);
                i2++;
            }
        }
        return i2 == length ? str : new String(cArr, 0, i2);
    }

    public static int z0(CharSequence str, CharSequence searchStr) {
        if (str == null || searchStr == null) {
            return -1;
        }
        return A0(str, searchStr, str.length());
    }

    public static String[] z1(String str) {
        return E1(str, null, -1, true);
    }
}
