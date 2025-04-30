package com.join.mgps.Util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.text.TextUtils;
import java.security.MessageDigest;
import java.util.HashMap;
/* compiled from: ApkSignUtil.java */
/* loaded from: classes3.dex */
public class g {
    public static String a(byte[] bArr) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            byte[] digest = messageDigest.digest();
            char[] cArr2 = new char[digest.length * 2];
            int i2 = 0;
            for (byte b4 : digest) {
                int i4 = i2 + 1;
                cArr2[i2] = cArr[(b4 >>> 4) & 15];
                i2 = i4 + 1;
                cArr2[i4] = cArr[b4 & 15];
            }
            return new String(cArr2);
        } catch (Exception unused) {
            return null;
        }
    }

    public static Signature[] b(Context context, String str) {
        try {
            for (PackageInfo packageInfo : context.getPackageManager().getInstalledPackages(64)) {
                if (packageInfo.packageName.equals(str)) {
                    return packageInfo.signatures;
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static HashMap<String, Boolean> c(Context context) {
        String str;
        Signature[] signatureArr;
        HashMap<String, Boolean> hashMap = new HashMap<>();
        try {
            for (PackageInfo packageInfo : context.getPackageManager().getInstalledPackages(64)) {
                try {
                    str = packageInfo.packageName;
                    signatureArr = packageInfo.signatures;
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                if (signatureArr != null && signatureArr.length != 0) {
                    String a4 = a(signatureArr[0].toByteArray());
                    if ((!TextUtils.isEmpty(a4) && (a4.equals("071276c307390f9b7a48524b3534f53d") || a4.equals("d47e9679b19f1d0fa4aea58f83eda3f7"))) || a4.equals("fc007c2e2c0a43cd1f5f3a561cdca088")) {
                        hashMap.put(str, Boolean.TRUE);
                    }
                }
                hashMap.put(str, Boolean.FALSE);
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        return hashMap;
    }

    public static boolean d(Context context, String str) {
        try {
            Signature[] b4 = b(context, str);
            if (b4 != null && b4.length != 0) {
                String a4 = a(b4[0].toByteArray());
                if (TextUtils.isEmpty(a4) || (!a4.equals("071276c307390f9b7a48524b3534f53d") && !a4.equals("d47e9679b19f1d0fa4aea58f83eda3f7"))) {
                    if (!a4.equals("fc007c2e2c0a43cd1f5f3a561cdca088")) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }
}
