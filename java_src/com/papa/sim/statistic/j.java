package com.papa.sim.statistic;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* compiled from: MD5Util.java */
/* loaded from: classes4.dex */
public class j {
    public static String a(String str) {
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
