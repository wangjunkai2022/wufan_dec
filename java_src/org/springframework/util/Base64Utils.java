package org.springframework.util;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Base64;
/* loaded from: classes5.dex */
public abstract class Base64Utils {
    private static final Charset DEFAULT_CHARSET = StandardCharsets.UTF_8;

    public static byte[] decode(byte[] bArr) {
        return bArr.length == 0 ? bArr : Base64.getDecoder().decode(bArr);
    }

    public static byte[] decodeFromString(String str) {
        return str.isEmpty() ? new byte[0] : decode(str.getBytes(DEFAULT_CHARSET));
    }

    public static byte[] decodeFromUrlSafeString(String str) {
        return decodeUrlSafe(str.getBytes(DEFAULT_CHARSET));
    }

    public static byte[] decodeUrlSafe(byte[] bArr) {
        return bArr.length == 0 ? bArr : Base64.getUrlDecoder().decode(bArr);
    }

    public static byte[] encode(byte[] bArr) {
        return bArr.length == 0 ? bArr : Base64.getEncoder().encode(bArr);
    }

    public static String encodeToString(byte[] bArr) {
        return bArr.length == 0 ? "" : new String(encode(bArr), DEFAULT_CHARSET);
    }

    public static String encodeToUrlSafeString(byte[] bArr) {
        return new String(encodeUrlSafe(bArr), DEFAULT_CHARSET);
    }

    public static byte[] encodeUrlSafe(byte[] bArr) {
        return bArr.length == 0 ? bArr : Base64.getUrlEncoder().encode(bArr);
    }
}
