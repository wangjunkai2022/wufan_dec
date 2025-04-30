package com.ss.android.downloadlib.a.a;

import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import com.ss.android.downloadlib.addownload.j;
/* compiled from: DeviceUtils.java */
/* loaded from: classes4.dex */
public class b {
    public static String a(Context context) {
        try {
            return a(c.a(a(), "MD5"));
        } catch (Exception unused) {
            return null;
        }
    }

    public static String b(Context context) {
        String str;
        try {
            str = Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception e4) {
            e4.printStackTrace();
            str = null;
        }
        return TextUtils.isEmpty(str) ? "normal" : str;
    }

    public static String a() {
        return b(j.getContext());
    }

    public static String a(byte[] bArr) {
        return a.a(bArr);
    }
}
