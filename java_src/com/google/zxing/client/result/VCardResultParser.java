package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public final class VCardResultParser extends ResultParser {
    private static final Pattern BEGIN_VCARD = Pattern.compile("BEGIN:VCARD", 2);
    private static final Pattern VCARD_LIKE_DATE = Pattern.compile("\\d{4}-?\\d{2}-?\\d{2}");
    private static final Pattern CR_LF_SPACE_TAB = Pattern.compile("\r\n[ \t]");
    private static final Pattern NEWLINE_ESCAPE = Pattern.compile("\\\\[nN]");
    private static final Pattern VCARD_ESCAPES = Pattern.compile("\\\\([,;\\\\])");
    private static final Pattern EQUALS = Pattern.compile(SimpleComparison.EQUAL_TO_OPERATION);
    private static final Pattern SEMICOLON = Pattern.compile(";");

    private static String decodeQuotedPrintable(CharSequence charSequence, String str) {
        char charAt;
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i2 = 0;
        while (i2 < length) {
            char charAt2 = charSequence.charAt(i2);
            if (charAt2 != '\n' && charAt2 != '\r') {
                if (charAt2 != '=') {
                    maybeAppendFragment(byteArrayOutputStream, str, sb);
                    sb.append(charAt2);
                } else if (i2 < length - 2 && (charAt = charSequence.charAt(i2 + 1)) != '\r' && charAt != '\n') {
                    i2 += 2;
                    char charAt3 = charSequence.charAt(i2);
                    int parseHexDigit = ResultParser.parseHexDigit(charAt);
                    int parseHexDigit2 = ResultParser.parseHexDigit(charAt3);
                    if (parseHexDigit >= 0 && parseHexDigit2 >= 0) {
                        byteArrayOutputStream.write((parseHexDigit << 4) + parseHexDigit2);
                    }
                }
            }
            i2++;
        }
        maybeAppendFragment(byteArrayOutputStream, str, sb);
        return sb.toString();
    }

    private static void formatNames(Iterable<List<String>> iterable) {
        if (iterable != null) {
            for (List<String> list : iterable) {
                String str = list.get(0);
                String[] strArr = new String[5];
                int i2 = 0;
                int i4 = 0;
                while (true) {
                    int indexOf = str.indexOf(59, i2);
                    if (indexOf > 0) {
                        strArr[i4] = str.substring(i2, indexOf);
                        i4++;
                        i2 = indexOf + 1;
                    }
                }
                strArr[i4] = str.substring(i2);
                StringBuilder sb = new StringBuilder(100);
                maybeAppendComponent(strArr, 3, sb);
                maybeAppendComponent(strArr, 1, sb);
                maybeAppendComponent(strArr, 2, sb);
                maybeAppendComponent(strArr, 0, sb);
                maybeAppendComponent(strArr, 4, sb);
                list.set(0, sb.toString().trim());
            }
        }
    }

    private static boolean isLikeVCardDate(CharSequence charSequence) {
        return charSequence == null || VCARD_LIKE_DATE.matcher(charSequence).matches();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<String> matchSingleVCardPrefixedField(CharSequence charSequence, String str, boolean z3) {
        List<List<String>> matchVCardPrefixedField = matchVCardPrefixedField(charSequence, str, z3);
        if (matchVCardPrefixedField == null || matchVCardPrefixedField.isEmpty()) {
            return null;
        }
        return matchVCardPrefixedField.get(0);
    }

    private static List<List<String>> matchVCardPrefixedField(CharSequence charSequence, String str, boolean z3) {
        ArrayList arrayList;
        boolean z4;
        String str2;
        int indexOf;
        String replaceAll;
        int length = str.length();
        int i2 = 0;
        ArrayList arrayList2 = null;
        while (i2 < length) {
            int i4 = 2;
            Matcher matcher = Pattern.compile("(?:^|\n)" + ((Object) charSequence) + "(?:;([^:]*))?:", 2).matcher(str);
            if (i2 > 0) {
                i2--;
            }
            if (!matcher.find(i2)) {
                break;
            }
            int end = matcher.end(0);
            String group = matcher.group(1);
            if (group != null) {
                String[] split = SEMICOLON.split(group);
                int length2 = split.length;
                int i5 = 0;
                arrayList = null;
                z4 = false;
                str2 = null;
                while (i5 < length2) {
                    String str3 = split[i5];
                    if (arrayList == null) {
                        arrayList = new ArrayList(1);
                    }
                    arrayList.add(str3);
                    String[] split2 = EQUALS.split(str3, i4);
                    if (split2.length > 1) {
                        String str4 = split2[0];
                        String str5 = split2[1];
                        if ("ENCODING".equalsIgnoreCase(str4) && "QUOTED-PRINTABLE".equalsIgnoreCase(str5)) {
                            z4 = true;
                        } else if ("CHARSET".equalsIgnoreCase(str4)) {
                            str2 = str5;
                        }
                    }
                    i5++;
                    i4 = 2;
                }
            } else {
                arrayList = null;
                z4 = false;
                str2 = null;
            }
            int i6 = end;
            while (true) {
                indexOf = str.indexOf(10, i6);
                if (indexOf >= 0) {
                    if (indexOf < str.length() - 1) {
                        int i7 = indexOf + 1;
                        if (str.charAt(i7) == ' ' || str.charAt(i7) == '\t') {
                            i6 = indexOf + 2;
                        }
                    }
                    if (!z4 || (str.charAt(indexOf - 1) != '=' && str.charAt(indexOf - 2) != '=')) {
                        break;
                    }
                    i6 = indexOf + 1;
                } else {
                    break;
                }
            }
            if (indexOf < 0) {
                i2 = length;
            } else {
                if (indexOf > end) {
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList(1);
                    }
                    if (str.charAt(indexOf - 1) == '\r') {
                        indexOf--;
                    }
                    String substring = str.substring(end, indexOf);
                    if (z3) {
                        substring = substring.trim();
                    }
                    if (z4) {
                        replaceAll = decodeQuotedPrintable(substring, str2);
                    } else {
                        replaceAll = VCARD_ESCAPES.matcher(NEWLINE_ESCAPE.matcher(CR_LF_SPACE_TAB.matcher(substring).replaceAll("")).replaceAll("\n")).replaceAll("$1");
                    }
                    if (arrayList == null) {
                        ArrayList arrayList3 = new ArrayList(1);
                        arrayList3.add(replaceAll);
                        arrayList2.add(arrayList3);
                    } else {
                        arrayList.add(0, replaceAll);
                        arrayList2.add(arrayList);
                    }
                }
                i2 = indexOf + 1;
            }
        }
        return arrayList2;
    }

    private static void maybeAppendComponent(String[] strArr, int i2, StringBuilder sb) {
        if (strArr[i2] != null) {
            sb.append(' ');
            sb.append(strArr[i2]);
        }
    }

    private static void maybeAppendFragment(ByteArrayOutputStream byteArrayOutputStream, String str, StringBuilder sb) {
        String str2;
        if (byteArrayOutputStream.size() > 0) {
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (str == null) {
                str2 = new String(byteArray);
            } else {
                try {
                    str2 = new String(byteArray, str);
                } catch (UnsupportedEncodingException unused) {
                    str2 = new String(byteArray);
                }
            }
            byteArrayOutputStream.reset();
            sb.append(str2);
        }
    }

    private static String toPrimaryValue(List<String> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    private static String[] toPrimaryValues(Collection<List<String>> collection) {
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (List<String> list : collection) {
            arrayList.add(list.get(0));
        }
        return (String[]) arrayList.toArray(new String[collection.size()]);
    }

    private static String[] toTypes(Collection<List<String>> collection) {
        String str;
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (List<String> list : collection) {
            int i2 = 1;
            while (true) {
                if (i2 >= list.size()) {
                    str = null;
                    break;
                }
                str = list.get(i2);
                int indexOf = str.indexOf(61);
                if (indexOf >= 0) {
                    if ("TYPE".equalsIgnoreCase(str.substring(0, indexOf))) {
                        str = str.substring(indexOf + 1);
                        break;
                    }
                    i2++;
                }
            }
            arrayList.add(str);
        }
        return (String[]) arrayList.toArray(new String[collection.size()]);
    }

    @Override // com.google.zxing.client.result.ResultParser
    public AddressBookParsedResult parse(Result result) {
        String text = result.getText();
        Matcher matcher = BEGIN_VCARD.matcher(text);
        List<String> list = null;
        if (matcher.find() && matcher.start() == 0) {
            List<List<String>> matchVCardPrefixedField = matchVCardPrefixedField("FN", text, true);
            if (matchVCardPrefixedField == null) {
                matchVCardPrefixedField = matchVCardPrefixedField("N", text, true);
                formatNames(matchVCardPrefixedField);
            }
            List<List<String>> matchVCardPrefixedField2 = matchVCardPrefixedField("TEL", text, true);
            List<List<String>> matchVCardPrefixedField3 = matchVCardPrefixedField("EMAIL", text, true);
            List<String> matchSingleVCardPrefixedField = matchSingleVCardPrefixedField("NOTE", text, false);
            List<List<String>> matchVCardPrefixedField4 = matchVCardPrefixedField("ADR", text, true);
            if (matchVCardPrefixedField4 != null) {
                for (List<String> list2 : matchVCardPrefixedField4) {
                    list2.set(0, list2.get(0));
                }
            }
            List<String> matchSingleVCardPrefixedField2 = matchSingleVCardPrefixedField("ORG", text, true);
            List<String> matchSingleVCardPrefixedField3 = matchSingleVCardPrefixedField("BDAY", text, true);
            if (matchSingleVCardPrefixedField3 == null || isLikeVCardDate(matchSingleVCardPrefixedField3.get(0))) {
                list = matchSingleVCardPrefixedField3;
            }
            List<String> matchSingleVCardPrefixedField4 = matchSingleVCardPrefixedField("TITLE", text, true);
            List<String> matchSingleVCardPrefixedField5 = matchSingleVCardPrefixedField("URL", text, true);
            return new AddressBookParsedResult(toPrimaryValues(matchVCardPrefixedField), null, toPrimaryValues(matchVCardPrefixedField2), toTypes(matchVCardPrefixedField2), toPrimaryValues(matchVCardPrefixedField3), toTypes(matchVCardPrefixedField3), toPrimaryValue(matchSingleVCardPrefixedField("IMPP", text, true)), toPrimaryValue(matchSingleVCardPrefixedField), toPrimaryValues(matchVCardPrefixedField4), toTypes(matchVCardPrefixedField4), toPrimaryValue(matchSingleVCardPrefixedField2), toPrimaryValue(list), toPrimaryValue(matchSingleVCardPrefixedField4), toPrimaryValue(matchSingleVCardPrefixedField5));
        }
        return null;
    }
}
