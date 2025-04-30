package com.xinzhu.haunted.android.accounts;

import android.accounts.AccountAuthenticatorResponse;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtAccountAuthenticatorResponse.java */
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62378b = "b";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62379c = com.xinzhu.haunted.d.a(AccountAuthenticatorResponse.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Constructor> f62380d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62381e = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f62382a;

    public b(Object egoInstance) {
        this.f62382a = egoInstance;
    }

    public static boolean a(Object arg0) {
        if (f62380d.get() == null) {
            if (f62381e) {
                return false;
            }
            f62380d.compareAndSet(null, com.xinzhu.haunted.d.d(f62379c, "HtAccountAuthenticatorResponse", "android.accounts.IAccountAuthenticatorResponse"));
            f62381e = true;
            return f62380d.get() != null;
        }
        return true;
    }

    public static b b(Object arg0) {
        if (a(arg0)) {
            try {
                b bVar = new b();
                bVar.f62382a = f62380d.get().newInstance(arg0);
                return bVar;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            } catch (InstantiationException e5) {
                e5.printStackTrace();
                return null;
            } catch (InvocationTargetException e6) {
                e6.printStackTrace();
                return null;
            }
        }
        return null;
    }

    private b() {
    }
}
