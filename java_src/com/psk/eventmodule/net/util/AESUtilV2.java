package com.psk.eventmodule.net.util;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes4.dex */
public class AESUtilV2 {
    public static String decrypt(String str, String str2) throws Exception {
        byte[] parseHexStr2Byte = parseHexStr2Byte(str);
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec("625202f9149e061d".getBytes(), "AES");
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(2, secretKeySpec);
            return new String(cipher.doFinal(parseHexStr2Byte), "UTF-8");
        } catch (Exception unused) {
            throw new Exception("解密失败");
        }
    }

    public static String encrypt(String str, String str2) throws Exception {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec("625202f9149e061d".getBytes(), "AES");
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(1, secretKeySpec);
            return parseByte2HexStr(cipher.doFinal(str.getBytes("UTF-8")));
        } catch (Exception unused) {
            throw new Exception("加密失败");
        }
    }

    public static void main(String[] strArr) throws Exception {
    }

    public static String parseByte2HexStr(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b4 : bArr) {
            String hexString = Integer.toHexString(b4 & 255);
            if (hexString.length() == 1) {
                hexString = '0' + hexString;
            }
            stringBuffer.append(hexString);
        }
        return stringBuffer.toString();
    }

    public static byte[] parseHexStr2Byte(String str) {
        if (str.length() < 1) {
            return null;
        }
        byte[] bArr = new byte[str.length() / 2];
        for (int i2 = 0; i2 < str.length() / 2; i2++) {
            int i4 = i2 * 2;
            int i5 = i4 + 1;
            bArr[i2] = (byte) ((Integer.parseInt(str.substring(i4, i5), 16) * 16) + Integer.parseInt(str.substring(i5, i4 + 2), 16));
        }
        return bArr;
    }
}
