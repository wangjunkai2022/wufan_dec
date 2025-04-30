package com.xinzhu.haunted.android.content;

import android.content.BroadcastReceiver;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtBroadcastReceiver.java */
/* loaded from: classes3.dex */
public final class c {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62892b = "c";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62893c = com.xinzhu.haunted.d.a(BroadcastReceiver.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Method> f62894d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62895e = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f62896a;

    public c(Object egoInstance) {
        this.f62896a = egoInstance;
    }

    public boolean a() {
        if (f62894d.get() == null) {
            if (f62895e) {
                return false;
            }
            f62894d.compareAndSet(null, com.xinzhu.haunted.d.g(f62893c, "getSendingUserId", new Object[0]));
            f62895e = true;
            return f62894d.get() != null;
        }
        return true;
    }

    public int b() {
        if (a()) {
            try {
                return ((Integer) f62894d.get().invoke(this.f62896a, new Object[0])).intValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return 0;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    private c() {
    }
}
