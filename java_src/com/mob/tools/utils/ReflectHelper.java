package com.mob.tools.utils;

import android.content.BroadcastReceiver;
import com.join.mgps.Util.g0;
import com.mob.commons.o;
import com.mob.tools.proguard.PublicMemberKeeper;
import com.swift.sandhook.annotation.MethodReflectParams;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class ReflectHelper implements PublicMemberKeeper {

    /* renamed from: a  reason: collision with root package name */
    private static HashSet<String> f53945a;

    /* renamed from: b  reason: collision with root package name */
    private static HashMap<String, Class<?>> f53946b;

    /* renamed from: c  reason: collision with root package name */
    private static HashMap<Class<?>, String> f53947c;

    /* renamed from: d  reason: collision with root package name */
    private static LinkedHashMap<String, Method> f53948d;

    /* renamed from: e  reason: collision with root package name */
    private static LinkedHashMap<String, Constructor<?>> f53949e;

    /* loaded from: classes4.dex */
    public interface a<ArgType, RetType> {
        RetType a(ArgType argtype);
    }

    static {
        HashSet<String> hashSet = new HashSet<>();
        f53945a = hashSet;
        hashSet.add(o.a("0094hfdf[j5dfeleddfdkff"));
        f53945a.add(o.a("007=hfdfJj]dfeldeec"));
        f53945a.add(o.a("008UhfdfDjMdfeldkdeec"));
        f53945a.add("java.net");
        f53945a.add(o.a("009Lhfdf9j<dfeldcHd4deed"));
        HashMap<String, Class<?>> hashMap = new HashMap<>();
        f53946b = hashMap;
        hashMap.put(o.a("006h)ecdcfcedLi"), Double.TYPE);
        f53946b.put(o.a("0058fhedecdf5d"), Float.TYPE);
        f53946b.put(MethodReflectParams.LONG, Long.TYPE);
        f53946b.put(o.a("003!dedkDd"), Integer.TYPE);
        f53946b.put(MethodReflectParams.SHORT, Short.TYPE);
        f53946b.put(MethodReflectParams.BYTE, Byte.TYPE);
        f53946b.put(o.a("0048dg]cIdfdh"), Character.TYPE);
        f53946b.put("boolean", Boolean.TYPE);
        f53946b.put("Object", Object.class);
        f53946b.put("String", String.class);
        f53946b.put("Thread", Thread.class);
        f53946b.put(o.a("008$gedcdkdkdffced=i"), Runnable.class);
        f53946b.put(o.a("0069ehdifg%dil"), System.class);
        f53946b.put(o.a("006hNecdcfced.i"), Double.class);
        f53946b.put("Float", Float.class);
        f53946b.put("Long", Long.class);
        f53946b.put("Integer", Integer.class);
        f53946b.put(o.a("005^ehFcJecdh=d"), Short.class);
        f53946b.put("Byte", Byte.class);
        f53946b.put(o.a("009'gg]cQdfdhdfdg.di;dh"), Character.class);
        f53946b.put("Boolean", Boolean.class);
        f53947c = new HashMap<>();
        for (Map.Entry<String, Class<?>> entry : f53946b.entrySet()) {
            f53947c.put(entry.getValue(), entry.getKey());
        }
        f53948d = new LinkedHashMap<String, Method>() { // from class: com.mob.tools.utils.ReflectHelper.1
            @Override // java.util.LinkedHashMap
            protected boolean removeEldestEntry(Map.Entry<String, Method> entry2) {
                return size() > 10;
            }
        };
        f53949e = new LinkedHashMap<String, Constructor<?>>() { // from class: com.mob.tools.utils.ReflectHelper.2
            @Override // java.util.LinkedHashMap
            protected boolean removeEldestEntry(Map.Entry<String, Constructor<?>> entry2) {
                return size() > 10;
            }
        };
    }

    private static synchronized Class<?> a(String str) {
        Class<?> cls;
        synchronized (ReflectHelper.class) {
            cls = f53946b.get(str);
            if (cls == null) {
                Iterator<String> it2 = f53945a.iterator();
                while (it2.hasNext()) {
                    String next = it2.next();
                    try {
                        importClass(next + g0.f27568a + str);
                    } catch (Throwable unused) {
                    }
                    cls = f53946b.get(str);
                    if (cls != null) {
                        break;
                    }
                }
            }
        }
        return cls;
    }

    private static boolean b(Class<?>[] clsArr, Class<?>[] clsArr2) {
        boolean z3;
        if (clsArr.length - clsArr2.length == 1) {
            int i2 = 0;
            while (true) {
                if (i2 >= clsArr2.length) {
                    z3 = true;
                    break;
                } else if (clsArr2[i2] != null && !a(clsArr[i2], clsArr2[i2]) && !clsArr[i2].isAssignableFrom(clsArr2[i2])) {
                    z3 = false;
                    break;
                } else {
                    i2++;
                }
            }
            return z3 && clsArr[clsArr.length - 1].isArray();
        }
        return false;
    }

    public static Object createProxy(HashMap<String, a<Object, Object[]>> hashMap, Class<?>... clsArr) throws Throwable {
        HashMap hashMap2 = new HashMap();
        for (final Map.Entry<String, a<Object, Object[]>> entry : hashMap.entrySet()) {
            hashMap2.put(entry.getKey(), new a<Object[], Object>() { // from class: com.mob.tools.utils.ReflectHelper.3
                @Override // com.mob.tools.utils.ReflectHelper.a
                public Object a(Object[] objArr) {
                    return ((Object[]) ((a) entry.getValue()).a(objArr))[0];
                }
            });
        }
        return createProxy((Map<String, a<Object[], Object>>) hashMap2, clsArr);
    }

    public static Class<?> getClass(String str) throws Throwable {
        Class<?> a4 = a(str);
        if (a4 == null) {
            try {
                a4 = Class.forName(str);
                f53946b.put(str, a4);
                return a4;
            } catch (Throwable unused) {
                return a4;
            }
        }
        return a4;
    }

    public static <T> T getInstanceField(Object obj, String str) throws Throwable {
        try {
            return (T) a(obj, str);
        } catch (Throwable th) {
            if (th instanceof NoSuchFieldException) {
                throw th;
            }
            throw new Throwable("className: " + obj.getClass() + ", fieldName: " + str, th);
        }
    }

    public static String getName(Class<?> cls) throws Throwable {
        String str = f53947c.get(cls);
        if (str == null) {
            str = cls.getSimpleName();
            if (f53946b.containsKey(str)) {
                f53947c.remove(f53946b.get(str));
            }
            f53946b.put(str, cls);
            f53947c.put(cls, str);
        }
        return str;
    }

    public static <T> T getStaticField(String str, String str2) throws Throwable {
        try {
            return (T) a(str, str2);
        } catch (Throwable th) {
            if (th instanceof NoSuchFieldException) {
                throw th;
            }
            throw new Throwable("className: " + str + ", fieldName: " + str2, th);
        }
    }

    public static String importClass(String str) throws Throwable {
        return importClass(null, str);
    }

    public static <T> T invokeInstanceMethod(Object obj, String str, Object[] objArr, Class<?>[] clsArr) throws Throwable {
        return (T) a(null, obj, str, objArr, clsArr);
    }

    public static <T> T invokeStaticMethod(String str, String str2, Object[] objArr, Class<?>[] clsArr) throws Throwable {
        return (T) a(str, null, str2, objArr, clsArr);
    }

    public static Object newInstance(String str, Object... objArr) throws Throwable {
        try {
            return a(str, objArr);
        } catch (Throwable th) {
            if (th instanceof NoSuchMethodException) {
                throw th;
            }
            throw new Throwable("className: " + str + ", methodName: <init>", th);
        }
    }

    public static void setInstanceField(Object obj, String str, Object obj2) throws Throwable {
        try {
            a(obj, str, obj2);
        } catch (Throwable th) {
            if (th instanceof NoSuchFieldException) {
                throw th;
            }
            throw new Throwable("className: " + obj.getClass() + ", fieldName: " + str + ", value: " + String.valueOf(obj2), th);
        }
    }

    public static void setStaticField(String str, String str2, Object obj) throws Throwable {
        try {
            a(str, str2, obj);
        } catch (Throwable th) {
            if (th instanceof NoSuchFieldException) {
                throw th;
            }
            throw new Throwable("className: " + str + ", fieldName: " + str2 + ", value: " + String.valueOf(obj), th);
        }
    }

    public static synchronized String importClass(String str, String str2) throws Throwable {
        synchronized (ReflectHelper.class) {
            if (str2.endsWith(".*")) {
                f53945a.add(str2.substring(0, str2.length() - 2));
                return WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD;
            }
            Class<?> cls = Class.forName(str2);
            if (str == null) {
                str = cls.getSimpleName();
            }
            if (f53946b.containsKey(str)) {
                f53947c.remove(f53946b.get(str));
            }
            f53946b.put(str, cls);
            f53947c.put(cls, str);
            return str;
        }
    }

    public static <T> T invokeInstanceMethod(Object obj, String str, Object... objArr) throws Throwable {
        try {
            return (T) a(null, obj, str, objArr);
        } catch (Throwable th) {
            if (th instanceof NoSuchMethodException) {
                throw th;
            }
            throw new Throwable("className: " + obj.getClass() + ", methodName: " + str, th);
        }
    }

    public static <T> T invokeStaticMethod(String str, String str2, Object... objArr) throws Throwable {
        try {
            return (T) a(str, null, str2, objArr);
        } catch (Throwable th) {
            if (th instanceof NoSuchMethodException) {
                throw th;
            }
            throw new Throwable("className: " + str + ", methodName: " + str2, th);
        }
    }

    public static Object createProxy(final Map<String, a<Object[], Object>> map, Class<?>... clsArr) throws Throwable {
        if (clsArr.length == 0) {
            return null;
        }
        return Proxy.newProxyInstance(clsArr[0].getClassLoader(), clsArr, new InvocationHandler() { // from class: com.mob.tools.utils.ReflectHelper.4
            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
                a aVar = (a) map.get(method.getName());
                if (aVar != null) {
                    return aVar.a(objArr);
                }
                throw new NoSuchMethodException();
            }
        });
    }

    private static Class<?>[] a(Object[] objArr) {
        Class<?>[] clsArr = new Class[objArr.length];
        for (int i2 = 0; i2 < objArr.length; i2++) {
            if (objArr[i2] instanceof BroadcastReceiver) {
                clsArr[i2] = BroadcastReceiver.class;
            } else {
                clsArr[i2] = objArr[i2] == null ? null : objArr[i2].getClass();
            }
        }
        return clsArr;
    }

    private static Object b(String str, Object... objArr) throws Throwable {
        Class<?> a4;
        int i2 = 0;
        String str2 = str;
        while (str2.startsWith("[")) {
            i2++;
            str2 = str2.substring(1);
        }
        int[] iArr = null;
        if (i2 == objArr.length) {
            int[] iArr2 = new int[i2];
            for (int i4 = 0; i4 < i2; i4++) {
                try {
                    iArr2[i4] = Integer.parseInt(String.valueOf(objArr[i4]));
                } catch (Throwable unused) {
                }
            }
            iArr = iArr2;
        }
        if (iArr != null) {
            if ("B".equals(str2)) {
                a4 = Byte.TYPE;
            } else if ("S".equals(str2)) {
                a4 = Short.TYPE;
            } else if ("I".equals(str2)) {
                a4 = Integer.TYPE;
            } else if ("J".equals(str2)) {
                a4 = Long.TYPE;
            } else if ("F".equals(str2)) {
                a4 = Float.TYPE;
            } else if ("D".equals(str2)) {
                a4 = Double.TYPE;
            } else if ("Z".equals(str2)) {
                a4 = Boolean.TYPE;
            } else if ("C".equals(str2)) {
                a4 = Character.TYPE;
            } else {
                a4 = a(str2);
            }
            if (a4 != null) {
                return Array.newInstance(a4, iArr);
            }
        }
        throw new NoSuchMethodException("className: [" + str + ", methodName: <init>");
    }

    private static boolean a(Class<?> cls, Class<?> cls2) {
        return (cls == Byte.TYPE && cls2 == Byte.class) || (cls == Short.TYPE && (cls2 == Short.class || cls2 == Byte.class || cls2 == Character.class)) || ((cls == Character.TYPE && (cls2 == Character.class || cls2 == Short.class || cls2 == Byte.class)) || ((cls == Integer.TYPE && (cls2 == Integer.class || cls2 == Short.class || cls2 == Byte.class || cls2 == Character.class)) || ((cls == Long.TYPE && (cls2 == Long.class || cls2 == Integer.class || cls2 == Short.class || cls2 == Byte.class || cls2 == Character.class)) || ((cls == Float.TYPE && (cls2 == Float.class || cls2 == Long.class || cls2 == Integer.class || cls2 == Short.class || cls2 == Byte.class || cls2 == Character.class)) || ((cls == Double.TYPE && (cls2 == Double.class || cls2 == Float.class || cls2 == Long.class || cls2 == Integer.class || cls2 == Short.class || cls2 == Byte.class || cls2 == Character.class)) || (cls == Boolean.TYPE && cls2 == Boolean.class))))));
    }

    private static boolean a(Class<?>[] clsArr, Class<?>[] clsArr2) {
        if (clsArr.length == clsArr2.length) {
            for (int i2 = 0; i2 < clsArr2.length; i2++) {
                if (clsArr2[i2] != null && !a(clsArr[i2], clsArr2[i2]) && !clsArr[i2].isAssignableFrom(clsArr2[i2])) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    private static Object a(String str, Object... objArr) throws Throwable {
        boolean z3;
        if (str.startsWith("[")) {
            return b(str, objArr);
        }
        Class<?> a4 = a(str);
        String str2 = a4.getName() + "#" + objArr.length;
        Constructor<?> constructor = f53949e.get(str2);
        Class<?>[] a5 = a(objArr);
        if (constructor != null && a(constructor.getParameterTypes(), a5)) {
            constructor.setAccessible(true);
            return constructor.newInstance(objArr);
        }
        Constructor<?>[] declaredConstructors = a4.getDeclaredConstructors();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Constructor<?> constructor2 : declaredConstructors) {
            Class<?>[] parameterTypes = constructor2.getParameterTypes();
            if (a(parameterTypes, a5)) {
                f53949e.put(str2, constructor2);
                constructor2.setAccessible(true);
                return constructor2.newInstance(objArr);
            }
            if (parameterTypes.length > 0 && parameterTypes[parameterTypes.length - 1].isArray() && a5.length >= parameterTypes.length - 1) {
                arrayList.add(constructor2);
                arrayList2.add(parameterTypes);
            }
        }
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            Class[] clsArr = (Class[]) arrayList2.get(i2);
            Class<?> componentType = clsArr[clsArr.length - 1].getComponentType();
            if (b(clsArr, a5)) {
                Object[] objArr2 = new Object[objArr.length + 1];
                System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
                objArr2[objArr.length] = Array.newInstance(componentType, 0);
                Constructor constructor3 = (Constructor) arrayList.get(i2);
                constructor3.setAccessible(true);
                return constructor3.newInstance(objArr);
            }
            int length = clsArr.length - 1;
            while (true) {
                if (length >= a5.length) {
                    z3 = true;
                    break;
                } else if (!a5[length].equals(componentType)) {
                    z3 = false;
                    break;
                } else {
                    length++;
                }
            }
            if (z3) {
                int length2 = (a5.length - clsArr.length) + 1;
                Object newInstance = Array.newInstance(componentType, length2);
                for (int i4 = 0; i4 < length2; i4++) {
                    Array.set(newInstance, i4, objArr[(clsArr.length - 1) + i4]);
                }
                Object[] objArr3 = new Object[objArr.length + 1];
                System.arraycopy(objArr, 0, objArr3, 0, objArr.length);
                objArr3[objArr.length] = newInstance;
                Constructor constructor4 = (Constructor) arrayList.get(i2);
                constructor4.setAccessible(true);
                return constructor4.newInstance(objArr);
            }
        }
        throw new NoSuchMethodException("className: " + str + ", methodName: <init>");
    }

    private static Object b(Object obj, String str) throws Throwable {
        int i2;
        int i4;
        if (obj instanceof List) {
            if (str.startsWith("[") && str.endsWith("]")) {
                try {
                    i4 = Integer.parseInt(str.substring(1, str.length() - 1));
                } catch (Throwable unused) {
                    i4 = -1;
                }
                if (i4 != -1) {
                    return ((List) obj).get(i4);
                }
            }
        } else if (o.a("006%ed*i6dkff-dc").equals(str)) {
            return Integer.valueOf(Array.getLength(obj));
        } else {
            if (str.startsWith("[") && str.endsWith("]")) {
                try {
                    i2 = Integer.parseInt(str.substring(1, str.length() - 1));
                } catch (Throwable unused2) {
                    i2 = -1;
                }
                if (i2 != -1) {
                    return Array.get(obj, i2);
                }
            }
        }
        throw new NoSuchFieldException("className: " + obj.getClass() + ", fieldName: " + str);
    }

    private static void b(Object obj, String str, Object obj2) throws Throwable {
        int i2;
        int i4;
        if (obj instanceof List) {
            if (str.startsWith("[") && str.endsWith("]")) {
                try {
                    i4 = Integer.parseInt(str.substring(1, str.length() - 1));
                } catch (Throwable unused) {
                    i4 = -1;
                }
                if (i4 != -1) {
                    ((List) obj).set(i4, obj2);
                    return;
                }
            }
        } else if (str.startsWith("[") && str.endsWith("]")) {
            try {
                i2 = Integer.parseInt(str.substring(1, str.length() - 1));
            } catch (Throwable unused2) {
                i2 = -1;
            }
            if (i2 != -1) {
                String name = obj.getClass().getName();
                while (name.startsWith("[")) {
                    name = name.substring(1);
                }
                Class<?> cls = obj2.getClass();
                if (!"B".equals(name)) {
                    Object obj3 = null;
                    if ("S".equals(name)) {
                        if (cls == Short.class) {
                            obj3 = obj2;
                        } else if (cls == Byte.class) {
                            obj3 = Short.valueOf(((Byte) obj2).byteValue());
                        }
                        if (obj3 != null) {
                            Array.set(obj, i2, obj3);
                            return;
                        }
                    } else if ("I".equals(name)) {
                        if (cls == Integer.class) {
                            obj3 = obj2;
                        } else if (cls == Short.class) {
                            obj3 = Integer.valueOf(((Short) obj2).shortValue());
                        } else if (cls == Byte.class) {
                            obj3 = Integer.valueOf(((Byte) obj2).byteValue());
                        }
                        if (obj3 != null) {
                            Array.set(obj, i2, obj3);
                            return;
                        }
                    } else if ("J".equals(name)) {
                        if (cls == Long.class) {
                            obj3 = obj2;
                        } else if (cls == Integer.class) {
                            obj3 = Long.valueOf(((Integer) obj2).intValue());
                        } else if (cls == Short.class) {
                            obj3 = Long.valueOf(((Short) obj2).shortValue());
                        } else if (cls == Byte.class) {
                            obj3 = Long.valueOf(((Byte) obj2).byteValue());
                        }
                        if (obj3 != null) {
                            Array.set(obj, i2, obj3);
                            return;
                        }
                    } else if ("F".equals(name)) {
                        if (cls == Float.class) {
                            obj3 = obj2;
                        } else if (cls == Long.class) {
                            obj3 = Float.valueOf((float) ((Long) obj2).longValue());
                        } else if (cls == Integer.class) {
                            obj3 = Float.valueOf(((Integer) obj2).intValue());
                        } else if (cls == Short.class) {
                            obj3 = Float.valueOf(((Short) obj2).shortValue());
                        } else if (cls == Byte.class) {
                            obj3 = Float.valueOf(((Byte) obj2).byteValue());
                        }
                        if (obj3 != null) {
                            Array.set(obj, i2, obj3);
                            return;
                        }
                    } else if ("D".equals(name)) {
                        if (cls == Double.class) {
                            obj3 = obj2;
                        } else if (cls == Float.class) {
                            obj3 = Double.valueOf(((Float) obj2).floatValue());
                        } else if (cls == Long.class) {
                            obj3 = Double.valueOf(((Long) obj2).longValue());
                        } else if (cls == Integer.class) {
                            obj3 = Double.valueOf(((Integer) obj2).intValue());
                        } else if (cls == Short.class) {
                            obj3 = Double.valueOf(((Short) obj2).shortValue());
                        } else if (cls == Byte.class) {
                            obj3 = Double.valueOf(((Byte) obj2).byteValue());
                        }
                        if (obj3 != null) {
                            Array.set(obj, i2, obj3);
                            return;
                        }
                    } else if ("Z".equals(name)) {
                        if (cls == Boolean.class) {
                            Array.set(obj, i2, obj2);
                            return;
                        }
                    } else if ("C".equals(name)) {
                        if (cls == Character.class) {
                            Array.set(obj, i2, obj2);
                            return;
                        }
                    } else if (name.equals(cls.getName())) {
                        Array.set(obj, i2, obj2);
                        return;
                    }
                } else if (cls == Byte.class) {
                    Array.set(obj, i2, obj2);
                    return;
                }
            }
        }
        throw new NoSuchFieldException("className: " + obj.getClass() + ", fieldName: " + str + ", value: " + String.valueOf(obj2));
    }

    private static <T> T a(String str, Object obj, String str2, Object[] objArr, Class<?>[] clsArr) throws Throwable {
        Class<?> cls;
        if (objArr == null) {
            objArr = new Object[0];
        }
        if (clsArr == null) {
            clsArr = new Class[0];
        }
        if (obj == null) {
            cls = a(str);
        } else {
            cls = obj.getClass();
        }
        String str3 = cls.getName() + "#" + str2 + "#" + objArr.length;
        Method method = f53948d.get(str3);
        if (method != null) {
            method.setAccessible(true);
            try {
                if (method.getReturnType() == Void.TYPE) {
                    method.invoke(obj, objArr);
                    return null;
                }
                return (T) method.invoke(obj, objArr);
            } catch (InvocationTargetException e4) {
                throw e4;
            }
        }
        while (cls != null) {
            try {
                Method declaredMethod = cls.getDeclaredMethod(str2, clsArr);
                f53948d.put(str3, declaredMethod);
                declaredMethod.setAccessible(true);
                if (declaredMethod.getReturnType() == Void.TYPE) {
                    declaredMethod.invoke(obj, objArr);
                    return null;
                }
                return (T) declaredMethod.invoke(obj, objArr);
            } catch (InvocationTargetException e5) {
                throw e5;
            } catch (Throwable unused) {
                cls = cls.getSuperclass();
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("className: ");
        Class<?> cls2 = str;
        if (obj != null) {
            cls2 = obj.getClass();
        }
        sb.append((Object) cls2);
        sb.append(", methodName: ");
        sb.append(str2);
        throw new NoSuchMethodException(sb.toString());
    }

    private static <T> T a(String str, Object obj, String str2, Object... objArr) throws Throwable {
        Class<?> cls;
        Class<?>[] a4;
        if (obj == null) {
            cls = a(str);
        } else {
            cls = obj.getClass();
        }
        boolean z3 = false;
        if (str2.equals(o.a("009;ff?idDgi<idc<ecMh")) && objArr != null && objArr.length == 2) {
            a4 = new Class[]{String.class, Class[].class};
            if (objArr[1] == String.class) {
                Class[] clsArr = new Class[1];
                clsArr[0] = String.class;
                objArr[1] = clsArr;
            }
        } else if (str2.equals(o.a("011+ffRidUfiJijWdedg0i?eg]h")) && objArr != null && objArr.length == 1) {
            a4 = new Class[]{Integer.TYPE};
        } else if (str2.equals(o.a("006TdedkIj]ecdjKi")) && objArr != null && objArr.length == 2) {
            a4 = new Class[]{Object.class, Object[].class};
        } else {
            a4 = (str2.equals(o.a("0138fgCidDejdgdg9iCfgfgdefcedMi")) && objArr != null && objArr.length == 1) ? new Class[]{Boolean.TYPE} : a(objArr);
        }
        StringBuffer stringBuffer = new StringBuffer();
        int length = a4.length;
        for (int i2 = 0; i2 < length; i2++) {
            Class<?> cls2 = a4[i2];
            stringBuffer.append(cls2 == null ? "" : cls2.getName());
        }
        String str3 = cls.getName() + "#" + str2 + "#" + objArr.length + stringBuffer.toString();
        Method method = f53948d.get(str3);
        if (method != null) {
            boolean isStatic = Modifier.isStatic(method.getModifiers());
            if (obj == null) {
                z3 = isStatic;
            } else if (!isStatic) {
                z3 = true;
            }
            if (z3 && a(method.getParameterTypes(), a4)) {
                method.setAccessible(true);
                try {
                    if (method.getReturnType() == Void.TYPE) {
                        method.invoke(obj, objArr);
                        return null;
                    }
                    return (T) method.invoke(obj, objArr);
                } catch (InvocationTargetException e4) {
                    throw e4;
                }
            }
        }
        while (cls != null) {
            try {
                Method declaredMethod = cls.getDeclaredMethod(str2, a4);
                f53948d.put(str3, declaredMethod);
                declaredMethod.setAccessible(true);
                if (declaredMethod.getReturnType() == Void.TYPE) {
                    declaredMethod.invoke(obj, objArr);
                    return null;
                }
                return (T) declaredMethod.invoke(obj, objArr);
            } catch (InvocationTargetException e5) {
                throw e5;
            } catch (Throwable unused) {
                cls = cls.getSuperclass();
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("className: ");
        Class<?> cls3 = str;
        if (obj != null) {
            cls3 = obj.getClass();
        }
        sb.append((Object) cls3);
        sb.append(", methodName: ");
        sb.append(str2);
        throw new NoSuchMethodException(sb.toString());
    }

    private static <T> T a(String str, String str2) throws Throwable {
        Field field;
        ArrayList arrayList = new ArrayList();
        for (Class<?> a4 = a(str); a4 != null; a4 = a4.getSuperclass()) {
            arrayList.add(a4);
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            try {
                field = ((Class) it2.next()).getDeclaredField(str2);
            } catch (Throwable unused) {
                field = null;
            }
            if (field != null && Modifier.isStatic(field.getModifiers())) {
                field.setAccessible(true);
                return (T) field.get(null);
            }
        }
        throw new NoSuchFieldException("className: " + str + ", fieldName: " + str2);
    }

    private static void a(String str, String str2, Object obj) throws Throwable {
        Field field;
        ArrayList arrayList = new ArrayList();
        for (Class<?> a4 = a(str); a4 != null; a4 = a4.getSuperclass()) {
            arrayList.add(a4);
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            try {
                field = ((Class) it2.next()).getDeclaredField(str2);
            } catch (Throwable unused) {
                field = null;
            }
            if (field != null && Modifier.isStatic(field.getModifiers())) {
                field.setAccessible(true);
                field.set(null, obj);
                return;
            }
        }
        throw new NoSuchFieldException("className: " + str + ", fieldName: " + str2 + ", value: " + String.valueOf(obj));
    }

    private static <T> T a(Object obj, String str) throws Throwable {
        if (!(obj instanceof List) && !obj.getClass().isArray()) {
            if (obj instanceof Map) {
                return (T) ((Map) obj).get(str);
            }
            ArrayList arrayList = new ArrayList();
            for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
                arrayList.add(cls);
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                Field field = null;
                try {
                    field = ((Class) it2.next()).getDeclaredField(str);
                } catch (Throwable unused) {
                }
                if (field != null && !Modifier.isStatic(field.getModifiers())) {
                    field.setAccessible(true);
                    return (T) field.get(obj);
                }
            }
            throw new NoSuchFieldException("className: " + obj.getClass() + ", fieldName: " + str);
        }
        return (T) b(obj, str);
    }

    private static void a(Object obj, String str, Object obj2) throws Throwable {
        if (!(obj instanceof List) && !obj.getClass().isArray()) {
            if (obj instanceof Map) {
                ((Map) obj).put(str, obj2);
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
                arrayList.add(cls);
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                Field field = null;
                try {
                    field = ((Class) it2.next()).getDeclaredField(str);
                } catch (Throwable unused) {
                }
                if (field != null && !Modifier.isStatic(field.getModifiers())) {
                    field.setAccessible(true);
                    field.set(obj, obj2);
                    return;
                }
            }
            throw new NoSuchFieldException("className: " + obj.getClass() + ", fieldName: " + str + ", value: " + String.valueOf(obj2));
        }
        b(obj, str, obj2);
    }
}
