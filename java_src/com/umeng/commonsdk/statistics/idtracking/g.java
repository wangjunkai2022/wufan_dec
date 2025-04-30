package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
/* compiled from: MacTracker.java */
/* loaded from: classes4.dex */
public class g extends a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f61367a = "mac";

    /* renamed from: b  reason: collision with root package name */
    private Context f61368b;

    public g(Context context) {
        super(f61367a);
        this.f61368b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        try {
            return DeviceConfig.getMac(this.f61368b);
        } catch (Exception e4) {
            if (AnalyticsConstants.UM_DEBUG) {
                e4.printStackTrace();
            }
            UMCrashManager.reportCrash(this.f61368b, e4);
            return null;
        }
    }
}
