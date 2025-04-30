package com.alipay.sdk.encrypt;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f9770a = "RSA";

    public static byte[] a(String str, String str2) {
        ByteArrayOutputStream byteArrayOutputStream;
        byte[] bArr = null;
        bArr = null;
        bArr = null;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            try {
                PublicKey generatePublic = KeyFactory.getInstance(f9770a).generatePublic(new X509EncodedKeySpec(a.d(str2)));
                Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
                cipher.init(1, generatePublic);
                byte[] bytes = str.getBytes("UTF-8");
                int blockSize = cipher.getBlockSize();
                byteArrayOutputStream = new ByteArrayOutputStream();
                for (int i2 = 0; i2 < bytes.length; i2 += blockSize) {
                    try {
                        byteArrayOutputStream.write(cipher.doFinal(bytes, i2, bytes.length - i2 < blockSize ? bytes.length - i2 : blockSize));
                    } catch (Exception unused) {
                        if (byteArrayOutputStream != null) {
                            byteArrayOutputStream.close();
                        }
                        return bArr;
                    } catch (Throwable th) {
                        th = th;
                        byteArrayOutputStream2 = byteArrayOutputStream;
                        if (byteArrayOutputStream2 != null) {
                            try {
                                byteArrayOutputStream2.close();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th;
                    }
                }
                bArr = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
            } catch (IOException unused3) {
            }
        } catch (Exception unused4) {
            byteArrayOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
        return bArr;
    }

    private static PublicKey b(String str, String str2) throws NoSuchAlgorithmException, Exception {
        return KeyFactory.getInstance(str).generatePublic(new X509EncodedKeySpec(a.d(str2)));
    }
}
