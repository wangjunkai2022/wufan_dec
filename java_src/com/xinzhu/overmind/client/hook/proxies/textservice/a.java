package com.xinzhu.overmind.client.hook.proxies.textservice;

import com.xinzhu.haunted.android.os.q;
import com.xinzhu.haunted.com.android.internal.textservice.a;
import com.xinzhu.overmind.client.hook.b;
import com.xinzhu.overmind.client.hook.common.d;
import com.xinzhu.overmind.utils.e;
/* compiled from: TextServicesManagerStub.java */
/* loaded from: classes.dex */
public class a extends b {

    /* renamed from: f  reason: collision with root package name */
    static final String f64236f = "textservices";

    public a() {
        super(q.h(f64236f));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return a.C0396a.a(q.h(f64236f));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m(f64236f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        if (e.f()) {
            d(new d("getCurrentSpellChecker", d.f64083e, 0));
            d(new d("getCurrentSpellCheckerSubtype", d.f64083e, 0));
            d(new d("getSpellCheckerService", d.f64083e, 0));
            d(new d("finishSpellCheckerService", d.f64083e, 0));
            d(new d("isSpellCheckerEnabled", d.f64083e, 0));
            d(new d("getEnabledSpellCheckers", d.f64083e, 0));
        }
    }
}
