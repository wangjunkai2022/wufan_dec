package com.xinzhu.overmind.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* compiled from: Md5Utils.java */
/* loaded from: classes.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f64773a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    private static String a(byte[] byteArray) {
        char[] cArr = new char[byteArray.length * 2];
        int i2 = 0;
        for (byte b4 : byteArray) {
            int i4 = i2 + 1;
            char[] cArr2 = f64773a;
            cArr[i2] = cArr2[(b4 >>> 4) & 15];
            i2 = i4 + 1;
            cArr[i4] = cArr2[b4 & 15];
        }
        return new String(cArr);
    }

    public static String b(File file) {
        try {
            if (file.isFile()) {
                FileInputStream fileInputStream = new FileInputStream(file);
                String c4 = c(fileInputStream);
                fileInputStream.close();
                return c4;
            }
            return null;
        } catch (FileNotFoundException e4) {
            e4.printStackTrace();
            return null;
        } catch (IOException e5) {
            e5.printStackTrace();
            return null;
        }
    }

    public static String c(InputStream in2) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bArr = new byte[1024];
            while (true) {
                int read = in2.read(bArr);
                if (read != -1) {
                    messageDigest.update(bArr, 0, read);
                } else {
                    in2.close();
                    return a(messageDigest.digest());
                }
            }
        } catch (FileNotFoundException e4) {
            e4.printStackTrace();
            return null;
        } catch (IOException e5) {
            e5.printStackTrace();
            return null;
        } catch (NoSuchAlgorithmException e6) {
            e6.printStackTrace();
            return null;
        }
    }

    public static String d(String input) {
        if (input == null) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(input.getBytes("utf-8"));
            return a(messageDigest.digest());
        } catch (Exception unused) {
            return null;
        }
    }
}
