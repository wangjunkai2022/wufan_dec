package com.xinzhu.overmind.client.hook.proxies.session;

import com.xinzhu.haunted.android.media.session.a;
import com.xinzhu.haunted.android.os.q;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.hook.b;
import com.xinzhu.overmind.client.hook.g;
import java.lang.reflect.Method;
/* compiled from: MediaSessionManagerStub.java */
/* loaded from: classes.dex */
public class a extends b {

    /* compiled from: MediaSessionManagerStub.java */
    /* renamed from: com.xinzhu.overmind.client.hook.proxies.session.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0419a extends g {
        C0419a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "createSession";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            if (args != null && args.length > 0 && (args[0] instanceof String)) {
                args[0] = Overmind.getHostPkg();
            }
            return method.invoke(who, args);
        }
    }

    public a() {
        super(q.h("media_session"));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return a.C0379a.a(q.h("media_session"));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m("media_session");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new C0419a());
    }
}
