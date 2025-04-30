package com.join.mgps.Util;

import java.io.File;
import java.io.FileInputStream;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;
/* compiled from: MD5Util.java */
/* loaded from: classes3.dex */
public class v0 {
    public static String a(byte[] bArr) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(bArr);
            StringBuilder sb = new StringBuilder(digest.length * 2);
            for (byte b4 : digest) {
                int i2 = b4 & 255;
                if (i2 < 16) {
                    sb.append("0");
                }
                sb.append(Integer.toHexString(i2));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static Map<String, String> b(File file, boolean z3) {
        File[] listFiles;
        if (file.isDirectory()) {
            HashMap hashMap = new HashMap();
            for (File file2 : file.listFiles()) {
                if (file2.isDirectory() && z3) {
                    hashMap.putAll(b(file2, z3));
                } else {
                    String c4 = c(file2);
                    if (c4 != null) {
                        hashMap.put(file2.getPath(), c4);
                    }
                }
            }
            return hashMap;
        }
        return null;
    }

    public static String c(File file) {
        if (file.isFile()) {
            byte[] bArr = new byte[102400];
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                FileInputStream fileInputStream = new FileInputStream(file);
                while (true) {
                    int read = fileInputStream.read(bArr, 0, 102400);
                    if (read == -1) {
                        break;
                    }
                    messageDigest.update(bArr, 0, read);
                }
                fileInputStream.close();
                String bigInteger = new BigInteger(1, messageDigest.digest()).toString(16);
                while (bigInteger.length() < 32) {
                    bigInteger = "0" + bigInteger;
                }
                if (bigInteger.length() == 31) {
                    return "0" + bigInteger;
                }
                return bigInteger;
            } catch (Exception e4) {
                e4.printStackTrace();
                return "";
            }
        }
        return "";
    }

    public static String d(String str) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder(digest.length * 2);
            for (byte b4 : digest) {
                int i2 = b4 & 255;
                if (i2 < 16) {
                    sb.append("0");
                }
                sb.append(Integer.toHexString(i2));
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e4) {
            e4.printStackTrace();
            return null;
        } catch (NoSuchAlgorithmException e5) {
            e5.printStackTrace();
            return null;
        }
    }
}
