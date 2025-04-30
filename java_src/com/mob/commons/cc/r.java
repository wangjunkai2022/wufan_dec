package com.mob.commons.cc;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
/* loaded from: classes4.dex */
public class r {

    /* renamed from: b  reason: collision with root package name */
    private HashMap<String, Object> f52920b;

    /* renamed from: f  reason: collision with root package name */
    private r f52924f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f52925g;

    /* renamed from: a  reason: collision with root package name */
    private LinkedList<Object> f52919a = new LinkedList<>();

    /* renamed from: c  reason: collision with root package name */
    private HashMap<String, Class<?>> f52921c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private HashMap<String, Class<?>> f52922d = new HashMap<>();

    /* renamed from: e  reason: collision with root package name */
    private HashMap<String, HashMap<String, y>> f52923e = new HashMap<>();

    public r(HashMap<String, Object> hashMap) {
        this.f52920b = new HashMap<>(hashMap);
    }

    private Object b(Class<?> cls, Object obj) {
        Object bigDecimal;
        if (cls.equals(Short.class) && (obj instanceof Byte)) {
            return Short.valueOf(((Byte) obj).shortValue());
        }
        if (cls.equals(Integer.class) && ((obj instanceof Byte) || (obj instanceof Short))) {
            return Integer.valueOf(String.valueOf(obj));
        }
        if (cls.equals(Long.class) && ((obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Integer))) {
            return Long.valueOf(String.valueOf(obj));
        }
        if (cls.equals(Float.class) && ((obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long))) {
            return Float.valueOf(String.valueOf(obj));
        }
        if (cls.equals(Double.class) && ((obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Float))) {
            return Double.valueOf(String.valueOf(obj));
        }
        if (cls.equals(BigInteger.class) && ((obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Float) || (obj instanceof Double))) {
            bigDecimal = new BigInteger(String.valueOf(obj));
        } else if (cls.equals(BigDecimal.class) && ((obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Float) || (obj instanceof Double) || (obj instanceof BigInteger))) {
            bigDecimal = new BigDecimal(String.valueOf(obj));
        } else if (a(cls, obj)) {
            return obj;
        } else {
            throw new RuntimeException("Type not match! Require " + cls.getName() + " but found " + obj.getClass().getName());
        }
        return bigDecimal;
    }

    public void a(Object obj) {
        this.f52919a.push(obj);
    }

    public r c() {
        return this.f52924f;
    }

    public int d() {
        return this.f52919a.size();
    }

    public void e() {
        this.f52925g = true;
    }

    public boolean f() {
        return this.f52925g;
    }

    public Object a() {
        return this.f52919a.pop();
    }

    public void a(String str, Class<?> cls, Object obj) {
        if (!this.f52920b.containsKey(str)) {
            if (cls != null && obj != null) {
                obj = b(cls, obj);
            }
            this.f52920b.put(str, obj);
            if (cls != null) {
                this.f52921c.put(str, cls);
                return;
            }
            return;
        }
        throw new RuntimeException(m.a.f72569g + str + "\" has defined");
    }

    private boolean a(Class<?> cls, Object obj) {
        if (cls == null) {
            return true;
        }
        if ((cls.equals(Double.TYPE) && obj != null && (obj instanceof Double)) || ((cls.equals(Float.TYPE) && obj != null && (obj instanceof Float)) || ((cls.equals(Long.TYPE) && obj != null && (obj instanceof Long)) || ((cls.equals(Integer.TYPE) && obj != null && (obj instanceof Integer)) || ((cls.equals(Short.TYPE) && obj != null && (obj instanceof Short)) || ((cls.equals(Byte.TYPE) && obj != null && (obj instanceof Byte)) || ((cls.equals(Boolean.TYPE) && obj != null && (obj instanceof Boolean)) || (cls.equals(Character.TYPE) && obj != null && (obj instanceof Character))))))))) {
            return true;
        }
        return cls.isInstance(obj);
    }

    public void a(String str, Object obj) {
        if (this.f52920b.containsKey(str)) {
            Class<?> cls = this.f52921c.get(str);
            if (cls != null && obj != null) {
                obj = b(cls, obj);
            }
            this.f52920b.put(str, obj);
        } else if (this.f52924f != null) {
            Class<?> cls2 = this.f52921c.get(str);
            if (cls2 != null && cls2.isInstance(obj)) {
                throw new RuntimeException("Type not match! Require " + cls2.getName());
            }
            this.f52924f.a(str, obj);
        } else {
            throw new RuntimeException(m.a.f72569g + str + "\" has not defined");
        }
    }

    public Class<?> b(String str) {
        for (r rVar = this; rVar != null; rVar = rVar.f52924f) {
            if (rVar.f52922d.containsKey(str)) {
                return rVar.f52922d.get(str);
            }
        }
        throw new RuntimeException("Can not find class " + str);
    }

    public r b() {
        r rVar = new r(new HashMap());
        rVar.f52922d = this.f52922d;
        rVar.f52924f = this;
        return rVar;
    }

    public Object a(String str) {
        for (r rVar = this; rVar != null; rVar = rVar.f52924f) {
            if (rVar.f52920b.containsKey(str)) {
                return rVar.f52920b.get(str);
            }
        }
        throw new RuntimeException("Can not find \"" + str + m.a.f72569g);
    }

    public void a(String str, Class<?> cls) {
        this.f52922d.put(str, cls);
    }

    public void a(Class<?> cls, String str, y yVar) {
        if (!"new".equals(str)) {
            HashMap<String, y> hashMap = this.f52923e.get(cls.getName());
            if (hashMap == null) {
                hashMap = new HashMap<>();
                this.f52923e.put(cls.getName(), hashMap);
            }
            hashMap.put(str, yVar);
            return;
        }
        throw new RuntimeException("Can not override \"new\" method");
    }

    public y a(Class<?> cls, String str) throws Throwable {
        HashMap<String, y> hashMap = this.f52923e.get(cls.getName());
        if (hashMap != null) {
            y yVar = hashMap.get(str);
            if (yVar != null) {
                return yVar;
            }
            throw new NoSuchMethodError();
        }
        throw new NoSuchMethodError();
    }

    public Object a(final Object obj, final boolean z3, Class<?>... clsArr) {
        return Proxy.newProxyInstance(getClass().getClassLoader(), clsArr, new InvocationHandler() { // from class: com.mob.commons.cc.r.1
            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj2, Method method, Object[] objArr) throws Throwable {
                Throwable th;
                y yVar;
                LinkedList<Object> b4;
                try {
                    Object obj3 = obj;
                    if (obj3 instanceof y) {
                        yVar = (y) obj3;
                    } else {
                        yVar = (y) ((Map) obj3).get(method.getName());
                    }
                    if (yVar != null) {
                        if (objArr == null) {
                            objArr = new Object[0];
                        }
                        if (z3) {
                            b4 = yVar.b(objArr);
                        } else {
                            try {
                                b4 = yVar.b(objArr);
                            } catch (Throwable th2) {
                                th = th2;
                                try {
                                    throw th;
                                } catch (Throwable unused) {
                                }
                            }
                        }
                        if (b4.isEmpty()) {
                            return null;
                        }
                        return b4.get(0);
                    }
                } catch (Throwable unused2) {
                }
                th = null;
                if (th == null) {
                    return null;
                }
                throw th;
            }
        });
    }

    public void a(Method method, int i2) throws Throwable {
        Object[] objArr = new Object[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            objArr[i4] = a();
        }
        a(method, objArr);
    }

    public void a(Method method, Object[] objArr) throws Throwable {
        Object obj;
        if (Modifier.isStatic(method.getModifiers())) {
            obj = null;
        } else if (objArr.length > 0) {
            obj = objArr[0];
            int length = objArr.length - 1;
            Object[] objArr2 = new Object[length];
            int i2 = 0;
            while (i2 < length) {
                int i4 = i2 + 1;
                objArr2[i2] = objArr[i4];
                i2 = i4;
            }
            objArr = objArr2;
        } else {
            throw new RuntimeException("receiver not found");
        }
        method.setAccessible(true);
        for (int i5 = 0; i5 < objArr.length; i5++) {
            if (method.getParameterTypes()[i5].isInterface() && objArr[i5] != null && (objArr[i5] instanceof y)) {
                objArr[i5] = a(objArr[i5], true, method.getParameterTypes()[i5]);
            }
        }
        if (method.getReturnType() == Void.TYPE) {
            method.invoke(obj, objArr);
        } else {
            a(method.invoke(obj, objArr));
        }
    }
}
