package com.xinzhu.haunted.android.inputmethod;

import android.os.IInterface;
import android.view.inputmethod.InputMethodManager;
import com.xinzhu.haunted.d;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtInputMethodManager.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final String f63304b = "a";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f63305c = d.a(InputMethodManager.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f63306d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f63307e = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63308a;

    public a(Object egoInstance) {
        this.f63308a = egoInstance;
    }

    public boolean a() {
        if (f63306d.get() == null) {
            if (f63307e) {
                return false;
            }
            f63306d.compareAndSet(null, d.f(f63305c, "mService"));
            f63307e = true;
            return f63306d.get() != null;
        }
        return true;
    }

    public IInterface b() {
        if (a()) {
            try {
                return (IInterface) f63306d.get().get(this.f63308a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public boolean c(IInterface value) {
        if (a()) {
            try {
                f63306d.get().set(this.f63308a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    private a() {
    }
}
