package org.greenrobot.eventbus;

import android.os.Looper;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
/* compiled from: EventBus.java */
/* loaded from: classes5.dex */
public class c {

    /* renamed from: q  reason: collision with root package name */
    public static String f73209q = "EventBus";

    /* renamed from: r  reason: collision with root package name */
    static volatile c f73210r;

    /* renamed from: s  reason: collision with root package name */
    private static final org.greenrobot.eventbus.d f73211s = new org.greenrobot.eventbus.d();

    /* renamed from: t  reason: collision with root package name */
    private static final Map<Class<?>, List<Class<?>>> f73212t = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<?>, CopyOnWriteArrayList<l>> f73213a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Object, List<Class<?>>> f73214b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<Class<?>, Object> f73215c;

    /* renamed from: d  reason: collision with root package name */
    private final ThreadLocal<d> f73216d;

    /* renamed from: e  reason: collision with root package name */
    private final e f73217e;

    /* renamed from: f  reason: collision with root package name */
    private final org.greenrobot.eventbus.b f73218f;

    /* renamed from: g  reason: collision with root package name */
    private final org.greenrobot.eventbus.a f73219g;

    /* renamed from: h  reason: collision with root package name */
    private final k f73220h;

    /* renamed from: i  reason: collision with root package name */
    private final ExecutorService f73221i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f73222j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f73223k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f73224l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f73225m;

    /* renamed from: n  reason: collision with root package name */
    private final boolean f73226n;

    /* renamed from: o  reason: collision with root package name */
    private final boolean f73227o;

    /* renamed from: p  reason: collision with root package name */
    private final int f73228p;

    /* compiled from: EventBus.java */
    /* loaded from: classes5.dex */
    class a extends ThreadLocal<d> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public d initialValue() {
            return new d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EventBus.java */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f73230a;

        static {
            int[] iArr = new int[ThreadMode.values().length];
            f73230a = iArr;
            try {
                iArr[ThreadMode.POSTING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f73230a[ThreadMode.MAIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f73230a[ThreadMode.BACKGROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f73230a[ThreadMode.ASYNC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: EventBus.java */
    /* renamed from: org.greenrobot.eventbus.c$c  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    interface InterfaceC0489c {
        void a(List<i> list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EventBus.java */
    /* loaded from: classes5.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        final List<Object> f73231a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        boolean f73232b;

        /* renamed from: c  reason: collision with root package name */
        boolean f73233c;

        /* renamed from: d  reason: collision with root package name */
        l f73234d;

        /* renamed from: e  reason: collision with root package name */
        Object f73235e;

        /* renamed from: f  reason: collision with root package name */
        boolean f73236f;

        d() {
        }
    }

    public c() {
        this(f73211s);
    }

    static void a(List<Class<?>> list, Class<?>[] clsArr) {
        for (Class<?> cls : clsArr) {
            if (!list.contains(cls)) {
                list.add(cls);
                a(list, cls.getInterfaces());
            }
        }
    }

    public static org.greenrobot.eventbus.d b() {
        return new org.greenrobot.eventbus.d();
    }

    private void d(l lVar, Object obj) {
        if (obj != null) {
            s(lVar, obj, Looper.getMainLooper() == Looper.myLooper());
        }
    }

    public static void e() {
        k.a();
        f73212t.clear();
    }

    public static c f() {
        if (f73210r == null) {
            synchronized (c.class) {
                if (f73210r == null) {
                    f73210r = new c();
                }
            }
        }
        return f73210r;
    }

    private void i(l lVar, Object obj, Throwable th) {
        if (obj instanceof i) {
            if (this.f73223k) {
                StringBuilder sb = new StringBuilder();
                sb.append("SubscriberExceptionEvent subscriber ");
                sb.append(lVar.f73288a.getClass());
                sb.append(" threw an exception");
                i iVar = (i) obj;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Initial event ");
                sb2.append(iVar.f73263c);
                sb2.append(" caused exception in ");
                sb2.append(iVar.f73264d);
            }
        } else if (!this.f73222j) {
            if (this.f73223k) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Could not dispatch event: ");
                sb3.append(obj.getClass());
                sb3.append(" to subscribing class ");
                sb3.append(lVar.f73288a.getClass());
            }
            if (this.f73225m) {
                o(new i(this, th, obj, lVar.f73288a));
            }
        } else {
            throw new EventBusException("Invoking subscriber failed", th);
        }
    }

    private static List<Class<?>> n(Class<?> cls) {
        List<Class<?>> list;
        Map<Class<?>, List<Class<?>>> map = f73212t;
        synchronized (map) {
            list = map.get(cls);
            if (list == null) {
                list = new ArrayList<>();
                for (Class<?> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
                    list.add(cls2);
                    a(list, cls2.getInterfaces());
                }
                f73212t.put(cls, list);
            }
        }
        return list;
    }

    private void p(Object obj, d dVar) throws Error {
        boolean q3;
        Class<?> cls = obj.getClass();
        if (this.f73227o) {
            List<Class<?>> n4 = n(cls);
            int size = n4.size();
            q3 = false;
            for (int i2 = 0; i2 < size; i2++) {
                q3 |= q(obj, dVar, n4.get(i2));
            }
        } else {
            q3 = q(obj, dVar, cls);
        }
        if (q3) {
            return;
        }
        if (this.f73224l) {
            StringBuilder sb = new StringBuilder();
            sb.append("No subscribers registered for event ");
            sb.append(cls);
        }
        if (!this.f73226n || cls == f.class || cls == i.class) {
            return;
        }
        o(new f(this, obj));
    }

    private boolean q(Object obj, d dVar, Class<?> cls) {
        CopyOnWriteArrayList<l> copyOnWriteArrayList;
        synchronized (this) {
            copyOnWriteArrayList = this.f73213a.get(cls);
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        Iterator<l> it2 = copyOnWriteArrayList.iterator();
        while (it2.hasNext()) {
            l next = it2.next();
            dVar.f73235e = obj;
            dVar.f73234d = next;
            try {
                s(next, obj, dVar.f73233c);
                if (dVar.f73236f) {
                    return true;
                }
            } finally {
                dVar.f73235e = null;
                dVar.f73234d = null;
                dVar.f73236f = false;
            }
        }
        return true;
    }

    private void s(l lVar, Object obj, boolean z3) {
        int i2 = b.f73230a[lVar.f73289b.f73266b.ordinal()];
        if (i2 == 1) {
            l(lVar, obj);
        } else if (i2 == 2) {
            if (z3) {
                l(lVar, obj);
            } else {
                this.f73217e.a(lVar, obj);
            }
        } else if (i2 == 3) {
            if (z3) {
                this.f73218f.a(lVar, obj);
            } else {
                l(lVar, obj);
            }
        } else if (i2 == 4) {
            this.f73219g.a(lVar, obj);
        } else {
            throw new IllegalStateException("Unknown thread mode: " + lVar.f73289b.f73266b);
        }
    }

    private void x(Object obj, j jVar) {
        Class<?> cls = jVar.f73267c;
        l lVar = new l(obj, jVar);
        CopyOnWriteArrayList<l> copyOnWriteArrayList = this.f73213a.get(cls);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.f73213a.put(cls, copyOnWriteArrayList);
        } else if (copyOnWriteArrayList.contains(lVar)) {
            throw new EventBusException("Subscriber " + obj.getClass() + " already registered to event " + cls);
        }
        int size = copyOnWriteArrayList.size();
        for (int i2 = 0; i2 <= size; i2++) {
            if (i2 == size || jVar.f73268d > copyOnWriteArrayList.get(i2).f73289b.f73268d) {
                copyOnWriteArrayList.add(i2, lVar);
                break;
            }
        }
        List<Class<?>> list = this.f73214b.get(obj);
        if (list == null) {
            list = new ArrayList<>();
            this.f73214b.put(obj, list);
        }
        list.add(cls);
        if (jVar.f73269e) {
            if (this.f73227o) {
                for (Map.Entry<Class<?>, Object> entry : this.f73215c.entrySet()) {
                    if (cls.isAssignableFrom(entry.getKey())) {
                        d(lVar, entry.getValue());
                    }
                }
                return;
            }
            d(lVar, this.f73215c.get(cls));
        }
    }

    private void z(Object obj, Class<?> cls) {
        CopyOnWriteArrayList<l> copyOnWriteArrayList = this.f73213a.get(cls);
        if (copyOnWriteArrayList != null) {
            int size = copyOnWriteArrayList.size();
            int i2 = 0;
            while (i2 < size) {
                l lVar = copyOnWriteArrayList.get(i2);
                if (lVar.f73288a == obj) {
                    lVar.f73290c = false;
                    copyOnWriteArrayList.remove(i2);
                    i2--;
                    size--;
                }
                i2++;
            }
        }
    }

    public void c(Object obj) {
        d dVar = this.f73216d.get();
        if (!dVar.f73232b) {
            throw new EventBusException("This method may only be called from inside event handling methods on the posting thread");
        }
        if (obj != null) {
            if (dVar.f73235e == obj) {
                if (dVar.f73234d.f73289b.f73266b == ThreadMode.POSTING) {
                    dVar.f73236f = true;
                    return;
                }
                throw new EventBusException(" event handlers may only abort the incoming event");
            }
            throw new EventBusException("Only the currently handled event may be aborted");
        }
        throw new EventBusException("Event may not be null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ExecutorService g() {
        return this.f73221i;
    }

    public <T> T h(Class<T> cls) {
        T cast;
        synchronized (this.f73215c) {
            cast = cls.cast(this.f73215c.get(cls));
        }
        return cast;
    }

    public boolean j(Class<?> cls) {
        CopyOnWriteArrayList<l> copyOnWriteArrayList;
        List<Class<?>> n4 = n(cls);
        if (n4 != null) {
            int size = n4.size();
            for (int i2 = 0; i2 < size; i2++) {
                Class<?> cls2 = n4.get(i2);
                synchronized (this) {
                    copyOnWriteArrayList = this.f73213a.get(cls2);
                }
                if (copyOnWriteArrayList != null && !copyOnWriteArrayList.isEmpty()) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(g gVar) {
        Object obj = gVar.f73256a;
        l lVar = gVar.f73257b;
        g.b(gVar);
        if (lVar.f73290c) {
            l(lVar, obj);
        }
    }

    void l(l lVar, Object obj) {
        try {
            lVar.f73289b.f73265a.invoke(lVar.f73288a, obj);
        } catch (IllegalAccessException e4) {
            throw new IllegalStateException("Unexpected exception", e4);
        } catch (InvocationTargetException e5) {
            i(lVar, obj, e5.getCause());
        }
    }

    public synchronized boolean m(Object obj) {
        return this.f73214b.containsKey(obj);
    }

    public void o(Object obj) {
        d dVar = this.f73216d.get();
        List<Object> list = dVar.f73231a;
        list.add(obj);
        if (dVar.f73232b) {
            return;
        }
        dVar.f73233c = Looper.getMainLooper() == Looper.myLooper();
        dVar.f73232b = true;
        if (!dVar.f73236f) {
            while (!list.isEmpty()) {
                try {
                    p(list.remove(0), dVar);
                } finally {
                    dVar.f73232b = false;
                    dVar.f73233c = false;
                }
            }
            return;
        }
        throw new EventBusException("Internal error. Abort state was not reset");
    }

    public void r(Object obj) {
        synchronized (this.f73215c) {
            this.f73215c.put(obj.getClass(), obj);
        }
        o(obj);
    }

    public void t(Object obj) {
        List<j> b4 = this.f73220h.b(obj.getClass());
        synchronized (this) {
            for (j jVar : b4) {
                x(obj, jVar);
            }
        }
    }

    public String toString() {
        return "EventBus[indexCount=" + this.f73228p + ", eventInheritance=" + this.f73227o + "]";
    }

    public void u() {
        synchronized (this.f73215c) {
            this.f73215c.clear();
        }
    }

    public <T> T v(Class<T> cls) {
        T cast;
        synchronized (this.f73215c) {
            cast = cls.cast(this.f73215c.remove(cls));
        }
        return cast;
    }

    public boolean w(Object obj) {
        synchronized (this.f73215c) {
            Class<?> cls = obj.getClass();
            if (obj.equals(this.f73215c.get(cls))) {
                this.f73215c.remove(cls);
                return true;
            }
            return false;
        }
    }

    public synchronized void y(Object obj) {
        List<Class<?>> list = this.f73214b.get(obj);
        if (list != null) {
            for (Class<?> cls : list) {
                z(obj, cls);
            }
            this.f73214b.remove(obj);
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("Subscriber to unregister was not registered before: ");
            sb.append(obj.getClass());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(org.greenrobot.eventbus.d dVar) {
        this.f73216d = new a();
        this.f73213a = new HashMap();
        this.f73214b = new HashMap();
        this.f73215c = new ConcurrentHashMap();
        this.f73217e = new e(this, Looper.getMainLooper(), 10);
        this.f73218f = new org.greenrobot.eventbus.b(this);
        this.f73219g = new org.greenrobot.eventbus.a(this);
        List<org.greenrobot.eventbus.meta.d> list = dVar.f73248k;
        this.f73228p = list != null ? list.size() : 0;
        this.f73220h = new k(dVar.f73248k, dVar.f73245h, dVar.f73244g);
        this.f73223k = dVar.f73238a;
        this.f73224l = dVar.f73239b;
        this.f73225m = dVar.f73240c;
        this.f73226n = dVar.f73241d;
        this.f73222j = dVar.f73242e;
        this.f73227o = dVar.f73243f;
        this.f73221i = dVar.f73246i;
    }
}
