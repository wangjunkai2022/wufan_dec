package com.xinzhu.overmind.client.hook.proxies.role;

import com.xinzhu.haunted.android.app.role.a;
import com.xinzhu.haunted.android.os.q;
import com.xinzhu.overmind.client.hook.b;
import com.xinzhu.overmind.client.hook.common.d;
/* compiled from: RoleManagerStub.java */
/* loaded from: classes.dex */
public class a extends b {

    /* renamed from: f  reason: collision with root package name */
    static final String f64224f = "role";

    public a() {
        super(q.h(f64224f));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return a.C0373a.a(q.h(f64224f));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m(f64224f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new d("isRoleHeld", d.f64084f, d.f64083e));
        d(new d("getRoleHoldersAsUser", d.f64083e, 1));
        d(new d("addRoleHolderAsUser", d.f64084f, 3));
        d(new d("removeRoleHolderAsUser", d.f64084f, 3));
        d(new d("clearRoleHoldersAsUser", d.f64083e, 2));
        d(new d("addOnRoleHoldersChangedListenerAsUser", d.f64083e, 1));
        d(new d("removeOnRoleHoldersChangedListenerAsUser", d.f64083e, 1));
        d(new d("addRoleHolderFromController", d.f64084f, d.f64083e));
        d(new d("removeRoleHolderFromController", d.f64084f, d.f64083e));
        d(new d("getHeldRolesFromController", d.f64084f, d.f64083e));
        d(new d("getDefaultSmsPackage", d.f64083e, 0));
    }
}
