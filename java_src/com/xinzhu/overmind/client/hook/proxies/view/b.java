package com.xinzhu.overmind.client.hook.proxies.view;

import com.xinzhu.haunted.android.os.q;
import com.xinzhu.haunted.android.view.b;
import com.xinzhu.overmind.client.hook.g;
import java.lang.reflect.Method;
/* compiled from: GraphicsStatsStub.java */
/* loaded from: classes.dex */
public class b extends com.xinzhu.overmind.client.hook.b {

    /* compiled from: GraphicsStatsStub.java */
    /* loaded from: classes.dex */
    static class a extends g {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "requestBufferForProcess";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            com.xinzhu.overmind.utils.helpers.a.d(args);
            return method.invoke(who, args);
        }
    }

    public b() {
        super(q.h("graphicsstats"));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return b.a.a(q.h("graphicsstats"));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m("graphicsstats");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new a());
    }
}
