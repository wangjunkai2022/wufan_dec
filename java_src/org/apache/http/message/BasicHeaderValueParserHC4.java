package org.apache.http.message;

import java.util.ArrayList;
import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.annotation.Immutable;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;
@Immutable
/* loaded from: classes5.dex */
public class BasicHeaderValueParserHC4 implements HeaderValueParser {
    private static final char ELEM_DELIMITER = ',';
    @Deprecated
    public static final BasicHeaderValueParserHC4 DEFAULT = new BasicHeaderValueParserHC4();
    public static final BasicHeaderValueParserHC4 INSTANCE = new BasicHeaderValueParserHC4();
    private static final char PARAM_DELIMITER = ';';
    private static final char[] ALL_DELIMITERS = {PARAM_DELIMITER, ','};

    private static boolean isOneOf(char c4, char[] cArr) {
        if (cArr != null) {
            for (char c5 : cArr) {
                if (c4 == c5) {
                    return true;
                }
            }
        }
        return false;
    }

    public static HeaderElement[] parseElements(String str, HeaderValueParser headerValueParser) throws ParseException {
        Args.notNull(str, "Value");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        ParserCursor parserCursor = new ParserCursor(0, str.length());
        if (headerValueParser == null) {
            headerValueParser = INSTANCE;
        }
        return headerValueParser.parseElements(charArrayBuffer, parserCursor);
    }

    public static HeaderElement parseHeaderElement(String str, HeaderValueParser headerValueParser) throws ParseException {
        Args.notNull(str, "Value");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        ParserCursor parserCursor = new ParserCursor(0, str.length());
        if (headerValueParser == null) {
            headerValueParser = INSTANCE;
        }
        return headerValueParser.parseHeaderElement(charArrayBuffer, parserCursor);
    }

    public static NameValuePair parseNameValuePair(String str, HeaderValueParser headerValueParser) throws ParseException {
        Args.notNull(str, "Value");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        ParserCursor parserCursor = new ParserCursor(0, str.length());
        if (headerValueParser == null) {
            headerValueParser = INSTANCE;
        }
        return headerValueParser.parseNameValuePair(charArrayBuffer, parserCursor);
    }

    public static NameValuePair[] parseParameters(String str, HeaderValueParser headerValueParser) throws ParseException {
        Args.notNull(str, "Value");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        ParserCursor parserCursor = new ParserCursor(0, str.length());
        if (headerValueParser == null) {
            headerValueParser = INSTANCE;
        }
        return headerValueParser.parseParameters(charArrayBuffer, parserCursor);
    }

    protected HeaderElement createHeaderElement(String str, String str2, NameValuePair[] nameValuePairArr) {
        return new BasicHeaderElement(str, str2, nameValuePairArr);
    }

    protected NameValuePair createNameValuePair(String str, String str2) {
        return new BasicNameValuePair(str, str2);
    }

    public HeaderElement[] parseElements(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        Args.notNull(charArrayBuffer, "Char array buffer");
        Args.notNull(parserCursor, "Parser cursor");
        ArrayList arrayList = new ArrayList();
        while (!parserCursor.atEnd()) {
            HeaderElement parseHeaderElement = parseHeaderElement(charArrayBuffer, parserCursor);
            if (parseHeaderElement.getName().length() != 0 || parseHeaderElement.getValue() != null) {
                arrayList.add(parseHeaderElement);
            }
        }
        return (HeaderElement[]) arrayList.toArray(new HeaderElement[arrayList.size()]);
    }

    public HeaderElement parseHeaderElement(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        Args.notNull(charArrayBuffer, "Char array buffer");
        Args.notNull(parserCursor, "Parser cursor");
        NameValuePair parseNameValuePair = parseNameValuePair(charArrayBuffer, parserCursor);
        return createHeaderElement(parseNameValuePair.getName(), parseNameValuePair.getValue(), (parserCursor.atEnd() || charArrayBuffer.charAt(parserCursor.getPos() + (-1)) == ',') ? null : parseParameters(charArrayBuffer, parserCursor));
    }

    public NameValuePair parseNameValuePair(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        return parseNameValuePair(charArrayBuffer, parserCursor, ALL_DELIMITERS);
    }

    public NameValuePair[] parseParameters(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        Args.notNull(charArrayBuffer, "Char array buffer");
        Args.notNull(parserCursor, "Parser cursor");
        int pos = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        while (pos < upperBound && HTTP.isWhitespace(charArrayBuffer.charAt(pos))) {
            pos++;
        }
        parserCursor.updatePos(pos);
        if (parserCursor.atEnd()) {
            return new NameValuePair[0];
        }
        ArrayList arrayList = new ArrayList();
        while (!parserCursor.atEnd()) {
            arrayList.add(parseNameValuePair(charArrayBuffer, parserCursor));
            if (charArrayBuffer.charAt(parserCursor.getPos() - 1) == ',') {
                break;
            }
        }
        return (NameValuePair[]) arrayList.toArray(new NameValuePair[arrayList.size()]);
    }

    public NameValuePair parseNameValuePair(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor, char[] cArr) {
        boolean z3;
        boolean z4;
        String substringTrimmed;
        char charAt;
        Args.notNull(charArrayBuffer, "Char array buffer");
        Args.notNull(parserCursor, "Parser cursor");
        int pos = parserCursor.getPos();
        int pos2 = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        while (true) {
            z3 = true;
            if (pos >= upperBound || (charAt = charArrayBuffer.charAt(pos)) == '=') {
                break;
            } else if (isOneOf(charAt, cArr)) {
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
            return createNameValuePair(substringTrimmed, null);
        }
        int i2 = pos;
        boolean z5 = false;
        boolean z6 = false;
        while (true) {
            if (i2 >= upperBound) {
                z3 = z4;
                break;
            }
            char charAt2 = charArrayBuffer.charAt(i2);
            if (charAt2 == '\"' && !z5) {
                z6 = !z6;
            }
            if (!z6 && !z5 && isOneOf(charAt2, cArr)) {
                break;
            }
            z5 = !z5 && z6 && charAt2 == '\\';
            i2++;
        }
        while (pos < i2 && HTTP.isWhitespace(charArrayBuffer.charAt(pos))) {
            pos++;
        }
        int i4 = i2;
        while (i4 > pos && HTTP.isWhitespace(charArrayBuffer.charAt(i4 - 1))) {
            i4--;
        }
        if (i4 - pos >= 2 && charArrayBuffer.charAt(pos) == '\"' && charArrayBuffer.charAt(i4 - 1) == '\"') {
            pos++;
            i4--;
        }
        String substring = charArrayBuffer.substring(pos, i4);
        if (z3) {
            i2++;
        }
        parserCursor.updatePos(i2);
        return createNameValuePair(substringTrimmed, substring);
    }
}
