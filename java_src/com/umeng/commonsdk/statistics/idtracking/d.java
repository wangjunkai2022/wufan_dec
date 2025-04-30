package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
/* compiled from: IDMD5Tracker.java */
/* loaded from: classes4.dex */
public class d extends a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f61351a = "idmd5";

    /* renamed from: b  reason: collision with root package name */
    private Context f61352b;

    public d(Context context) {
        super("idmd5");
        this.f61352b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        return DeviceConfig.getDeviceIdUmengMD5(this.f61352b);
    }
}
