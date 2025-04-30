package io.netty.handler.codec.http;

import com.android.dx.io.Opcodes;
import io.netty.util.CharsetUtil;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.StringUtil;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import kotlin.text.Typography;
import net.lingala.zip4j.crypto.PBKDF2.a;
/* loaded from: classes5.dex */
public class QueryStringEncoder {
    private static final char[] CHAR_MAP = a.f72880a.toCharArray();
    private static final byte WRITE_UTF_UNKNOWN = 63;
    private final Charset charset;
    private boolean hasParams;
    private final StringBuilder uriBuilder;

    public QueryStringEncoder(String str) {
        this(str, HttpConstants.DEFAULT_CHARSET);
    }

    private void appendEncoded(int i2) {
        StringBuilder sb = this.uriBuilder;
        sb.append('%');
        sb.append(forDigit(i2 >> 4));
        sb.append(forDigit(i2));
    }

    private static boolean dontNeedEncoding(char c4) {
        return (c4 >= 'a' && c4 <= 'z') || (c4 >= 'A' && c4 <= 'Z') || ((c4 >= '0' && c4 <= '9') || c4 == '-' || c4 == '_' || c4 == '.' || c4 == '*');
    }

    private void encodeComponent(CharSequence charSequence) {
        if (this.charset == null) {
            encodeUtf8Component(charSequence);
        } else {
            encodeNonUtf8Component(charSequence);
        }
    }

    private void encodeNonUtf8Component(CharSequence charSequence) {
        int length = charSequence.length();
        char[] cArr = null;
        int i2 = 0;
        while (i2 < length) {
            char charAt = charSequence.charAt(i2);
            if (dontNeedEncoding(charAt)) {
                this.uriBuilder.append(charAt);
                i2++;
            } else {
                if (cArr == null) {
                    cArr = new char[charSequence.length() - i2];
                }
                int i4 = 0;
                do {
                    cArr[i4] = charAt;
                    i4++;
                    i2++;
                    if (i2 >= charSequence.length()) {
                        break;
                    }
                    charAt = charSequence.charAt(i2);
                } while (!dontNeedEncoding(charAt));
                for (byte b4 : new String(cArr, 0, i4).getBytes(this.charset)) {
                    appendEncoded(b4);
                }
            }
        }
    }

    private void encodeUtf8Component(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (!dontNeedEncoding(charSequence.charAt(i2))) {
                encodeUtf8Component(charSequence, i2, length);
                return;
            }
        }
        this.uriBuilder.append(charSequence);
    }

    private void encodeUtf8ComponentSlow(CharSequence charSequence, int i2, int i4) {
        while (i2 < i4) {
            char charAt = charSequence.charAt(i2);
            if (charAt < 128) {
                if (dontNeedEncoding(charAt)) {
                    this.uriBuilder.append(charAt);
                } else {
                    appendEncoded(charAt);
                }
            } else if (charAt < 2048) {
                appendEncoded((charAt >> 6) | 192);
                appendEncoded((charAt & '?') | 128);
            } else if (StringUtil.isSurrogate(charAt)) {
                if (!Character.isHighSurrogate(charAt)) {
                    appendEncoded(63);
                } else {
                    i2++;
                    if (i2 == charSequence.length()) {
                        appendEncoded(63);
                        return;
                    }
                    writeUtf8Surrogate(charAt, charSequence.charAt(i2));
                }
            } else {
                appendEncoded((charAt >> '\f') | Opcodes.SHL_INT_LIT8);
                appendEncoded(((charAt >> 6) & 63) | 128);
                appendEncoded((charAt & '?') | 128);
            }
            i2++;
        }
    }

    private static char forDigit(int i2) {
        return CHAR_MAP[i2 & 15];
    }

    private void writeUtf8Surrogate(char c4, char c5) {
        if (!Character.isLowSurrogate(c5)) {
            appendEncoded(63);
            if (Character.isHighSurrogate(c5)) {
                c5 = '?';
            }
            appendEncoded(c5);
            return;
        }
        int codePoint = Character.toCodePoint(c4, c5);
        appendEncoded((codePoint >> 18) | 240);
        appendEncoded(((codePoint >> 12) & 63) | 128);
        appendEncoded(((codePoint >> 6) & 63) | 128);
        appendEncoded((codePoint & 63) | 128);
    }

    public void addParam(String str, String str2) {
        ObjectUtil.checkNotNull(str, "name");
        if (this.hasParams) {
            this.uriBuilder.append(Typography.amp);
        } else {
            this.uriBuilder.append('?');
            this.hasParams = true;
        }
        encodeComponent(str);
        if (str2 != null) {
            this.uriBuilder.append('=');
            encodeComponent(str2);
        }
    }

    public String toString() {
        return this.uriBuilder.toString();
    }

    public URI toUri() throws URISyntaxException {
        return new URI(toString());
    }

    public QueryStringEncoder(String str, Charset charset) {
        ObjectUtil.checkNotNull(charset, "charset");
        this.uriBuilder = new StringBuilder(str);
        this.charset = CharsetUtil.UTF_8.equals(charset) ? null : charset;
    }

    private void encodeUtf8Component(CharSequence charSequence, int i2, int i4) {
        if (i2 > 0) {
            this.uriBuilder.append(charSequence, 0, i2);
        }
        encodeUtf8ComponentSlow(charSequence, i2, i4);
    }
}
