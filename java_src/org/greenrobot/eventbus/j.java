package org.greenrobot.eventbus;

import java.lang.reflect.Method;
/* compiled from: SubscriberMethod.java */
/* loaded from: classes5.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    final Method f73265a;

    /* renamed from: b  reason: collision with root package name */
    final ThreadMode f73266b;

    /* renamed from: c  reason: collision with root package name */
    final Class<?> f73267c;

    /* renamed from: d  reason: collision with root package name */
    final int f73268d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f73269e;

    /* renamed from: f  reason: collision with root package name */
    String f73270f;

    public j(Method method, Class<?> cls, ThreadMode threadMode, int i2, boolean z3) {
        this.f73265a = method;
        this.f73266b = threadMode;
        this.f73267c = cls;
        this.f73268d = i2;
        this.f73269e = z3;
    }

    private synchronized void a() {
        if (this.f73270f == null) {
            StringBuilder sb = new StringBuilder(64);
            sb.append(this.f73265a.getDeclaringClass().getName());
            sb.append('#');
            sb.append(this.f73265a.getName());
            sb.append('(');
            sb.append(this.f73267c.getName());
            this.f73270f = sb.toString();
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j) {
            a();
            j jVar = (j) obj;
            jVar.a();
            return this.f73270f.equals(jVar.f73270f);
        }
        return false;
    }

    public int hashCode() {
        return this.f73265a.hashCode();
    }
}
