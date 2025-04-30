package io.netty.util.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes5.dex */
public final class StringUtil {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final char CARRIAGE_RETURN = '\r';
    public static final char COMMA = ',';
    private static final int CSV_NUMBER_ESCAPE_CHARACTERS = 7;
    public static final char DOUBLE_QUOTE = '\"';
    public static final String EMPTY_STRING = "";
    private static final byte[] HEX2B;
    public static final char LINE_FEED = '\n';
    private static final char PACKAGE_SEPARATOR_CHAR = '.';
    public static final char SPACE = ' ';
    public static final char TAB = '\t';
    public static final String NEWLINE = SystemPropertyUtil.get("line.separator", "\n");
    private static final String[] BYTE2HEX_PAD = new String[256];
    private static final String[] BYTE2HEX_NOPAD = new String[256];

    static {
        String str;
        int i2 = 0;
        while (true) {
            String[] strArr = BYTE2HEX_PAD;
            if (i2 < strArr.length) {
                String hexString = Integer.toHexString(i2);
                if (i2 > 15) {
                    str = hexString;
                } else {
                    str = '0' + hexString;
                }
                strArr[i2] = str;
                BYTE2HEX_NOPAD[i2] = hexString;
                i2++;
            } else {
                byte[] bArr = new byte[65536];
                HEX2B = bArr;
                Arrays.fill(bArr, (byte) -1);
                bArr[48] = 0;
                bArr[49] = 1;
                bArr[50] = 2;
                bArr[51] = 3;
                bArr[52] = 4;
                bArr[53] = 5;
                bArr[54] = 6;
                bArr[55] = 7;
                bArr[56] = 8;
                bArr[57] = 9;
                bArr[65] = 10;
                bArr[66] = 11;
                bArr[67] = 12;
                bArr[68] = 13;
                bArr[69] = 14;
                bArr[70] = 15;
                bArr[97] = 10;
                bArr[98] = 11;
                bArr[99] = 12;
                bArr[100] = 13;
                bArr[101] = 14;
                bArr[102] = 15;
                return;
            }
        }
    }

    private StringUtil() {
    }

    public static String byteToHexString(int i2) {
        return BYTE2HEX_NOPAD[i2 & 255];
    }

    public static String byteToHexStringPadded(int i2) {
        return BYTE2HEX_PAD[i2 & 255];
    }

    public static boolean commonSuffixOfLength(String str, String str2, int i2) {
        return str != null && str2 != null && i2 >= 0 && str.regionMatches(str.length() - i2, str2, str2.length() - i2, i2);
    }

    public static byte decodeHexByte(CharSequence charSequence, int i2) {
        int decodeHexNibble = decodeHexNibble(charSequence.charAt(i2));
        int decodeHexNibble2 = decodeHexNibble(charSequence.charAt(i2 + 1));
        if (decodeHexNibble == -1 || decodeHexNibble2 == -1) {
            throw new IllegalArgumentException(String.format("invalid hex byte '%s' at index %d of '%s'", charSequence.subSequence(i2, i2 + 2), Integer.valueOf(i2), charSequence));
        }
        return (byte) ((decodeHexNibble << 4) + decodeHexNibble2);
    }

    public static byte[] decodeHexDump(CharSequence charSequence, int i2, int i4) {
        if (i4 < 0 || (i4 & 1) != 0) {
            throw new IllegalArgumentException("length: " + i4);
        } else if (i4 == 0) {
            return EmptyArrays.EMPTY_BYTES;
        } else {
            byte[] bArr = new byte[i4 >>> 1];
            for (int i5 = 0; i5 < i4; i5 += 2) {
                bArr[i5 >>> 1] = decodeHexByte(charSequence, i2 + i5);
            }
            return bArr;
        }
    }

    public static int decodeHexNibble(char c4) {
        return HEX2B[c4];
    }

    public static boolean endsWith(CharSequence charSequence, char c4) {
        int length = charSequence.length();
        return length > 0 && charSequence.charAt(length - 1) == c4;
    }

    public static CharSequence escapeCsv(CharSequence charSequence) {
        return escapeCsv(charSequence, false);
    }

    private static int indexOfFirstNonOwsChar(CharSequence charSequence, int i2) {
        int i4 = 0;
        while (i4 < i2 && isOws(charSequence.charAt(i4))) {
            i4++;
        }
        return i4;
    }

    private static int indexOfLastNonOwsChar(CharSequence charSequence, int i2, int i4) {
        int i5 = i4 - 1;
        while (i5 > i2 && isOws(charSequence.charAt(i5))) {
            i5--;
        }
        return i5;
    }

    public static int indexOfNonWhiteSpace(CharSequence charSequence, int i2) {
        while (i2 < charSequence.length()) {
            if (!Character.isWhitespace(charSequence.charAt(i2))) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static int indexOfWhiteSpace(CharSequence charSequence, int i2) {
        while (i2 < charSequence.length()) {
            if (Character.isWhitespace(charSequence.charAt(i2))) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    private static boolean isDoubleQuote(char c4) {
        return c4 == '\"';
    }

    public static boolean isNullOrEmpty(String str) {
        return str == null || str.isEmpty();
    }

    private static boolean isOws(char c4) {
        return c4 == ' ' || c4 == '\t';
    }

    public static boolean isSurrogate(char c4) {
        return c4 >= 55296 && c4 <= 57343;
    }

    public static CharSequence join(CharSequence charSequence, Iterable<? extends CharSequence> iterable) {
        ObjectUtil.checkNotNull(charSequence, "separator");
        ObjectUtil.checkNotNull(iterable, "elements");
        Iterator<? extends CharSequence> it2 = iterable.iterator();
        if (it2.hasNext()) {
            CharSequence next = it2.next();
            if (it2.hasNext()) {
                StringBuilder sb = new StringBuilder(next);
                do {
                    sb.append(charSequence);
                    sb.append(it2.next());
                } while (it2.hasNext());
                return sb;
            }
            return next;
        }
        return "";
    }

    public static int length(String str) {
        if (str == null) {
            return 0;
        }
        return str.length();
    }

    private static IllegalArgumentException newInvalidEscapedCsvFieldException(CharSequence charSequence, int i2) {
        return new IllegalArgumentException("invalid escaped CSV field: " + ((Object) charSequence) + " index: " + i2);
    }

    public static String simpleClassName(Object obj) {
        return obj == null ? "null_object" : simpleClassName(obj.getClass());
    }

    public static String substringAfter(String str, char c4) {
        int indexOf = str.indexOf(c4);
        if (indexOf >= 0) {
            return str.substring(indexOf + 1);
        }
        return null;
    }

    public static String toHexString(byte[] bArr) {
        return toHexString(bArr, 0, bArr.length);
    }

    public static String toHexStringPadded(byte[] bArr) {
        return toHexStringPadded(bArr, 0, bArr.length);
    }

    public static CharSequence trimOws(CharSequence charSequence) {
        int length = charSequence.length();
        if (length == 0) {
            return charSequence;
        }
        int indexOfFirstNonOwsChar = indexOfFirstNonOwsChar(charSequence, length);
        int indexOfLastNonOwsChar = indexOfLastNonOwsChar(charSequence, indexOfFirstNonOwsChar, length);
        return (indexOfFirstNonOwsChar == 0 && indexOfLastNonOwsChar == length + (-1)) ? charSequence : charSequence.subSequence(indexOfFirstNonOwsChar, indexOfLastNonOwsChar + 1);
    }

    public static CharSequence unescapeCsv(CharSequence charSequence) {
        int length = ((CharSequence) ObjectUtil.checkNotNull(charSequence, "value")).length();
        if (length == 0) {
            return charSequence;
        }
        int i2 = length - 1;
        boolean z3 = false;
        if (isDoubleQuote(charSequence.charAt(0)) && isDoubleQuote(charSequence.charAt(i2)) && length != 1) {
            z3 = true;
        }
        if (!z3) {
            validateCsvFormat(charSequence);
            return charSequence;
        }
        StringBuilder stringBuilder = InternalThreadLocalMap.get().stringBuilder();
        int i4 = 1;
        while (i4 < i2) {
            char charAt = charSequence.charAt(i4);
            if (charAt == '\"') {
                int i5 = i4 + 1;
                if (!isDoubleQuote(charSequence.charAt(i5)) || i5 == i2) {
                    throw newInvalidEscapedCsvFieldException(charSequence, i4);
                }
                i4 = i5;
            }
            stringBuilder.append(charAt);
            i4++;
        }
        return stringBuilder.toString();
    }

    public static List<CharSequence> unescapeCsvFields(CharSequence charSequence) {
        ArrayList arrayList = new ArrayList(2);
        StringBuilder stringBuilder = InternalThreadLocalMap.get().stringBuilder();
        int length = charSequence.length() - 1;
        int i2 = 0;
        boolean z3 = false;
        while (i2 <= length) {
            char charAt = charSequence.charAt(i2);
            if (!z3) {
                if (charAt != '\n' && charAt != '\r') {
                    if (charAt != '\"') {
                        if (charAt != ',') {
                            stringBuilder.append(charAt);
                        } else {
                            arrayList.add(stringBuilder.toString());
                            stringBuilder.setLength(0);
                        }
                    } else if (stringBuilder.length() == 0) {
                        z3 = true;
                    }
                }
                throw newInvalidEscapedCsvFieldException(charSequence, i2);
            } else if (charAt != '\"') {
                stringBuilder.append(charAt);
            } else if (i2 == length) {
                arrayList.add(stringBuilder.toString());
                return arrayList;
            } else {
                i2++;
                char charAt2 = charSequence.charAt(i2);
                if (charAt2 == '\"') {
                    stringBuilder.append('\"');
                } else if (charAt2 == ',') {
                    arrayList.add(stringBuilder.toString());
                    stringBuilder.setLength(0);
                    z3 = false;
                } else {
                    throw newInvalidEscapedCsvFieldException(charSequence, i2 - 1);
                }
            }
            i2++;
        }
        if (!z3) {
            arrayList.add(stringBuilder.toString());
            return arrayList;
        }
        throw newInvalidEscapedCsvFieldException(charSequence, length);
    }

    private static void validateCsvFormat(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = charSequence.charAt(i2);
            if (charAt == '\n' || charAt == '\r' || charAt == '\"' || charAt == ',') {
                throw newInvalidEscapedCsvFieldException(charSequence, i2);
            }
        }
    }

    public static <T extends Appendable> T byteToHexString(T t3, int i2) {
        try {
            t3.append(byteToHexString(i2));
        } catch (IOException e4) {
            PlatformDependent.throwException(e4);
        }
        return t3;
    }

    public static <T extends Appendable> T byteToHexStringPadded(T t3, int i2) {
        try {
            t3.append(byteToHexStringPadded(i2));
        } catch (IOException e4) {
            PlatformDependent.throwException(e4);
        }
        return t3;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00bb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.CharSequence escapeCsv(java.lang.CharSequence r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.util.internal.StringUtil.escapeCsv(java.lang.CharSequence, boolean):java.lang.CharSequence");
    }

    public static String simpleClassName(Class<?> cls) {
        String name = ((Class) ObjectUtil.checkNotNull(cls, "clazz")).getName();
        int lastIndexOf = name.lastIndexOf(46);
        return lastIndexOf > -1 ? name.substring(lastIndexOf + 1) : name;
    }

    public static String toHexString(byte[] bArr, int i2, int i4) {
        return ((StringBuilder) toHexString(new StringBuilder(i4 << 1), bArr, i2, i4)).toString();
    }

    public static String toHexStringPadded(byte[] bArr, int i2, int i4) {
        return ((StringBuilder) toHexStringPadded(new StringBuilder(i4 << 1), bArr, i2, i4)).toString();
    }

    public static <T extends Appendable> T toHexString(T t3, byte[] bArr) {
        return (T) toHexString(t3, bArr, 0, bArr.length);
    }

    public static <T extends Appendable> T toHexStringPadded(T t3, byte[] bArr) {
        return (T) toHexStringPadded(t3, bArr, 0, bArr.length);
    }

    public static <T extends Appendable> T toHexString(T t3, byte[] bArr, int i2, int i4) {
        if (i4 == 0) {
            return t3;
        }
        int i5 = i4 + i2;
        int i6 = i5 - 1;
        while (i2 < i6 && bArr[i2] == 0) {
            i2++;
        }
        int i7 = i2 + 1;
        byteToHexString(t3, bArr[i2]);
        toHexStringPadded(t3, bArr, i7, i5 - i7);
        return t3;
    }

    public static <T extends Appendable> T toHexStringPadded(T t3, byte[] bArr, int i2, int i4) {
        int i5 = i4 + i2;
        while (i2 < i5) {
            byteToHexStringPadded(t3, bArr[i2]);
            i2++;
        }
        return t3;
    }

    public static byte[] decodeHexDump(CharSequence charSequence) {
        return decodeHexDump(charSequence, 0, charSequence.length());
    }
}
