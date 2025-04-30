package com.xinzhu.overmind.utils;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
/* compiled from: Reflector.java */
/* loaded from: classes.dex */
public class s {

    /* renamed from: f  reason: collision with root package name */
    public static final String f64775f = "Reflector";

    /* renamed from: a  reason: collision with root package name */
    protected Class<?> f64776a;

    /* renamed from: b  reason: collision with root package name */
    protected Object f64777b;

    /* renamed from: c  reason: collision with root package name */
    protected Constructor f64778c;

    /* renamed from: d  reason: collision with root package name */
    protected Field f64779d;

    /* renamed from: e  reason: collision with root package name */
    protected Method f64780e;

    /* compiled from: Reflector.java */
    /* loaded from: classes3.dex */
    public static class a extends s {

        /* renamed from: g  reason: collision with root package name */
        protected Throwable f64781g;

        protected a() {
        }

        private static a A(Class<?> type, Throwable ignored) {
            a aVar = new a();
            aVar.f64776a = type;
            aVar.f64781g = ignored;
            return aVar;
        }

        public static a B(String name) {
            return D(name, true, a.class.getClassLoader());
        }

        public static a C(String name, boolean initialize) {
            return D(name, initialize, a.class.getClassLoader());
        }

        public static a D(String name, boolean initialize, ClassLoader loader) {
            Class cls;
            Class cls2 = null;
            try {
                try {
                    return A(Class.forName(name, initialize, loader), null);
                } catch (Throwable th) {
                    th = th;
                    cls2 = cls;
                    return A(cls2, th);
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        public static a J(Object caller) {
            if (caller == null) {
                return z(null);
            }
            return z(caller.getClass()).a(caller);
        }

        public static a z(Class<?> type) {
            return A(type, type == null ? new Exception("Type was null!") : null);
        }

        @Override // com.xinzhu.overmind.utils.s
        /* renamed from: E */
        public a q(Object value) {
            if (G()) {
                return this;
            }
            try {
                this.f64781g = null;
                super.q(value);
            } catch (Throwable th) {
                this.f64781g = th;
            }
            return this;
        }

        @Override // com.xinzhu.overmind.utils.s
        /* renamed from: F */
        public a r(Object caller, Object value) {
            if (G()) {
                return this;
            }
            try {
                this.f64781g = null;
                super.r(caller, value);
            } catch (Throwable th) {
                this.f64781g = th;
            }
            return this;
        }

        protected boolean G() {
            return H() || this.f64781g != null;
        }

        protected boolean H() {
            return this.f64776a == null;
        }

        @Override // com.xinzhu.overmind.utils.s
        /* renamed from: I */
        public a s() {
            super.s();
            return this;
        }

        @Override // com.xinzhu.overmind.utils.s
        public <R> R b(Object caller, Object... args) {
            if (G()) {
                return null;
            }
            try {
                this.f64781g = null;
                return (R) super.b(caller, args);
            } catch (Throwable th) {
                this.f64781g = th;
                return null;
            }
        }

        @Override // com.xinzhu.overmind.utils.s
        public <R> R call(Object... args) {
            if (G()) {
                return null;
            }
            try {
                this.f64781g = null;
                return (R) super.call(args);
            } catch (Throwable th) {
                this.f64781g = th;
                return null;
            }
        }

        @Override // com.xinzhu.overmind.utils.s
        public <R> R i() {
            if (G()) {
                return null;
            }
            try {
                this.f64781g = null;
                return (R) super.i();
            } catch (Throwable th) {
                this.f64781g = th;
                return null;
            }
        }

        @Override // com.xinzhu.overmind.utils.s
        public <R> R j(Object caller) {
            if (G()) {
                return null;
            }
            try {
                this.f64781g = null;
                return (R) super.j(caller);
            } catch (Throwable th) {
                this.f64781g = th;
                return null;
            }
        }

        @Override // com.xinzhu.overmind.utils.s
        public <R> R l(Object... initargs) {
            if (G()) {
                return null;
            }
            try {
                this.f64781g = null;
                return (R) super.l(initargs);
            } catch (Throwable th) {
                this.f64781g = th;
                return null;
            }
        }

        @Override // com.xinzhu.overmind.utils.s
        /* renamed from: u */
        public a a(Object obj) {
            if (H()) {
                return this;
            }
            try {
                this.f64781g = null;
                super.a(obj);
            } catch (Throwable th) {
                this.f64781g = th;
            }
            return this;
        }

        @Override // com.xinzhu.overmind.utils.s
        /* renamed from: v */
        public a e(Class<?>... parameterTypes) {
            if (H()) {
                return this;
            }
            try {
                this.f64781g = null;
                super.e(parameterTypes);
            } catch (Throwable th) {
                this.f64781g = th;
            }
            return this;
        }

        @Override // com.xinzhu.overmind.utils.s
        /* renamed from: w */
        public a f(String name) {
            if (H()) {
                return this;
            }
            try {
                this.f64781g = null;
                super.f(name);
            } catch (Throwable th) {
                this.f64781g = th;
            }
            return this;
        }

        public Throwable x() {
            return this.f64781g;
        }

        @Override // com.xinzhu.overmind.utils.s
        /* renamed from: y */
        public a k(String name, Class<?>... parameterTypes) {
            if (H()) {
                return this;
            }
            try {
                this.f64781g = null;
                super.k(name, parameterTypes);
            } catch (Throwable th) {
                this.f64781g = th;
            }
            return this;
        }
    }

    protected s() {
    }

    public static s m(Class<?> type) {
        s sVar = new s();
        sVar.f64776a = type;
        return sVar;
    }

    public static s n(String name) throws Exception {
        return p(name, true, s.class.getClassLoader());
    }

    public static s o(String name, boolean initialize) throws Exception {
        return p(name, initialize, s.class.getClassLoader());
    }

    public static s p(String name, boolean initialize, ClassLoader loader) throws Exception {
        try {
            return m(Class.forName(name, initialize, loader));
        } catch (Throwable th) {
            throw new Exception("Oops!", th);
        }
    }

    public static s t(Object caller) throws Exception {
        return m(caller.getClass()).a(caller);
    }

    public s a(Object caller) throws Exception {
        this.f64777b = d(caller);
        return this;
    }

    public <R> R b(Object caller, Object... args) throws Exception {
        c(caller, this.f64780e, "Method");
        try {
            return (R) this.f64780e.invoke(caller, args);
        } catch (InvocationTargetException e4) {
            throw new Exception("Oops!", e4.getTargetException());
        } catch (Throwable th) {
            throw new Exception("Oops!", th);
        }
    }

    protected void c(Object caller, Member member, String name) throws Exception {
        if (member != null) {
            if (caller == null && !Modifier.isStatic(member.getModifiers())) {
                throw new Exception("Need a caller!");
            }
            d(caller);
            return;
        }
        throw new Exception(name + " was null!");
    }

    public <R> R call(Object... args) throws Exception {
        return (R) b(this.f64777b, args);
    }

    protected Object d(Object caller) throws Exception {
        if (caller == null || this.f64776a.isInstance(caller)) {
            return caller;
        }
        throw new Exception("Caller [" + caller + "] is not a instance of type [" + this.f64776a + "]!");
    }

    public s e(Class<?>... parameterTypes) throws Exception {
        try {
            Constructor<?> declaredConstructor = this.f64776a.getDeclaredConstructor(parameterTypes);
            this.f64778c = declaredConstructor;
            declaredConstructor.setAccessible(true);
            this.f64779d = null;
            this.f64780e = null;
            return this;
        } catch (Throwable th) {
            throw new Exception("Oops!", th);
        }
    }

    public s f(String name) throws Exception {
        try {
            Field g4 = g(name);
            this.f64779d = g4;
            g4.setAccessible(true);
            this.f64778c = null;
            this.f64780e = null;
            return this;
        } catch (Throwable th) {
            throw new Exception("Oops!", th);
        }
    }

    protected Field g(String name) throws NoSuchFieldException {
        try {
            return this.f64776a.getField(name);
        } catch (NoSuchFieldException e4) {
            for (Class<?> cls = this.f64776a; cls != null; cls = cls.getSuperclass()) {
                try {
                    return cls.getDeclaredField(name);
                } catch (NoSuchFieldException unused) {
                }
            }
            throw e4;
        }
    }

    protected Method h(String name, Class<?>... parameterTypes) throws NoSuchMethodException {
        try {
            return this.f64776a.getMethod(name, parameterTypes);
        } catch (NoSuchMethodException e4) {
            for (Class<?> cls = this.f64776a; cls != null; cls = cls.getSuperclass()) {
                try {
                    return cls.getDeclaredMethod(name, parameterTypes);
                } catch (NoSuchMethodException unused) {
                }
            }
            throw e4;
        }
    }

    public <R> R i() throws Exception {
        return (R) j(this.f64777b);
    }

    public <R> R j(Object caller) throws Exception {
        c(caller, this.f64779d, "Field");
        try {
            return (R) this.f64779d.get(caller);
        } catch (Throwable th) {
            throw new Exception("Oops!", th);
        }
    }

    public s k(String name, Class<?>... parameterTypes) throws Exception {
        try {
            Method h4 = h(name, parameterTypes);
            this.f64780e = h4;
            h4.setAccessible(true);
            this.f64778c = null;
            this.f64779d = null;
            return this;
        } catch (NoSuchMethodException e4) {
            throw new Exception("Oops!", e4);
        }
    }

    public <R> R l(Object... initargs) throws Exception {
        Constructor constructor = this.f64778c;
        if (constructor != null) {
            try {
                return (R) constructor.newInstance(initargs);
            } catch (InvocationTargetException e4) {
                throw new Exception("Oops!", e4.getTargetException());
            } catch (Throwable th) {
                throw new Exception("Oops!", th);
            }
        }
        throw new Exception("Constructor was null!");
    }

    public s q(Object value) throws Exception {
        return r(this.f64777b, value);
    }

    public s r(Object caller, Object value) throws Exception {
        c(caller, this.f64779d, "Field");
        try {
            this.f64779d.set(caller, value);
            return this;
        } catch (Throwable th) {
            throw new Exception("Oops!", th);
        }
    }

    public s s() {
        this.f64777b = null;
        return this;
    }
}
