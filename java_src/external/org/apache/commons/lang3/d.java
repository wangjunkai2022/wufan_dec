package external.org.apache.commons.lang3;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* compiled from: ClassUtils.java */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: c  reason: collision with root package name */
    public static final char f65366c = '$';

    /* renamed from: e  reason: collision with root package name */
    private static final Map<Class<?>, Class<?>> f65368e;

    /* renamed from: f  reason: collision with root package name */
    private static final Map<Class<?>, Class<?>> f65369f;

    /* renamed from: g  reason: collision with root package name */
    private static final Map<String, String> f65370g;

    /* renamed from: h  reason: collision with root package name */
    private static final Map<String, String> f65371h;

    /* renamed from: a  reason: collision with root package name */
    public static final char f65364a = '.';

    /* renamed from: b  reason: collision with root package name */
    public static final String f65365b = String.valueOf((char) f65364a);

    /* renamed from: d  reason: collision with root package name */
    public static final String f65367d = String.valueOf('$');

    static {
        HashMap hashMap = new HashMap();
        f65368e = hashMap;
        hashMap.put(Boolean.TYPE, Boolean.class);
        hashMap.put(Byte.TYPE, Byte.class);
        hashMap.put(Character.TYPE, Character.class);
        hashMap.put(Short.TYPE, Short.class);
        hashMap.put(Integer.TYPE, Integer.class);
        hashMap.put(Long.TYPE, Long.class);
        hashMap.put(Double.TYPE, Double.class);
        hashMap.put(Float.TYPE, Float.class);
        Class cls = Void.TYPE;
        hashMap.put(cls, cls);
        f65369f = new HashMap();
        for (Class<?> cls2 : hashMap.keySet()) {
            Class<?> cls3 = f65368e.get(cls2);
            if (!cls2.equals(cls3)) {
                f65369f.put(cls3, cls2);
            }
        }
        f65370g = new HashMap();
        f65371h = new HashMap();
        a(MethodReflectParams.INT, "I");
        a("boolean", "Z");
        a("float", "F");
        a(MethodReflectParams.LONG, "J");
        a(MethodReflectParams.SHORT, "S");
        a(MethodReflectParams.BYTE, "B");
        a(MethodReflectParams.DOUBLE, "D");
        a(MethodReflectParams.CHAR, "C");
    }

    public static boolean A(Class<?> cls, Class<?> toClass) {
        return B(cls, toClass, f.j(JavaVersion.JAVA_1_5));
    }

    public static boolean B(Class<?> cls, Class<?> toClass, boolean autoboxing) {
        if (toClass == null) {
            return false;
        }
        if (cls == null) {
            return !toClass.isPrimitive();
        }
        if (autoboxing) {
            if (cls.isPrimitive() && !toClass.isPrimitive() && (cls = H(cls)) == null) {
                return false;
            }
            if (toClass.isPrimitive() && !cls.isPrimitive() && (cls = L(cls)) == null) {
                return false;
            }
        }
        if (cls.equals(toClass)) {
            return true;
        }
        if (cls.isPrimitive()) {
            if (toClass.isPrimitive()) {
                Class cls2 = Integer.TYPE;
                if (cls2.equals(cls)) {
                    return Long.TYPE.equals(toClass) || Float.TYPE.equals(toClass) || Double.TYPE.equals(toClass);
                }
                Class cls3 = Long.TYPE;
                if (cls3.equals(cls)) {
                    return Float.TYPE.equals(toClass) || Double.TYPE.equals(toClass);
                } else if (Boolean.TYPE.equals(cls) || Double.TYPE.equals(cls)) {
                    return false;
                } else {
                    Class cls4 = Float.TYPE;
                    if (cls4.equals(cls)) {
                        return Double.TYPE.equals(toClass);
                    }
                    if (Character.TYPE.equals(cls)) {
                        return cls2.equals(toClass) || cls3.equals(toClass) || cls4.equals(toClass) || Double.TYPE.equals(toClass);
                    } else if (Short.TYPE.equals(cls)) {
                        return cls2.equals(toClass) || cls3.equals(toClass) || cls4.equals(toClass) || Double.TYPE.equals(toClass);
                    } else if (Byte.TYPE.equals(cls)) {
                        return Short.TYPE.equals(toClass) || cls2.equals(toClass) || cls3.equals(toClass) || cls4.equals(toClass) || Double.TYPE.equals(toClass);
                    } else {
                        return false;
                    }
                }
            }
            return false;
        }
        return toClass.isAssignableFrom(cls);
    }

    public static boolean C(Class<?>[] classArray, Class<?>... toClassArray) {
        return D(classArray, toClassArray, f.j(JavaVersion.JAVA_1_5));
    }

    public static boolean D(Class<?>[] classArray, Class<?>[] toClassArray, boolean autoboxing) {
        if (a.S0(classArray, toClassArray)) {
            if (classArray == null) {
                classArray = a.f65300b;
            }
            if (toClassArray == null) {
                toClassArray = a.f65300b;
            }
            for (int i2 = 0; i2 < classArray.length; i2++) {
                if (!B(classArray[i2], toClassArray[i2], autoboxing)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public static boolean E(Class<?> cls) {
        return (cls == null || cls.getEnclosingClass() == null) ? false : true;
    }

    public static boolean F(Class<?> type) {
        if (type == null) {
            return false;
        }
        return type.isPrimitive() || G(type);
    }

    public static boolean G(Class<?> type) {
        return f65369f.containsKey(type);
    }

    public static Class<?> H(Class<?> cls) {
        return (cls == null || !cls.isPrimitive()) ? cls : f65368e.get(cls);
    }

    public static Class<?>[] I(Class<?>... classes) {
        if (classes == null) {
            return null;
        }
        if (classes.length == 0) {
            return classes;
        }
        Class<?>[] clsArr = new Class[classes.length];
        for (int i2 = 0; i2 < classes.length; i2++) {
            clsArr[i2] = H(classes[i2]);
        }
        return clsArr;
    }

    private static String J(String className) {
        String z3 = e.z(className);
        Objects.requireNonNull(z3, "className must not be null.");
        if (z3.endsWith("[]")) {
            StringBuilder sb = new StringBuilder();
            while (z3.endsWith("[]")) {
                z3 = z3.substring(0, z3.length() - 2);
                sb.append("[");
            }
            String str = f65370g.get(z3);
            if (str != null) {
                sb.append(str);
            } else {
                sb.append("L");
                sb.append(z3);
                sb.append(";");
            }
            return sb.toString();
        }
        return z3;
    }

    public static Class<?>[] K(Object... array) {
        if (array == null) {
            return null;
        }
        if (array.length == 0) {
            return a.f65300b;
        }
        Class<?>[] clsArr = new Class[array.length];
        for (int i2 = 0; i2 < array.length; i2++) {
            clsArr[i2] = array[i2] == null ? null : array[i2].getClass();
        }
        return clsArr;
    }

    public static Class<?> L(Class<?> cls) {
        return f65369f.get(cls);
    }

    public static Class<?>[] M(Class<?>... classes) {
        if (classes == null) {
            return null;
        }
        if (classes.length == 0) {
            return classes;
        }
        Class<?>[] clsArr = new Class[classes.length];
        for (int i2 = 0; i2 < classes.length; i2++) {
            clsArr[i2] = L(classes[i2]);
        }
        return clsArr;
    }

    private static void a(String primitive, String abbreviation) {
        f65370g.put(primitive, abbreviation);
        f65371h.put(abbreviation, primitive);
    }

    public static List<Class<?>> b(List<String> classNames) {
        if (classNames == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(classNames.size());
        for (String str : classNames) {
            try {
                arrayList.add(Class.forName(str));
            } catch (Exception unused) {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    public static List<String> c(List<Class<?>> classes) {
        if (classes == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(classes.size());
        for (Class<?> cls : classes) {
            if (cls == null) {
                arrayList.add(null);
            } else {
                arrayList.add(cls.getName());
            }
        }
        return arrayList;
    }

    public static List<Class<?>> d(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        e(cls, linkedHashSet);
        return new ArrayList(linkedHashSet);
    }

    private static void e(Class<?> cls, HashSet<Class<?>> interfacesFound) {
        Class<?>[] interfaces;
        while (cls != null) {
            for (Class<?> cls2 : cls.getInterfaces()) {
                if (interfacesFound.add(cls2)) {
                    e(cls2, interfacesFound);
                }
            }
            cls = cls.getSuperclass();
        }
    }

    public static List<Class<?>> f(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Class<? super Object> superclass = cls.getSuperclass(); superclass != null; superclass = superclass.getSuperclass()) {
            arrayList.add(superclass);
        }
        return arrayList;
    }

    private static String g(String className) {
        int length;
        String z3 = e.z(className);
        if (z3 == null) {
            return null;
        }
        int i2 = 0;
        while (z3.startsWith("[")) {
            i2++;
            z3 = z3.substring(1);
        }
        if (i2 < 1) {
            return z3;
        }
        if (z3.startsWith("L")) {
            if (z3.endsWith(";")) {
                length = z3.length() - 1;
            } else {
                length = z3.length();
            }
            z3 = z3.substring(1, length);
        } else if (z3.length() > 0) {
            z3 = f65371h.get(z3.substring(0, 1));
        }
        StringBuilder sb = new StringBuilder(z3);
        for (int i4 = 0; i4 < i2; i4++) {
            sb.append("[]");
        }
        return sb.toString();
    }

    public static Class<?> h(ClassLoader classLoader, String className) throws ClassNotFoundException {
        return i(classLoader, className, true);
    }

    public static Class<?> i(ClassLoader classLoader, String className, boolean initialize) throws ClassNotFoundException {
        try {
            Map<String, String> map = f65370g;
            if (map.containsKey(className)) {
                return Class.forName("[" + map.get(className), initialize, classLoader).getComponentType();
            }
            return Class.forName(J(className), initialize, classLoader);
        } catch (ClassNotFoundException e4) {
            int lastIndexOf = className.lastIndexOf(46);
            if (lastIndexOf != -1) {
                try {
                    return i(classLoader, className.substring(0, lastIndexOf) + '$' + className.substring(lastIndexOf + 1), initialize);
                } catch (ClassNotFoundException unused) {
                    throw e4;
                }
            }
            throw e4;
        }
    }

    public static Class<?> j(String className) throws ClassNotFoundException {
        return k(className, true);
    }

    public static Class<?> k(String className, boolean initialize) throws ClassNotFoundException {
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        if (contextClassLoader == null) {
            contextClassLoader = d.class.getClassLoader();
        }
        return i(contextClassLoader, className, initialize);
    }

    public static String l(Class<?> cls) {
        return cls == null ? "" : n(cls.getName());
    }

    public static String m(Object object, String valueIfNull) {
        return object == null ? valueIfNull : n(object.getClass().getName());
    }

    public static String n(String canonicalName) {
        return q(g(canonicalName));
    }

    public static String o(Class<?> cls) {
        return cls == null ? "" : q(cls.getName());
    }

    public static String p(Object object, String valueIfNull) {
        return object == null ? valueIfNull : o(object.getClass());
    }

    public static String q(String className) {
        if (className == null || className.length() == 0) {
            return "";
        }
        while (className.charAt(0) == '[') {
            className = className.substring(1);
        }
        if (className.charAt(0) == 'L' && className.charAt(className.length() - 1) == ';') {
            className = className.substring(1);
        }
        int lastIndexOf = className.lastIndexOf(46);
        return lastIndexOf == -1 ? "" : className.substring(0, lastIndexOf);
    }

    public static Method r(Class<?> cls, String methodName, Class<?>... parameterTypes) throws SecurityException, NoSuchMethodException {
        Method method = cls.getMethod(methodName, parameterTypes);
        if (Modifier.isPublic(method.getDeclaringClass().getModifiers())) {
            return method;
        }
        ArrayList<Class> arrayList = new ArrayList();
        arrayList.addAll(d(cls));
        arrayList.addAll(f(cls));
        for (Class cls2 : arrayList) {
            if (Modifier.isPublic(cls2.getModifiers())) {
                try {
                    Method method2 = cls2.getMethod(methodName, parameterTypes);
                    if (Modifier.isPublic(method2.getDeclaringClass().getModifiers())) {
                        return method2;
                    }
                } catch (NoSuchMethodException unused) {
                }
            }
        }
        throw new NoSuchMethodException("Can't find a public method for " + methodName + " " + a.m3(parameterTypes));
    }

    public static String s(Class<?> cls) {
        return cls == null ? "" : u(cls.getName());
    }

    public static String t(Object object, String valueIfNull) {
        return object == null ? valueIfNull : u(object.getClass().getName());
    }

    public static String u(String canonicalName) {
        return x(g(canonicalName));
    }

    public static String v(Class<?> cls) {
        return cls == null ? "" : x(cls.getName());
    }

    public static String w(Object object, String valueIfNull) {
        return object == null ? valueIfNull : v(object.getClass());
    }

    public static String x(String className) {
        if (className == null || className.length() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        if (className.startsWith("[")) {
            while (className.charAt(0) == '[') {
                className = className.substring(1);
                sb.append("[]");
            }
            if (className.charAt(0) == 'L' && className.charAt(className.length() - 1) == ';') {
                className = className.substring(1, className.length() - 1);
            }
        }
        Map<String, String> map = f65371h;
        if (map.containsKey(className)) {
            className = map.get(className);
        }
        int lastIndexOf = className.lastIndexOf(46);
        int indexOf = className.indexOf(36, lastIndexOf != -1 ? lastIndexOf + 1 : 0);
        String substring = className.substring(lastIndexOf + 1);
        if (indexOf != -1) {
            substring = substring.replace('$', f65364a);
        }
        return substring + ((Object) sb);
    }

    public static String y(Class<?> cls) {
        return cls == null ? "" : cls.getSimpleName();
    }

    public static String z(Object object, String valueIfNull) {
        return object == null ? valueIfNull : y(object.getClass());
    }
}
