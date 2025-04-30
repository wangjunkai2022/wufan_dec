package com.alipay.security.mobile.module.commonutils.crypto;

import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final String f9885a = "HmacSHA1";

    /* renamed from: b  reason: collision with root package name */
    public static final String f9886b = "HMAC-SHA-1";

    /* renamed from: c  reason: collision with root package name */
    public static final String f9887c = "RAW";

    /* renamed from: d  reason: collision with root package name */
    public static final byte[] f9888d = e.d("7B726A5DDD72CBF8D1700FB6EB278AFD7559C40A3761E5A71614D0AC9461ED8EE9F6AAEB443CD648");

    private c() {
    }

    private static String a(String str) {
        Mac mac;
        if (com.alipay.security.mobile.module.commonutils.a.b(str)) {
            return null;
        }
        try {
            try {
                mac = Mac.getInstance(f9885a);
            } catch (NoSuchAlgorithmException | Exception unused) {
                return null;
            }
        } catch (NoSuchAlgorithmException unused2) {
            mac = Mac.getInstance(f9886b);
        }
        mac.init(new SecretKeySpec(f9888d, f9887c));
        byte[] doFinal = mac.doFinal(str.getBytes("UTF-8"));
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < 16; i2++) {
            sb.append(String.format("%02x", Byte.valueOf(doFinal[i2])));
        }
        return sb.toString();
    }

    public static byte[] b(byte[] bArr, byte[] bArr2) {
        Mac mac;
        try {
            mac = Mac.getInstance(f9885a);
        } catch (NoSuchAlgorithmException unused) {
            mac = Mac.getInstance(f9886b);
        }
        mac.init(new SecretKeySpec(bArr2, f9887c));
        return mac.doFinal(bArr);
    }
}
