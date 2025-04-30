package com.xinzhu.haunted.android.content;

import android.content.IntentFilter;
import android.os.PatternMatcher;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: HtIntentFilter.java */
/* loaded from: classes3.dex */
public final class n {

    /* renamed from: b  reason: collision with root package name */
    private static final String f62994b = "n";

    /* renamed from: c  reason: collision with root package name */
    public static Class<?> f62995c = com.xinzhu.haunted.d.a(IntentFilter.class);

    /* renamed from: d  reason: collision with root package name */
    private static AtomicReference<Field> f62996d = new AtomicReference<>();

    /* renamed from: e  reason: collision with root package name */
    private static boolean f62997e = false;

    /* renamed from: f  reason: collision with root package name */
    private static AtomicReference<Method> f62998f = new AtomicReference<>();

    /* renamed from: g  reason: collision with root package name */
    private static boolean f62999g = false;

    /* renamed from: h  reason: collision with root package name */
    private static AtomicReference<Method> f63000h = new AtomicReference<>();

    /* renamed from: i  reason: collision with root package name */
    private static boolean f63001i = false;

    /* renamed from: j  reason: collision with root package name */
    private static AtomicReference<Method> f63002j = new AtomicReference<>();

    /* renamed from: k  reason: collision with root package name */
    private static boolean f63003k = false;

    /* renamed from: l  reason: collision with root package name */
    private static AtomicReference<Method> f63004l = new AtomicReference<>();

    /* renamed from: m  reason: collision with root package name */
    private static boolean f63005m = false;

    /* renamed from: n  reason: collision with root package name */
    private static AtomicReference<Method> f63006n = new AtomicReference<>();

    /* renamed from: o  reason: collision with root package name */
    private static boolean f63007o = false;

    /* renamed from: a  reason: collision with root package name */
    public Object f63008a;

    public n(Object egoInstance) {
        this.f63008a = egoInstance;
    }

    public boolean a() {
        if (f62996d.get() == null) {
            if (f62997e) {
                return false;
            }
            f62996d.compareAndSet(null, com.xinzhu.haunted.d.f(f62995c, "mActions"));
            f62997e = true;
            return f62996d.get() != null;
        }
        return true;
    }

    public boolean b(int arg0) {
        if (f63004l.get() == null) {
            if (f63005m) {
                return false;
            }
            f63004l.compareAndSet(null, com.xinzhu.haunted.d.g(f62995c, "getDataSchemeSpecificPart", Integer.TYPE));
            f63005m = true;
            return f63004l.get() != null;
        }
        return true;
    }

    public boolean c(IntentFilter.AuthorityEntry arg0) {
        if (f63000h.get() == null) {
            if (f63001i) {
                return false;
            }
            f63000h.compareAndSet(null, com.xinzhu.haunted.d.g(f62995c, "hasDataAuthority", IntentFilter.AuthorityEntry.class));
            f63001i = true;
            return f63000h.get() != null;
        }
        return true;
    }

    public boolean d(PatternMatcher arg0) {
        if (f63002j.get() == null) {
            if (f63003k) {
                return false;
            }
            f63002j.compareAndSet(null, com.xinzhu.haunted.d.g(f62995c, "hasDataPath", PatternMatcher.class));
            f63003k = true;
            return f63002j.get() != null;
        }
        return true;
    }

    public boolean e(PatternMatcher arg0) {
        if (f63006n.get() == null) {
            if (f63007o) {
                return false;
            }
            f63006n.compareAndSet(null, com.xinzhu.haunted.d.g(f62995c, "hasDataSchemeSpecificPart", PatternMatcher.class));
            f63007o = true;
            return f63006n.get() != null;
        }
        return true;
    }

    public boolean f(String arg0) {
        if (f62998f.get() == null) {
            if (f62999g) {
                return false;
            }
            f62998f.compareAndSet(null, com.xinzhu.haunted.d.g(f62995c, "hasExactDataType", String.class));
            f62999g = true;
            return f62998f.get() != null;
        }
        return true;
    }

    public PatternMatcher g(int arg0) {
        if (b(arg0)) {
            try {
                return (PatternMatcher) f63004l.get().invoke(this.f63008a, Integer.valueOf(arg0));
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public ArrayList<String> h() {
        if (a()) {
            try {
                return (ArrayList) f62996d.get().get(this.f63008a);
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public boolean i(IntentFilter.AuthorityEntry arg0) {
        if (c(arg0)) {
            try {
                return ((Boolean) f63000h.get().invoke(this.f63008a, arg0)).booleanValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean j(PatternMatcher arg0) {
        if (d(arg0)) {
            try {
                return ((Boolean) f63002j.get().invoke(this.f63008a, arg0)).booleanValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean k(PatternMatcher arg0) {
        if (e(arg0)) {
            try {
                return ((Boolean) f63006n.get().invoke(this.f63008a, arg0)).booleanValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean l(String arg0) {
        if (f(arg0)) {
            try {
                return ((Boolean) f62998f.get().invoke(this.f63008a, arg0)).booleanValue();
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return false;
            }
        }
        return false;
    }

    public boolean m(ArrayList<String> value) {
        if (a()) {
            try {
                f62996d.get().set(this.f63008a, value);
                return true;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return false;
    }

    private n() {
    }
}
