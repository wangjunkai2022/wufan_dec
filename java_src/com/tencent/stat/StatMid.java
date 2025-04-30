package com.tencent.stat;

import android.content.Context;
import com.tencent.stat.common.StatLogger;
/* loaded from: classes4.dex */
public class StatMid {

    /* renamed from: a  reason: collision with root package name */
    private static StatLogger f59965a = com.tencent.stat.common.k.b();

    /* renamed from: b  reason: collision with root package name */
    private static DeviceInfo f59966b = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized DeviceInfo a(Context context) {
        DeviceInfo deviceInfo;
        synchronized (StatMid.class) {
            try {
                a a4 = a.a(context);
                DeviceInfo a5 = a(a4.d(DeviceInfo.TAG_FLAG, null));
                StatLogger statLogger = f59965a;
                statLogger.d("get device info from internal storage:" + a5);
                DeviceInfo a6 = a(a4.f(DeviceInfo.TAG_FLAG, null));
                StatLogger statLogger2 = f59965a;
                statLogger2.d("get device info from setting.system:" + a6);
                DeviceInfo a7 = a(a4.b(DeviceInfo.TAG_FLAG, null));
                StatLogger statLogger3 = f59965a;
                statLogger3.d("get device info from SharedPreference:" + a7);
                DeviceInfo a8 = a(a7, a6, a5);
                f59966b = a8;
                if (a8 == null) {
                    f59966b = new DeviceInfo();
                }
                DeviceInfo b4 = n.a(context).b(context);
                if (b4 != null) {
                    f59966b.d(b4.getImei());
                    f59966b.e(b4.getMac());
                    f59966b.b(b4.getUserType());
                }
                deviceInfo = f59966b;
            }
        }
        return deviceInfo;
    }

    static DeviceInfo a(DeviceInfo deviceInfo, DeviceInfo deviceInfo2) {
        if (deviceInfo != null && deviceInfo2 != null) {
            return deviceInfo.a(deviceInfo2) >= 0 ? deviceInfo : deviceInfo2;
        } else if (deviceInfo != null) {
            return deviceInfo;
        } else {
            if (deviceInfo2 != null) {
                return deviceInfo2;
            }
            return null;
        }
    }

    static DeviceInfo a(DeviceInfo deviceInfo, DeviceInfo deviceInfo2, DeviceInfo deviceInfo3) {
        return a(a(deviceInfo, deviceInfo2), a(deviceInfo2, deviceInfo3));
    }

    private static DeviceInfo a(String str) {
        if (str != null) {
            return DeviceInfo.a(com.tencent.stat.common.k.d(str));
        }
        return null;
    }

    public static DeviceInfo getDeviceInfo(Context context) {
        if (context == null) {
            f59965a.error("Context for StatConfig.getDeviceInfo is null.");
            return null;
        }
        if (f59966b == null) {
            a(context);
        }
        return f59966b;
    }

    public static String getMid(Context context) {
        if (f59966b == null) {
            getDeviceInfo(context);
        }
        return f59966b.getMid();
    }

    public static void updateDeviceInfo(Context context, String str) {
        try {
            getDeviceInfo(context);
            f59966b.c(str);
            DeviceInfo deviceInfo = f59966b;
            deviceInfo.a(deviceInfo.a() + 1);
            f59966b.a(System.currentTimeMillis());
            String jSONObject = f59966b.c().toString();
            StatLogger statLogger = f59965a;
            statLogger.d("save DeviceInfo:" + jSONObject);
            String replace = com.tencent.stat.common.k.c(jSONObject).replace("\n", "");
            a a4 = a.a(context);
            a4.c(DeviceInfo.TAG_FLAG, replace);
            a4.e(DeviceInfo.TAG_FLAG, replace);
            a4.a(DeviceInfo.TAG_FLAG, replace);
        } catch (Throwable th) {
            f59965a.e(th);
        }
    }
}
