package com.mob.commons.cc;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.mob.commons.cc.y;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.io.BufferedReader;
import java.io.StringReader;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public class s {

    /* renamed from: a  reason: collision with root package name */
    public static final a<String, Class<?>> f52929a;

    /* renamed from: b  reason: collision with root package name */
    public static final a<String, Method> f52930b;

    /* renamed from: c  reason: collision with root package name */
    public static final a<String, Method> f52931c;

    /* renamed from: e  reason: collision with root package name */
    private static final HashMap<Class<?>, t<?>> f52933e;

    /* renamed from: f  reason: collision with root package name */
    private static final byte[] f52934f = new byte[0];

    /* renamed from: d  reason: collision with root package name */
    private static final HashMap<String, HashMap<String, String[][]>> f52932d = new HashMap<>();

    /* loaded from: classes4.dex */
    public static class a<K, V> extends LinkedHashMap<K, V> {

        /* renamed from: a  reason: collision with root package name */
        private final int f52935a;

        public a(int i2) {
            super(16, 0.75f, true);
            this.f52935a = i2;
        }

        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry entry) {
            return size() > this.f52935a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class b implements InvocationHandler {

        /* renamed from: a  reason: collision with root package name */
        private Object f52936a;

        /* renamed from: b  reason: collision with root package name */
        private String f52937b;

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            if (name.equals("checkClientTrusted")) {
                return null;
            }
            try {
                if (name.equals("checkServerTrusted")) {
                    Object[] objArr2 = (Object[]) objArr[0];
                    String str = (String) objArr[1];
                    if (objArr2 != null) {
                        if (objArr2.length == 1) {
                            Method declaredMethod = objArr2[0].getClass().getDeclaredMethod("checkValidity", new Class[0]);
                            declaredMethod.setAccessible(true);
                            declaredMethod.invoke(objArr2[0], new Object[0]);
                            return null;
                        } else if (this.f52936a != null) {
                            if (s.a()) {
                                Object newInstance = Class.forName("android.net.http.X509TrustManagerExtensions").getConstructor(Class.forName("javax.net.ssl.X509TrustManager")).newInstance(this.f52936a);
                                Method declaredMethod2 = newInstance.getClass().getDeclaredMethod("checkServerTrusted", Array.newInstance(Class.forName("java.security.cert.X509Certificate"), 0).getClass(), String.class, String.class);
                                declaredMethod2.setAccessible(true);
                                declaredMethod2.invoke(newInstance, objArr2, str, this.f52937b);
                                return null;
                            }
                            Method declaredMethod3 = this.f52936a.getClass().getDeclaredMethod("checkServerTrusted", Array.newInstance(Class.forName("java.security.cert.X509Certificate"), 0).getClass(), String.class);
                            declaredMethod3.setAccessible(true);
                            declaredMethod3.invoke(this.f52936a, objArr2, str);
                            return null;
                        } else {
                            throw new CertificateException("there were one more certificates but no trust manager found.");
                        }
                    }
                    throw new IllegalArgumentException("there were no certificates.");
                } else if (name.equals("getAcceptedIssuers")) {
                    return Array.newInstance(Class.forName("java.security.cert.X509Certificate"), 0);
                } else {
                    if (name.equals(TTDownloadField.TT_HASHCODE)) {
                        return Integer.valueOf(hashCode());
                    }
                    if (name.equals("toString")) {
                        return toString();
                    }
                    return null;
                }
            } catch (Throwable unused) {
                return null;
            }
        }

        private b(String str) {
            try {
                this.f52937b = str;
                Method declaredMethod = Class.forName("javax.net.ssl.TrustManagerFactory").getDeclaredMethod("getInstance", String.class);
                declaredMethod.setAccessible(true);
                Object invoke = declaredMethod.invoke(null, "X509");
                Method method = invoke.getClass().getMethod("init", Class.forName("java.security.KeyStore"));
                method.setAccessible(true);
                method.invoke(invoke, null);
                Method method2 = invoke.getClass().getMethod("getTrustManagers", new Class[0]);
                method2.setAccessible(true);
                Object[] objArr = (Object[]) method2.invoke(invoke, new Object[0]);
                if (objArr != null && objArr.length != 0) {
                    this.f52936a = objArr[0];
                    return;
                }
                throw new NoSuchAlgorithmException("no trust manager found.");
            } catch (Exception unused) {
                this.f52936a = null;
            }
        }
    }

    static {
        a<String, Class<?>> aVar = new a<>(50);
        f52929a = aVar;
        f52930b = new a<>(45);
        f52931c = new a<>(30);
        aVar.put(MethodReflectParams.INT, Integer.TYPE);
        aVar.put(MethodReflectParams.DOUBLE, Double.TYPE);
        aVar.put(MethodReflectParams.LONG, Long.TYPE);
        aVar.put("float", Float.TYPE);
        aVar.put("boolean", Boolean.TYPE);
        aVar.put(MethodReflectParams.SHORT, Short.TYPE);
        aVar.put(MethodReflectParams.BYTE, Byte.TYPE);
        aVar.put(MethodReflectParams.CHAR, Character.TYPE);
        aVar.put("void", Void.TYPE);
        f52933e = new HashMap<>();
        a(y.a.class, y.a.class);
    }

    public static void a(String str) throws Throwable {
        synchronized (f52934f) {
            ArrayList arrayList = new ArrayList();
            BufferedReader bufferedReader = new BufferedReader(new StringReader(str));
            HashMap<String, String[][]> hashMap = null;
            for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                String substring = readLine.substring(0, 2);
                String substring2 = readLine.substring(2);
                if (":P".equals(substring)) {
                    arrayList.addAll(Arrays.asList(substring2.split("#")));
                } else if (":C".equals(substring)) {
                    String str2 = (String) arrayList.get(Integer.parseInt(substring2));
                    HashMap<String, HashMap<String, String[][]>> hashMap2 = f52932d;
                    HashMap<String, String[][]> hashMap3 = hashMap2.get(str2);
                    if (hashMap3 == null) {
                        hashMap3 = new HashMap<>();
                        hashMap2.put(str2, hashMap3);
                    }
                    hashMap = hashMap3;
                } else {
                    String[] split = substring2.split("#");
                    String str3 = (String) arrayList.get(Integer.parseInt(split[0]));
                    String[][] strArr = new String[Integer.parseInt(split[1])];
                    for (int i2 = 2; i2 < split.length; i2++) {
                        String str4 = split[i2].startsWith("+") ? "+" : null;
                        if (split[i2].length() > 1) {
                            String[] split2 = split[i2].substring(1).split(",");
                            String[] strArr2 = new String[split2.length + 1];
                            strArr2[0] = str4;
                            int i4 = 0;
                            while (i4 < split2.length) {
                                int i5 = i4 + 1;
                                strArr2[i5] = (String) arrayList.get(Integer.parseInt(split2[i4]));
                                i4 = i5;
                            }
                            strArr[i2 - 2] = strArr2;
                        } else {
                            String[] strArr3 = new String[1];
                            strArr3[0] = str4;
                            strArr[i2 - 2] = strArr3;
                        }
                    }
                    hashMap.put(str3, strArr);
                }
            }
            bufferedReader.close();
        }
    }

    private static boolean b(Class<?> cls, Class<?> cls2) {
        return (cls == Byte.TYPE && cls2 == Byte.class) || (cls == Short.TYPE && (cls2 == Short.class || cls2 == Byte.class || cls2 == Character.class)) || ((cls == Character.TYPE && (cls2 == Character.class || cls2 == Short.class || cls2 == Byte.class)) || ((cls == Integer.TYPE && (cls2 == Integer.class || cls2 == Short.class || cls2 == Byte.class || cls2 == Character.class)) || ((cls == Long.TYPE && (cls2 == Long.class || cls2 == Integer.class || cls2 == Short.class || cls2 == Byte.class || cls2 == Character.class)) || ((cls == Float.TYPE && (cls2 == Float.class || cls2 == Long.class || cls2 == Integer.class || cls2 == Short.class || cls2 == Byte.class || cls2 == Character.class)) || ((cls == Double.TYPE && (cls2 == Double.class || cls2 == Float.class || cls2 == Long.class || cls2 == Integer.class || cls2 == Short.class || cls2 == Byte.class || cls2 == Character.class)) || (cls == Boolean.TYPE && cls2 == Boolean.class))))));
    }

    private static Class<?> c(String str) {
        a<String, Class<?>> aVar = f52929a;
        Class<?> cls = aVar.get(str);
        if (cls == null) {
            try {
                Class<?> cls2 = Class.forName(str);
                aVar.put(str, cls2);
                return cls2;
            } catch (Throwable unused) {
                return null;
            }
        }
        return cls;
    }

    public static Object b(String str) throws Throwable {
        Class<?> cls = Class.forName("javax.net.ssl.X509TrustManager");
        return Proxy.newProxyInstance(ClassLoader.getSystemClassLoader(), new Class[]{cls}, new b(str));
    }

    public static Constructor a(Class<?> cls, Object[] objArr, boolean[][] zArr) throws Throwable {
        String[][] strArr;
        boolean z3;
        boolean[] zArr2;
        boolean[] a4;
        HashMap<String, String[][]> hashMap = f52932d.get(cls.getName());
        if (hashMap == null || (strArr = hashMap.get("<init>")) == null) {
            return null;
        }
        for (String[] strArr2 : strArr) {
            if (strArr2.length - 1 == objArr.length) {
                int length = objArr.length;
                Class<?>[] clsArr = new Class[length];
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        z3 = false;
                        break;
                    }
                    int i4 = i2 + 1;
                    clsArr[i2] = c(strArr2[i4]);
                    if (clsArr[i2] == null) {
                        z3 = true;
                        break;
                    }
                    i2 = i4;
                }
                if (!z3 && (a4 = a(clsArr, objArr, (zArr2 = new boolean[1]))) != null) {
                    zArr[0] = a4;
                    zArr[1] = zArr2;
                    return cls.getDeclaredConstructor(clsArr);
                }
            }
        }
        return null;
    }

    public static String a(Class<?> cls, String str, Object[] objArr) {
        StringBuilder sb = new StringBuilder(cls.getName());
        sb.append("-");
        sb.append(str);
        if (objArr != null && objArr.length > 0) {
            sb.append("#");
            for (Object obj : objArr) {
                if (obj != null) {
                    if (obj instanceof Class) {
                        sb.append(((Class) obj).getName());
                    } else {
                        sb.append(obj.getClass().getName());
                    }
                }
            }
        }
        return sb.toString();
    }

    public static Method a(Class<?> cls, String str, boolean z3, Object[] objArr, boolean[][] zArr) throws Throwable {
        String[][] strArr;
        boolean z4;
        boolean[] zArr2;
        boolean[] a4;
        HashMap<String, String[][]> hashMap = f52932d.get(cls.getName());
        if (hashMap == null || (strArr = hashMap.get(str)) == null) {
            return null;
        }
        for (String[] strArr2 : strArr) {
            if ((z3 == (strArr2[0] != null)) && strArr2.length - 1 == objArr.length) {
                int length = objArr.length;
                Class<?>[] clsArr = new Class[length];
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        z4 = false;
                        break;
                    }
                    int i4 = i2 + 1;
                    clsArr[i2] = c(strArr2[i4]);
                    if (clsArr[i2] == null) {
                        z4 = true;
                        break;
                    }
                    i2 = i4;
                }
                if (!z4 && (a4 = a(clsArr, objArr, (zArr2 = new boolean[1]))) != null) {
                    zArr[0] = a4;
                    zArr[1] = zArr2;
                    String a5 = a(cls, str, clsArr);
                    Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
                    if (z3) {
                        f52931c.put(a5, declaredMethod);
                    } else {
                        f52930b.put(a5, declaredMethod);
                    }
                    return declaredMethod;
                }
            }
        }
        return null;
    }

    public static boolean[] a(Class<?>[] clsArr, Object[] objArr, boolean[] zArr) {
        zArr[0] = true;
        if (clsArr.length == objArr.length) {
            boolean[] zArr2 = new boolean[clsArr.length];
            for (int i2 = 0; i2 < objArr.length; i2++) {
                Object obj = objArr[i2];
                if (obj != null) {
                    Class<?> cls = clsArr[i2];
                    if (cls.isInterface() && (obj instanceof y)) {
                        zArr2[i2] = true;
                        zArr[0] = false;
                    } else {
                        Class<?> cls2 = obj.getClass();
                        if (!b(cls, cls2) && !cls.isAssignableFrom(cls2)) {
                            return null;
                        }
                        zArr2[i2] = false;
                    }
                }
            }
            return zArr2;
        }
        return null;
    }

    public static Object[] a(r rVar, Class<?>[] clsArr, Object[] objArr, boolean[] zArr) {
        Object[] objArr2 = new Object[zArr.length];
        for (int i2 = 0; i2 < zArr.length; i2++) {
            if (objArr[i2] != null) {
                if (zArr[i2]) {
                    objArr2[i2] = rVar.a(objArr[i2], true, clsArr[i2]);
                } else {
                    objArr2[i2] = objArr[i2];
                }
            }
        }
        return objArr2;
    }

    public static boolean a() {
        try {
            Field field = Class.forName("android.os.Build$VERSION").getField("SDK_INT");
            field.setAccessible(true);
            return field.getInt(null) >= 17;
        } catch (Throwable unused) {
            return true;
        }
    }

    public static <T> void a(Class<T> cls, Class<? extends t<T>> cls2) {
        try {
            synchronized (f52934f) {
                t<T> newInstance = cls2.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                HashMap<Class<?>, t<?>> hashMap = f52933e;
                if (hashMap.get(cls) == null) {
                    hashMap.put(cls, newInstance);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static boolean a(Object obj, Class<?> cls, String str, Object[] objArr, r rVar) throws Throwable {
        t<?> tVar = null;
        for (Class<?> cls2 = cls; tVar == null && cls2 != null && cls2 != Object.class; cls2 = cls2.getSuperclass()) {
            tVar = f52933e.get(cls2);
        }
        if (tVar != null) {
            boolean[] zArr = new boolean[1];
            Object[] objArr2 = new Object[1];
            Throwable[] thArr = new Throwable[1];
            boolean a4 = tVar.a(obj, cls, str, objArr, zArr, objArr2, thArr);
            if (a4) {
                if (thArr[0] == null) {
                    if (!zArr[0]) {
                        rVar.a(objArr2[0]);
                    }
                } else {
                    throw thArr[0];
                }
            }
            return a4;
        }
        return false;
    }
}
