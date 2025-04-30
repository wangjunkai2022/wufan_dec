package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.List;
/* loaded from: classes2.dex */
public final class VEventResultParser extends ResultParser {
    private static String matchSingleVCardPrefixedField(CharSequence charSequence, String str, boolean z3) {
        List<String> matchSingleVCardPrefixedField = VCardResultParser.matchSingleVCardPrefixedField(charSequence, str, z3);
        if (matchSingleVCardPrefixedField == null || matchSingleVCardPrefixedField.isEmpty()) {
            return null;
        }
        return matchSingleVCardPrefixedField.get(0);
    }

    @Override // com.google.zxing.client.result.ResultParser
    public CalendarParsedResult parse(Result result) {
        double parseDouble;
        String text = result.getText();
        if (text != null && text.indexOf("BEGIN:VEVENT") >= 0) {
            String matchSingleVCardPrefixedField = matchSingleVCardPrefixedField("SUMMARY", text, true);
            String matchSingleVCardPrefixedField2 = matchSingleVCardPrefixedField("DTSTART", text, true);
            if (matchSingleVCardPrefixedField2 == null) {
                return null;
            }
            String matchSingleVCardPrefixedField3 = matchSingleVCardPrefixedField("DTEND", text, true);
            String matchSingleVCardPrefixedField4 = matchSingleVCardPrefixedField("LOCATION", text, true);
            String matchSingleVCardPrefixedField5 = matchSingleVCardPrefixedField("DESCRIPTION", text, true);
            String matchSingleVCardPrefixedField6 = matchSingleVCardPrefixedField("GEO", text, true);
            double d4 = Double.NaN;
            if (matchSingleVCardPrefixedField6 == null) {
                parseDouble = Double.NaN;
            } else {
                int indexOf = matchSingleVCardPrefixedField6.indexOf(59);
                try {
                    d4 = Double.parseDouble(matchSingleVCardPrefixedField6.substring(0, indexOf));
                    parseDouble = Double.parseDouble(matchSingleVCardPrefixedField6.substring(indexOf + 1));
                } catch (NumberFormatException | IllegalArgumentException unused) {
                    return null;
                }
            }
            return new CalendarParsedResult(matchSingleVCardPrefixedField, matchSingleVCardPrefixedField2, matchSingleVCardPrefixedField3, matchSingleVCardPrefixedField4, null, matchSingleVCardPrefixedField5, d4, parseDouble);
        }
        return null;
    }
}
