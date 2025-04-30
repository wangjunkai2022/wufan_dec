package m.framework.utils;

import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.HashMap;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes5.dex */
public class Data {
    private static final String CHAT_SET = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    private static Hashon hashon = new Hashon();

    public static String AES128Decode(String str, byte[] bArr) throws Throwable {
        return new String(AES128Decode(str.getBytes("UTF-8"), bArr), "UTF-8");
    }

    public static byte[] AES128Encode(String str, String str2) throws Throwable {
        byte[] bytes = str.getBytes("UTF-8");
        byte[] bArr = new byte[16];
        System.arraycopy(bytes, 0, bArr, 0, Math.min(bytes.length, 16));
        byte[] bytes2 = str2.getBytes("UTF-8");
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        Cipher cipher = Cipher.getInstance("AES/ECB/PKCS7Padding", "BC");
        cipher.init(1, secretKeySpec);
        byte[] bArr2 = new byte[cipher.getOutputSize(bytes2.length)];
        cipher.doFinal(bArr2, cipher.update(bytes2, 0, bytes2.length, bArr2, 0));
        return bArr2;
    }

    public static String MD5(String str) {
        byte[] rawMD5;
        if (str == null || (rawMD5 = rawMD5(str)) == null) {
            return null;
        }
        return HEX.toHex(rawMD5);
    }

    public static byte[] SHA1(String str) throws Throwable {
        byte[] bytes = str.getBytes("utf-8");
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
        messageDigest.update(bytes);
        return messageDigest.digest();
    }

    public static String base62(long j4) {
        String str = j4 == 0 ? "0" : "";
        while (j4 > 0) {
            j4 /= 62;
            str = String.valueOf(CHAT_SET.charAt((int) (j4 % 62))) + str;
        }
        return str;
    }

    public static String byteToHex(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < bArr.length; i2++) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(bArr[i2])));
        }
        return stringBuffer.toString();
    }

    public static HashMap<String, Object> parseJson(String str) {
        return hashon.fromJson(str);
    }

    public static byte[] rawMD5(String str) {
        if (str == null) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes("utf-8"));
            return messageDigest.digest();
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static String urlEncode(String str, String str2) throws Throwable {
        return URLEncoder.encode(str, str2).replace("\\+", "%20");
    }

    public static String parseJson(HashMap<String, Object> hashMap) {
        return hashon.fromHashMap(hashMap);
    }

    public static byte[] AES128Decode(byte[] bArr, byte[] bArr2) throws Throwable {
        byte[] bArr3 = new byte[16];
        System.arraycopy(bArr, 0, bArr3, 0, Math.min(bArr.length, 16));
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr3, "AES");
        Cipher cipher = Cipher.getInstance("AES/ECB/NoPadding", "BC");
        cipher.init(2, secretKeySpec);
        byte[] bArr4 = new byte[cipher.getOutputSize(bArr2.length)];
        cipher.doFinal(bArr4, cipher.update(bArr2, 0, bArr2.length, bArr4, 0));
        return bArr4;
    }

    public static byte[] AES128Encode(byte[] bArr, String str) throws Throwable {
        byte[] bytes = str.getBytes("UTF-8");
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        Cipher cipher = Cipher.getInstance("AES/ECB/PKCS7Padding", "BC");
        cipher.init(1, secretKeySpec);
        byte[] bArr2 = new byte[cipher.getOutputSize(bytes.length)];
        cipher.doFinal(bArr2, cipher.update(bytes, 0, bytes.length, bArr2, 0));
        return bArr2;
    }
}
