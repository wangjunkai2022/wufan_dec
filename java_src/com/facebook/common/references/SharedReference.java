package com.facebook.common.references;

import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.internal.h;
import java.util.IdentityHashMap;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;
@VisibleForTesting
/* loaded from: classes2.dex */
public class SharedReference<T> {
    @GuardedBy("itself")

    /* renamed from: d  reason: collision with root package name */
    private static final Map<Object, Integer> f11730d = new IdentityHashMap();
    @GuardedBy("this")

    /* renamed from: a  reason: collision with root package name */
    private T f11731a;
    @GuardedBy("this")

    /* renamed from: b  reason: collision with root package name */
    private int f11732b = 1;

    /* renamed from: c  reason: collision with root package name */
    private final c<T> f11733c;

    /* loaded from: classes2.dex */
    public static class NullReferenceException extends RuntimeException {
        public NullReferenceException() {
            super("Null shared reference");
        }
    }

    public SharedReference(T t3, c<T> cVar) {
        this.f11731a = (T) h.i(t3);
        this.f11733c = (c) h.i(cVar);
        a(t3);
    }

    private static void a(Object obj) {
        Map<Object, Integer> map = f11730d;
        synchronized (map) {
            Integer num = map.get(obj);
            if (num == null) {
                map.put(obj, 1);
            } else {
                map.put(obj, Integer.valueOf(num.intValue() + 1));
            }
        }
    }

    private synchronized int c() {
        int i2;
        e();
        h.d(this.f11732b > 0);
        i2 = this.f11732b - 1;
        this.f11732b = i2;
        return i2;
    }

    private void e() {
        if (!i(this)) {
            throw new NullReferenceException();
        }
    }

    public static boolean i(SharedReference<?> sharedReference) {
        return sharedReference != null && sharedReference.h();
    }

    private static void j(Object obj) {
        Map<Object, Integer> map = f11730d;
        synchronized (map) {
            Integer num = map.get(obj);
            if (num == null) {
                com.facebook.common.logging.a.y0("SharedReference", "No entry in sLiveObjects for value of type %s", obj.getClass());
            } else if (num.intValue() == 1) {
                map.remove(obj);
            } else {
                map.put(obj, Integer.valueOf(num.intValue() - 1));
            }
        }
    }

    public synchronized void b() {
        e();
        this.f11732b++;
    }

    public void d() {
        T t3;
        if (c() == 0) {
            synchronized (this) {
                t3 = this.f11731a;
                this.f11731a = null;
            }
            this.f11733c.release(t3);
            j(t3);
        }
    }

    public synchronized T f() {
        return this.f11731a;
    }

    public synchronized int g() {
        return this.f11732b;
    }

    public synchronized boolean h() {
        return this.f11732b > 0;
    }
}
