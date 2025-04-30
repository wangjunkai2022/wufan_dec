package com.xinzhu.haunted;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* compiled from: HtClass.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f63906a = "d";

    public static Class<?> a(Class<?> ego) {
        return ego;
    }

    public static Class<?> b(String className) {
        return i(className);
    }

    public static Class<?> c(String className, ClassLoader cl) {
        return j(className, cl);
    }

    public static Constructor d(Class<?> ego, String methodName, Object... args) {
        return e(null, ego, methodName, args);
    }

    public static Constructor e(ClassLoader cl, Class<?> ego, String methodName, Object... args) {
        Constructor<?>[] declaredConstructors;
        Constructor<?> declaredConstructor;
        Class<?>[] clsArr = args.length != 0 ? new Class[args.length] : null;
        for (int i2 = 0; i2 < args.length; i2++) {
            if (args[i2] instanceof String) {
                clsArr[i2] = j((String) args[i2], cl);
            } else if (args[i2] instanceof Class) {
                clsArr[i2] = (Class) args[i2];
            } else {
                throw new RuntimeException("Wicked.");
            }
        }
        try {
            if (args.length == 0) {
                declaredConstructor = ego.getDeclaredConstructor(new Class[0]);
            } else {
                declaredConstructor = ego.getDeclaredConstructor(clsArr);
            }
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return declaredConstructor;
        } catch (NoSuchMethodException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("No such constructor param ");
            sb.append(clsArr);
            sb.append(" under ");
            sb.append(ego.getSimpleName());
            for (Constructor<?> constructor : ego.getDeclaredConstructors()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Debugging, cons list ");
                sb2.append(constructor);
                sb2.append(" ");
                sb2.append(constructor.getName());
            }
            return null;
        }
    }

    public static Field f(Class<?> ego, String fieldName) {
        try {
            Field declaredField = ego.getDeclaredField(fieldName);
            if (!declaredField.isAccessible()) {
                declaredField.setAccessible(true);
            }
            return declaredField;
        } catch (NoSuchFieldException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("No such field as ");
            sb.append(fieldName);
            sb.append(" under ");
            sb.append(ego.getSimpleName());
            return null;
        }
    }

    public static Method g(Class<?> ego, String methodName, Object... args) {
        return h(null, ego, methodName, args);
    }

    public static Method h(ClassLoader cl, Class<?> ego, String methodName, Object... args) {
        Method[] declaredMethods;
        Method declaredMethod;
        Class<?>[] clsArr = args.length != 0 ? new Class[args.length] : null;
        for (int i2 = 0; i2 < args.length; i2++) {
            if (args[i2] instanceof String) {
                clsArr[i2] = j((String) args[i2], cl);
            } else if (args[i2] instanceof Class) {
                clsArr[i2] = (Class) args[i2];
            } else {
                throw new RuntimeException("Wicked.");
            }
        }
        try {
            if (args.length == 0) {
                declaredMethod = ego.getDeclaredMethod(methodName, new Class[0]);
            } else {
                declaredMethod = ego.getDeclaredMethod(methodName, clsArr);
            }
            if (!declaredMethod.isAccessible()) {
                declaredMethod.setAccessible(true);
            }
            return declaredMethod;
        } catch (NoSuchMethodException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("No such method as ");
            sb.append(methodName);
            sb.append(" under ");
            sb.append(ego.getSimpleName());
            for (Method method : ego.getDeclaredMethods()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Debugging, Method list ");
                sb2.append(method);
                sb2.append(" ");
                sb2.append(method.getName());
            }
            for (Object obj : args) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Debugging, arg list ");
                sb3.append(obj);
            }
            return null;
        }
    }

    static Class<?> i(String className) {
        return j(className, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Class<?>] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    static Class<?> j(String className, ClassLoader cl) {
        try {
            if (cl != null) {
                className = cl.loadClass(className);
            } else {
                className = Class.forName(className);
            }
            return className;
        } catch (Exception unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("Cannot load class ");
            sb.append(className);
            return null;
        }
    }
}
