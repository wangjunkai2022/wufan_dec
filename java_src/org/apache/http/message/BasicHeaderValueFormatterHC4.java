package org.apache.http.message;

import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.Immutable;
import org.apache.http.conn.ssl.TokenParser;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;
@Immutable
/* loaded from: classes5.dex */
public class BasicHeaderValueFormatterHC4 implements HeaderValueFormatter {
    @Deprecated
    public static final BasicHeaderValueFormatterHC4 DEFAULT = new BasicHeaderValueFormatterHC4();
    public static final BasicHeaderValueFormatterHC4 INSTANCE = new BasicHeaderValueFormatterHC4();
    public static final String SEPARATORS = " ;,:@()<>\\\"/[]?={}\t";
    public static final String UNSAFE_CHARS = "\"\\";

    public static String formatElements(HeaderElement[] headerElementArr, boolean z3, HeaderValueFormatter headerValueFormatter) {
        if (headerValueFormatter == null) {
            headerValueFormatter = INSTANCE;
        }
        return headerValueFormatter.formatElements((CharArrayBuffer) null, headerElementArr, z3).toString();
    }

    public static String formatHeaderElement(HeaderElement headerElement, boolean z3, HeaderValueFormatter headerValueFormatter) {
        if (headerValueFormatter == null) {
            headerValueFormatter = INSTANCE;
        }
        return headerValueFormatter.formatHeaderElement((CharArrayBuffer) null, headerElement, z3).toString();
    }

    public static String formatNameValuePair(NameValuePair nameValuePair, boolean z3, HeaderValueFormatter headerValueFormatter) {
        if (headerValueFormatter == null) {
            headerValueFormatter = INSTANCE;
        }
        return headerValueFormatter.formatNameValuePair((CharArrayBuffer) null, nameValuePair, z3).toString();
    }

    public static String formatParameters(NameValuePair[] nameValuePairArr, boolean z3, HeaderValueFormatter headerValueFormatter) {
        if (headerValueFormatter == null) {
            headerValueFormatter = INSTANCE;
        }
        return headerValueFormatter.formatParameters((CharArrayBuffer) null, nameValuePairArr, z3).toString();
    }

    protected void doFormatValue(CharArrayBuffer charArrayBuffer, String str, boolean z3) {
        if (!z3) {
            for (int i2 = 0; i2 < str.length() && !z3; i2++) {
                z3 = isSeparator(str.charAt(i2));
            }
        }
        if (z3) {
            charArrayBuffer.append('\"');
        }
        for (int i4 = 0; i4 < str.length(); i4++) {
            char charAt = str.charAt(i4);
            if (isUnsafe(charAt)) {
                charArrayBuffer.append((char) TokenParser.ESCAPE);
            }
            charArrayBuffer.append(charAt);
        }
        if (z3) {
            charArrayBuffer.append('\"');
        }
    }

    protected int estimateElementsLen(HeaderElement[] headerElementArr) {
        if (headerElementArr == null || headerElementArr.length < 1) {
            return 0;
        }
        int length = (headerElementArr.length - 1) * 2;
        for (HeaderElement headerElement : headerElementArr) {
            length += estimateHeaderElementLen(headerElement);
        }
        return length;
    }

    protected int estimateHeaderElementLen(HeaderElement headerElement) {
        if (headerElement == null) {
            return 0;
        }
        int length = headerElement.getName().length();
        String value = headerElement.getValue();
        if (value != null) {
            length += value.length() + 3;
        }
        int parameterCount = headerElement.getParameterCount();
        if (parameterCount > 0) {
            for (int i2 = 0; i2 < parameterCount; i2++) {
                length += estimateNameValuePairLen(headerElement.getParameter(i2)) + 2;
            }
        }
        return length;
    }

    protected int estimateNameValuePairLen(NameValuePair nameValuePair) {
        if (nameValuePair == null) {
            return 0;
        }
        int length = nameValuePair.getName().length();
        String value = nameValuePair.getValue();
        return value != null ? length + value.length() + 3 : length;
    }

    protected int estimateParametersLen(NameValuePair[] nameValuePairArr) {
        if (nameValuePairArr == null || nameValuePairArr.length < 1) {
            return 0;
        }
        int length = (nameValuePairArr.length - 1) * 2;
        for (NameValuePair nameValuePair : nameValuePairArr) {
            length += estimateNameValuePairLen(nameValuePair);
        }
        return length;
    }

    protected boolean isSeparator(char c4) {
        return SEPARATORS.indexOf(c4) >= 0;
    }

    protected boolean isUnsafe(char c4) {
        return UNSAFE_CHARS.indexOf(c4) >= 0;
    }

    public CharArrayBuffer formatElements(CharArrayBuffer charArrayBuffer, HeaderElement[] headerElementArr, boolean z3) {
        Args.notNull(headerElementArr, "Header element array");
        int estimateElementsLen = estimateElementsLen(headerElementArr);
        if (charArrayBuffer == null) {
            charArrayBuffer = new CharArrayBuffer(estimateElementsLen);
        } else {
            charArrayBuffer.ensureCapacity(estimateElementsLen);
        }
        for (int i2 = 0; i2 < headerElementArr.length; i2++) {
            if (i2 > 0) {
                charArrayBuffer.append(", ");
            }
            formatHeaderElement(charArrayBuffer, headerElementArr[i2], z3);
        }
        return charArrayBuffer;
    }

    public CharArrayBuffer formatHeaderElement(CharArrayBuffer charArrayBuffer, HeaderElement headerElement, boolean z3) {
        Args.notNull(headerElement, "Header element");
        int estimateHeaderElementLen = estimateHeaderElementLen(headerElement);
        if (charArrayBuffer == null) {
            charArrayBuffer = new CharArrayBuffer(estimateHeaderElementLen);
        } else {
            charArrayBuffer.ensureCapacity(estimateHeaderElementLen);
        }
        charArrayBuffer.append(headerElement.getName());
        String value = headerElement.getValue();
        if (value != null) {
            charArrayBuffer.append('=');
            doFormatValue(charArrayBuffer, value, z3);
        }
        int parameterCount = headerElement.getParameterCount();
        if (parameterCount > 0) {
            for (int i2 = 0; i2 < parameterCount; i2++) {
                charArrayBuffer.append("; ");
                formatNameValuePair(charArrayBuffer, headerElement.getParameter(i2), z3);
            }
        }
        return charArrayBuffer;
    }

    public CharArrayBuffer formatNameValuePair(CharArrayBuffer charArrayBuffer, NameValuePair nameValuePair, boolean z3) {
        Args.notNull(nameValuePair, "Name / value pair");
        int estimateNameValuePairLen = estimateNameValuePairLen(nameValuePair);
        if (charArrayBuffer == null) {
            charArrayBuffer = new CharArrayBuffer(estimateNameValuePairLen);
        } else {
            charArrayBuffer.ensureCapacity(estimateNameValuePairLen);
        }
        charArrayBuffer.append(nameValuePair.getName());
        String value = nameValuePair.getValue();
        if (value != null) {
            charArrayBuffer.append('=');
            doFormatValue(charArrayBuffer, value, z3);
        }
        return charArrayBuffer;
    }

    public CharArrayBuffer formatParameters(CharArrayBuffer charArrayBuffer, NameValuePair[] nameValuePairArr, boolean z3) {
        Args.notNull(nameValuePairArr, "Header parameter array");
        int estimateParametersLen = estimateParametersLen(nameValuePairArr);
        if (charArrayBuffer == null) {
            charArrayBuffer = new CharArrayBuffer(estimateParametersLen);
        } else {
            charArrayBuffer.ensureCapacity(estimateParametersLen);
        }
        for (int i2 = 0; i2 < nameValuePairArr.length; i2++) {
            if (i2 > 0) {
                charArrayBuffer.append("; ");
            }
            formatNameValuePair(charArrayBuffer, nameValuePairArr[i2], z3);
        }
        return charArrayBuffer;
    }
}
