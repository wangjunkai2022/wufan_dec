package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.config.FieldManager;
/* compiled from: UTDIdTracker.java */
/* loaded from: classes4.dex */
public class l extends a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f61381a = "utdid";

    /* renamed from: b  reason: collision with root package name */
    private Context f61382b;

    public l(Context context) {
        super("utdid");
        this.f61382b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        try {
            if (FieldManager.allow(com.umeng.commonsdk.utils.b.f61534u)) {
                return (String) j2.c.class.getMethod("getUtdid", Context.class).invoke(null, this.f61382b);
            }
        } catch (Exception unused) {
        }
        return null;
    }
}
