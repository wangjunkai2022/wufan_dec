package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
/* compiled from: ImeiTracker.java */
/* loaded from: classes4.dex */
public class f extends a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f61365a = "imei";

    /* renamed from: b  reason: collision with root package name */
    private Context f61366b;

    public f(Context context) {
        super(f61365a);
        this.f61366b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        return DeviceConfig.getImeiNew(this.f61366b);
    }
}
