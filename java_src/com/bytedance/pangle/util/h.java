package com.bytedance.pangle.util;

import android.os.Build;
import android.text.TextUtils;
/* loaded from: classes2.dex */
public final class h {
    public static boolean a() {
        return Build.VERSION.SDK_INT >= 21;
    }

    public static boolean b() {
        int i2 = Build.VERSION.SDK_INT;
        return i2 >= 21 && i2 <= 23;
    }

    public static boolean c() {
        return Build.VERSION.SDK_INT > 23;
    }

    public static boolean d() {
        int i2 = Build.VERSION.SDK_INT;
        return i2 >= 26 && i2 <= 27;
    }

    public static boolean e() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 28) {
            return i2 == 27 && Build.VERSION.PREVIEW_SDK_INT > 0;
        }
        return true;
    }

    public static boolean f() {
        return TextUtils.equals(Build.BRAND.toLowerCase(), "huawei");
    }
}
