package com.xinzhu.overmind.client.hook.proxies.os;

import android.os.IInterface;
import android.os.UserManager;
import com.xinzhu.haunted.android.content.pm.n;
import com.xinzhu.haunted.android.os.l;
import com.xinzhu.haunted.android.os.q;
import com.xinzhu.haunted.android.os.v;
import com.xinzhu.overmind.Overmind;
import java.util.Collections;
import java.util.Objects;
/* compiled from: UserManagerStub.java */
/* loaded from: classes.dex */
public class j extends com.xinzhu.overmind.client.hook.b {
    public j() {
        super(q.h("user"));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return l.a.a(q.h("user"));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        v vVar = new v((UserManager) Overmind.getContext().getSystemService("user"));
        if (vVar.a()) {
            vVar.c((IInterface) g());
        }
        m("user");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new com.xinzhu.overmind.client.hook.common.d("isProfile", com.xinzhu.overmind.client.hook.common.d.f64083e, 0));
        d(new com.xinzhu.overmind.client.hook.common.d("isManagedProfile", com.xinzhu.overmind.client.hook.common.d.f64083e, 0));
        d(new com.xinzhu.overmind.client.hook.common.d("isUserUnlocked", com.xinzhu.overmind.client.hook.common.d.f64083e, 0));
        d(new com.xinzhu.overmind.client.hook.common.d("isUserUnlockingOrUnlocked", com.xinzhu.overmind.client.hook.common.d.f64083e, 0));
        d(new com.xinzhu.overmind.client.hook.common.c("getProfileParent", null));
        n c4 = n.c(0, "Admin", n.d());
        Objects.requireNonNull(c4);
        d(new com.xinzhu.overmind.client.hook.common.c("getUsers", Collections.singletonList(c4.f63187a)));
        n c5 = n.c(0, "Admin", n.d());
        Objects.requireNonNull(c5);
        d(new com.xinzhu.overmind.client.hook.common.c("getUserInfo", c5.f63187a));
        d(new com.xinzhu.overmind.client.hook.common.d("getApplicationRestrictions", 0, com.xinzhu.overmind.client.hook.common.d.f64083e));
        d(new com.xinzhu.overmind.client.hook.common.d("setApplicationRestrictions", 0, com.xinzhu.overmind.client.hook.common.d.f64085g));
        d(new com.xinzhu.overmind.client.hook.common.d("getApplicationRestrictionsForUser", 0, com.xinzhu.overmind.client.hook.common.d.f64085g));
    }
}
