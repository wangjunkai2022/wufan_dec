package com.google.zxing.client.result;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.net.MailTo;
import com.google.zxing.Result;
import java.util.Map;
/* loaded from: classes2.dex */
public final class EmailAddressResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public EmailAddressParsedResult parse(Result result) {
        String str;
        String text = result.getText();
        String str2 = null;
        if (!text.startsWith(MailTo.MAILTO_SCHEME) && !text.startsWith("MAILTO:")) {
            if (EmailDoCoMoResultParser.isBasicallyValidEmailAddress(text)) {
                return new EmailAddressParsedResult(text, null, null, MailTo.MAILTO_SCHEME + text);
            }
            return null;
        }
        String substring = text.substring(7);
        int indexOf = substring.indexOf(63);
        if (indexOf >= 0) {
            substring = substring.substring(0, indexOf);
        }
        Map<String, String> parseNameValuePairs = ResultParser.parseNameValuePairs(text);
        if (parseNameValuePairs != null) {
            if (substring.length() == 0) {
                substring = parseNameValuePairs.get(TypedValues.TransitionType.S_TO);
            }
            str2 = parseNameValuePairs.get("subject");
            str = parseNameValuePairs.get("body");
        } else {
            str = null;
        }
        return new EmailAddressParsedResult(substring, str2, str, text);
    }
}
