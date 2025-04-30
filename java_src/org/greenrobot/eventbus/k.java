package org.greenrobot.eventbus;

import com.join.mgps.Util.g0;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.text.Typography;
/* compiled from: SubscriberMethodFinder.java */
/* loaded from: classes5.dex */
class k {

    /* renamed from: d  reason: collision with root package name */
    private static final int f73271d = 64;

    /* renamed from: e  reason: collision with root package name */
    private static final int f73272e = 4096;

    /* renamed from: f  reason: collision with root package name */
    private static final int f73273f = 5192;

    /* renamed from: h  reason: collision with root package name */
    private static final int f73275h = 4;

    /* renamed from: a  reason: collision with root package name */
    private List<org.greenrobot.eventbus.meta.d> f73277a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f73278b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f73279c;

    /* renamed from: g  reason: collision with root package name */
    private static final Map<Class<?>, List<j>> f73274g = new ConcurrentHashMap();

    /* renamed from: i  reason: collision with root package name */
    private static final a[] f73276i = new a[4];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SubscriberMethodFinder.java */
    /* loaded from: classes5.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final List<j> f73280a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        final Map<Class, Object> f73281b = new HashMap();

        /* renamed from: c  reason: collision with root package name */
        final Map<String, Class> f73282c = new HashMap();

        /* renamed from: d  reason: collision with root package name */
        final StringBuilder f73283d = new StringBuilder(128);

        /* renamed from: e  reason: collision with root package name */
        Class<?> f73284e;

        /* renamed from: f  reason: collision with root package name */
        Class<?> f73285f;

        /* renamed from: g  reason: collision with root package name */
        boolean f73286g;

        /* renamed from: h  reason: collision with root package name */
        org.greenrobot.eventbus.meta.c f73287h;

        a() {
        }

        private boolean b(Method method, Class<?> cls) {
            this.f73283d.setLength(0);
            this.f73283d.append(method.getName());
            StringBuilder sb = this.f73283d;
            sb.append(Typography.greater);
            sb.append(cls.getName());
            String sb2 = this.f73283d.toString();
            Class<?> declaringClass = method.getDeclaringClass();
            Class put = this.f73282c.put(sb2, declaringClass);
            if (put == null || put.isAssignableFrom(declaringClass)) {
                return true;
            }
            this.f73282c.put(sb2, put);
            return false;
        }

        boolean a(Method method, Class<?> cls) {
            Object put = this.f73281b.put(cls, method);
            if (put == null) {
                return true;
            }
            if (put instanceof Method) {
                if (b((Method) put, cls)) {
                    this.f73281b.put(cls, this);
                } else {
                    throw new IllegalStateException();
                }
            }
            return b(method, cls);
        }

        void c(Class<?> cls) {
            this.f73285f = cls;
            this.f73284e = cls;
            this.f73286g = false;
            this.f73287h = null;
        }

        void d() {
            if (this.f73286g) {
                this.f73285f = null;
                return;
            }
            Class<? super Object> superclass = this.f73285f.getSuperclass();
            this.f73285f = superclass;
            String name = superclass.getName();
            if (name.startsWith("java.") || name.startsWith("javax.") || name.startsWith("android.")) {
                this.f73285f = null;
            }
        }

        void e() {
            this.f73280a.clear();
            this.f73281b.clear();
            this.f73282c.clear();
            this.f73283d.setLength(0);
            this.f73284e = null;
            this.f73285f = null;
            this.f73286g = false;
            this.f73287h = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(List<org.greenrobot.eventbus.meta.d> list, boolean z3, boolean z4) {
        this.f73277a = list;
        this.f73278b = z3;
        this.f73279c = z4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        f73274g.clear();
    }

    private List<j> c(Class<?> cls) {
        j[] a4;
        a h4 = h();
        h4.c(cls);
        while (h4.f73285f != null) {
            org.greenrobot.eventbus.meta.c g4 = g(h4);
            h4.f73287h = g4;
            if (g4 != null) {
                for (j jVar : g4.a()) {
                    if (h4.a(jVar.f73265a, jVar.f73267c)) {
                        h4.f73280a.add(jVar);
                    }
                }
            } else {
                e(h4);
            }
            h4.d();
        }
        return f(h4);
    }

    private List<j> d(Class<?> cls) {
        a h4 = h();
        h4.c(cls);
        while (h4.f73285f != null) {
            e(h4);
            h4.d();
        }
        return f(h4);
    }

    private void e(a aVar) {
        Method[] methods;
        try {
            methods = aVar.f73285f.getDeclaredMethods();
        } catch (Throwable unused) {
            methods = aVar.f73285f.getMethods();
            aVar.f73286g = true;
        }
        for (Method method : methods) {
            int modifiers = method.getModifiers();
            if ((modifiers & 1) != 0 && (modifiers & f73273f) == 0) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == 1) {
                    Subscribe subscribe = (Subscribe) method.getAnnotation(Subscribe.class);
                    if (subscribe != null) {
                        Class<?> cls = parameterTypes[0];
                        if (aVar.a(method, cls)) {
                            aVar.f73280a.add(new j(method, cls, subscribe.threadMode(), subscribe.priority(), subscribe.sticky()));
                        }
                    }
                } else if (this.f73278b && method.isAnnotationPresent(Subscribe.class)) {
                    throw new EventBusException("@Subscribe method " + (method.getDeclaringClass().getName() + g0.f27568a + method.getName()) + "must have exactly 1 parameter but has " + parameterTypes.length);
                }
            } else if (this.f73278b && method.isAnnotationPresent(Subscribe.class)) {
                throw new EventBusException((method.getDeclaringClass().getName() + g0.f27568a + method.getName()) + " is a illegal @Subscribe method: must be public, non-static, and non-abstract");
            }
        }
    }

    private List<j> f(a aVar) {
        ArrayList arrayList = new ArrayList(aVar.f73280a);
        aVar.e();
        synchronized (f73276i) {
            int i2 = 0;
            while (true) {
                if (i2 >= 4) {
                    break;
                }
                a[] aVarArr = f73276i;
                if (aVarArr[i2] == null) {
                    aVarArr[i2] = aVar;
                    break;
                }
                i2++;
            }
        }
        return arrayList;
    }

    private org.greenrobot.eventbus.meta.c g(a aVar) {
        org.greenrobot.eventbus.meta.c cVar = aVar.f73287h;
        if (cVar != null && cVar.c() != null) {
            org.greenrobot.eventbus.meta.c c4 = aVar.f73287h.c();
            if (aVar.f73285f == c4.b()) {
                return c4;
            }
        }
        List<org.greenrobot.eventbus.meta.d> list = this.f73277a;
        if (list != null) {
            for (org.greenrobot.eventbus.meta.d dVar : list) {
                org.greenrobot.eventbus.meta.c a4 = dVar.a(aVar.f73285f);
                if (a4 != null) {
                    return a4;
                }
            }
            return null;
        }
        return null;
    }

    private a h() {
        synchronized (f73276i) {
            for (int i2 = 0; i2 < 4; i2++) {
                a[] aVarArr = f73276i;
                a aVar = aVarArr[i2];
                if (aVar != null) {
                    aVarArr[i2] = null;
                    return aVar;
                }
            }
            return new a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<j> b(Class<?> cls) {
        List<j> c4;
        Map<Class<?>, List<j>> map = f73274g;
        List<j> list = map.get(cls);
        if (list != null) {
            return list;
        }
        if (this.f73279c) {
            c4 = d(cls);
        } else {
            c4 = c(cls);
        }
        if (!c4.isEmpty()) {
            map.put(cls, c4);
            return c4;
        }
        throw new EventBusException("Subscriber " + cls + " and its super classes have no public methods with the @Subscribe annotation");
    }
}
