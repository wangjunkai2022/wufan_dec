package com.bytedance.pangle.util;

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static String f10383a = "DES/ECB/NoPadding";

    /* renamed from: b  reason: collision with root package name */
    public static String f10384b = "DESede/ECB/NoPadding";

    /* renamed from: c  reason: collision with root package name */
    public static String f10385c = "AES/ECB/NoPadding";

    /* renamed from: d  reason: collision with root package name */
    private static final char[] f10386d = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static String a(String str) {
        return b(a(str.getBytes(), "MD5"));
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x003c: MOVE  (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:26:0x003c */
    private static byte[] b(File file) {
        Closeable closeable;
        FileInputStream fileInputStream;
        Closeable closeable2 = null;
        try {
            if (file == null) {
                return null;
            }
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    DigestInputStream digestInputStream = new DigestInputStream(fileInputStream, MessageDigest.getInstance("MD5"));
                    do {
                    } while (digestInputStream.read(new byte[262144]) > 0);
                    byte[] digest = digestInputStream.getMessageDigest().digest();
                    f.a(fileInputStream);
                    return digest;
                } catch (IOException e4) {
                    e = e4;
                    e.printStackTrace();
                    f.a(fileInputStream);
                    return null;
                } catch (NoSuchAlgorithmException e5) {
                    e = e5;
                    e.printStackTrace();
                    f.a(fileInputStream);
                    return null;
                }
            } catch (IOException e6) {
                e = e6;
                fileInputStream = null;
                e.printStackTrace();
                f.a(fileInputStream);
                return null;
            } catch (NoSuchAlgorithmException e7) {
                e = e7;
                fileInputStream = null;
                e.printStackTrace();
                f.a(fileInputStream);
                return null;
            } catch (Throwable th) {
                th = th;
                f.a(closeable2);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            closeable2 = closeable;
        }
    }

    public static String a(File file) {
        return b(b(file));
    }

    private static byte[] a(byte[] bArr, String str) {
        if (bArr != null && bArr.length > 0) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(str);
                messageDigest.update(bArr);
                return messageDigest.digest();
            } catch (NoSuchAlgorithmException e4) {
                e4.printStackTrace();
            }
        }
        return null;
    }

    public static String a(byte[] bArr) {
        return b(a(bArr, "MD5"));
    }

    private static String b(byte[] bArr) {
        int length;
        if (bArr != null && (length = bArr.length) > 0) {
            char[] cArr = new char[length << 1];
            int i2 = 0;
            for (int i4 = 0; i4 < length; i4++) {
                int i5 = i2 + 1;
                char[] cArr2 = f10386d;
                cArr[i2] = cArr2[(bArr[i4] >>> 4) & 15];
                i2 = i5 + 1;
                cArr[i5] = cArr2[bArr[i4] & 15];
            }
            return new String(cArr);
        }
        return null;
    }

    public static String b(String str) {
        boolean z3 = false;
        if (str != null) {
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                if (!Character.isWhitespace(str.charAt(i2))) {
                    break;
                }
            }
        }
        z3 = true;
        return a(z3 ? null : new File(str));
    }
}
