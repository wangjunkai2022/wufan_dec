package com.xinzhu.overmind.client.hook.proxies.libcore;

import com.xinzhu.overmind.Overmind;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* compiled from: OsStub.java */
/* loaded from: classes.dex */
public class a extends com.xinzhu.overmind.client.hook.c {

    /* renamed from: f  reason: collision with root package name */
    public static final String f64191f = "OsStub";

    /* renamed from: e  reason: collision with root package name */
    private Object f64192e = com.xinzhu.haunted.libcore.io.a.b();

    /* compiled from: OsStub.java */
    /* renamed from: com.xinzhu.overmind.client.hook.proxies.libcore.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0414a extends com.xinzhu.overmind.client.hook.g {
        C0414a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "chown";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            try {
                a.m(args, 1);
                return method.invoke(who, args);
            } catch (InvocationTargetException e4) {
                if (e4.getCause() == null) {
                    return null;
                }
                throw e4.getCause();
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    /* compiled from: OsStub.java */
    /* loaded from: classes.dex */
    static class b extends com.xinzhu.overmind.client.hook.g {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "fchown";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            try {
                a.m(args, 1);
                return method.invoke(who, args);
            } catch (InvocationTargetException e4) {
                if (e4.getCause() == null) {
                    return null;
                }
                throw e4.getCause();
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    /* compiled from: OsStub.java */
    /* loaded from: classes.dex */
    static class c extends com.xinzhu.overmind.client.hook.g {
        c() {
        }

        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "fstat";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            try {
                Object invoke = method.invoke(who, args);
                Field declaredField = invoke.getClass().getDeclaredField("st_uid");
                declaredField.setAccessible(true);
                if (((Integer) declaredField.get(invoke)).intValue() == Overmind.getHostUid()) {
                    declaredField.set(invoke, Integer.valueOf(com.xinzhu.overmind.client.e.getVUid()));
                }
                return invoke;
            } catch (InvocationTargetException e4) {
                if (e4.getCause() == null) {
                    return null;
                }
                throw e4.getCause();
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    /* compiled from: OsStub.java */
    /* loaded from: classes.dex */
    static class d extends com.xinzhu.overmind.client.hook.g {
        d() {
        }

        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getpwnam";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            try {
                Object invoke = method.invoke(who, args);
                Field declaredField = invoke.getClass().getDeclaredField("pw_uid");
                declaredField.setAccessible(true);
                if (((Integer) declaredField.get(invoke)).intValue() == Overmind.getHostUid()) {
                    declaredField.set(invoke, Integer.valueOf(com.xinzhu.overmind.client.e.getVUid()));
                }
                return invoke;
            } catch (InvocationTargetException e4) {
                if (e4.getCause() == null) {
                    return null;
                }
                throw e4.getCause();
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    /* compiled from: OsStub.java */
    /* loaded from: classes.dex */
    static class e extends com.xinzhu.overmind.client.hook.g {
        e() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getpwuid";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            try {
                a.m(args, 0);
                return method.invoke(who, args);
            } catch (InvocationTargetException e4) {
                if (e4.getCause() == null) {
                    return null;
                }
                throw e4.getCause();
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    /* compiled from: OsStub.java */
    /* loaded from: classes.dex */
    static class f extends com.xinzhu.overmind.client.hook.g {
        f() {
        }

        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getsockoptUcred";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            try {
                Object invoke = method.invoke(who, args);
                Field declaredField = invoke.getClass().getDeclaredField("uid");
                declaredField.setAccessible(true);
                if (((Integer) declaredField.get(invoke)).intValue() == Overmind.getHostUid()) {
                    declaredField.set(invoke, Integer.valueOf(com.xinzhu.overmind.client.e.getVUid()));
                }
                return invoke;
            } catch (InvocationTargetException e4) {
                if (e4.getCause() == null) {
                    return null;
                }
                throw e4.getCause();
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    /* compiled from: OsStub.java */
    /* loaded from: classes.dex */
    static class g extends com.xinzhu.overmind.client.hook.g {
        g() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "getuid";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            try {
                int intValue = ((Integer) method.invoke(who, args)).intValue();
                if (com.xinzhu.overmind.client.e.getClientConfig() == null) {
                    return Integer.valueOf(intValue);
                }
                return Integer.valueOf(com.xinzhu.overmind.client.e.getVUid());
            } catch (InvocationTargetException e4) {
                if (e4.getCause() == null) {
                    return null;
                }
                throw e4.getCause();
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    /* compiled from: OsStub.java */
    /* loaded from: classes.dex */
    static class h extends com.xinzhu.overmind.client.hook.g {
        h() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "lchown";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            try {
                a.m(args, 1);
                return method.invoke(who, args);
            } catch (InvocationTargetException e4) {
                if (e4.getCause() == null) {
                    return null;
                }
                throw e4.getCause();
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    /* compiled from: OsStub.java */
    /* loaded from: classes.dex */
    static class i extends com.xinzhu.overmind.client.hook.g {
        i() {
        }

        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "lstat";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            try {
                Object invoke = method.invoke(who, args);
                Field declaredField = invoke.getClass().getDeclaredField("st_uid");
                declaredField.setAccessible(true);
                if (((Integer) declaredField.get(invoke)).intValue() == Overmind.getHostUid()) {
                    declaredField.set(invoke, Integer.valueOf(com.xinzhu.overmind.client.e.getVUid()));
                }
                return invoke;
            } catch (InvocationTargetException e4) {
                if (e4.getCause() == null) {
                    return null;
                }
                throw e4.getCause();
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    /* compiled from: OsStub.java */
    /* loaded from: classes.dex */
    static class j extends com.xinzhu.overmind.client.hook.g {
        j() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "setuid";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            try {
                a.m(args, 0);
                return method.invoke(who, args);
            } catch (InvocationTargetException e4) {
                if (e4.getCause() == null) {
                    return null;
                }
                throw e4.getCause();
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    /* compiled from: OsStub.java */
    /* loaded from: classes.dex */
    static class k extends com.xinzhu.overmind.client.hook.g {
        k() {
        }

        @Override // com.xinzhu.overmind.client.hook.g
        public String c() {
            return "stat";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.xinzhu.overmind.client.hook.g
        public Object d(Object who, Method method, Object[] args) throws Throwable {
            try {
                Object invoke = method.invoke(who, args);
                Field declaredField = invoke.getClass().getDeclaredField("st_uid");
                declaredField.setAccessible(true);
                if (((Integer) declaredField.get(invoke)).intValue() == Overmind.getHostUid()) {
                    declaredField.set(invoke, Integer.valueOf(com.xinzhu.overmind.client.e.getVUid()));
                }
                return invoke;
            } catch (InvocationTargetException e4) {
                if (e4.getCause() == null) {
                    return null;
                }
                throw e4.getCause();
            } catch (Throwable th) {
                th.printStackTrace();
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void m(Object[] args, int index) {
        if (args != null && (args[index] instanceof Integer)) {
            if (((Integer) args[index]).intValue() == com.xinzhu.overmind.client.e.getVUid() || ((Integer) args[index]).intValue() == com.xinzhu.overmind.client.e.getBaseVUid()) {
                args[index] = Integer.valueOf(Overmind.getHostUid());
            }
        }
    }

    @Override // com.xinzhu.overmind.client.hook.e
    public boolean a() {
        return com.xinzhu.haunted.libcore.io.a.b() != g();
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected Object h() {
        return this.f64192e;
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void i(Object baseInvocation, Object proxyInvocation) {
        com.xinzhu.haunted.libcore.io.a.c(proxyInvocation);
    }

    @Override // com.xinzhu.overmind.client.hook.c
    protected void k() {
        d(new k());
        d(new c());
        d(new i());
        d(new d());
        d(new f());
        d(new g());
        d(new C0414a());
        d(new b());
        d(new h());
        d(new e());
        d(new j());
    }
}
