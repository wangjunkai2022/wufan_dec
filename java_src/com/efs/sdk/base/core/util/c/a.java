package com.efs.sdk.base.core.util.c;

import com.efs.sdk.base.core.util.d;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final IvParameterSpec f11404a = new IvParameterSpec(new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0});

    public static byte[] a(byte[] bArr, String str) {
        try {
            SecretKeySpec a4 = a(str);
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, a4, f11404a);
            return cipher.doFinal(bArr);
        } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e4) {
            d.b("efs.base", "aes decrypt error", e4);
            return null;
        }
    }

    public static byte[] b(byte[] bArr, String str) {
        try {
            SecretKeySpec a4 = a(str);
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(1, a4, f11404a);
            return cipher.doFinal(bArr);
        } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e4) {
            d.b("efs.base", "aes encrypt error", e4);
            return null;
        }
    }

    private static SecretKeySpec a(String str) {
        return new SecretKeySpec(str.getBytes(), "AES");
    }

    public static byte[] a(String str, String str2) {
        try {
            return b(str.getBytes("UTF-8"), str2);
        } catch (UnsupportedEncodingException e4) {
            d.b("efs.base", "getBytes error", e4);
            return null;
        }
    }
}
