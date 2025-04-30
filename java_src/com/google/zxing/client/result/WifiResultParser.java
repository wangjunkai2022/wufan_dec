package com.google.zxing.client.result;

import com.google.zxing.Result;
/* loaded from: classes2.dex */
public final class WifiResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public WifiParsedResult parse(Result result) {
        String matchSinglePrefixedField;
        String text = result.getText();
        if (!text.startsWith("WIFI:") || (matchSinglePrefixedField = ResultParser.matchSinglePrefixedField("S:", text, ';', false)) == null || matchSinglePrefixedField.length() == 0) {
            return null;
        }
        String matchSinglePrefixedField2 = ResultParser.matchSinglePrefixedField("P:", text, ';', false);
        String matchSinglePrefixedField3 = ResultParser.matchSinglePrefixedField("T:", text, ';', false);
        if (matchSinglePrefixedField3 == null) {
            matchSinglePrefixedField3 = "nopass";
        }
        return new WifiParsedResult(matchSinglePrefixedField3, matchSinglePrefixedField, matchSinglePrefixedField2);
    }
}
