package com.papa.sim.statistic;

import android.content.Context;
import android.telephony.TelephonyManager;
/* compiled from: RequestBeanUtil.java */
/* loaded from: classes4.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    private static String f55541a;

    /* renamed from: b  reason: collision with root package name */
    private static m f55542b;

    private m(Context context) {
        String deviceId = ((TelephonyManager) context.getSystemService("phone")).getDeviceId();
        f55541a = deviceId;
        if (deviceId == null || deviceId.equals("")) {
            f55541a = q.f(context).g().replaceAll(":", "");
        }
    }

    public static String a() {
        return f55541a;
    }

    public static m b(Context context) {
        if (f55542b == null) {
            f55542b = new m(context);
        }
        return f55542b;
    }
}
