package com.android.dx.rop.cst;

import com.android.dx.io.Opcodes;
import com.android.dx.rop.type.Type;
import com.android.dx.util.ByteArray;
import com.android.dx.util.Hex;
import java.util.Objects;
import org.apache.http.conn.ssl.TokenParser;
/* loaded from: classes2.dex */
public final class CstString extends TypedConstant {
    public static final CstString EMPTY_STRING = new CstString("");
    private final ByteArray bytes;
    private final String string;

    public CstString(String str) {
        Objects.requireNonNull(str, "string == null");
        this.string = str.intern();
        this.bytes = new ByteArray(stringToUtf8Bytes(str));
    }

    public static byte[] stringToUtf8Bytes(String str) {
        int length = str.length();
        byte[] bArr = new byte[length * 3];
        int i2 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            char charAt = str.charAt(i4);
            if (charAt != 0 && charAt < 128) {
                bArr[i2] = (byte) charAt;
                i2++;
            } else if (charAt < 2048) {
                bArr[i2] = (byte) (((charAt >> 6) & 31) | 192);
                bArr[i2 + 1] = (byte) ((charAt & '?') | 128);
                i2 += 2;
            } else {
                bArr[i2] = (byte) (((charAt >> '\f') & 15) | Opcodes.SHL_INT_LIT8);
                bArr[i2 + 1] = (byte) (((charAt >> 6) & 63) | 128);
                bArr[i2 + 2] = (byte) ((charAt & '?') | 128);
                i2 += 3;
            }
        }
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, 0, bArr2, 0, i2);
        return bArr2;
    }

    private static String throwBadUtf8(int i2, int i4) {
        throw new IllegalArgumentException("bad utf-8 byte " + Hex.u1(i2) + " at offset " + Hex.u4(i4));
    }

    public static String utf8BytesToString(ByteArray byteArray) {
        char c4;
        int size = byteArray.size();
        char[] cArr = new char[size];
        int i2 = 0;
        int i4 = 0;
        while (size > 0) {
            int unsignedByte = byteArray.getUnsignedByte(i4);
            switch (unsignedByte >> 4) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    size--;
                    if (unsignedByte != 0) {
                        c4 = (char) unsignedByte;
                        i4++;
                        break;
                    } else {
                        return throwBadUtf8(unsignedByte, i4);
                    }
                case 8:
                case 9:
                case 10:
                case 11:
                default:
                    return throwBadUtf8(unsignedByte, i4);
                case 12:
                case 13:
                    size -= 2;
                    if (size < 0) {
                        return throwBadUtf8(unsignedByte, i4);
                    }
                    int i5 = i4 + 1;
                    int unsignedByte2 = byteArray.getUnsignedByte(i5);
                    if ((unsignedByte2 & 192) != 128) {
                        return throwBadUtf8(unsignedByte2, i5);
                    }
                    int i6 = ((unsignedByte & 31) << 6) | (unsignedByte2 & 63);
                    if (i6 == 0 || i6 >= 128) {
                        c4 = (char) i6;
                        i4 += 2;
                        break;
                    } else {
                        return throwBadUtf8(unsignedByte2, i5);
                    }
                case 14:
                    size -= 3;
                    if (size < 0) {
                        return throwBadUtf8(unsignedByte, i4);
                    }
                    int i7 = i4 + 1;
                    int unsignedByte3 = byteArray.getUnsignedByte(i7);
                    int i8 = unsignedByte3 & 192;
                    if (i8 != 128) {
                        return throwBadUtf8(unsignedByte3, i7);
                    }
                    int i9 = i4 + 2;
                    int unsignedByte4 = byteArray.getUnsignedByte(i9);
                    if (i8 == 128) {
                        int i10 = ((unsignedByte & 15) << 12) | ((unsignedByte3 & 63) << 6) | (unsignedByte4 & 63);
                        if (i10 >= 2048) {
                            c4 = (char) i10;
                            i4 += 3;
                            break;
                        } else {
                            return throwBadUtf8(unsignedByte4, i9);
                        }
                    } else {
                        return throwBadUtf8(unsignedByte4, i9);
                    }
            }
            cArr[i2] = c4;
            i2++;
        }
        return new String(cArr, 0, i2);
    }

    @Override // com.android.dx.rop.cst.Constant
    protected int compareTo0(Constant constant) {
        return this.string.compareTo(((CstString) constant).string);
    }

    public boolean equals(Object obj) {
        if (obj instanceof CstString) {
            return this.string.equals(((CstString) obj).string);
        }
        return false;
    }

    public ByteArray getBytes() {
        return this.bytes;
    }

    public String getString() {
        return this.string;
    }

    @Override // com.android.dx.rop.type.TypeBearer
    public Type getType() {
        return Type.STRING;
    }

    public int getUtf16Size() {
        return this.string.length();
    }

    public int getUtf8Size() {
        return this.bytes.size();
    }

    public int hashCode() {
        return this.string.hashCode();
    }

    @Override // com.android.dx.rop.cst.Constant
    public boolean isCategory2() {
        return false;
    }

    @Override // com.android.dx.util.ToHuman
    public String toHuman() {
        int length = this.string.length();
        StringBuilder sb = new StringBuilder((length * 3) / 2);
        int i2 = 0;
        while (i2 < length) {
            char charAt = this.string.charAt(i2);
            if (charAt >= ' ' && charAt < 127) {
                if (charAt == '\'' || charAt == '\"' || charAt == '\\') {
                    sb.append(TokenParser.ESCAPE);
                }
                sb.append(charAt);
            } else if (charAt > 127) {
                sb.append("\\u");
                sb.append(Character.forDigit(charAt >> '\f', 16));
                sb.append(Character.forDigit((charAt >> '\b') & 15, 16));
                sb.append(Character.forDigit((charAt >> 4) & 15, 16));
                sb.append(Character.forDigit(charAt & 15, 16));
            } else if (charAt == '\t') {
                sb.append("\\t");
            } else if (charAt == '\n') {
                sb.append("\\n");
            } else if (charAt != '\r') {
                char charAt2 = i2 < length + (-1) ? this.string.charAt(i2 + 1) : (char) 0;
                boolean z3 = charAt2 >= '0' && charAt2 <= '7';
                sb.append(TokenParser.ESCAPE);
                for (int i4 = 6; i4 >= 0; i4 -= 3) {
                    char c4 = (char) (((charAt >> i4) & 7) + 48);
                    if (c4 != '0' || z3) {
                        sb.append(c4);
                        z3 = true;
                    }
                }
                if (!z3) {
                    sb.append('0');
                }
            } else {
                sb.append("\\r");
            }
            i2++;
        }
        return sb.toString();
    }

    public String toQuoted() {
        return '\"' + toHuman() + '\"';
    }

    public String toString() {
        return "string{\"" + toHuman() + "\"}";
    }

    @Override // com.android.dx.rop.cst.Constant
    public String typeName() {
        return "utf8";
    }

    public String toQuoted(int i2) {
        String str;
        String human = toHuman();
        if (human.length() <= i2 - 2) {
            str = "";
        } else {
            human = human.substring(0, i2 - 5);
            str = "...";
        }
        return '\"' + human + str + '\"';
    }

    public CstString(ByteArray byteArray) {
        Objects.requireNonNull(byteArray, "bytes == null");
        this.bytes = byteArray;
        this.string = utf8BytesToString(byteArray).intern();
    }
}
