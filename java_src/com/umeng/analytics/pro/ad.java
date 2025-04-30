package com.umeng.analytics.pro;

import android.content.Context;
import com.umeng.commonsdk.debug.UMLog;
/* compiled from: OppoDeviceIdSupplier.java */
/* loaded from: classes4.dex */
public class ad implements y {

    /* renamed from: a  reason: collision with root package name */
    private boolean f60391a = false;

    @Override // com.umeng.analytics.pro.y
    public String a(Context context) {
        try {
            if (!this.f60391a) {
                n3.a.a(context);
                this.f60391a = true;
            }
            if (!n3.a.b()) {
                UMLog.mutlInfo(2, "当前设备不支持获取OAID");
                return null;
            }
            return n3.a.d(context);
        } catch (Exception unused) {
            UMLog.mutlInfo(2, "未检测到您集成OAID SDK包");
            return null;
        }
    }
}
