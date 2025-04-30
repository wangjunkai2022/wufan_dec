package com.sina.weibo.sdk.b;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Bundle;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLDecoder;
import okio.Utf8;
/* loaded from: classes4.dex */
public final class e {
    private static char[] ak = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".toCharArray();
    private static byte[] al = new byte[256];

    static {
        for (int i2 = 0; i2 < 256; i2++) {
            al[i2] = -1;
        }
        for (int i4 = 65; i4 <= 90; i4++) {
            al[i4] = (byte) (i4 - 65);
        }
        for (int i5 = 97; i5 <= 122; i5++) {
            al[i5] = (byte) ((i5 + 26) - 97);
        }
        for (int i6 = 48; i6 <= 57; i6++) {
            al[i6] = (byte) ((i6 + 52) - 48);
        }
        byte[] bArr = al;
        bArr[43] = 62;
        bArr[47] = Utf8.REPLACEMENT_BYTE;
    }

    public static int a(int i2, Context context) {
        return (int) ((i2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static String b(Context context, String str) {
        Signature[] signatureArr;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 64);
            if (packageInfo == null || (signatureArr = packageInfo.signatures) == null || signatureArr.length <= 0) {
                return null;
            }
            return d.a(signatureArr[0].toByteArray());
        } catch (PackageManager.NameNotFoundException e4) {
            e4.printStackTrace();
            return null;
        } catch (Exception e5) {
            e5.printStackTrace();
            return null;
        }
    }

    public static Bundle g(String str) {
        try {
            return i(new URL(str).getQuery());
        } catch (MalformedURLException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static Bundle h(String str) {
        try {
            return i(new URI(str).getQuery());
        } catch (URISyntaxException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    private static Bundle i(String str) {
        Bundle bundle = new Bundle();
        if (str != null) {
            for (String str2 : str.split(m.a.f72566d)) {
                String[] split = str2.split(SimpleComparison.EQUAL_TO_OPERATION);
                try {
                    if (split.length == 2) {
                        bundle.putString(URLDecoder.decode(split[0], "UTF-8"), URLDecoder.decode(split[1], "UTF-8"));
                    } else if (split.length == 1) {
                        bundle.putString(URLDecoder.decode(split[0], "UTF-8"), "");
                    }
                } catch (UnsupportedEncodingException e4) {
                    e4.printStackTrace();
                }
            }
        }
        return bundle;
    }

    public static String o() {
        return Build.MANUFACTURER + "-" + Build.MODEL + "_" + Build.VERSION.RELEASE + "_weibosdk_0041005000_android";
    }

    public static byte[] b(byte[] bArr) {
        boolean z3;
        byte[] bArr2 = new byte[((bArr.length + 2) / 3) * 4];
        int i2 = 0;
        int i4 = 0;
        while (i2 < bArr.length) {
            int i5 = (bArr[i2] & 255) << 8;
            int i6 = i2 + 1;
            boolean z4 = true;
            if (i6 < bArr.length) {
                i5 |= bArr[i6] & 255;
                z3 = true;
            } else {
                z3 = false;
            }
            int i7 = i5 << 8;
            int i8 = i2 + 2;
            if (i8 < bArr.length) {
                i7 |= bArr[i8] & 255;
            } else {
                z4 = false;
            }
            int i9 = i4 + 3;
            char[] cArr = ak;
            int i10 = 64;
            bArr2[i9] = (byte) cArr[z4 ? i7 & 63 : 64];
            int i11 = i7 >> 6;
            int i12 = i4 + 2;
            if (z3) {
                i10 = i11 & 63;
            }
            bArr2[i12] = (byte) cArr[i10];
            int i13 = i11 >> 6;
            bArr2[i4 + 1] = (byte) cArr[i13 & 63];
            bArr2[i4 + 0] = (byte) cArr[(i13 >> 6) & 63];
            i2 += 3;
            i4 += 4;
        }
        return bArr2;
    }
}
