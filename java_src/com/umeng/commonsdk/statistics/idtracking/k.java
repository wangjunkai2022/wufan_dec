package com.umeng.commonsdk.statistics.idtracking;

import com.umeng.commonsdk.statistics.common.DeviceConfig;
/* compiled from: SerialTracker.java */
/* loaded from: classes4.dex */
public class k extends a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f61380a = "serial";

    public k() {
        super(f61380a);
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        return DeviceConfig.getSerial();
    }
}
