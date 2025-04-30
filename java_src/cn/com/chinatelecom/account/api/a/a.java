package cn.com.chinatelecom.account.api.a;

import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.io.UnsupportedEncodingException;
import okio.Utf8;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static char[] f8488a = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};

    /* renamed from: b  reason: collision with root package name */
    private static byte[] f8489b = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, Utf8.REPLACEMENT_BYTE, 52, 53, 54, 55, 56, 57, HttpConstants.COLON, HttpConstants.SEMICOLON, 60, HttpConstants.EQUALS, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, BinaryMemcacheOpcodes.SETQ, BinaryMemcacheOpcodes.ADDQ, BinaryMemcacheOpcodes.REPLACEQ, BinaryMemcacheOpcodes.DELETEQ, BinaryMemcacheOpcodes.INCREMENTQ, BinaryMemcacheOpcodes.DECREMENTQ, BinaryMemcacheOpcodes.QUITQ, BinaryMemcacheOpcodes.FLUSHQ, BinaryMemcacheOpcodes.APPENDQ, -1, -1, -1, -1, -1, -1, BinaryMemcacheOpcodes.PREPENDQ, 27, BinaryMemcacheOpcodes.TOUCH, BinaryMemcacheOpcodes.GAT, BinaryMemcacheOpcodes.GATQ, 31, 32, BinaryMemcacheOpcodes.SASL_AUTH, 34, BinaryMemcacheOpcodes.GATK, BinaryMemcacheOpcodes.GATKQ, 37, 38, 39, 40, 41, 42, 43, HttpConstants.COMMA, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1};

    public static byte[] a(String str) {
        try {
            return b(str);
        } catch (UnsupportedEncodingException e4) {
            e4.printStackTrace();
            return new byte[0];
        }
    }

    private static byte[] b(String str) {
        int i2;
        byte b4;
        int i4;
        byte b5;
        int i5;
        byte b6;
        int i6;
        byte b7;
        StringBuffer stringBuffer = new StringBuffer();
        byte[] bytes = str.getBytes(com.alipay.security.mobile.module.commonutils.crypto.a.f9882b);
        int length = bytes.length;
        int i7 = 0;
        loop0: while (i7 < length) {
            while (true) {
                i2 = i7 + 1;
                b4 = f8489b[bytes[i7]];
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
                b5 = f8489b[bytes[i2]];
                if (i4 >= length || b5 != -1) {
                    break;
                }
                i2 = i4;
            }
            if (b5 == -1) {
                break;
            }
            stringBuffer.append((char) ((b4 << 2) | ((b5 & 48) >>> 4)));
            while (true) {
                i5 = i4 + 1;
                byte b8 = bytes[i4];
                if (b8 == 61) {
                    break loop0;
                }
                b6 = f8489b[b8];
                if (i5 >= length || b6 != -1) {
                    break;
                }
                i4 = i5;
            }
            if (b6 == -1) {
                break;
            }
            stringBuffer.append((char) (((b5 & 15) << 4) | ((b6 & 60) >>> 2)));
            while (true) {
                i6 = i5 + 1;
                byte b9 = bytes[i5];
                if (b9 == 61) {
                    break loop0;
                }
                b7 = f8489b[b9];
                if (i6 >= length || b7 != -1) {
                    break;
                }
                i5 = i6;
            }
            if (b7 == -1) {
                break;
            }
            stringBuffer.append((char) (b7 | ((b6 & 3) << 6)));
            i7 = i6;
        }
        return stringBuffer.toString().getBytes(com.alipay.security.mobile.module.commonutils.crypto.a.f9881a);
    }
}
