package cn.sharesdk.sina.weibo.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.content.res.ColorStateList;
import android.util.StateSet;
import com.mob.tools.utils.Data;
/* compiled from: Utils.java */
/* loaded from: classes2.dex */
public class a {
    public static ColorStateList a(int i2, int i4) {
        return new ColorStateList(new int[][]{new int[]{16842919}, new int[]{16842913}, new int[]{16842908}, StateSet.WILD_CARD}, new int[]{i4, i4, i4, i2});
    }

    public static String a(Context context, String str) {
        try {
            PackageInfo b4 = cn.sharesdk.framework.utils.a.b(str, 64);
            int i2 = 0;
            while (true) {
                Signature[] signatureArr = b4.signatures;
                if (i2 >= signatureArr.length) {
                    break;
                }
                byte[] byteArray = signatureArr[i2].toByteArray();
                if (byteArray != null) {
                    return Data.MD5(byteArray);
                }
                i2++;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static byte[] a(byte[] bArr) {
        boolean z3;
        char[] charArray = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".toCharArray();
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
            int i9 = 64;
            bArr2[i4 + 3] = (byte) charArray[z4 ? i7 & 63 : 64];
            int i10 = i7 >> 6;
            int i11 = i4 + 2;
            if (z3) {
                i9 = i10 & 63;
            }
            bArr2[i11] = (byte) charArray[i9];
            int i12 = i10 >> 6;
            bArr2[i4 + 1] = (byte) charArray[i12 & 63];
            bArr2[i4 + 0] = (byte) charArray[(i12 >> 6) & 63];
            i2 += 3;
            i4 += 4;
        }
        return bArr2;
    }
}
