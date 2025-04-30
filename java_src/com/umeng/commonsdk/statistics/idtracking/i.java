package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.commonsdk.config.FieldManager;
/* compiled from: OaidTracking.java */
/* loaded from: classes4.dex */
public class i extends a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f61371a = "umeng_sp_oaid";

    /* renamed from: b  reason: collision with root package name */
    public static final String f61372b = "key_umeng_sp_oaid";

    /* renamed from: c  reason: collision with root package name */
    public static final String f61373c = "key_umeng_sp_oaid_required_time";

    /* renamed from: d  reason: collision with root package name */
    private static final String f61374d = "oaid";

    /* renamed from: e  reason: collision with root package name */
    private Context f61375e;

    public i(Context context) {
        super(f61374d);
        this.f61375e = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        if (FieldManager.allow(com.umeng.commonsdk.utils.b.G)) {
            try {
                SharedPreferences sharedPreferences = this.f61375e.getSharedPreferences(f61371a, 0);
                if (sharedPreferences != null) {
                    return sharedPreferences.getString(f61372b, "");
                }
                return null;
            } catch (Throwable unused) {
                return null;
            }
        }
        return null;
    }
}
