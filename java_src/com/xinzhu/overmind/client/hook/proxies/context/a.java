package com.xinzhu.overmind.client.hook.proxies.context;

import com.xinzhu.haunted.android.content.j;
import com.xinzhu.haunted.android.os.q;
import com.xinzhu.overmind.client.hook.g;
import java.lang.reflect.Method;
/* compiled from: ContentServiceStub.java */
/* loaded from: classes.dex */
public class a extends com.xinzhu.overmind.client.hook.b {

    /* compiled from: ContentServiceStub.java */
    /* renamed from: com.xinzhu.overmind.client.hook.proxies.context.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0412a extends g {
        C0412a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "notifyChange";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return 0;
        }
    }

    /* compiled from: ContentServiceStub.java */
    /* loaded from: classes.dex */
    public static class b extends g {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "registerContentObserver";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            return 0;
        }
    }

    public a() {
        super(q.h("content"));
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return j.a.a(q.h("content"));
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        m("content");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xinzhu.overmind.client.hook.b, com.xinzhu.overmind.client.hook.c
    public void k() {
        super.k();
        d(new b());
        d(new C0412a());
    }
}
