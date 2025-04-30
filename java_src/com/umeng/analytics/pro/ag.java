package com.umeng.analytics.pro;

import android.content.Context;
import com.umeng.commonsdk.debug.UMLog;
/* compiled from: XiaomiDeviceIdSupplier.java */
/* loaded from: classes4.dex */
class ag implements y {
    @Override // com.umeng.analytics.pro.y
    public String a(Context context) {
        String str = null;
        try {
            if (!org.repackage.com.miui.deviceid.b.c()) {
                UMLog.mutlInfo(2, "当前设备不支持获取OAID");
            } else {
                str = org.repackage.com.miui.deviceid.b.d(context);
            }
        } catch (Exception unused) {
            UMLog.mutlInfo(2, "未检测到您集成OAID SDK包");
        }
        return str;
    }
}
