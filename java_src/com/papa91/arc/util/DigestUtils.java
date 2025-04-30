package com.papa91.arc.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes4.dex */
public abstract class DigestUtils {
    private static final char[] HEX_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final String MD5_ALGORITHM_NAME = "MD5";

    private static StringBuilder appendDigestAsHex(String str, byte[] bArr, StringBuilder sb) {
        sb.append(digestAsHexChars(str, bArr));
        return sb;
    }

    public static StringBuilder appendMd5DigestAsHex(byte[] bArr, StringBuilder sb) {
        return appendDigestAsHex(MD5_ALGORITHM_NAME, bArr, sb);
    }

    private static byte[] digest(String str, byte[] bArr) {
        return getDigest(str).digest(bArr);
    }

    private static char[] digestAsHexChars(String str, byte[] bArr) {
        return encodeHex(digest(str, bArr));
    }

    private static String digestAsHexString(String str, byte[] bArr) {
        return new String(digestAsHexChars(str, bArr));
    }

    private static char[] encodeHex(byte[] bArr) {
        char[] cArr = new char[32];
        for (int i2 = 0; i2 < 32; i2 += 2) {
            byte b4 = bArr[i2 / 2];
            char[] cArr2 = HEX_CHARS;
            cArr[i2] = cArr2[(b4 >>> 4) & 15];
            cArr[i2 + 1] = cArr2[b4 & 15];
        }
        return cArr;
    }

    private static MessageDigest getDigest(String str) {
        try {
            return MessageDigest.getInstance(str);
        } catch (NoSuchAlgorithmException e4) {
            throw new IllegalStateException("Could not find MessageDigest with algorithm \"" + str + m.a.f72569g, e4);
        }
    }

    public static byte[] md5Digest(byte[] bArr) {
        return digest(MD5_ALGORITHM_NAME, bArr);
    }

    public static String md5DigestAsHex(byte[] bArr) {
        return digestAsHexString(MD5_ALGORITHM_NAME, bArr);
    }
}
