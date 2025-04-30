package com.xinzhu.haunted.android.os;

import android.os.Bundle;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtRemoteCallback.java */
/* loaded from: classes3.dex */
public final class p {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63460b = "p";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63461c = com.xinzhu.haunted.d.b("android.os.RemoteCallback");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Method> f63462d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63463e = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63464a;

    public p(Object egoInstance) {
        this.f63464a = egoInstance;
    }

    public boolean a(Bundle arg0) {
        if (f63462d.get() == null) {
            if (f63463e) {
                return false;
            }
            f63462d.compareAndSet(null, com.xinzhu.haunted.d.g(f63461c, "sendResult", Bundle.class));
            f63463e = true;
            return f63462d.get() != null;
        }
        return true;
    }

    public void b(Bundle arg0) {
        if (a(arg0)) {
            try {
                f63462d.get().invoke(this.f63464a, arg0);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            }
        }
    }

    private p() {
    }
}
