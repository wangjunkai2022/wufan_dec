package com.papa91.arc.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class MD5Util {
    public static String byteToMD5(byte[] bArr) {
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

    public static Map<String, String> getDirMD5(File file, boolean z3) {
        File[] listFiles;
        if (file.isDirectory()) {
            HashMap hashMap = new HashMap();
            for (File file2 : file.listFiles()) {
                if (file2.isDirectory() && z3) {
                    hashMap.putAll(getDirMD5(file2, z3));
                } else {
                    String fileMD5 = getFileMD5(file2);
                    if (fileMD5 != null) {
                        hashMap.put(file2.getPath(), fileMD5);
                    }
                }
            }
            return hashMap;
        }
        return null;
    }

    public static String getFileMD5(File file) {
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

    public static String stringToMD5(String str) {
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
