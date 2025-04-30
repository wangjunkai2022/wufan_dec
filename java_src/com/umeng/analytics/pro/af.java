package com.umeng.analytics.pro;

import android.content.Context;
import com.umeng.commonsdk.debug.UMLog;
/* compiled from: VivoDeviceIdSupplier.java */
/* loaded from: classes4.dex */
public class af implements y {
    @Override // com.umeng.analytics.pro.y
    public String a(Context context) {
        String str = null;
        try {
            if (!org.repackage.com.vivo.identifier.e.b(context)) {
                UMLog.mutlInfo(2, "当前设备不支持获取OAID");
            } else {
                str = org.repackage.com.vivo.identifier.e.c(context);
            }
        } catch (Exception unused) {
            UMLog.mutlInfo(2, "未检测到您集成OAID SDK包");
        }
        return str;
    }
}
