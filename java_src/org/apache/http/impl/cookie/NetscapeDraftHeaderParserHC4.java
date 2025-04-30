package org.apache.http.impl.cookie;

import java.util.ArrayList;
import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.annotation.Immutable;
import org.apache.http.message.BasicHeaderElement;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.ParserCursor;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;
@Immutable
/* loaded from: classes5.dex */
public class NetscapeDraftHeaderParserHC4 {
    public static final NetscapeDraftHeaderParserHC4 DEFAULT = new NetscapeDraftHeaderParserHC4();

    private NameValuePair parseNameValuePair(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        boolean z3;
        boolean z4;
        String substringTrimmed;
        char charAt;
        int pos = parserCursor.getPos();
        int pos2 = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        while (true) {
            z3 = true;
            if (pos >= upperBound || (charAt = charArrayBuffer.charAt(pos)) == '=') {
                break;
            } else if (charAt == ';') {
                z4 = true;
                break;
            } else {
                pos++;
            }
        }
        z4 = false;
        if (pos == upperBound) {
            substringTrimmed = charArrayBuffer.substringTrimmed(pos2, upperBound);
            z4 = true;
        } else {
            substringTrimmed = charArrayBuffer.substringTrimmed(pos2, pos);
            pos++;
        }
        if (z4) {
            parserCursor.updatePos(pos);
            return new BasicNameValuePair(substringTrimmed, (String) null);
        }
        int i2 = pos;
        while (true) {
            if (i2 >= upperBound) {
                z3 = z4;
                break;
            } else if (charArrayBuffer.charAt(i2) == ';') {
                break;
            } else {
                i2++;
            }
        }
        while (pos < i2 && HTTP.isWhitespace(charArrayBuffer.charAt(pos))) {
            pos++;
        }
        int i4 = i2;
        while (i4 > pos && HTTP.isWhitespace(charArrayBuffer.charAt(i4 - 1))) {
            i4--;
        }
        String substring = charArrayBuffer.substring(pos, i4);
        if (z3) {
            i2++;
        }
        parserCursor.updatePos(i2);
        return new BasicNameValuePair(substringTrimmed, substring);
    }

    public HeaderElement parseHeader(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) throws ParseException {
        Args.notNull(charArrayBuffer, "Char array buffer");
        Args.notNull(parserCursor, "Parser cursor");
        NameValuePair parseNameValuePair = parseNameValuePair(charArrayBuffer, parserCursor);
        ArrayList arrayList = new ArrayList();
        while (!parserCursor.atEnd()) {
            arrayList.add(parseNameValuePair(charArrayBuffer, parserCursor));
        }
        return new BasicHeaderElement(parseNameValuePair.getName(), parseNameValuePair.getValue(), (NameValuePair[]) arrayList.toArray(new NameValuePair[arrayList.size()]));
    }
}
