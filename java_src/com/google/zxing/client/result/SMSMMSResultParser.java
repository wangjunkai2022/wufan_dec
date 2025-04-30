package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
/* loaded from: classes2.dex */
public final class SMSMMSResultParser extends ResultParser {
    private static void addNumberVia(Collection<String> collection, Collection<String> collection2, String str) {
        int indexOf = str.indexOf(59);
        if (indexOf < 0) {
            collection.add(str);
            collection2.add(null);
            return;
        }
        collection.add(str.substring(0, indexOf));
        String substring = str.substring(indexOf + 1);
        collection2.add(substring.startsWith("via=") ? substring.substring(4) : null);
    }

    @Override // com.google.zxing.client.result.ResultParser
    public SMSParsedResult parse(Result result) {
        String str;
        String substring;
        String text = result.getText();
        String str2 = null;
        if (!text.startsWith("sms:") && !text.startsWith("SMS:") && !text.startsWith("mms:") && !text.startsWith("MMS:")) {
            return null;
        }
        Map<String, String> parseNameValuePairs = ResultParser.parseNameValuePairs(text);
        boolean z3 = false;
        if (parseNameValuePairs == null || parseNameValuePairs.isEmpty()) {
            str = null;
        } else {
            str2 = parseNameValuePairs.get("subject");
            str = parseNameValuePairs.get("body");
            z3 = true;
        }
        int indexOf = text.indexOf(63, 4);
        if (indexOf >= 0 && z3) {
            substring = text.substring(4, indexOf);
        } else {
            substring = text.substring(4);
        }
        int i2 = -1;
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        while (true) {
            int i4 = i2 + 1;
            int indexOf2 = substring.indexOf(44, i4);
            if (indexOf2 > i2) {
                addNumberVia(arrayList, arrayList2, substring.substring(i4, indexOf2));
                i2 = indexOf2;
            } else {
                addNumberVia(arrayList, arrayList2, substring.substring(i4));
                return new SMSParsedResult((String[]) arrayList.toArray(new String[arrayList.size()]), (String[]) arrayList2.toArray(new String[arrayList2.size()]), str2, str);
            }
        }
    }
}
