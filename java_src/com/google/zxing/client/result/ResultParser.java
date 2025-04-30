package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;
import m.a;
/* loaded from: classes2.dex */
public abstract class ResultParser {
    private static final ResultParser[] PARSERS = {new BookmarkDoCoMoResultParser(), new AddressBookDoCoMoResultParser(), new EmailDoCoMoResultParser(), new AddressBookAUResultParser(), new VCardResultParser(), new BizcardResultParser(), new VEventResultParser(), new EmailAddressResultParser(), new SMTPResultParser(), new TelResultParser(), new SMSMMSResultParser(), new SMSTOMMSTOResultParser(), new GeoResultParser(), new WifiResultParser(), new URLTOResultParser(), new URIResultParser(), new ISBNResultParser(), new ProductResultParser(), new ExpandedProductResultParser()};
    private static final Pattern DIGITS = Pattern.compile("\\d*");
    private static final Pattern ALPHANUM = Pattern.compile("[a-zA-Z0-9]*");
    private static final Pattern AMPERSAND = Pattern.compile(a.f72566d);
    private static final Pattern EQUALS = Pattern.compile(SimpleComparison.EQUAL_TO_OPERATION);

    private static void appendKeyValue(CharSequence charSequence, Map<String, String> map) {
        String[] split = EQUALS.split(charSequence, 2);
        if (split.length == 2) {
            try {
                map.put(split[0], URLDecoder.decode(split[1], "UTF-8"));
            } catch (UnsupportedEncodingException e4) {
                throw new IllegalStateException(e4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean isStringOfDigits(CharSequence charSequence, int i2) {
        return charSequence != null && i2 == charSequence.length() && DIGITS.matcher(charSequence).matches();
    }

    protected static boolean isSubstringOfAlphaNumeric(CharSequence charSequence, int i2, int i4) {
        int i5;
        return charSequence != null && charSequence.length() >= (i5 = i4 + i2) && ALPHANUM.matcher(charSequence.subSequence(i2, i5)).matches();
    }

    protected static boolean isSubstringOfDigits(CharSequence charSequence, int i2, int i4) {
        int i5;
        return charSequence != null && charSequence.length() >= (i5 = i4 + i2) && DIGITS.matcher(charSequence.subSequence(i2, i5)).matches();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String[] matchPrefixedField(String str, String str2, char c4, boolean z3) {
        int length = str2.length();
        ArrayList arrayList = null;
        int i2 = 0;
        while (i2 < length) {
            int indexOf = str2.indexOf(str, i2);
            if (indexOf < 0) {
                break;
            }
            int length2 = indexOf + str.length();
            ArrayList arrayList2 = arrayList;
            boolean z4 = true;
            int i4 = length2;
            while (z4) {
                int indexOf2 = str2.indexOf(c4, i4);
                if (indexOf2 < 0) {
                    i4 = str2.length();
                } else if (str2.charAt(indexOf2 - 1) == '\\') {
                    i4 = indexOf2 + 1;
                } else {
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList(3);
                    }
                    String unescapeBackslash = unescapeBackslash(str2.substring(length2, indexOf2));
                    if (z3) {
                        unescapeBackslash = unescapeBackslash.trim();
                    }
                    arrayList2.add(unescapeBackslash);
                    i4 = indexOf2 + 1;
                }
                z4 = false;
            }
            i2 = i4;
            arrayList = arrayList2;
        }
        if (arrayList == null || arrayList.isEmpty()) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String matchSinglePrefixedField(String str, String str2, char c4, boolean z3) {
        String[] matchPrefixedField = matchPrefixedField(str, str2, c4, z3);
        if (matchPrefixedField == null) {
            return null;
        }
        return matchPrefixedField[0];
    }

    protected static void maybeAppend(String str, StringBuilder sb) {
        if (str != null) {
            sb.append('\n');
            sb.append(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String[] maybeWrap(String str) {
        if (str == null) {
            return null;
        }
        return new String[]{str};
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int parseHexDigit(char c4) {
        if (c4 < '0' || c4 > '9') {
            char c5 = 'a';
            if (c4 < 'a' || c4 > 'f') {
                c5 = 'A';
                if (c4 < 'A' || c4 > 'F') {
                    return -1;
                }
            }
            return (c4 - c5) + 10;
        }
        return c4 - '0';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, String> parseNameValuePairs(String str) {
        int indexOf = str.indexOf(63);
        if (indexOf < 0) {
            return null;
        }
        HashMap hashMap = new HashMap(3);
        for (String str2 : AMPERSAND.split(str.substring(indexOf + 1))) {
            appendKeyValue(str2, hashMap);
        }
        return hashMap;
    }

    public static ParsedResult parseResult(Result result) {
        for (ResultParser resultParser : PARSERS) {
            ParsedResult parse = resultParser.parse(result);
            if (parse != null) {
                return parse;
            }
        }
        return new TextParsedResult(result.getText(), null);
    }

    protected static String unescapeBackslash(String str) {
        int indexOf = str.indexOf(92);
        if (indexOf < 0) {
            return str;
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length - 1);
        sb.append(str.toCharArray(), 0, indexOf);
        boolean z3 = false;
        while (indexOf < length) {
            char charAt = str.charAt(indexOf);
            if (z3 || charAt != '\\') {
                sb.append(charAt);
                z3 = false;
            } else {
                z3 = true;
            }
            indexOf++;
        }
        return sb.toString();
    }

    public abstract ParsedResult parse(Result result);

    protected static void maybeAppend(String[] strArr, StringBuilder sb) {
        if (strArr != null) {
            for (String str : strArr) {
                sb.append('\n');
                sb.append(str);
            }
        }
    }
}
