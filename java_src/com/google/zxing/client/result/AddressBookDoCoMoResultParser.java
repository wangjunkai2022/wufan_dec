package com.google.zxing.client.result;

import com.google.zxing.Result;
/* loaded from: classes2.dex */
public final class AddressBookDoCoMoResultParser extends AbstractDoCoMoResultParser {
    private static String parseName(String str) {
        int indexOf = str.indexOf(44);
        if (indexOf >= 0) {
            return str.substring(indexOf + 1) + ' ' + str.substring(0, indexOf);
        }
        return str;
    }

    @Override // com.google.zxing.client.result.ResultParser
    public AddressBookParsedResult parse(Result result) {
        String[] matchDoCoMoPrefixedField;
        String text = result.getText();
        if (text.startsWith("MECARD:") && (matchDoCoMoPrefixedField = AbstractDoCoMoResultParser.matchDoCoMoPrefixedField("N:", text, true)) != null) {
            String parseName = parseName(matchDoCoMoPrefixedField[0]);
            String matchSingleDoCoMoPrefixedField = AbstractDoCoMoResultParser.matchSingleDoCoMoPrefixedField("SOUND:", text, true);
            String[] matchDoCoMoPrefixedField2 = AbstractDoCoMoResultParser.matchDoCoMoPrefixedField("TEL:", text, true);
            String[] matchDoCoMoPrefixedField3 = AbstractDoCoMoResultParser.matchDoCoMoPrefixedField("EMAIL:", text, true);
            String matchSingleDoCoMoPrefixedField2 = AbstractDoCoMoResultParser.matchSingleDoCoMoPrefixedField("NOTE:", text, false);
            String[] matchDoCoMoPrefixedField4 = AbstractDoCoMoResultParser.matchDoCoMoPrefixedField("ADR:", text, true);
            String matchSingleDoCoMoPrefixedField3 = AbstractDoCoMoResultParser.matchSingleDoCoMoPrefixedField("BDAY:", text, true);
            return new AddressBookParsedResult(ResultParser.maybeWrap(parseName), matchSingleDoCoMoPrefixedField, matchDoCoMoPrefixedField2, null, matchDoCoMoPrefixedField3, null, null, matchSingleDoCoMoPrefixedField2, matchDoCoMoPrefixedField4, null, AbstractDoCoMoResultParser.matchSingleDoCoMoPrefixedField("ORG:", text, true), (matchSingleDoCoMoPrefixedField3 == null || ResultParser.isStringOfDigits(matchSingleDoCoMoPrefixedField3, 8)) ? matchSingleDoCoMoPrefixedField3 : null, null, AbstractDoCoMoResultParser.matchSingleDoCoMoPrefixedField("URL:", text, true));
        }
        return null;
    }
}
