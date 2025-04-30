package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import java.io.Serializable;
import java.util.Arrays;
import org.apache.http.conn.ssl.TokenParser;
/* loaded from: classes2.dex */
public final class Base64Variant implements Serializable {
    public static final int BASE64_VALUE_INVALID = -1;
    public static final int BASE64_VALUE_PADDING = -2;
    private static final int INT_SPACE = 32;
    protected static final char PADDING_CHAR_NONE = 0;
    private static final long serialVersionUID = 1;
    private final transient int[] _asciiToBase64;
    private final transient byte[] _base64ToAsciiB;
    private final transient char[] _base64ToAsciiC;
    private final int _maxLineLength;
    final String _name;
    private final char _paddingChar;
    private final PaddingReadBehaviour _paddingReadBehaviour;
    private final boolean _writePadding;

    /* loaded from: classes2.dex */
    public enum PaddingReadBehaviour {
        PADDING_FORBIDDEN,
        PADDING_REQUIRED,
        PADDING_ALLOWED
    }

    public Base64Variant(String str, String str2, boolean z3, char c4, int i2) {
        int[] iArr = new int[128];
        this._asciiToBase64 = iArr;
        char[] cArr = new char[64];
        this._base64ToAsciiC = cArr;
        this._base64ToAsciiB = new byte[64];
        this._name = str;
        this._writePadding = z3;
        this._paddingChar = c4;
        this._maxLineLength = i2;
        int length = str2.length();
        if (length == 64) {
            str2.getChars(0, length, cArr, 0);
            Arrays.fill(iArr, -1);
            for (int i4 = 0; i4 < length; i4++) {
                char c5 = this._base64ToAsciiC[i4];
                this._base64ToAsciiB[i4] = (byte) c5;
                this._asciiToBase64[c5] = i4;
            }
            if (z3) {
                this._asciiToBase64[c4] = -2;
            }
            this._paddingReadBehaviour = z3 ? PaddingReadBehaviour.PADDING_REQUIRED : PaddingReadBehaviour.PADDING_FORBIDDEN;
            return;
        }
        throw new IllegalArgumentException("Base64Alphabet length must be exactly 64 (was " + length + ")");
    }

    protected void _reportBase64EOF() throws IllegalArgumentException {
        throw new IllegalArgumentException(missingPaddingMessage());
    }

    protected void _reportBase64UnexpectedPadding() throws IllegalArgumentException {
        throw new IllegalArgumentException(unexpectedPaddingMessage());
    }

    protected void _reportInvalidBase64(char c4, int i2, String str) throws IllegalArgumentException {
        String str2;
        if (c4 <= ' ') {
            str2 = "Illegal white space character (code 0x" + Integer.toHexString(c4) + ") as character #" + (i2 + 1) + " of 4-char base64 unit: can only used between units";
        } else if (usesPaddingChar(c4)) {
            str2 = "Unexpected padding character ('" + getPaddingChar() + "') as character #" + (i2 + 1) + " of 4-char base64 unit: padding only legal as 3rd or 4th character";
        } else if (Character.isDefined(c4) && !Character.isISOControl(c4)) {
            str2 = "Illegal character '" + c4 + "' (code 0x" + Integer.toHexString(c4) + ") in base64 content";
        } else {
            str2 = "Illegal character (code 0x" + Integer.toHexString(c4) + ") in base64 content";
        }
        if (str != null) {
            str2 = str2 + ": " + str;
        }
        throw new IllegalArgumentException(str2);
    }

    public boolean acceptsPaddingOnRead() {
        return this._paddingReadBehaviour != PaddingReadBehaviour.PADDING_FORBIDDEN;
    }

    public byte[] decode(String str) throws IllegalArgumentException {
        ByteArrayBuilder byteArrayBuilder = new ByteArrayBuilder();
        decode(str, byteArrayBuilder);
        return byteArrayBuilder.toByteArray();
    }

    public int decodeBase64Byte(byte b4) {
        if (b4 < 0) {
            return -1;
        }
        return this._asciiToBase64[b4];
    }

    public int decodeBase64Char(char c4) {
        if (c4 <= 127) {
            return this._asciiToBase64[c4];
        }
        return -1;
    }

    public String encode(byte[] bArr) {
        return encode(bArr, false);
    }

    public byte encodeBase64BitsAsByte(int i2) {
        return this._base64ToAsciiB[i2];
    }

    public char encodeBase64BitsAsChar(int i2) {
        return this._base64ToAsciiC[i2];
    }

    public int encodeBase64Chunk(int i2, char[] cArr, int i4) {
        int i5 = i4 + 1;
        char[] cArr2 = this._base64ToAsciiC;
        cArr[i4] = cArr2[(i2 >> 18) & 63];
        int i6 = i5 + 1;
        cArr[i5] = cArr2[(i2 >> 12) & 63];
        int i7 = i6 + 1;
        cArr[i6] = cArr2[(i2 >> 6) & 63];
        int i8 = i7 + 1;
        cArr[i7] = cArr2[i2 & 63];
        return i8;
    }

    public int encodeBase64Partial(int i2, int i4, char[] cArr, int i5) {
        int i6 = i5 + 1;
        char[] cArr2 = this._base64ToAsciiC;
        cArr[i5] = cArr2[(i2 >> 18) & 63];
        int i7 = i6 + 1;
        cArr[i6] = cArr2[(i2 >> 12) & 63];
        if (usesPadding()) {
            int i8 = i7 + 1;
            cArr[i7] = i4 == 2 ? this._base64ToAsciiC[(i2 >> 6) & 63] : this._paddingChar;
            int i9 = i8 + 1;
            cArr[i8] = this._paddingChar;
            return i9;
        } else if (i4 == 2) {
            int i10 = i7 + 1;
            cArr[i7] = this._base64ToAsciiC[(i2 >> 6) & 63];
            return i10;
        } else {
            return i7;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != Base64Variant.class) {
            return false;
        }
        Base64Variant base64Variant = (Base64Variant) obj;
        return base64Variant._paddingChar == this._paddingChar && base64Variant._maxLineLength == this._maxLineLength && base64Variant._writePadding == this._writePadding && base64Variant._paddingReadBehaviour == this._paddingReadBehaviour && this._name.equals(base64Variant._name);
    }

    public int getMaxLineLength() {
        return this._maxLineLength;
    }

    public String getName() {
        return this._name;
    }

    public byte getPaddingByte() {
        return (byte) this._paddingChar;
    }

    public char getPaddingChar() {
        return this._paddingChar;
    }

    public int hashCode() {
        return this._name.hashCode();
    }

    public String missingPaddingMessage() {
        return String.format("Unexpected end of base64-encoded String: base64 variant '%s' expects padding (one or more '%c' characters) at the end. This Base64Variant might have been incorrectly configured", getName(), Character.valueOf(getPaddingChar()));
    }

    public PaddingReadBehaviour paddingReadBehaviour() {
        return this._paddingReadBehaviour;
    }

    protected Object readResolve() {
        Base64Variant valueOf = Base64Variants.valueOf(this._name);
        boolean z3 = this._writePadding;
        boolean z4 = valueOf._writePadding;
        return (z3 == z4 && this._paddingChar == valueOf._paddingChar && this._paddingReadBehaviour == valueOf._paddingReadBehaviour && this._maxLineLength == valueOf._maxLineLength && z3 == z4) ? valueOf : new Base64Variant(valueOf, this._name, z3, this._paddingChar, this._paddingReadBehaviour, this._maxLineLength);
    }

    public boolean requiresPaddingOnRead() {
        return this._paddingReadBehaviour == PaddingReadBehaviour.PADDING_REQUIRED;
    }

    public String toString() {
        return this._name;
    }

    protected String unexpectedPaddingMessage() {
        return String.format("Unexpected end of base64-encoded String: base64 variant '%s' expects no padding at the end while decoding. This Base64Variant might have been incorrectly configured", getName());
    }

    public boolean usesPadding() {
        return this._writePadding;
    }

    public boolean usesPaddingChar(char c4) {
        return c4 == this._paddingChar;
    }

    public Base64Variant withPaddingAllowed() {
        return withReadPadding(PaddingReadBehaviour.PADDING_ALLOWED);
    }

    public Base64Variant withPaddingForbidden() {
        return withReadPadding(PaddingReadBehaviour.PADDING_FORBIDDEN);
    }

    public Base64Variant withPaddingRequired() {
        return withReadPadding(PaddingReadBehaviour.PADDING_REQUIRED);
    }

    public Base64Variant withReadPadding(PaddingReadBehaviour paddingReadBehaviour) {
        return paddingReadBehaviour == this._paddingReadBehaviour ? this : new Base64Variant(this, paddingReadBehaviour);
    }

    public Base64Variant withWritePadding(boolean z3) {
        return z3 == this._writePadding ? this : new Base64Variant(this, this._name, z3, this._paddingChar, this._maxLineLength);
    }

    public int decodeBase64Char(int i2) {
        if (i2 <= 127) {
            return this._asciiToBase64[i2];
        }
        return -1;
    }

    public String encode(byte[] bArr, boolean z3) {
        int length = bArr.length;
        StringBuilder sb = new StringBuilder((length >> 2) + length + (length >> 3));
        if (z3) {
            sb.append('\"');
        }
        int maxLineLength = getMaxLineLength() >> 2;
        int i2 = 0;
        int i4 = length - 3;
        while (i2 <= i4) {
            int i5 = i2 + 1;
            int i6 = i5 + 1;
            int i7 = i6 + 1;
            encodeBase64Chunk(sb, (((bArr[i2] << 8) | (bArr[i5] & 255)) << 8) | (bArr[i6] & 255));
            maxLineLength--;
            if (maxLineLength <= 0) {
                sb.append(TokenParser.ESCAPE);
                sb.append('n');
                maxLineLength = getMaxLineLength() >> 2;
            }
            i2 = i7;
        }
        int i8 = length - i2;
        if (i8 > 0) {
            int i9 = i2 + 1;
            int i10 = bArr[i2] << 16;
            if (i8 == 2) {
                i10 |= (bArr[i9] & 255) << 8;
            }
            encodeBase64Partial(sb, i10, i8);
        }
        if (z3) {
            sb.append('\"');
        }
        return sb.toString();
    }

    public boolean usesPaddingChar(int i2) {
        return i2 == this._paddingChar;
    }

    public void decode(String str, ByteArrayBuilder byteArrayBuilder) throws IllegalArgumentException {
        int length = str.length();
        int i2 = 0;
        while (i2 < length) {
            int i4 = i2 + 1;
            char charAt = str.charAt(i2);
            if (charAt > ' ') {
                int decodeBase64Char = decodeBase64Char(charAt);
                if (decodeBase64Char < 0) {
                    _reportInvalidBase64(charAt, 0, null);
                }
                if (i4 >= length) {
                    _reportBase64EOF();
                }
                int i5 = i4 + 1;
                char charAt2 = str.charAt(i4);
                int decodeBase64Char2 = decodeBase64Char(charAt2);
                if (decodeBase64Char2 < 0) {
                    _reportInvalidBase64(charAt2, 1, null);
                }
                int i6 = (decodeBase64Char << 6) | decodeBase64Char2;
                if (i5 >= length) {
                    if (!requiresPaddingOnRead()) {
                        byteArrayBuilder.append(i6 >> 4);
                        return;
                    }
                    _reportBase64EOF();
                }
                int i7 = i5 + 1;
                char charAt3 = str.charAt(i5);
                int decodeBase64Char3 = decodeBase64Char(charAt3);
                if (decodeBase64Char3 < 0) {
                    if (decodeBase64Char3 != -2) {
                        _reportInvalidBase64(charAt3, 2, null);
                    }
                    if (!acceptsPaddingOnRead()) {
                        _reportBase64UnexpectedPadding();
                    }
                    if (i7 >= length) {
                        _reportBase64EOF();
                    }
                    i2 = i7 + 1;
                    char charAt4 = str.charAt(i7);
                    if (!usesPaddingChar(charAt4)) {
                        _reportInvalidBase64(charAt4, 3, "expected padding character '" + getPaddingChar() + "'");
                    }
                    byteArrayBuilder.append(i6 >> 4);
                } else {
                    int i8 = (i6 << 6) | decodeBase64Char3;
                    if (i7 >= length) {
                        if (!requiresPaddingOnRead()) {
                            byteArrayBuilder.appendTwoBytes(i8 >> 2);
                            return;
                        }
                        _reportBase64EOF();
                    }
                    i4 = i7 + 1;
                    char charAt5 = str.charAt(i7);
                    int decodeBase64Char4 = decodeBase64Char(charAt5);
                    if (decodeBase64Char4 < 0) {
                        if (decodeBase64Char4 != -2) {
                            _reportInvalidBase64(charAt5, 3, null);
                        }
                        if (!acceptsPaddingOnRead()) {
                            _reportBase64UnexpectedPadding();
                        }
                        byteArrayBuilder.appendTwoBytes(i8 >> 2);
                    } else {
                        byteArrayBuilder.appendThreeBytes((i8 << 6) | decodeBase64Char4);
                    }
                }
            }
            i2 = i4;
        }
    }

    public void encodeBase64Chunk(StringBuilder sb, int i2) {
        sb.append(this._base64ToAsciiC[(i2 >> 18) & 63]);
        sb.append(this._base64ToAsciiC[(i2 >> 12) & 63]);
        sb.append(this._base64ToAsciiC[(i2 >> 6) & 63]);
        sb.append(this._base64ToAsciiC[i2 & 63]);
    }

    public void encodeBase64Partial(StringBuilder sb, int i2, int i4) {
        sb.append(this._base64ToAsciiC[(i2 >> 18) & 63]);
        sb.append(this._base64ToAsciiC[(i2 >> 12) & 63]);
        if (usesPadding()) {
            sb.append(i4 == 2 ? this._base64ToAsciiC[(i2 >> 6) & 63] : this._paddingChar);
            sb.append(this._paddingChar);
        } else if (i4 == 2) {
            sb.append(this._base64ToAsciiC[(i2 >> 6) & 63]);
        }
    }

    public int encodeBase64Chunk(int i2, byte[] bArr, int i4) {
        int i5 = i4 + 1;
        byte[] bArr2 = this._base64ToAsciiB;
        bArr[i4] = bArr2[(i2 >> 18) & 63];
        int i6 = i5 + 1;
        bArr[i5] = bArr2[(i2 >> 12) & 63];
        int i7 = i6 + 1;
        bArr[i6] = bArr2[(i2 >> 6) & 63];
        int i8 = i7 + 1;
        bArr[i7] = bArr2[i2 & 63];
        return i8;
    }

    public int encodeBase64Partial(int i2, int i4, byte[] bArr, int i5) {
        int i6 = i5 + 1;
        byte[] bArr2 = this._base64ToAsciiB;
        bArr[i5] = bArr2[(i2 >> 18) & 63];
        int i7 = i6 + 1;
        bArr[i6] = bArr2[(i2 >> 12) & 63];
        if (!usesPadding()) {
            if (i4 == 2) {
                int i8 = i7 + 1;
                bArr[i7] = this._base64ToAsciiB[(i2 >> 6) & 63];
                return i8;
            }
            return i7;
        }
        byte b4 = (byte) this._paddingChar;
        int i9 = i7 + 1;
        bArr[i7] = i4 == 2 ? this._base64ToAsciiB[(i2 >> 6) & 63] : b4;
        int i10 = i9 + 1;
        bArr[i9] = b4;
        return i10;
    }

    public Base64Variant(Base64Variant base64Variant, String str, int i2) {
        this(base64Variant, str, base64Variant._writePadding, base64Variant._paddingChar, i2);
    }

    public String encode(byte[] bArr, boolean z3, String str) {
        int length = bArr.length;
        StringBuilder sb = new StringBuilder((length >> 2) + length + (length >> 3));
        if (z3) {
            sb.append('\"');
        }
        int maxLineLength = getMaxLineLength() >> 2;
        int i2 = 0;
        int i4 = length - 3;
        while (i2 <= i4) {
            int i5 = i2 + 1;
            int i6 = i5 + 1;
            int i7 = i6 + 1;
            encodeBase64Chunk(sb, (((bArr[i2] << 8) | (bArr[i5] & 255)) << 8) | (bArr[i6] & 255));
            maxLineLength--;
            if (maxLineLength <= 0) {
                sb.append(str);
                maxLineLength = getMaxLineLength() >> 2;
            }
            i2 = i7;
        }
        int i8 = length - i2;
        if (i8 > 0) {
            int i9 = i2 + 1;
            int i10 = bArr[i2] << 16;
            if (i8 == 2) {
                i10 |= (bArr[i9] & 255) << 8;
            }
            encodeBase64Partial(sb, i10, i8);
        }
        if (z3) {
            sb.append('\"');
        }
        return sb.toString();
    }

    public Base64Variant(Base64Variant base64Variant, String str, boolean z3, char c4, int i2) {
        this(base64Variant, str, z3, c4, base64Variant._paddingReadBehaviour, i2);
    }

    private Base64Variant(Base64Variant base64Variant, String str, boolean z3, char c4, PaddingReadBehaviour paddingReadBehaviour, int i2) {
        int[] iArr = new int[128];
        this._asciiToBase64 = iArr;
        char[] cArr = new char[64];
        this._base64ToAsciiC = cArr;
        byte[] bArr = new byte[64];
        this._base64ToAsciiB = bArr;
        this._name = str;
        byte[] bArr2 = base64Variant._base64ToAsciiB;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        char[] cArr2 = base64Variant._base64ToAsciiC;
        System.arraycopy(cArr2, 0, cArr, 0, cArr2.length);
        int[] iArr2 = base64Variant._asciiToBase64;
        System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
        this._writePadding = z3;
        this._paddingChar = c4;
        this._maxLineLength = i2;
        this._paddingReadBehaviour = paddingReadBehaviour;
    }

    private Base64Variant(Base64Variant base64Variant, PaddingReadBehaviour paddingReadBehaviour) {
        this(base64Variant, base64Variant._name, base64Variant._writePadding, base64Variant._paddingChar, paddingReadBehaviour, base64Variant._maxLineLength);
    }
}
