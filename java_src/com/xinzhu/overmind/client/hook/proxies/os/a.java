package com.xinzhu.overmind.client.hook.proxies.os;

import android.os.Build;
import android.os.IInterface;
import android.os.health.SystemHealthManager;
import com.xinzhu.haunted.android.os.q;
import com.xinzhu.haunted.com.android.internal.app.b;
import com.xinzhu.overmind.Overmind;
/* compiled from: BatteryStatsStub.java */
/* loaded from: classes.dex */
public class a extends com.xinzhu.overmind.client.hook.b {

    /* renamed from: f  reason: collision with root package name */
    static final String f64200f = "batterystats";

    public a() {
        super(q.h(f64200f));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return b.a.a(q.h(f64200f));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        if (Build.VERSION.SDK_INT >= 24) {
            com.xinzhu.haunted.android.os.health.a aVar = new com.xinzhu.haunted.android.os.health.a((SystemHealthManager) Overmind.getContext().getSystemService("systemhealth"));
            if (aVar.a()) {
                aVar.c((IInterface) proxyInvocation);
            }
        }
        m(f64200f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new com.xinzhu.overmind.client.hook.common.e("takeUidSnapshot", 0));
    }
}
