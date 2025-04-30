package com.umeng.analytics.filter;

import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
/* compiled from: EventWhiteList.java */
/* loaded from: classes4.dex */
public class b extends EventList {

    /* renamed from: a  reason: collision with root package name */
    private d f60373a;

    /* renamed from: b  reason: collision with root package name */
    private Object f60374b;

    public b(String str, String str2) {
        super(str, str2);
        this.f60374b = new Object();
    }

    @Override // com.umeng.analytics.filter.EventList
    protected void eventListChange() {
        if (TextUtils.isEmpty(this.mEventList)) {
            return;
        }
        synchronized (this.f60374b) {
            this.f60373a = null;
            this.f60373a = new d(true, this.mEventList);
        }
    }

    @Override // com.umeng.analytics.filter.EventList
    public boolean matchHit(String str) {
        boolean a4;
        if (TextUtils.isEmpty(this.mEventList)) {
            return true;
        }
        synchronized (this.f60374b) {
            if (this.f60373a == null) {
                this.f60373a = new d(true, this.mEventList);
            }
            a4 = this.f60373a.a(str);
        }
        return a4;
    }

    @Override // com.umeng.analytics.filter.EventList
    public void setMD5ClearFlag(boolean z3) {
        AnalyticsConfig.CLEAR_EKV_WL = z3;
    }
}
