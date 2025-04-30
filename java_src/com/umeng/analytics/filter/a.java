package com.umeng.analytics.filter;

import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
/* compiled from: EventBlackList.java */
/* loaded from: classes4.dex */
public class a extends EventList {

    /* renamed from: a  reason: collision with root package name */
    private d f60371a;

    /* renamed from: b  reason: collision with root package name */
    private Object f60372b;

    public a(String str, String str2) {
        super(str, str2);
        this.f60372b = new Object();
    }

    @Override // com.umeng.analytics.filter.EventList
    protected void eventListChange() {
        if (TextUtils.isEmpty(this.mEventList)) {
            return;
        }
        synchronized (this.f60372b) {
            this.f60371a = null;
            this.f60371a = new d(false, this.mEventList);
        }
    }

    @Override // com.umeng.analytics.filter.EventList
    public boolean matchHit(String str) {
        boolean a4;
        if (TextUtils.isEmpty(this.mEventList)) {
            return false;
        }
        synchronized (this.f60372b) {
            if (this.f60371a == null) {
                this.f60371a = new d(false, this.mEventList);
            }
            a4 = this.f60371a.a(str);
        }
        return a4;
    }

    @Override // com.umeng.analytics.filter.EventList
    public void setMD5ClearFlag(boolean z3) {
        AnalyticsConfig.CLEAR_EKV_BL = z3;
    }
}
