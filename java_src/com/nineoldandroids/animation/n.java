package com.nineoldandroids.animation;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* compiled from: PropertyValuesHolder.java */
/* loaded from: classes4.dex */
public class n implements Cloneable {

    /* renamed from: k  reason: collision with root package name */
    private static final p f54443k = new h();

    /* renamed from: l  reason: collision with root package name */
    private static final p f54444l = new f();

    /* renamed from: m  reason: collision with root package name */
    private static Class[] f54445m;

    /* renamed from: n  reason: collision with root package name */
    private static Class[] f54446n;

    /* renamed from: o  reason: collision with root package name */
    private static Class[] f54447o;

    /* renamed from: p  reason: collision with root package name */
    private static final HashMap<Class, HashMap<String, Method>> f54448p;

    /* renamed from: q  reason: collision with root package name */
    private static final HashMap<Class, HashMap<String, Method>> f54449q;

    /* renamed from: a  reason: collision with root package name */
    String f54450a;

    /* renamed from: b  reason: collision with root package name */
    protected com.nineoldandroids.util.c f54451b;

    /* renamed from: c  reason: collision with root package name */
    Method f54452c;

    /* renamed from: d  reason: collision with root package name */
    private Method f54453d;

    /* renamed from: e  reason: collision with root package name */
    Class f54454e;

    /* renamed from: f  reason: collision with root package name */
    k f54455f;

    /* renamed from: g  reason: collision with root package name */
    final ReentrantReadWriteLock f54456g;

    /* renamed from: h  reason: collision with root package name */
    final Object[] f54457h;

    /* renamed from: i  reason: collision with root package name */
    private p f54458i;

    /* renamed from: j  reason: collision with root package name */
    private Object f54459j;

    static {
        Class cls = Float.TYPE;
        Class cls2 = Double.TYPE;
        Class cls3 = Integer.TYPE;
        f54445m = new Class[]{cls, Float.class, cls2, cls3, Double.class, Integer.class};
        f54446n = new Class[]{cls3, Integer.class, cls, cls2, Float.class, Double.class};
        f54447o = new Class[]{cls2, Double.class, cls, cls3, Float.class, Integer.class};
        f54448p = new HashMap<>();
        f54449q = new HashMap<>();
    }

    private Method B(Class cls, HashMap<Class, HashMap<String, Method>> hashMap, String str, Class cls2) {
        try {
            this.f54456g.writeLock().lock();
            HashMap<String, Method> hashMap2 = hashMap.get(cls);
            Method method = hashMap2 != null ? hashMap2.get(this.f54450a) : null;
            if (method == null) {
                method = e(cls, str, cls2);
                if (hashMap2 == null) {
                    hashMap2 = new HashMap<>();
                    hashMap.put(cls, hashMap2);
                }
                hashMap2.put(this.f54450a, method);
            }
            return method;
        } finally {
            this.f54456g.writeLock().unlock();
        }
    }

    private void D(Object obj, j jVar) {
        com.nineoldandroids.util.c cVar = this.f54451b;
        if (cVar != null) {
            jVar.n(cVar.a(obj));
        }
        try {
            if (this.f54453d == null) {
                y(obj.getClass());
            }
            jVar.n(this.f54453d.invoke(obj, new Object[0]));
        } catch (IllegalAccessException e4) {
            e4.toString();
        } catch (InvocationTargetException e5) {
            e5.toString();
        }
    }

    static String d(String str, String str2) {
        if (str2 == null || str2.length() == 0) {
            return str;
        }
        char upperCase = Character.toUpperCase(str2.charAt(0));
        String substring = str2.substring(1);
        return str + upperCase + substring;
    }

    private Method e(Class cls, String str, Class cls2) {
        Class<?>[] clsArr;
        String d4 = d(str, this.f54450a);
        Method method = null;
        if (cls2 == null) {
            try {
                return cls.getMethod(d4, null);
            } catch (NoSuchMethodException e4) {
                try {
                    method = cls.getDeclaredMethod(d4, null);
                    method.setAccessible(true);
                } catch (NoSuchMethodException unused) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Couldn't find no-arg method for property ");
                    sb.append(this.f54450a);
                    sb.append(": ");
                    sb.append(e4);
                }
            }
        } else {
            Class<?>[] clsArr2 = new Class[1];
            if (this.f54454e.equals(Float.class)) {
                clsArr = f54445m;
            } else if (this.f54454e.equals(Integer.class)) {
                clsArr = f54446n;
            } else {
                clsArr = this.f54454e.equals(Double.class) ? f54447o : new Class[]{this.f54454e};
            }
            for (Class<?> cls3 : clsArr) {
                clsArr2[0] = cls3;
                try {
                    try {
                        Method method2 = cls.getMethod(d4, clsArr2);
                        this.f54454e = cls3;
                        return method2;
                    } catch (NoSuchMethodException unused2) {
                    }
                } catch (NoSuchMethodException unused3) {
                    method = cls.getDeclaredMethod(d4, clsArr2);
                    method.setAccessible(true);
                    this.f54454e = cls3;
                    return method;
                }
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Couldn't find setter/getter for property ");
            sb2.append(this.f54450a);
            sb2.append(" with value type ");
            sb2.append(this.f54454e);
        }
        return method;
    }

    public static n h(com.nineoldandroids.util.c<?, Float> cVar, float... fArr) {
        return new b(cVar, fArr);
    }

    public static n i(String str, float... fArr) {
        return new b(str, fArr);
    }

    public static n j(com.nineoldandroids.util.c<?, Integer> cVar, int... iArr) {
        return new c(cVar, iArr);
    }

    public static n k(String str, int... iArr) {
        return new c(str, iArr);
    }

    public static n l(com.nineoldandroids.util.c cVar, j... jVarArr) {
        k e4 = k.e(jVarArr);
        if (e4 instanceof i) {
            return new c(cVar, (i) e4);
        }
        if (e4 instanceof g) {
            return new b(cVar, (g) e4);
        }
        n nVar = new n(cVar);
        nVar.f54455f = e4;
        nVar.f54454e = jVarArr[0].getType();
        return nVar;
    }

    public static n m(String str, j... jVarArr) {
        k e4 = k.e(jVarArr);
        if (e4 instanceof i) {
            return new c(str, (i) e4);
        }
        if (e4 instanceof g) {
            return new b(str, (g) e4);
        }
        n nVar = new n(str);
        nVar.f54455f = e4;
        nVar.f54454e = jVarArr[0].getType();
        return nVar;
    }

    public static <V> n n(com.nineoldandroids.util.c cVar, p<V> pVar, V... vArr) {
        n nVar = new n(cVar);
        nVar.u(vArr);
        nVar.q(pVar);
        return nVar;
    }

    public static n o(String str, p pVar, Object... objArr) {
        n nVar = new n(str);
        nVar.u(objArr);
        nVar.q(pVar);
        return nVar;
    }

    private void y(Class cls) {
        this.f54453d = B(cls, f54449q, "get", null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void A(Object obj) {
        com.nineoldandroids.util.c cVar = this.f54451b;
        if (cVar != null) {
            try {
                cVar.a(obj);
                Iterator<j> it2 = this.f54455f.f54422e.iterator();
                while (it2.hasNext()) {
                    j next = it2.next();
                    if (!next.e()) {
                        next.n(this.f54451b.a(obj));
                    }
                }
                return;
            } catch (ClassCastException unused) {
                StringBuilder sb = new StringBuilder();
                sb.append("No such property (");
                sb.append(this.f54451b.b());
                sb.append(") on target object ");
                sb.append(obj);
                sb.append(". Trying reflection instead");
                this.f54451b = null;
            }
        }
        Class<?> cls = obj.getClass();
        if (this.f54452c == null) {
            z(cls);
        }
        Iterator<j> it3 = this.f54455f.f54422e.iterator();
        while (it3.hasNext()) {
            j next2 = it3.next();
            if (!next2.e()) {
                if (this.f54453d == null) {
                    y(cls);
                }
                try {
                    next2.n(this.f54453d.invoke(obj, new Object[0]));
                } catch (IllegalAccessException e4) {
                    e4.toString();
                } catch (InvocationTargetException e5) {
                    e5.toString();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void C(Object obj) {
        D(obj, this.f54455f.f54422e.get(0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f4) {
        this.f54459j = this.f54455f.b(f4);
    }

    @Override // 
    /* renamed from: b */
    public n clone() {
        try {
            n nVar = (n) super.clone();
            nVar.f54450a = this.f54450a;
            nVar.f54451b = this.f54451b;
            nVar.f54455f = this.f54455f.clone();
            nVar.f54458i = this.f54458i;
            return nVar;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object c() {
        return this.f54459j;
    }

    public String f() {
        return this.f54450a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        if (this.f54458i == null) {
            Class cls = this.f54454e;
            this.f54458i = cls == Integer.class ? f54443k : cls == Float.class ? f54444l : null;
        }
        p pVar = this.f54458i;
        if (pVar != null) {
            this.f54455f.g(pVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p(Object obj) {
        com.nineoldandroids.util.c cVar = this.f54451b;
        if (cVar != null) {
            cVar.e(obj, c());
        }
        if (this.f54452c != null) {
            try {
                this.f54457h[0] = c();
                this.f54452c.invoke(obj, this.f54457h);
            } catch (IllegalAccessException e4) {
                e4.toString();
            } catch (InvocationTargetException e5) {
                e5.toString();
            }
        }
    }

    public void q(p pVar) {
        this.f54458i = pVar;
        this.f54455f.g(pVar);
    }

    public void r(float... fArr) {
        this.f54454e = Float.TYPE;
        this.f54455f = k.c(fArr);
    }

    public void s(int... iArr) {
        this.f54454e = Integer.TYPE;
        this.f54455f = k.d(iArr);
    }

    public void t(j... jVarArr) {
        int length = jVarArr.length;
        j[] jVarArr2 = new j[Math.max(length, 2)];
        this.f54454e = jVarArr[0].getType();
        for (int i2 = 0; i2 < length; i2++) {
            jVarArr2[i2] = jVarArr[i2];
        }
        this.f54455f = new k(jVarArr2);
    }

    public String toString() {
        return this.f54450a + ": " + this.f54455f.toString();
    }

    public void u(Object... objArr) {
        this.f54454e = objArr[0].getClass();
        this.f54455f = k.f(objArr);
    }

    public void v(com.nineoldandroids.util.c cVar) {
        this.f54451b = cVar;
    }

    public void w(String str) {
        this.f54450a = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x(Object obj) {
        ArrayList<j> arrayList = this.f54455f.f54422e;
        D(obj, arrayList.get(arrayList.size() - 1));
    }

    void z(Class cls) {
        this.f54452c = B(cls, f54448p, "set", this.f54454e);
    }

    private n(String str) {
        this.f54452c = null;
        this.f54453d = null;
        this.f54455f = null;
        this.f54456g = new ReentrantReadWriteLock();
        this.f54457h = new Object[1];
        this.f54450a = str;
    }

    /* compiled from: PropertyValuesHolder.java */
    /* loaded from: classes4.dex */
    static class b extends n {

        /* renamed from: r  reason: collision with root package name */
        private com.nineoldandroids.util.a f54460r;

        /* renamed from: s  reason: collision with root package name */
        g f54461s;

        /* renamed from: t  reason: collision with root package name */
        float f54462t;

        public b(String str, g gVar) {
            super(str);
            this.f54454e = Float.TYPE;
            this.f54455f = gVar;
            this.f54461s = gVar;
        }

        @Override // com.nineoldandroids.animation.n
        /* renamed from: E */
        public b clone() {
            b bVar = (b) super.clone();
            bVar.f54461s = (g) bVar.f54455f;
            return bVar;
        }

        @Override // com.nineoldandroids.animation.n
        void a(float f4) {
            this.f54462t = this.f54461s.i(f4);
        }

        @Override // com.nineoldandroids.animation.n
        Object c() {
            return Float.valueOf(this.f54462t);
        }

        @Override // com.nineoldandroids.animation.n
        void p(Object obj) {
            com.nineoldandroids.util.a aVar = this.f54460r;
            if (aVar != null) {
                aVar.g(obj, this.f54462t);
                return;
            }
            com.nineoldandroids.util.c cVar = this.f54451b;
            if (cVar != null) {
                cVar.e(obj, Float.valueOf(this.f54462t));
            } else if (this.f54452c != null) {
                try {
                    this.f54457h[0] = Float.valueOf(this.f54462t);
                    this.f54452c.invoke(obj, this.f54457h);
                } catch (IllegalAccessException e4) {
                    e4.toString();
                } catch (InvocationTargetException e5) {
                    e5.toString();
                }
            }
        }

        @Override // com.nineoldandroids.animation.n
        public void r(float... fArr) {
            super.r(fArr);
            this.f54461s = (g) this.f54455f;
        }

        @Override // com.nineoldandroids.animation.n
        void z(Class cls) {
            if (this.f54451b != null) {
                return;
            }
            super.z(cls);
        }

        public b(com.nineoldandroids.util.c cVar, g gVar) {
            super(cVar);
            this.f54454e = Float.TYPE;
            this.f54455f = gVar;
            this.f54461s = gVar;
            if (cVar instanceof com.nineoldandroids.util.a) {
                this.f54460r = (com.nineoldandroids.util.a) this.f54451b;
            }
        }

        public b(String str, float... fArr) {
            super(str);
            r(fArr);
        }

        public b(com.nineoldandroids.util.c cVar, float... fArr) {
            super(cVar);
            r(fArr);
            if (cVar instanceof com.nineoldandroids.util.a) {
                this.f54460r = (com.nineoldandroids.util.a) this.f54451b;
            }
        }
    }

    /* compiled from: PropertyValuesHolder.java */
    /* loaded from: classes4.dex */
    static class c extends n {

        /* renamed from: r  reason: collision with root package name */
        private com.nineoldandroids.util.b f54463r;

        /* renamed from: s  reason: collision with root package name */
        i f54464s;

        /* renamed from: t  reason: collision with root package name */
        int f54465t;

        public c(String str, i iVar) {
            super(str);
            this.f54454e = Integer.TYPE;
            this.f54455f = iVar;
            this.f54464s = iVar;
        }

        @Override // com.nineoldandroids.animation.n
        /* renamed from: E */
        public c clone() {
            c cVar = (c) super.clone();
            cVar.f54464s = (i) cVar.f54455f;
            return cVar;
        }

        @Override // com.nineoldandroids.animation.n
        void a(float f4) {
            this.f54465t = this.f54464s.i(f4);
        }

        @Override // com.nineoldandroids.animation.n
        Object c() {
            return Integer.valueOf(this.f54465t);
        }

        @Override // com.nineoldandroids.animation.n
        void p(Object obj) {
            com.nineoldandroids.util.b bVar = this.f54463r;
            if (bVar != null) {
                bVar.g(obj, this.f54465t);
                return;
            }
            com.nineoldandroids.util.c cVar = this.f54451b;
            if (cVar != null) {
                cVar.e(obj, Integer.valueOf(this.f54465t));
            } else if (this.f54452c != null) {
                try {
                    this.f54457h[0] = Integer.valueOf(this.f54465t);
                    this.f54452c.invoke(obj, this.f54457h);
                } catch (IllegalAccessException e4) {
                    e4.toString();
                } catch (InvocationTargetException e5) {
                    e5.toString();
                }
            }
        }

        @Override // com.nineoldandroids.animation.n
        public void s(int... iArr) {
            super.s(iArr);
            this.f54464s = (i) this.f54455f;
        }

        @Override // com.nineoldandroids.animation.n
        void z(Class cls) {
            if (this.f54451b != null) {
                return;
            }
            super.z(cls);
        }

        public c(com.nineoldandroids.util.c cVar, i iVar) {
            super(cVar);
            this.f54454e = Integer.TYPE;
            this.f54455f = iVar;
            this.f54464s = iVar;
            if (cVar instanceof com.nineoldandroids.util.b) {
                this.f54463r = (com.nineoldandroids.util.b) this.f54451b;
            }
        }

        public c(String str, int... iArr) {
            super(str);
            s(iArr);
        }

        public c(com.nineoldandroids.util.c cVar, int... iArr) {
            super(cVar);
            s(iArr);
            if (cVar instanceof com.nineoldandroids.util.b) {
                this.f54463r = (com.nineoldandroids.util.b) this.f54451b;
            }
        }
    }

    private n(com.nineoldandroids.util.c cVar) {
        this.f54452c = null;
        this.f54453d = null;
        this.f54455f = null;
        this.f54456g = new ReentrantReadWriteLock();
        this.f54457h = new Object[1];
        this.f54451b = cVar;
        if (cVar != null) {
            this.f54450a = cVar.b();
        }
    }
}
