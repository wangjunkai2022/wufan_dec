package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.utils.UMUtils;
/* compiled from: SessionIdGenerateServiceImpl.java */
/* loaded from: classes4.dex */
class w implements v {

    /* renamed from: a  reason: collision with root package name */
    private long f60911a = AnalyticsConfig.kContinueSessionMillis;

    @Override // com.umeng.analytics.pro.v
    public void a(long j4) {
        this.f60911a = j4;
    }

    @Override // com.umeng.analytics.pro.v
    public long a() {
        return this.f60911a;
    }

    @Override // com.umeng.analytics.pro.v
    public String a(Context context) {
        String appkey = UMUtils.getAppkey(context);
        long currentTimeMillis = System.currentTimeMillis();
        if (appkey != null) {
            return UMUtils.MD5(currentTimeMillis + appkey + "02:00:00:00:00:00");
        }
        throw new RuntimeException("Appkey is null or empty, Please check!");
    }

    @Override // com.umeng.analytics.pro.v
    public boolean a(long j4, long j5) {
        long currentTimeMillis = System.currentTimeMillis();
        return (j4 == 0 || currentTimeMillis - j4 >= this.f60911a) && j5 > 0 && currentTimeMillis - j5 > this.f60911a;
    }

    @Override // com.umeng.analytics.pro.v
    public void a(Context context, String str) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            SharedPreferences.Editor edit = PreferenceWrapper.getDefault(context).edit();
            edit.putString("session_id", str);
            edit.putLong(t.f60892b, 0L);
            edit.putLong(t.f60895e, currentTimeMillis);
            edit.putLong(t.f60896f, 0L);
            edit.commit();
        } catch (Exception unused) {
        }
    }
}
