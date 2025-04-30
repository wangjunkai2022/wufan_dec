package com.xinzhu.haunted.android.os;

import android.os.Handler;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtHandler.java */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63387b = "e";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63388c = com.xinzhu.haunted.d.a(Handler.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f63389d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63390e = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63391a;

    public e(Object egoInstance) {
        this.f63391a = egoInstance;
    }

    public boolean a() {
        if (f63389d.get() == null) {
            if (f63390e) {
                return false;
            }
            f63389d.compareAndSet(null, com.xinzhu.haunted.d.f(f63388c, "mCallback"));
            f63390e = true;
            return f63389d.get() != null;
        }
        return true;
    }

    public Handler.Callback b() {
        if (a()) {
            try {
                return (Handler.Callback) f63389d.get().get(this.f63391a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public boolean c(Handler.Callback value) {
        if (a()) {
            try {
                f63389d.get().set(this.f63391a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    private e() {
    }
}
