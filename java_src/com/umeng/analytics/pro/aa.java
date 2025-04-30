package com.umeng.analytics.pro;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
/* compiled from: DeviceIdSupplier.java */
/* loaded from: classes4.dex */
public class aa {
    public static y a(Context context) {
        String str = Build.BRAND;
        ah.a("Device", "Brand", str);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!str.equalsIgnoreCase("huawei") && !str.equalsIgnoreCase("honor") && !str.equalsIgnoreCase("华为")) {
            if (!str.equalsIgnoreCase("xiaomi") && !str.equalsIgnoreCase("redmi") && !str.equalsIgnoreCase("meitu") && !str.equalsIgnoreCase("小米")) {
                if (str.equalsIgnoreCase("vivo")) {
                    return new af();
                }
                if (!str.equalsIgnoreCase("oppo") && !str.equalsIgnoreCase("oneplus")) {
                    if (!str.equalsIgnoreCase("lenovo") && !str.equalsIgnoreCase("zuk")) {
                        if (Build.MANUFACTURER.equalsIgnoreCase("SAMSUNG")) {
                            return new ae();
                        }
                        return null;
                    }
                    return new ac();
                }
                return new ad();
            }
            return new ag();
        }
        return new ab();
    }
}
