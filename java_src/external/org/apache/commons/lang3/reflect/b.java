package external.org.apache.commons.lang3.reflect;

import external.org.apache.commons.lang3.d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
/* compiled from: MethodUtils.java */
/* loaded from: classes3.dex */
public class b {
    public static Method a(Class<?> cls, String methodName, Class<?>... parameterTypes) {
        try {
            return b(cls.getMethod(methodName, parameterTypes));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public static Method b(Method method) {
        if (a.e(method)) {
            Class<?> declaringClass = method.getDeclaringClass();
            if (Modifier.isPublic(declaringClass.getModifiers())) {
                return method;
            }
            String name = method.getName();
            Class<?>[] parameterTypes = method.getParameterTypes();
            Method c4 = c(declaringClass, name, parameterTypes);
            return c4 == null ? d(declaringClass, name, parameterTypes) : c4;
        }
        return null;
    }

    private static Method c(Class<?> cls, String methodName, Class<?>... parameterTypes) {
        Method method = null;
        while (cls != null) {
            Class<?>[] interfaces = cls.getInterfaces();
            for (int i2 = 0; i2 < interfaces.length; i2++) {
                if (Modifier.isPublic(interfaces[i2].getModifiers())) {
                    try {
                        method = interfaces[i2].getDeclaredMethod(methodName, parameterTypes);
                    } catch (NoSuchMethodException unused) {
                    }
                    if (method == null && (method = c(interfaces[i2], methodName, parameterTypes)) == null) {
                    }
                    cls = cls.getSuperclass();
                }
            }
            cls = cls.getSuperclass();
        }
        return method;
    }

    private static Method d(Class<?> cls, String methodName, Class<?>... parameterTypes) {
        for (Class<? super Object> superclass = cls.getSuperclass(); superclass != null; superclass = superclass.getSuperclass()) {
            if (Modifier.isPublic(superclass.getModifiers())) {
                try {
                    return superclass.getMethod(methodName, parameterTypes);
                } catch (NoSuchMethodException unused) {
                    return null;
                }
            }
        }
        return null;
    }

    public static Method e(Class<?> cls, String methodName, Class<?>... parameterTypes) {
        Method[] methods;
        Method b4;
        try {
            Method method = cls.getMethod(methodName, parameterTypes);
            a.g(method);
            return method;
        } catch (NoSuchMethodException unused) {
            Method method2 = null;
            for (Method method3 : cls.getMethods()) {
                if (method3.getName().equals(methodName) && d.D(parameterTypes, method3.getParameterTypes(), true) && (b4 = b(method3)) != null && (method2 == null || a.a(b4.getParameterTypes(), method2.getParameterTypes(), parameterTypes) < 0)) {
                    method2 = b4;
                }
            }
            if (method2 != null) {
                a.g(method2);
            }
            return method2;
        }
    }

    public static Object f(Object object, String methodName, Object... args) throws NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        if (args == null) {
            args = external.org.apache.commons.lang3.a.f65299a;
        }
        int length = args.length;
        Class[] clsArr = new Class[length];
        for (int i2 = 0; i2 < length; i2++) {
            clsArr[i2] = args[i2].getClass();
        }
        return g(object, methodName, args, clsArr);
    }

    public static Object g(Object object, String methodName, Object[] args, Class<?>[] parameterTypes) throws NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        if (args == null) {
            args = external.org.apache.commons.lang3.a.f65299a;
        }
        if (parameterTypes == null) {
            parameterTypes = external.org.apache.commons.lang3.a.f65300b;
        }
        Method a4 = a(object.getClass(), methodName, parameterTypes);
        if (a4 != null) {
            return a4.invoke(object, args);
        }
        throw new NoSuchMethodException("No such accessible method: " + methodName + "() on object: " + object.getClass().getName());
    }

    public static Object h(Class<?> cls, String methodName, Object... args) throws NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        if (args == null) {
            args = external.org.apache.commons.lang3.a.f65299a;
        }
        int length = args.length;
        Class[] clsArr = new Class[length];
        for (int i2 = 0; i2 < length; i2++) {
            clsArr[i2] = args[i2].getClass();
        }
        return i(cls, methodName, args, clsArr);
    }

    public static Object i(Class<?> cls, String methodName, Object[] args, Class<?>[] parameterTypes) throws NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        if (args == null) {
            args = external.org.apache.commons.lang3.a.f65299a;
        }
        if (parameterTypes == null) {
            parameterTypes = external.org.apache.commons.lang3.a.f65300b;
        }
        Method a4 = a(cls, methodName, parameterTypes);
        if (a4 != null) {
            return a4.invoke(null, args);
        }
        throw new NoSuchMethodException("No such accessible method: " + methodName + "() on class: " + cls.getName());
    }

    public static Object j(Object object, String methodName, Object... args) throws NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        if (args == null) {
            args = external.org.apache.commons.lang3.a.f65299a;
        }
        int length = args.length;
        Class[] clsArr = new Class[length];
        for (int i2 = 0; i2 < length; i2++) {
            clsArr[i2] = args[i2].getClass();
        }
        return k(object, methodName, args, clsArr);
    }

    public static Object k(Object object, String methodName, Object[] args, Class<?>[] parameterTypes) throws NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        if (parameterTypes == null) {
            parameterTypes = external.org.apache.commons.lang3.a.f65300b;
        }
        if (args == null) {
            args = external.org.apache.commons.lang3.a.f65299a;
        }
        Method e4 = e(object.getClass(), methodName, parameterTypes);
        if (e4 != null) {
            return e4.invoke(object, args);
        }
        throw new NoSuchMethodException("No such accessible method: " + methodName + "() on object: " + object.getClass().getName());
    }

    public static Object l(Class<?> cls, String methodName, Object... args) throws NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        if (args == null) {
            args = external.org.apache.commons.lang3.a.f65299a;
        }
        int length = args.length;
        Class[] clsArr = new Class[length];
        for (int i2 = 0; i2 < length; i2++) {
            clsArr[i2] = args[i2].getClass();
        }
        return m(cls, methodName, args, clsArr);
    }

    public static Object m(Class<?> cls, String methodName, Object[] args, Class<?>[] parameterTypes) throws NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        if (parameterTypes == null) {
            parameterTypes = external.org.apache.commons.lang3.a.f65300b;
        }
        if (args == null) {
            args = external.org.apache.commons.lang3.a.f65299a;
        }
        Method e4 = e(cls, methodName, parameterTypes);
        if (e4 != null) {
            return e4.invoke(null, args);
        }
        throw new NoSuchMethodException("No such accessible method: " + methodName + "() on class: " + cls.getName());
    }
}
