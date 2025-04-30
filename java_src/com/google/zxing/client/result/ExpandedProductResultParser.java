package com.google.zxing.client.result;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.join.mgps.Util.u;
import java.util.HashMap;
/* loaded from: classes2.dex */
public final class ExpandedProductResultParser extends ResultParser {
    private static String findAIvalue(int i2, String str) {
        StringBuilder sb = new StringBuilder();
        if (str.charAt(i2) != '(') {
            return null;
        }
        String substring = str.substring(i2 + 1);
        for (int i4 = 0; i4 < substring.length(); i4++) {
            char charAt = substring.charAt(i4);
            if (charAt == ')') {
                return sb.toString();
            }
            if (charAt < '0' || charAt > '9') {
                return null;
            }
            sb.append(charAt);
        }
        return sb.toString();
    }

    private static String findValue(int i2, String str) {
        StringBuilder sb = new StringBuilder();
        String substring = str.substring(i2);
        for (int i4 = 0; i4 < substring.length(); i4++) {
            char charAt = substring.charAt(i4);
            if (charAt == '(') {
                if (findAIvalue(i4, substring) != null) {
                    break;
                }
                sb.append('(');
            } else {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    @Override // com.google.zxing.client.result.ResultParser
    public ExpandedProductParsedResult parse(Result result) {
        String text;
        int i2;
        if (result.getBarcodeFormat() == BarcodeFormat.RSS_EXPANDED && (text = result.getText()) != null) {
            HashMap hashMap = new HashMap();
            String str = null;
            String str2 = null;
            String str3 = null;
            String str4 = null;
            String str5 = null;
            String str6 = null;
            String str7 = null;
            String str8 = null;
            String str9 = null;
            String str10 = null;
            String str11 = null;
            String str12 = null;
            String str13 = null;
            int i4 = 0;
            while (i4 < text.length()) {
                String findAIvalue = findAIvalue(i4, text);
                if (findAIvalue == null) {
                    return null;
                }
                int length = i4 + findAIvalue.length() + 2;
                String str14 = str12;
                String findValue = findValue(length, text);
                int length2 = length + findValue.length();
                String str15 = text;
                if ("00".equals(findAIvalue)) {
                    i2 = length2;
                    str2 = findValue;
                } else if ("01".equals(findAIvalue)) {
                    i2 = length2;
                    str = findValue;
                } else if (u.f27861t.equals(findAIvalue)) {
                    i2 = length2;
                    str3 = findValue;
                } else if ("11".equals(findAIvalue)) {
                    i2 = length2;
                    str4 = findValue;
                } else if ("13".equals(findAIvalue)) {
                    i2 = length2;
                    str5 = findValue;
                } else if ("15".equals(findAIvalue)) {
                    i2 = length2;
                    str6 = findValue;
                } else if ("17".equals(findAIvalue)) {
                    i2 = length2;
                    str7 = findValue;
                } else {
                    i2 = length2;
                    if (!"3100".equals(findAIvalue) && !"3101".equals(findAIvalue) && !"3102".equals(findAIvalue) && !"3103".equals(findAIvalue) && !"3104".equals(findAIvalue) && !"3105".equals(findAIvalue) && !"3106".equals(findAIvalue) && !"3107".equals(findAIvalue) && !"3108".equals(findAIvalue) && !"3109".equals(findAIvalue)) {
                        if (!"3200".equals(findAIvalue) && !"3201".equals(findAIvalue) && !"3202".equals(findAIvalue) && !"3203".equals(findAIvalue) && !"3204".equals(findAIvalue) && !"3205".equals(findAIvalue) && !"3206".equals(findAIvalue) && !"3207".equals(findAIvalue) && !"3208".equals(findAIvalue) && !"3209".equals(findAIvalue)) {
                            if (!"3920".equals(findAIvalue) && !"3921".equals(findAIvalue) && !"3922".equals(findAIvalue) && !"3923".equals(findAIvalue)) {
                                if (!"3930".equals(findAIvalue) && !"3931".equals(findAIvalue) && !"3932".equals(findAIvalue) && !"3933".equals(findAIvalue)) {
                                    hashMap.put(findAIvalue, findValue);
                                } else if (findValue.length() < 4) {
                                    return null;
                                } else {
                                    str11 = findValue.substring(3);
                                    str13 = findValue.substring(0, 3);
                                    str12 = findAIvalue.substring(3);
                                }
                            } else {
                                str11 = findValue;
                                str12 = findAIvalue.substring(3);
                            }
                            text = str15;
                            i4 = i2;
                        } else {
                            str10 = findAIvalue.substring(3);
                            str9 = ExpandedProductParsedResult.POUND;
                        }
                    } else {
                        str10 = findAIvalue.substring(3);
                        str9 = ExpandedProductParsedResult.KILOGRAM;
                    }
                    str8 = findValue;
                    str12 = str14;
                    text = str15;
                    i4 = i2;
                }
                str12 = str14;
                text = str15;
                i4 = i2;
            }
            return new ExpandedProductParsedResult(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, str13, hashMap);
        }
        return null;
    }
}
