package com.xinzhu.haunted.com.android.internal.content;

import android.content.Intent;
import com.xinzhu.haunted.d;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtReferrerIntent.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63818b = "a";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63819c = d.b("com.android.internal.content.ReferrerIntent");

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Constructor> f63820d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63821e = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63822a;

    public a(Object egoInstance) {
        this.f63822a = egoInstance;
    }

    public static boolean a(Intent arg0, String arg1) {
        if (f63820d.get() == null) {
            if (f63821e) {
                return false;
            }
            f63820d.compareAndSet(null, d.d(f63819c, "HtReferrerIntent", Intent.class, String.class));
            f63821e = true;
            return f63820d.get() != null;
        }
        return true;
    }

    public static a b(Intent arg0, String arg1) {
        if (a(arg0, arg1)) {
            try {
                a aVar = new a();
                aVar.f63822a = f63820d.get().newInstance(arg0, arg1);
                return aVar;
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

    private a() {
    }
}
