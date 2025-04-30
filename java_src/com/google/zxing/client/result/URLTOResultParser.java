package com.google.zxing.client.result;

import com.google.zxing.Result;
/* loaded from: classes2.dex */
public final class URLTOResultParser extends ResultParser {
    @Override // com.google.zxing.client.result.ResultParser
    public URIParsedResult parse(Result result) {
        int indexOf;
        String text = result.getText();
        if ((text.startsWith("urlto:") || text.startsWith("URLTO:")) && (indexOf = text.indexOf(58, 6)) >= 0) {
            return new URIParsedResult(text.substring(indexOf + 1), indexOf > 6 ? text.substring(6, indexOf) : null);
        }
        return null;
    }
}
