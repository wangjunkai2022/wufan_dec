package com.alipay.security.mobile.module.commonutils.crypto;

import com.j256.ormlite.stmt.query.SimpleComparison;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import okio.Utf8;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f9881a = "iso8859-1";

    /* renamed from: b  reason: collision with root package name */
    public static final String f9882b = "US-ASCII";

    /* renamed from: c  reason: collision with root package name */
    private static char[] f9883c = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};

    /* renamed from: d  reason: collision with root package name */
    private static byte[] f9884d = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, Utf8.REPLACEMENT_BYTE, 52, 53, 54, 55, 56, 57, HttpConstants.COLON, HttpConstants.SEMICOLON, 60, HttpConstants.EQUALS, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, BinaryMemcacheOpcodes.SETQ, BinaryMemcacheOpcodes.ADDQ, BinaryMemcacheOpcodes.REPLACEQ, BinaryMemcacheOpcodes.DELETEQ, BinaryMemcacheOpcodes.INCREMENTQ, BinaryMemcacheOpcodes.DECREMENTQ, BinaryMemcacheOpcodes.QUITQ, BinaryMemcacheOpcodes.FLUSHQ, BinaryMemcacheOpcodes.APPENDQ, -1, -1, -1, -1, -1, -1, BinaryMemcacheOpcodes.PREPENDQ, 27, BinaryMemcacheOpcodes.TOUCH, BinaryMemcacheOpcodes.GAT, BinaryMemcacheOpcodes.GATQ, 31, 32, BinaryMemcacheOpcodes.SASL_AUTH, 34, BinaryMemcacheOpcodes.GATK, BinaryMemcacheOpcodes.GATKQ, 37, 38, 39, 40, 41, 42, 43, HttpConstants.COMMA, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1};

    private a() {
    }

    public static String a(byte[] bArr) {
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        int i2 = 0;
        while (i2 < length) {
            int i4 = i2 + 1;
            int i5 = bArr[i2] & 255;
            if (i4 == length) {
                stringBuffer.append(f9883c[i5 >>> 2]);
                stringBuffer.append(f9883c[(i5 & 3) << 4]);
                str = "==";
            } else {
                int i6 = i4 + 1;
                int i7 = bArr[i4] & 255;
                if (i6 == length) {
                    stringBuffer.append(f9883c[i5 >>> 2]);
                    stringBuffer.append(f9883c[((i5 & 3) << 4) | ((i7 & 240) >>> 4)]);
                    stringBuffer.append(f9883c[(i7 & 15) << 2]);
                    str = SimpleComparison.EQUAL_TO_OPERATION;
                } else {
                    int i8 = i6 + 1;
                    int i9 = bArr[i6] & 255;
                    stringBuffer.append(f9883c[i5 >>> 2]);
                    stringBuffer.append(f9883c[((i5 & 3) << 4) | ((i7 & 240) >>> 4)]);
                    stringBuffer.append(f9883c[((i7 & 15) << 2) | ((i9 & 192) >>> 6)]);
                    stringBuffer.append(f9883c[i9 & 63]);
                    i2 = i8;
                }
            }
            stringBuffer.append(str);
            break;
        }
        return stringBuffer.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x007c, code lost:
        if (r2 == (-1)) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x007e, code lost:
        r0.append((char) (r2 | ((r6 & 3) << 6)));
        r2 = r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] b(java.lang.String r9) {
        /*
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r0.<init>()
            java.lang.String r1 = "US-ASCII"
            byte[] r9 = r9.getBytes(r1)
            int r1 = r9.length
            r2 = 0
        Ld:
            java.lang.String r3 = "iso8859-1"
            if (r2 >= r1) goto L47
        L11:
            byte[] r4 = com.alipay.security.mobile.module.commonutils.crypto.a.f9884d
            int r5 = r2 + 1
            r2 = r9[r2]
            r2 = r4[r2]
            r4 = -1
            if (r5 >= r1) goto L21
            if (r2 == r4) goto L1f
            goto L21
        L1f:
            r2 = r5
            goto L11
        L21:
            if (r2 == r4) goto L47
        L23:
            byte[] r6 = com.alipay.security.mobile.module.commonutils.crypto.a.f9884d
            int r7 = r5 + 1
            r5 = r9[r5]
            r5 = r6[r5]
            if (r7 >= r1) goto L32
            if (r5 == r4) goto L30
            goto L32
        L30:
            r5 = r7
            goto L23
        L32:
            if (r5 == r4) goto L47
            int r2 = r2 << 2
            r6 = r5 & 48
            int r6 = r6 >>> 4
            r2 = r2 | r6
            char r2 = (char) r2
            r0.append(r2)
        L3f:
            int r2 = r7 + 1
            r6 = r9[r7]
            r7 = 61
            if (r6 != r7) goto L50
        L47:
            java.lang.String r9 = r0.toString()
            byte[] r9 = r9.getBytes(r3)
            return r9
        L50:
            byte[] r8 = com.alipay.security.mobile.module.commonutils.crypto.a.f9884d
            r6 = r8[r6]
            if (r2 >= r1) goto L5b
            if (r6 == r4) goto L59
            goto L5b
        L59:
            r7 = r2
            goto L3f
        L5b:
            if (r6 == r4) goto L47
            r5 = r5 & 15
            int r5 = r5 << 4
            r8 = r6 & 60
            int r8 = r8 >>> 2
            r5 = r5 | r8
            char r5 = (char) r5
            r0.append(r5)
        L6a:
            int r5 = r2 + 1
            r2 = r9[r2]
            if (r2 != r7) goto L71
            goto L47
        L71:
            byte[] r8 = com.alipay.security.mobile.module.commonutils.crypto.a.f9884d
            r2 = r8[r2]
            if (r5 >= r1) goto L7c
            if (r2 == r4) goto L7a
            goto L7c
        L7a:
            r2 = r5
            goto L6a
        L7c:
            if (r2 == r4) goto L47
            r3 = r6 & 3
            int r3 = r3 << 6
            r2 = r2 | r3
            char r2 = (char) r2
            r0.append(r2)
            r2 = r5
            goto Ld
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.security.mobile.module.commonutils.crypto.a.b(java.lang.String):byte[]");
    }
}
