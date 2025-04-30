package org.apache.http.conn.ssl;

import java.util.BitSet;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.CharArrayBuffer;
/* loaded from: classes5.dex */
class TokenParser {
    public static final char CR = '\r';
    public static final char DQUOTE = '\"';
    public static final char ESCAPE = '\\';
    public static final char HT = '\t';
    public static final TokenParser INSTANCE = new TokenParser();
    public static final char LF = '\n';
    public static final char SP = ' ';

    public static BitSet INIT_BITSET(int... iArr) {
        BitSet bitSet = new BitSet();
        for (int i2 : iArr) {
            bitSet.set(i2);
        }
        return bitSet;
    }

    public static boolean isWhitespace(char c4) {
        return c4 == ' ' || c4 == '\t' || c4 == '\r' || c4 == '\n';
    }

    public void copyContent(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor, BitSet bitSet, StringBuilder sb) {
        int pos = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        for (int pos2 = parserCursor.getPos(); pos2 < upperBound; pos2++) {
            char charAt = charArrayBuffer.charAt(pos2);
            if ((bitSet != null && bitSet.get(charAt)) || isWhitespace(charAt)) {
                break;
            }
            pos++;
            sb.append(charAt);
        }
        parserCursor.updatePos(pos);
    }

    public void copyQuotedContent(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor, StringBuilder sb) {
        if (parserCursor.atEnd()) {
            return;
        }
        int pos = parserCursor.getPos();
        int pos2 = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        if (charArrayBuffer.charAt(pos) != '\"') {
            return;
        }
        int i2 = pos + 1;
        int i4 = pos2 + 1;
        boolean z3 = false;
        while (true) {
            if (i4 >= upperBound) {
                break;
            }
            char charAt = charArrayBuffer.charAt(i4);
            if (z3) {
                if (charAt != '\"' && charAt != '\\') {
                    sb.append(ESCAPE);
                }
                sb.append(charAt);
                z3 = false;
            } else if (charAt == '\"') {
                i2++;
                break;
            } else if (charAt == '\\') {
                z3 = true;
            } else if (charAt != '\r' && charAt != '\n') {
                sb.append(charAt);
            }
            i4++;
            i2++;
        }
        parserCursor.updatePos(i2);
    }

    public void copyUnquotedContent(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor, BitSet bitSet, StringBuilder sb) {
        int pos = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        for (int pos2 = parserCursor.getPos(); pos2 < upperBound; pos2++) {
            char charAt = charArrayBuffer.charAt(pos2);
            if ((bitSet != null && bitSet.get(charAt)) || isWhitespace(charAt) || charAt == '\"') {
                break;
            }
            pos++;
            sb.append(charAt);
        }
        parserCursor.updatePos(pos);
    }

    public String parseToken(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor, BitSet bitSet) {
        StringBuilder sb = new StringBuilder();
        loop0: while (true) {
            boolean z3 = false;
            while (!parserCursor.atEnd()) {
                char charAt = charArrayBuffer.charAt(parserCursor.getPos());
                if (bitSet != null && bitSet.get(charAt)) {
                    break loop0;
                } else if (isWhitespace(charAt)) {
                    skipWhiteSpace(charArrayBuffer, parserCursor);
                    z3 = true;
                } else {
                    if (z3 && sb.length() > 0) {
                        sb.append(' ');
                    }
                    copyContent(charArrayBuffer, parserCursor, bitSet, sb);
                }
            }
            break loop0;
        }
        return sb.toString();
    }

    public String parseValue(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor, BitSet bitSet) {
        StringBuilder sb = new StringBuilder();
        loop0: while (true) {
            boolean z3 = false;
            while (!parserCursor.atEnd()) {
                char charAt = charArrayBuffer.charAt(parserCursor.getPos());
                if (bitSet != null && bitSet.get(charAt)) {
                    break loop0;
                } else if (isWhitespace(charAt)) {
                    skipWhiteSpace(charArrayBuffer, parserCursor);
                    z3 = true;
                } else if (charAt == '\"') {
                    if (z3 && sb.length() > 0) {
                        sb.append(' ');
                    }
                    copyQuotedContent(charArrayBuffer, parserCursor, sb);
                } else {
                    if (z3 && sb.length() > 0) {
                        sb.append(' ');
                    }
                    copyUnquotedContent(charArrayBuffer, parserCursor, bitSet, sb);
                }
            }
            break loop0;
        }
        return sb.toString();
    }

    public void skipWhiteSpace(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        int pos = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        for (int pos2 = parserCursor.getPos(); pos2 < upperBound && isWhitespace(charArrayBuffer.charAt(pos2)); pos2++) {
            pos++;
        }
        parserCursor.updatePos(pos);
    }
}
