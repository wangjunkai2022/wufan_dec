package com.google.zxing.client.result;

import androidx.core.net.MailTo;
import com.google.zxing.Result;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public final class EmailDoCoMoResultParser extends AbstractDoCoMoResultParser {
    private static final Pattern ATEXT_ALPHANUMERIC = Pattern.compile("[a-zA-Z0-9@.!#$%&'*+\\-/=?^_`{|}~]+");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isBasicallyValidEmailAddress(String str) {
        return str != null && ATEXT_ALPHANUMERIC.matcher(str).matches() && str.indexOf(64) >= 0;
    }

    @Override // com.google.zxing.client.result.ResultParser
    public EmailAddressParsedResult parse(Result result) {
        String[] matchDoCoMoPrefixedField;
        String text = result.getText();
        if (text.startsWith("MATMSG:") && (matchDoCoMoPrefixedField = AbstractDoCoMoResultParser.matchDoCoMoPrefixedField("TO:", text, true)) != null) {
            String str = matchDoCoMoPrefixedField[0];
            if (isBasicallyValidEmailAddress(str)) {
                String matchSingleDoCoMoPrefixedField = AbstractDoCoMoResultParser.matchSingleDoCoMoPrefixedField("SUB:", text, false);
                String matchSingleDoCoMoPrefixedField2 = AbstractDoCoMoResultParser.matchSingleDoCoMoPrefixedField("BODY:", text, false);
                return new EmailAddressParsedResult(str, matchSingleDoCoMoPrefixedField, matchSingleDoCoMoPrefixedField2, MailTo.MAILTO_SCHEME + str);
            }
            return null;
        }
        return null;
    }
}
