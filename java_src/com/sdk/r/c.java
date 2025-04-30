package com.sdk.r;

import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import okio.Utf8;
/* loaded from: classes4.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final char[] f56691a;

    /* renamed from: b  reason: collision with root package name */
    public static final byte[] f56692b;

    static {
        boolean z3 = com.sdk.f.g.f56647b;
        f56691a = new char[]{'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};
        f56692b = new byte[]{-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, Utf8.REPLACEMENT_BYTE, -1, Utf8.REPLACEMENT_BYTE, 52, 53, 54, 55, 56, 57, HttpConstants.COLON, HttpConstants.SEMICOLON, 60, HttpConstants.EQUALS, -1, -1, -1, 0, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, BinaryMemcacheOpcodes.SETQ, BinaryMemcacheOpcodes.ADDQ, BinaryMemcacheOpcodes.REPLACEQ, BinaryMemcacheOpcodes.DELETEQ, BinaryMemcacheOpcodes.INCREMENTQ, BinaryMemcacheOpcodes.DECREMENTQ, BinaryMemcacheOpcodes.QUITQ, BinaryMemcacheOpcodes.FLUSHQ, BinaryMemcacheOpcodes.APPENDQ, -1, -1, -1, -1, -1, -1, BinaryMemcacheOpcodes.PREPENDQ, 27, BinaryMemcacheOpcodes.TOUCH, BinaryMemcacheOpcodes.GAT, BinaryMemcacheOpcodes.GATQ, 31, 32, BinaryMemcacheOpcodes.SASL_AUTH, 34, BinaryMemcacheOpcodes.GATK, BinaryMemcacheOpcodes.GATKQ, 37, 38, 39, 40, 41, 42, 43, HttpConstants.COMMA, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1};
    }

    public static String a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer(((bArr.length - 1) / 3) << 6);
        int i2 = 0;
        for (int i4 = 0; i4 < bArr.length; i4++) {
            int i5 = i4 % 3;
            int i6 = 16 - (i5 * 8);
            i2 |= (bArr[i4] << i6) & (255 << i6);
            if (i5 == 2 || i4 == bArr.length - 1) {
                char[] cArr = f56691a;
                stringBuffer.append(cArr[(16515072 & i2) >>> 18]);
                stringBuffer.append(cArr[(258048 & i2) >>> 12]);
                stringBuffer.append(cArr[(i2 & 4032) >>> 6]);
                stringBuffer.append(cArr[i2 & 63]);
                i2 = 0;
            }
        }
        if (bArr.length % 3 > 0) {
            stringBuffer.setCharAt(stringBuffer.length() - 1, '=');
        }
        if (bArr.length % 3 == 1) {
            stringBuffer.setCharAt(stringBuffer.length() - 2, '=');
        }
        return stringBuffer.toString();
    }

    public static byte[] a(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length % 4 == 0) {
            if (str.length() == 0) {
                return new byte[0];
            }
            int i2 = str.charAt(length + (-1)) == '=' ? 1 : 0;
            if (str.charAt(length - 2) == '=') {
                i2++;
            }
            int i4 = ((length / 4) * 3) - i2;
            byte[] bArr = new byte[i4];
            for (int i5 = 0; i5 < length; i5 += 4) {
                int i6 = (i5 / 4) * 3;
                char charAt = str.charAt(i5);
                char charAt2 = str.charAt(i5 + 1);
                char charAt3 = str.charAt(i5 + 2);
                char charAt4 = str.charAt(i5 + 3);
                byte[] bArr2 = f56692b;
                int i7 = (bArr2[charAt] << BinaryMemcacheOpcodes.ADDQ) | (bArr2[charAt2] << 12) | (bArr2[charAt3] << 6) | bArr2[charAt4];
                bArr[i6] = (byte) ((16711680 & i7) >> 16);
                if (i5 < length - 4) {
                    bArr[i6 + 1] = (byte) ((65280 & i7) >> 8);
                    bArr[i6 + 2] = (byte) (i7 & 255);
                } else {
                    int i8 = i6 + 1;
                    if (i8 < i4) {
                        bArr[i8] = (byte) ((65280 & i7) >> 8);
                    }
                    int i9 = i6 + 2;
                    if (i9 < i4) {
                        bArr[i9] = (byte) (i7 & 255);
                    }
                }
            }
            return bArr;
        }
        throw new IllegalArgumentException("Base64 string length must be 4*n");
    }
}
