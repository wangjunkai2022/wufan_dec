package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.config.FieldManager;
/* compiled from: IDFATracker.java */
/* loaded from: classes4.dex */
public class c extends a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f61349a = "idfa";

    /* renamed from: b  reason: collision with root package name */
    private Context f61350b;

    public c(Context context) {
        super(f61349a);
        this.f61350b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        String a4 = FieldManager.allow(com.umeng.commonsdk.utils.b.f61536w) ? com.umeng.commonsdk.statistics.common.a.a(this.f61350b) : null;
        return a4 == null ? "" : a4;
    }
}
