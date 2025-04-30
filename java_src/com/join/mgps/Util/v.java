package com.join.mgps.Util;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESedeKeySpec;
import javax.crypto.spec.IvParameterSpec;
/* compiled from: Crypto3DES.java */
/* loaded from: classes3.dex */
public class v {

    /* renamed from: a  reason: collision with root package name */
    private static final String f27865a = "cf9b337069cb5dec34d1b3f266306bd8";

    /* renamed from: b  reason: collision with root package name */
    private static final String f27866b = "01234567";

    /* renamed from: c  reason: collision with root package name */
    private static final String f27867c = "utf-8";

    /* compiled from: Crypto3DES.java */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final char[] f27868a = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();

        private static int a(char c4) {
            int i2;
            if (c4 < 'A' || c4 > 'Z') {
                if (c4 >= 'a' && c4 <= 'z') {
                    i2 = c4 - 'a';
                } else if (c4 < '0' || c4 > '9') {
                    if (c4 != '+') {
                        if (c4 != '/') {
                            if (c4 == '=') {
                                return 0;
                            }
                            throw new RuntimeException("unexpected code: " + c4);
                        }
                        return 63;
                    }
                    return 62;
                } else {
                    i2 = (c4 - '0') + 26;
                }
                return i2 + 26;
            }
            return c4 - 'A';
        }

        private static void b(String str, OutputStream outputStream) throws IOException {
            int length = str.length();
            int i2 = 0;
            while (true) {
                if (i2 < length && str.charAt(i2) <= ' ') {
                    i2++;
                } else if (i2 == length) {
                    return;
                } else {
                    int i4 = i2 + 2;
                    int i5 = i2 + 3;
                    int a4 = (a(str.charAt(i2)) << 18) + (a(str.charAt(i2 + 1)) << 12) + (a(str.charAt(i4)) << 6) + a(str.charAt(i5));
                    outputStream.write((a4 >> 16) & 255);
                    if (str.charAt(i4) == '=') {
                        return;
                    }
                    outputStream.write((a4 >> 8) & 255);
                    if (str.charAt(i5) == '=') {
                        return;
                    }
                    outputStream.write(a4 & 255);
                    i2 += 4;
                }
            }
        }

        public static byte[] c(String str) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                b(str, byteArrayOutputStream);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    byteArrayOutputStream.close();
                } catch (IOException e4) {
                    PrintStream printStream = System.err;
                    printStream.println("Error while decoding BASE64: " + e4.toString());
                }
                return byteArray;
            } catch (IOException unused) {
                throw new RuntimeException();
            }
        }

        public static String d(byte[] bArr) {
            int length = bArr.length;
            StringBuffer stringBuffer = new StringBuffer((bArr.length * 3) / 2);
            int i2 = length - 3;
            int i4 = 0;
            loop0: while (true) {
                int i5 = 0;
                while (i4 <= i2) {
                    int i6 = ((bArr[i4] & 255) << 16) | ((bArr[i4 + 1] & 255) << 8) | (bArr[i4 + 2] & 255);
                    char[] cArr = f27868a;
                    stringBuffer.append(cArr[(i6 >> 18) & 63]);
                    stringBuffer.append(cArr[(i6 >> 12) & 63]);
                    stringBuffer.append(cArr[(i6 >> 6) & 63]);
                    stringBuffer.append(cArr[i6 & 63]);
                    i4 += 3;
                    int i7 = i5 + 1;
                    if (i5 >= 14) {
                        break;
                    }
                    i5 = i7;
                }
                stringBuffer.append(" ");
            }
            int i8 = 0 + length;
            if (i4 == i8 - 2) {
                int i9 = ((bArr[i4 + 1] & 255) << 8) | ((bArr[i4] & 255) << 16);
                char[] cArr2 = f27868a;
                stringBuffer.append(cArr2[(i9 >> 18) & 63]);
                stringBuffer.append(cArr2[(i9 >> 12) & 63]);
                stringBuffer.append(cArr2[(i9 >> 6) & 63]);
                stringBuffer.append(SimpleComparison.EQUAL_TO_OPERATION);
            } else if (i4 == i8 - 1) {
                int i10 = (bArr[i4] & 255) << 16;
                char[] cArr3 = f27868a;
                stringBuffer.append(cArr3[(i10 >> 18) & 63]);
                stringBuffer.append(cArr3[(i10 >> 12) & 63]);
                stringBuffer.append("==");
            }
            return stringBuffer.toString();
        }
    }

    public static String a(String str) throws Exception {
        SecretKey generateSecret = SecretKeyFactory.getInstance("desede").generateSecret(new DESedeKeySpec(f27865a.getBytes()));
        Cipher cipher = Cipher.getInstance("desede/CBC/PKCS5Padding");
        cipher.init(2, generateSecret, new IvParameterSpec(f27866b.getBytes()));
        return new String(cipher.doFinal(a.c(str)), f27867c);
    }

    public static String b(String str) throws Exception {
        SecretKey generateSecret = SecretKeyFactory.getInstance("desede").generateSecret(new DESedeKeySpec(f27865a.getBytes()));
        Cipher cipher = Cipher.getInstance("desede/CBC/PKCS5Padding");
        cipher.init(1, generateSecret, new IvParameterSpec(f27866b.getBytes()));
        return a.d(cipher.doFinal(str.getBytes(f27867c)));
    }

    public static String c(String str) {
        try {
            byte[] bytes = str.getBytes(net.lingala.zip4j.util.e.A0);
            int length = bytes.length + (8 - (bytes.length % 8));
            byte[] bArr = new byte[length];
            System.arraycopy(bytes, 0, bArr, 0, bytes.length);
            for (int length2 = bytes.length; length2 < length; length2++) {
                bArr[length2] = 0;
            }
            return new String(bArr, net.lingala.zip4j.util.e.A0);
        } catch (UnsupportedEncodingException unused) {
            System.out.println("Crypter.padding UnsupportedEncodingException");
            return null;
        }
    }
}
