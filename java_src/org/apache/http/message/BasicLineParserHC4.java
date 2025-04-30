package org.apache.http.message;

import org.apache.http.Header;
import org.apache.http.HttpVersion;
import org.apache.http.ParseException;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.StatusLine;
import org.apache.http.annotation.Immutable;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;
@Immutable
/* loaded from: classes5.dex */
public class BasicLineParserHC4 implements LineParser {
    @Deprecated
    public static final BasicLineParserHC4 DEFAULT = new BasicLineParserHC4();
    public static final BasicLineParserHC4 INSTANCE = new BasicLineParserHC4();
    protected final ProtocolVersion protocol;

    public BasicLineParserHC4(ProtocolVersion protocolVersion) {
        this.protocol = protocolVersion == null ? HttpVersion.HTTP_1_1 : protocolVersion;
    }

    public static Header parseHeader(String str, LineParser lineParser) throws ParseException {
        Args.notNull(str, "Value");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        if (lineParser == null) {
            lineParser = INSTANCE;
        }
        return lineParser.parseHeader(charArrayBuffer);
    }

    public static ProtocolVersion parseProtocolVersion(String str, LineParser lineParser) throws ParseException {
        Args.notNull(str, "Value");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        ParserCursor parserCursor = new ParserCursor(0, str.length());
        if (lineParser == null) {
            lineParser = INSTANCE;
        }
        return lineParser.parseProtocolVersion(charArrayBuffer, parserCursor);
    }

    public static RequestLine parseRequestLine(String str, LineParser lineParser) throws ParseException {
        Args.notNull(str, "Value");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        ParserCursor parserCursor = new ParserCursor(0, str.length());
        if (lineParser == null) {
            lineParser = INSTANCE;
        }
        return lineParser.parseRequestLine(charArrayBuffer, parserCursor);
    }

    public static StatusLine parseStatusLine(String str, LineParser lineParser) throws ParseException {
        Args.notNull(str, "Value");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        ParserCursor parserCursor = new ParserCursor(0, str.length());
        if (lineParser == null) {
            lineParser = INSTANCE;
        }
        return lineParser.parseStatusLine(charArrayBuffer, parserCursor);
    }

    protected ProtocolVersion createProtocolVersion(int i2, int i4) {
        return this.protocol.forVersion(i2, i4);
    }

    protected RequestLine createRequestLine(String str, String str2, ProtocolVersion protocolVersion) {
        return new BasicRequestLine(str, str2, protocolVersion);
    }

    protected StatusLine createStatusLine(ProtocolVersion protocolVersion, int i2, String str) {
        return new BasicStatusLine(protocolVersion, i2, str);
    }

    public boolean hasProtocolVersion(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        Args.notNull(charArrayBuffer, "Char array buffer");
        Args.notNull(parserCursor, "Parser cursor");
        int pos = parserCursor.getPos();
        String protocol = this.protocol.getProtocol();
        int length = protocol.length();
        if (charArrayBuffer.length() < length + 4) {
            return false;
        }
        if (pos < 0) {
            pos = (charArrayBuffer.length() - 4) - length;
        } else if (pos == 0) {
            while (pos < charArrayBuffer.length() && HTTP.isWhitespace(charArrayBuffer.charAt(pos))) {
                pos++;
            }
        }
        int i2 = pos + length;
        if (i2 + 4 > charArrayBuffer.length()) {
            return false;
        }
        boolean z3 = true;
        for (int i4 = 0; z3 && i4 < length; i4++) {
            z3 = charArrayBuffer.charAt(pos + i4) == protocol.charAt(i4);
        }
        if (z3) {
            return charArrayBuffer.charAt(i2) == '/';
        }
        return z3;
    }

    protected void skipWhitespace(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        int pos = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        while (pos < upperBound && HTTP.isWhitespace(charArrayBuffer.charAt(pos))) {
            pos++;
        }
        parserCursor.updatePos(pos);
    }

    public BasicLineParserHC4() {
        this(null);
    }

    public Header parseHeader(CharArrayBuffer charArrayBuffer) throws ParseException {
        return new BufferedHeader(charArrayBuffer);
    }

    public ProtocolVersion parseProtocolVersion(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) throws ParseException {
        Args.notNull(charArrayBuffer, "Char array buffer");
        Args.notNull(parserCursor, "Parser cursor");
        String protocol = this.protocol.getProtocol();
        int length = protocol.length();
        int pos = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        skipWhitespace(charArrayBuffer, parserCursor);
        int pos2 = parserCursor.getPos();
        int i2 = pos2 + length;
        if (i2 + 4 > upperBound) {
            throw new ParseException("Not a valid protocol version: " + charArrayBuffer.substring(pos, upperBound));
        }
        boolean z3 = true;
        for (int i4 = 0; z3 && i4 < length; i4++) {
            z3 = charArrayBuffer.charAt(pos2 + i4) == protocol.charAt(i4);
        }
        if (z3) {
            z3 = charArrayBuffer.charAt(i2) == '/';
        }
        if (z3) {
            int i5 = pos2 + length + 1;
            int indexOf = charArrayBuffer.indexOf(46, i5, upperBound);
            if (indexOf != -1) {
                try {
                    int parseInt = Integer.parseInt(charArrayBuffer.substringTrimmed(i5, indexOf));
                    int i6 = indexOf + 1;
                    int indexOf2 = charArrayBuffer.indexOf(32, i6, upperBound);
                    if (indexOf2 == -1) {
                        indexOf2 = upperBound;
                    }
                    try {
                        int parseInt2 = Integer.parseInt(charArrayBuffer.substringTrimmed(i6, indexOf2));
                        parserCursor.updatePos(indexOf2);
                        return createProtocolVersion(parseInt, parseInt2);
                    } catch (NumberFormatException unused) {
                        throw new ParseException("Invalid protocol minor version number: " + charArrayBuffer.substring(pos, upperBound));
                    }
                } catch (NumberFormatException unused2) {
                    throw new ParseException("Invalid protocol major version number: " + charArrayBuffer.substring(pos, upperBound));
                }
            }
            throw new ParseException("Invalid protocol version number: " + charArrayBuffer.substring(pos, upperBound));
        }
        throw new ParseException("Not a valid protocol version: " + charArrayBuffer.substring(pos, upperBound));
    }

    public RequestLine parseRequestLine(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) throws ParseException {
        Args.notNull(charArrayBuffer, "Char array buffer");
        Args.notNull(parserCursor, "Parser cursor");
        int pos = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        try {
            skipWhitespace(charArrayBuffer, parserCursor);
            int pos2 = parserCursor.getPos();
            int indexOf = charArrayBuffer.indexOf(32, pos2, upperBound);
            if (indexOf >= 0) {
                String substringTrimmed = charArrayBuffer.substringTrimmed(pos2, indexOf);
                parserCursor.updatePos(indexOf);
                skipWhitespace(charArrayBuffer, parserCursor);
                int pos3 = parserCursor.getPos();
                int indexOf2 = charArrayBuffer.indexOf(32, pos3, upperBound);
                if (indexOf2 >= 0) {
                    String substringTrimmed2 = charArrayBuffer.substringTrimmed(pos3, indexOf2);
                    parserCursor.updatePos(indexOf2);
                    ProtocolVersion parseProtocolVersion = parseProtocolVersion(charArrayBuffer, parserCursor);
                    skipWhitespace(charArrayBuffer, parserCursor);
                    if (parserCursor.atEnd()) {
                        return createRequestLine(substringTrimmed, substringTrimmed2, parseProtocolVersion);
                    }
                    throw new ParseException("Invalid request line: " + charArrayBuffer.substring(pos, upperBound));
                }
                throw new ParseException("Invalid request line: " + charArrayBuffer.substring(pos, upperBound));
            }
            throw new ParseException("Invalid request line: " + charArrayBuffer.substring(pos, upperBound));
        } catch (IndexOutOfBoundsException unused) {
            throw new ParseException("Invalid request line: " + charArrayBuffer.substring(pos, upperBound));
        }
    }

    public StatusLine parseStatusLine(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) throws ParseException {
        Args.notNull(charArrayBuffer, "Char array buffer");
        Args.notNull(parserCursor, "Parser cursor");
        int pos = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        try {
            ProtocolVersion parseProtocolVersion = parseProtocolVersion(charArrayBuffer, parserCursor);
            skipWhitespace(charArrayBuffer, parserCursor);
            int pos2 = parserCursor.getPos();
            int indexOf = charArrayBuffer.indexOf(32, pos2, upperBound);
            if (indexOf < 0) {
                indexOf = upperBound;
            }
            String substringTrimmed = charArrayBuffer.substringTrimmed(pos2, indexOf);
            for (int i2 = 0; i2 < substringTrimmed.length(); i2++) {
                if (!Character.isDigit(substringTrimmed.charAt(i2))) {
                    throw new ParseException("Status line contains invalid status code: " + charArrayBuffer.substring(pos, upperBound));
                }
            }
            try {
                return createStatusLine(parseProtocolVersion, Integer.parseInt(substringTrimmed), indexOf < upperBound ? charArrayBuffer.substringTrimmed(indexOf, upperBound) : "");
            } catch (NumberFormatException unused) {
                throw new ParseException("Status line contains invalid status code: " + charArrayBuffer.substring(pos, upperBound));
            }
        } catch (IndexOutOfBoundsException unused2) {
            throw new ParseException("Invalid status line: " + charArrayBuffer.substring(pos, upperBound));
        }
    }
}
