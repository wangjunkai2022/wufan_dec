package com.sdk.r;

import com.j256.ormlite.stmt.query.SimpleComparison;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.io.ByteArrayOutputStream;
import java.nio.charset.Charset;
import okio.Utf8;
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static char[] f56693a = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};

    /* renamed from: b  reason: collision with root package name */
    public static byte[] f56694b = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, Utf8.REPLACEMENT_BYTE, 52, 53, 54, 55, 56, 57, HttpConstants.COLON, HttpConstants.SEMICOLON, 60, HttpConstants.EQUALS, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, BinaryMemcacheOpcodes.SETQ, BinaryMemcacheOpcodes.ADDQ, BinaryMemcacheOpcodes.REPLACEQ, BinaryMemcacheOpcodes.DELETEQ, BinaryMemcacheOpcodes.INCREMENTQ, BinaryMemcacheOpcodes.DECREMENTQ, BinaryMemcacheOpcodes.QUITQ, BinaryMemcacheOpcodes.FLUSHQ, BinaryMemcacheOpcodes.APPENDQ, -1, -1, -1, -1, -1, -1, BinaryMemcacheOpcodes.PREPENDQ, 27, BinaryMemcacheOpcodes.TOUCH, BinaryMemcacheOpcodes.GAT, BinaryMemcacheOpcodes.GATQ, 31, 32, BinaryMemcacheOpcodes.SASL_AUTH, 34, BinaryMemcacheOpcodes.GATK, BinaryMemcacheOpcodes.GATKQ, 37, 38, 39, 40, 41, 42, 43, HttpConstants.COMMA, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1};

    public static String a(String str) {
        int i2;
        byte b4;
        int i4;
        byte b5;
        int i5;
        byte b6;
        int i6;
        byte b7;
        byte[] bytes = str.getBytes(Charset.defaultCharset());
        int length = bytes.length;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(length);
        int i7 = 0;
        loop0: while (i7 < length) {
            while (true) {
                i2 = i7 + 1;
                b4 = f56694b[bytes[i7]];
                if (i2 >= length || b4 != -1) {
                    break;
                }
                i7 = i2;
            }
            if (b4 == -1) {
                break;
            }
            while (true) {
                i4 = i2 + 1;
                b5 = f56694b[bytes[i2]];
                if (i4 >= length || b5 != -1) {
                    break;
                }
                i2 = i4;
            }
            if (b5 == -1) {
                break;
            }
            byteArrayOutputStream.write((b4 << 2) | ((b5 & 48) >>> 4));
            while (true) {
                i5 = i4 + 1;
                byte b8 = bytes[i4];
                if (b8 == 61) {
                    break loop0;
                }
                b6 = f56694b[b8];
                if (i5 >= length || b6 != -1) {
                    break;
                }
                i4 = i5;
            }
            if (b6 == -1) {
                break;
            }
            byteArrayOutputStream.write(((b5 & 15) << 4) | ((b6 & 60) >>> 2));
            while (true) {
                i6 = i5 + 1;
                byte b9 = bytes[i5];
                if (b9 == 61) {
                    break loop0;
                }
                b7 = f56694b[b9];
                if (i6 >= length || b7 != -1) {
                    break;
                }
                i5 = i6;
            }
            if (b7 == -1) {
                break;
            }
            byteArrayOutputStream.write(b7 | ((b6 & 3) << 6));
            i7 = i6;
        }
        return new String(byteArrayOutputStream.toByteArray(), Charset.defaultCharset());
    }

    public static String b(String str) {
        String str2;
        byte[] bytes = str.getBytes("utf-8");
        StringBuffer stringBuffer = new StringBuffer();
        int length = bytes.length;
        int i2 = 0;
        while (i2 < length) {
            int i4 = i2 + 1;
            int i5 = bytes[i2] & 255;
            if (i4 == length) {
                stringBuffer.append(f56693a[i5 >>> 2]);
                stringBuffer.append(f56693a[(i5 & 3) << 4]);
                str2 = "==";
            } else {
                int i6 = i4 + 1;
                int i7 = bytes[i4] & 255;
                if (i6 == length) {
                    stringBuffer.append(f56693a[i5 >>> 2]);
                    stringBuffer.append(f56693a[((i5 & 3) << 4) | ((i7 & 240) >>> 4)]);
                    stringBuffer.append(f56693a[(i7 & 15) << 2]);
                    str2 = SimpleComparison.EQUAL_TO_OPERATION;
                } else {
                    int i8 = i6 + 1;
                    int i9 = bytes[i6] & 255;
                    stringBuffer.append(f56693a[i5 >>> 2]);
                    stringBuffer.append(f56693a[((i5 & 3) << 4) | ((i7 & 240) >>> 4)]);
                    stringBuffer.append(f56693a[((i7 & 15) << 2) | ((i9 & 192) >>> 6)]);
                    stringBuffer.append(f56693a[i9 & 63]);
                    i2 = i8;
                }
            }
            stringBuffer.append(str2);
            break;
        }
        return stringBuffer.toString();
    }
}
