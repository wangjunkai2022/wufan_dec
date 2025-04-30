package de.robv.android.xposed;

import android.content.res.Resources;
import dalvik.system.DexFile;
import de.robv.android.xposed.XC_MethodHook;
import external.org.apache.commons.lang3.d;
import external.org.apache.commons.lang3.reflect.a;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Objects;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.ZipFile;
/* loaded from: classes.dex */
public final class XposedHelpers {
    private static final HashMap<String, Field> fieldCache = new HashMap<>();
    private static final HashMap<String, Method> methodCache = new HashMap<>();
    private static final HashMap<String, Constructor<?>> constructorCache = new HashMap<>();
    private static final WeakHashMap<Object, HashMap<String, Object>> additionalFields = new WeakHashMap<>();
    private static final HashMap<String, ThreadLocal<AtomicInteger>> sMethodDepth = new HashMap<>();

    /* loaded from: classes3.dex */
    public static final class ClassNotFoundError extends Error {
        private static final long serialVersionUID = -1070936889459514628L;

        public ClassNotFoundError(Throwable cause) {
            super(cause);
        }

        public ClassNotFoundError(String detailMessage, Throwable cause) {
            super(detailMessage, cause);
        }
    }

    /* loaded from: classes3.dex */
    public static final class InvocationTargetError extends Error {
        private static final long serialVersionUID = -1070936889459514628L;

        public InvocationTargetError(Throwable cause) {
            super(cause);
        }
    }

    private XposedHelpers() {
    }

    public static byte[] assetAsByteArray(Resources res, String path) throws IOException {
        return inputStreamToByteArray(res.getAssets().open(path));
    }

    public static Object callMethod(Object obj, String methodName, Object... args) {
        try {
            return findMethodBestMatch(obj.getClass(), methodName, args).invoke(obj, args);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        } catch (InvocationTargetException e6) {
            throw new InvocationTargetError(e6.getCause());
        }
    }

    public static Object callStaticMethod(Class<?> clazz, String methodName, Object... args) {
        try {
            return findMethodBestMatch(clazz, methodName, args).invoke(null, args);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        } catch (InvocationTargetException e6) {
            throw new InvocationTargetError(e6.getCause());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void closeSilently(Closeable c4) {
        if (c4 != null) {
            try {
                c4.close();
            } catch (IOException unused) {
            }
        }
    }

    public static int decrementMethodDepth(String method) {
        return getMethodDepthCounter(method).get().decrementAndGet();
    }

    static boolean fileContains(File file, String str) throws IOException {
        boolean z3;
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
            while (true) {
                try {
                    String readLine = bufferedReader2.readLine();
                    if (readLine == null) {
                        z3 = false;
                        break;
                    } else if (readLine.contains(str)) {
                        z3 = true;
                        break;
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    closeSilently(bufferedReader);
                    throw th;
                }
            }
            closeSilently(bufferedReader2);
            return z3;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static XC_MethodHook.Unhook findAndHookConstructor(Class<?> clazz, Object... parameterTypesAndCallback) {
        if (parameterTypesAndCallback.length != 0 && (parameterTypesAndCallback[parameterTypesAndCallback.length - 1] instanceof XC_MethodHook)) {
            return XposedBridge.hookMethod(findConstructorExact(clazz, getParameterClasses(clazz.getClassLoader(), parameterTypesAndCallback)), (XC_MethodHook) parameterTypesAndCallback[parameterTypesAndCallback.length - 1]);
        }
        throw new IllegalArgumentException("no callback defined");
    }

    public static XC_MethodHook.Unhook findAndHookMethod(Class<?> clazz, String methodName, Object... parameterTypesAndCallback) {
        if (parameterTypesAndCallback.length != 0 && (parameterTypesAndCallback[parameterTypesAndCallback.length - 1] instanceof XC_MethodHook)) {
            return XposedBridge.hookMethod(findMethodExact(clazz, methodName, getParameterClasses(clazz.getClassLoader(), parameterTypesAndCallback)), (XC_MethodHook) parameterTypesAndCallback[parameterTypesAndCallback.length - 1]);
        }
        throw new IllegalArgumentException("no callback defined");
    }

    public static Class<?> findClass(String className, ClassLoader classLoader) {
        if (classLoader == null) {
            classLoader = XposedBridge.BOOTCLASSLOADER;
        }
        try {
            return d.i(classLoader, className, false);
        } catch (ClassNotFoundException e4) {
            throw new ClassNotFoundError(e4);
        }
    }

    public static Class<?> findClassIfExists(String className, ClassLoader classLoader) {
        try {
            return findClass(className, classLoader);
        } catch (ClassNotFoundError unused) {
            return null;
        }
    }

    public static Constructor<?> findConstructorBestMatch(Class<?> clazz, Class<?>... parameterTypes) {
        Constructor<?>[] declaredConstructors;
        String str = clazz.getName() + getParametersString(parameterTypes) + "#bestmatch";
        HashMap<String, Constructor<?>> hashMap = constructorCache;
        if (hashMap.containsKey(str)) {
            Constructor<?> constructor = hashMap.get(str);
            if (constructor != null) {
                return constructor;
            }
            throw new NoSuchMethodError(str);
        }
        try {
            Constructor<?> findConstructorExact = findConstructorExact(clazz, parameterTypes);
            hashMap.put(str, findConstructorExact);
            return findConstructorExact;
        } catch (NoSuchMethodError unused) {
            Constructor<?> constructor2 = null;
            for (Constructor<?> constructor3 : clazz.getDeclaredConstructors()) {
                if (d.D(parameterTypes, constructor3.getParameterTypes(), true) && (constructor2 == null || a.a(constructor3.getParameterTypes(), constructor2.getParameterTypes(), parameterTypes) < 0)) {
                    constructor2 = constructor3;
                }
            }
            if (constructor2 != null) {
                constructor2.setAccessible(true);
                constructorCache.put(str, constructor2);
                return constructor2;
            }
            NoSuchMethodError noSuchMethodError = new NoSuchMethodError(str);
            constructorCache.put(str, null);
            throw noSuchMethodError;
        }
    }

    public static Constructor<?> findConstructorExact(Class<?> clazz, Object... parameterTypes) {
        return findConstructorExact(clazz, getParameterClasses(clazz.getClassLoader(), parameterTypes));
    }

    public static Constructor<?> findConstructorExactIfExists(Class<?> clazz, Object... parameterTypes) {
        try {
            return findConstructorExact(clazz, parameterTypes);
        } catch (ClassNotFoundError | NoSuchMethodError unused) {
            return null;
        }
    }

    public static Field findField(Class<?> clazz, String fieldName) {
        String str = clazz.getName() + '#' + fieldName;
        HashMap<String, Field> hashMap = fieldCache;
        if (hashMap.containsKey(str)) {
            Field field = hashMap.get(str);
            if (field != null) {
                return field;
            }
            throw new NoSuchFieldError(str);
        }
        try {
            Field findFieldRecursiveImpl = findFieldRecursiveImpl(clazz, fieldName);
            findFieldRecursiveImpl.setAccessible(true);
            hashMap.put(str, findFieldRecursiveImpl);
            return findFieldRecursiveImpl;
        } catch (NoSuchFieldException unused) {
            fieldCache.put(str, null);
            throw new NoSuchFieldError(str);
        }
    }

    public static Field findFieldIfExists(Class<?> clazz, String fieldName) {
        try {
            return findField(clazz, fieldName);
        } catch (NoSuchFieldError unused) {
            return null;
        }
    }

    private static Field findFieldRecursiveImpl(Class<?> clazz, String fieldName) throws NoSuchFieldException {
        try {
            return clazz.getDeclaredField(fieldName);
        } catch (NoSuchFieldException e4) {
            while (true) {
                clazz = clazz.getSuperclass();
                if (clazz == null || clazz.equals(Object.class)) {
                    break;
                }
                try {
                    return clazz.getDeclaredField(fieldName);
                } catch (NoSuchFieldException unused) {
                }
            }
            throw e4;
        }
    }

    public static Field findFirstFieldByExactType(Class<?> clazz, Class<?> type) {
        Field[] declaredFields;
        Class<?> cls = clazz;
        do {
            for (Field field : cls.getDeclaredFields()) {
                if (field.getType() == type) {
                    field.setAccessible(true);
                    return field;
                }
            }
            cls = cls.getSuperclass();
        } while (cls != null);
        throw new NoSuchFieldError("Field of type " + type.getName() + " in class " + clazz.getName());
    }

    public static Method findMethodBestMatch(Class<?> clazz, String methodName, Class<?>... parameterTypes) {
        Method[] declaredMethods;
        String str = clazz.getName() + '#' + methodName + getParametersString(parameterTypes) + "#bestmatch";
        HashMap<String, Method> hashMap = methodCache;
        if (hashMap.containsKey(str)) {
            Method method = hashMap.get(str);
            if (method != null) {
                return method;
            }
            throw new NoSuchMethodError(str);
        }
        try {
            Method findMethodExact = findMethodExact(clazz, methodName, parameterTypes);
            hashMap.put(str, findMethodExact);
            return findMethodExact;
        } catch (NoSuchMethodError unused) {
            Method method2 = null;
            boolean z3 = true;
            while (true) {
                for (Method method3 : clazz.getDeclaredMethods()) {
                    if ((z3 || !Modifier.isPrivate(method3.getModifiers())) && method3.getName().equals(methodName) && d.D(parameterTypes, method3.getParameterTypes(), true) && (method2 == null || a.a(method3.getParameterTypes(), method2.getParameterTypes(), parameterTypes) < 0)) {
                        method2 = method3;
                    }
                }
                clazz = clazz.getSuperclass();
                if (clazz == null) {
                    break;
                }
                z3 = false;
            }
            if (method2 != null) {
                method2.setAccessible(true);
                methodCache.put(str, method2);
                return method2;
            }
            NoSuchMethodError noSuchMethodError = new NoSuchMethodError(str);
            methodCache.put(str, null);
            throw noSuchMethodError;
        }
    }

    public static Method findMethodExact(Class<?> clazz, String methodName, Object... parameterTypes) {
        return findMethodExact(clazz, methodName, getParameterClasses(clazz.getClassLoader(), parameterTypes));
    }

    public static Method findMethodExactIfExists(Class<?> clazz, String methodName, Object... parameterTypes) {
        try {
            return findMethodExact(clazz, methodName, parameterTypes);
        } catch (ClassNotFoundError | NoSuchMethodError unused) {
            return null;
        }
    }

    public static Method[] findMethodsByExactParameters(Class<?> clazz, Class<?> returnType, Class<?>... parameterTypes) {
        Method[] declaredMethods;
        boolean z3;
        LinkedList linkedList = new LinkedList();
        for (Method method : clazz.getDeclaredMethods()) {
            if (returnType == null || returnType == method.getReturnType()) {
                Class<?>[] parameterTypes2 = method.getParameterTypes();
                if (parameterTypes.length == parameterTypes2.length) {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= parameterTypes.length) {
                            z3 = true;
                            break;
                        } else if (parameterTypes[i2] != parameterTypes2[i2]) {
                            z3 = false;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (z3) {
                        method.setAccessible(true);
                        linkedList.add(method);
                    }
                }
            }
        }
        return (Method[]) linkedList.toArray(new Method[linkedList.size()]);
    }

    public static Object getAdditionalInstanceField(Object obj, String key) {
        Object obj2;
        Objects.requireNonNull(obj, "object must not be null");
        Objects.requireNonNull(key, "key must not be null");
        WeakHashMap<Object, HashMap<String, Object>> weakHashMap = additionalFields;
        synchronized (weakHashMap) {
            HashMap<String, Object> hashMap = weakHashMap.get(obj);
            if (hashMap == null) {
                return null;
            }
            synchronized (hashMap) {
                obj2 = hashMap.get(key);
            }
            return obj2;
        }
    }

    public static Object getAdditionalStaticField(Object obj, String key) {
        return getAdditionalInstanceField(obj.getClass(), key);
    }

    public static boolean getBooleanField(Object obj, String fieldName) {
        try {
            return findField(obj.getClass(), fieldName).getBoolean(obj);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static byte getByteField(Object obj, String fieldName) {
        try {
            return findField(obj.getClass(), fieldName).getByte(obj);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static char getCharField(Object obj, String fieldName) {
        try {
            return findField(obj.getClass(), fieldName).getChar(obj);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static Class<?>[] getClassesAsArray(Class<?>... clazzes) {
        return clazzes;
    }

    public static double getDoubleField(Object obj, String fieldName) {
        try {
            return findField(obj.getClass(), fieldName).getDouble(obj);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static int getFirstParameterIndexByType(Member method, Class<?> type) {
        Class<?>[] parameterTypes = method instanceof Method ? ((Method) method).getParameterTypes() : ((Constructor) method).getParameterTypes();
        for (int i2 = 0; i2 < parameterTypes.length; i2++) {
            if (parameterTypes[i2] == type) {
                return i2;
            }
        }
        throw new NoSuchFieldError("No parameter of type " + type + " found in " + method);
    }

    public static float getFloatField(Object obj, String fieldName) {
        try {
            return findField(obj.getClass(), fieldName).getFloat(obj);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static int getIntField(Object obj, String fieldName) {
        try {
            return findField(obj.getClass(), fieldName).getInt(obj);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static long getLongField(Object obj, String fieldName) {
        try {
            return findField(obj.getClass(), fieldName).getLong(obj);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static String getMD5Sum(String file) throws IOException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr = new byte[8192];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read > 0) {
                    messageDigest.update(bArr, 0, read);
                } else {
                    fileInputStream.close();
                    return new BigInteger(1, messageDigest.digest()).toString(16);
                }
            }
        } catch (NoSuchAlgorithmException unused) {
            return "";
        }
    }

    public static int getMethodDepth(String method) {
        return getMethodDepthCounter(method).get().get();
    }

    private static ThreadLocal<AtomicInteger> getMethodDepthCounter(String method) {
        ThreadLocal<AtomicInteger> threadLocal;
        HashMap<String, ThreadLocal<AtomicInteger>> hashMap = sMethodDepth;
        synchronized (hashMap) {
            threadLocal = hashMap.get(method);
            if (threadLocal == null) {
                threadLocal = new ThreadLocal<AtomicInteger>() { // from class: de.robv.android.xposed.XposedHelpers.1
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // java.lang.ThreadLocal
                    public AtomicInteger initialValue() {
                        return new AtomicInteger();
                    }
                };
                hashMap.put(method, threadLocal);
            }
        }
        return threadLocal;
    }

    public static Object getObjectField(Object obj, String fieldName) {
        try {
            return findField(obj.getClass(), fieldName).get(obj);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    static Method getOverriddenMethod(Method method) {
        int modifiers = method.getModifiers();
        if (!Modifier.isStatic(modifiers) && !Modifier.isPrivate(modifiers)) {
            String name = method.getName();
            Class<?>[] parameterTypes = method.getParameterTypes();
            for (Class<? super Object> superclass = method.getDeclaringClass().getSuperclass(); superclass != null; superclass = superclass.getSuperclass()) {
                try {
                    Method declaredMethod = superclass.getDeclaredMethod(name, parameterTypes);
                    int modifiers2 = declaredMethod.getModifiers();
                    if (!Modifier.isPrivate(modifiers2)) {
                        if (!Modifier.isAbstract(modifiers2)) {
                            return declaredMethod;
                        }
                    }
                    return null;
                } catch (NoSuchMethodException unused) {
                }
            }
        }
        return null;
    }

    static Set<Method> getOverriddenMethods(Class<?> clazz) {
        HashSet hashSet = new HashSet();
        for (Method method : clazz.getDeclaredMethods()) {
            Method overriddenMethod = getOverriddenMethod(method);
            if (overriddenMethod != null) {
                hashSet.add(overriddenMethod);
            }
        }
        return hashSet;
    }

    private static Class<?>[] getParameterClasses(ClassLoader classLoader, Object[] parameterTypesAndCallback) {
        Class<?>[] clsArr = null;
        for (int length = parameterTypesAndCallback.length - 1; length >= 0; length--) {
            Object obj = parameterTypesAndCallback[length];
            if (obj != null) {
                if (!(obj instanceof XC_MethodHook)) {
                    if (clsArr == null) {
                        clsArr = new Class[length + 1];
                    }
                    if (obj instanceof Class) {
                        clsArr[length] = (Class) obj;
                    } else if (obj instanceof String) {
                        clsArr[length] = findClass((String) obj, classLoader);
                    } else {
                        throw new ClassNotFoundError("parameter type must either be specified as Class or String", null);
                    }
                }
            } else {
                throw new ClassNotFoundError("parameter type must not be null", null);
            }
        }
        return clsArr == null ? new Class[0] : clsArr;
    }

    public static int getParameterIndexByType(Member method, Class<?> type) {
        Class<?>[] parameterTypes = method instanceof Method ? ((Method) method).getParameterTypes() : ((Constructor) method).getParameterTypes();
        int i2 = -1;
        for (int i4 = 0; i4 < parameterTypes.length; i4++) {
            if (parameterTypes[i4] == type) {
                if (i2 != -1) {
                    throw new NoSuchFieldError("More than one parameter of type " + type + " found in " + method);
                }
                i2 = i4;
            }
        }
        if (i2 != -1) {
            return i2;
        }
        throw new NoSuchFieldError("No parameter of type " + type + " found in " + method);
    }

    public static Class<?>[] getParameterTypes(Object... args) {
        Class<?>[] clsArr = new Class[args.length];
        for (int i2 = 0; i2 < args.length; i2++) {
            clsArr[i2] = args[i2] != null ? args[i2].getClass() : null;
        }
        return clsArr;
    }

    private static String getParametersString(Class<?>... clazzes) {
        StringBuilder sb = new StringBuilder("(");
        boolean z3 = true;
        for (Class<?> cls : clazzes) {
            if (z3) {
                z3 = false;
            } else {
                sb.append(",");
            }
            if (cls != null) {
                sb.append(cls.getCanonicalName());
            } else {
                sb.append("null");
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public static short getShortField(Object obj, String fieldName) {
        try {
            return findField(obj.getClass(), fieldName).getShort(obj);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static boolean getStaticBooleanField(Class<?> clazz, String fieldName) {
        try {
            return findField(clazz, fieldName).getBoolean(null);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static byte getStaticByteField(Class<?> clazz, String fieldName) {
        try {
            return findField(clazz, fieldName).getByte(null);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static char getStaticCharField(Class<?> clazz, String fieldName) {
        try {
            return findField(clazz, fieldName).getChar(null);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static double getStaticDoubleField(Class<?> clazz, String fieldName) {
        try {
            return findField(clazz, fieldName).getDouble(null);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static float getStaticFloatField(Class<?> clazz, String fieldName) {
        try {
            return findField(clazz, fieldName).getFloat(null);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static int getStaticIntField(Class<?> clazz, String fieldName) {
        try {
            return findField(clazz, fieldName).getInt(null);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static long getStaticLongField(Class<?> clazz, String fieldName) {
        try {
            return findField(clazz, fieldName).getLong(null);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static Object getStaticObjectField(Class<?> clazz, String fieldName) {
        try {
            return findField(clazz, fieldName).get(null);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static short getStaticShortField(Class<?> clazz, String fieldName) {
        try {
            return findField(clazz, fieldName).getShort(null);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static Object getSurroundingThis(Object obj) {
        return getObjectField(obj, "this$0");
    }

    public static int incrementMethodDepth(String method) {
        return getMethodDepthCounter(method).get().incrementAndGet();
    }

    static byte[] inputStreamToByteArray(InputStream is) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int read = is.read(bArr);
            if (read > 0) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                is.close();
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    public static Object newInstance(Class<?> clazz, Object... args) {
        try {
            return findConstructorBestMatch(clazz, args).newInstance(args);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        } catch (InstantiationException e6) {
            throw new InstantiationError(e6.getMessage());
        } catch (InvocationTargetException e7) {
            throw new InvocationTargetError(e7.getCause());
        }
    }

    public static Object removeAdditionalInstanceField(Object obj, String key) {
        Object remove;
        Objects.requireNonNull(obj, "object must not be null");
        Objects.requireNonNull(key, "key must not be null");
        WeakHashMap<Object, HashMap<String, Object>> weakHashMap = additionalFields;
        synchronized (weakHashMap) {
            HashMap<String, Object> hashMap = weakHashMap.get(obj);
            if (hashMap == null) {
                return null;
            }
            synchronized (hashMap) {
                remove = hashMap.remove(key);
            }
            return remove;
        }
    }

    public static Object removeAdditionalStaticField(Object obj, String key) {
        return removeAdditionalInstanceField(obj.getClass(), key);
    }

    public static Object setAdditionalInstanceField(Object obj, String key, Object value) {
        HashMap<String, Object> hashMap;
        Object put;
        Objects.requireNonNull(obj, "object must not be null");
        Objects.requireNonNull(key, "key must not be null");
        WeakHashMap<Object, HashMap<String, Object>> weakHashMap = additionalFields;
        synchronized (weakHashMap) {
            hashMap = weakHashMap.get(obj);
            if (hashMap == null) {
                hashMap = new HashMap<>();
                weakHashMap.put(obj, hashMap);
            }
        }
        synchronized (hashMap) {
            put = hashMap.put(key, value);
        }
        return put;
    }

    public static Object setAdditionalStaticField(Object obj, String key, Object value) {
        return setAdditionalInstanceField(obj.getClass(), key, value);
    }

    public static void setBooleanField(Object obj, String fieldName, boolean value) {
        try {
            findField(obj.getClass(), fieldName).setBoolean(obj, value);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static void setByteField(Object obj, String fieldName, byte value) {
        try {
            findField(obj.getClass(), fieldName).setByte(obj, value);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static void setCharField(Object obj, String fieldName, char value) {
        try {
            findField(obj.getClass(), fieldName).setChar(obj, value);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static void setDoubleField(Object obj, String fieldName, double value) {
        try {
            findField(obj.getClass(), fieldName).setDouble(obj, value);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static void setFloatField(Object obj, String fieldName, float value) {
        try {
            findField(obj.getClass(), fieldName).setFloat(obj, value);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static void setIntField(Object obj, String fieldName, int value) {
        try {
            findField(obj.getClass(), fieldName).setInt(obj, value);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static void setLongField(Object obj, String fieldName, long value) {
        try {
            findField(obj.getClass(), fieldName).setLong(obj, value);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static void setObjectField(Object obj, String fieldName, Object value) {
        try {
            findField(obj.getClass(), fieldName).set(obj, value);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static void setShortField(Object obj, String fieldName, short value) {
        try {
            findField(obj.getClass(), fieldName).setShort(obj, value);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static void setStaticBooleanField(Class<?> clazz, String fieldName, boolean value) {
        try {
            findField(clazz, fieldName).setBoolean(null, value);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static void setStaticByteField(Class<?> clazz, String fieldName, byte value) {
        try {
            findField(clazz, fieldName).setByte(null, value);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static void setStaticCharField(Class<?> clazz, String fieldName, char value) {
        try {
            findField(clazz, fieldName).setChar(null, value);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static void setStaticDoubleField(Class<?> clazz, String fieldName, double value) {
        try {
            findField(clazz, fieldName).setDouble(null, value);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static void setStaticFloatField(Class<?> clazz, String fieldName, float value) {
        try {
            findField(clazz, fieldName).setFloat(null, value);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static void setStaticIntField(Class<?> clazz, String fieldName, int value) {
        try {
            findField(clazz, fieldName).setInt(null, value);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static void setStaticLongField(Class<?> clazz, String fieldName, long value) {
        try {
            findField(clazz, fieldName).setLong(null, value);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static void setStaticObjectField(Class<?> clazz, String fieldName, Object value) {
        try {
            findField(clazz, fieldName).set(null, value);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    public static void setStaticShortField(Class<?> clazz, String fieldName, short value) {
        try {
            findField(clazz, fieldName).setShort(null, value);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void closeSilently(DexFile dexFile) {
        if (dexFile != null) {
            try {
                dexFile.close();
            } catch (IOException unused) {
            }
        }
    }

    public static Constructor<?> findConstructorExact(String className, ClassLoader classLoader, Object... parameterTypes) {
        return findConstructorExact(findClass(className, classLoader), getParameterClasses(classLoader, parameterTypes));
    }

    public static Constructor<?> findConstructorExactIfExists(String className, ClassLoader classLoader, Object... parameterTypes) {
        try {
            return findConstructorExact(className, classLoader, parameterTypes);
        } catch (ClassNotFoundError | NoSuchMethodError unused) {
            return null;
        }
    }

    public static Method findMethodExact(String className, ClassLoader classLoader, String methodName, Object... parameterTypes) {
        return findMethodExact(findClass(className, classLoader), methodName, getParameterClasses(classLoader, parameterTypes));
    }

    public static Method findMethodExactIfExists(String className, ClassLoader classLoader, String methodName, Object... parameterTypes) {
        try {
            return findMethodExact(className, classLoader, methodName, parameterTypes);
        } catch (ClassNotFoundError | NoSuchMethodError unused) {
            return null;
        }
    }

    public static Object getAdditionalStaticField(Class<?> clazz, String key) {
        return getAdditionalInstanceField(clazz, key);
    }

    public static Object removeAdditionalStaticField(Class<?> clazz, String key) {
        return removeAdditionalInstanceField(clazz, key);
    }

    public static Object setAdditionalStaticField(Class<?> clazz, String key, Object value) {
        return setAdditionalInstanceField(clazz, key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void closeSilently(ZipFile zipFile) {
        if (zipFile != null) {
            try {
                zipFile.close();
            } catch (IOException unused) {
            }
        }
    }

    public static Constructor<?> findConstructorExact(Class<?> clazz, Class<?>... parameterTypes) {
        String str = clazz.getName() + getParametersString(parameterTypes) + "#exact";
        HashMap<String, Constructor<?>> hashMap = constructorCache;
        if (hashMap.containsKey(str)) {
            Constructor<?> constructor = hashMap.get(str);
            if (constructor != null) {
                return constructor;
            }
            throw new NoSuchMethodError(str);
        }
        try {
            Constructor<?> declaredConstructor = clazz.getDeclaredConstructor(parameterTypes);
            declaredConstructor.setAccessible(true);
            hashMap.put(str, declaredConstructor);
            return declaredConstructor;
        } catch (NoSuchMethodException unused) {
            constructorCache.put(str, null);
            throw new NoSuchMethodError(str);
        }
    }

    public static Method findMethodExact(Class<?> clazz, String methodName, Class<?>... parameterTypes) {
        String str = clazz.getName() + '#' + methodName + getParametersString(parameterTypes) + "#exact";
        HashMap<String, Method> hashMap = methodCache;
        if (hashMap.containsKey(str)) {
            Method method = hashMap.get(str);
            if (method != null) {
                return method;
            }
            throw new NoSuchMethodError(str);
        }
        try {
            Method declaredMethod = clazz.getDeclaredMethod(methodName, parameterTypes);
            declaredMethod.setAccessible(true);
            hashMap.put(str, declaredMethod);
            return declaredMethod;
        } catch (NoSuchMethodException unused) {
            methodCache.put(str, null);
            throw new NoSuchMethodError(str);
        }
    }

    public static Object callMethod(Object obj, String methodName, Class<?>[] parameterTypes, Object... args) {
        try {
            return findMethodBestMatch(obj.getClass(), methodName, parameterTypes, args).invoke(obj, args);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        } catch (InvocationTargetException e6) {
            throw new InvocationTargetError(e6.getCause());
        }
    }

    public static Object callStaticMethod(Class<?> clazz, String methodName, Class<?>[] parameterTypes, Object... args) {
        try {
            return findMethodBestMatch(clazz, methodName, parameterTypes, args).invoke(null, args);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        } catch (InvocationTargetException e6) {
            throw new InvocationTargetError(e6.getCause());
        }
    }

    public static XC_MethodHook.Unhook findAndHookConstructor(String className, ClassLoader classLoader, Object... parameterTypesAndCallback) {
        return findAndHookConstructor(findClass(className, classLoader), parameterTypesAndCallback);
    }

    public static XC_MethodHook.Unhook findAndHookMethod(String className, ClassLoader classLoader, String methodName, Object... parameterTypesAndCallback) {
        return findAndHookMethod(findClass(className, classLoader), methodName, parameterTypesAndCallback);
    }

    public static Object newInstance(Class<?> clazz, Class<?>[] parameterTypes, Object... args) {
        try {
            return findConstructorBestMatch(clazz, parameterTypes, args).newInstance(args);
        } catch (IllegalAccessException e4) {
            XposedBridge.log(e4);
            throw new IllegalAccessError(e4.getMessage());
        } catch (IllegalArgumentException e5) {
            throw e5;
        } catch (InstantiationException e6) {
            throw new InstantiationError(e6.getMessage());
        } catch (InvocationTargetException e7) {
            throw new InvocationTargetError(e7.getCause());
        }
    }

    public static Constructor<?> findConstructorBestMatch(Class<?> clazz, Object... args) {
        return findConstructorBestMatch(clazz, getParameterTypes(args));
    }

    public static Constructor<?> findConstructorBestMatch(Class<?> clazz, Class<?>[] parameterTypes, Object[] args) {
        Class<?>[] clsArr = null;
        for (int i2 = 0; i2 < parameterTypes.length; i2++) {
            if (parameterTypes[i2] == null) {
                if (clsArr == null) {
                    clsArr = getParameterTypes(args);
                }
                parameterTypes[i2] = clsArr[i2];
            }
        }
        return findConstructorBestMatch(clazz, parameterTypes);
    }

    public static Method findMethodBestMatch(Class<?> clazz, String methodName, Object... args) {
        return findMethodBestMatch(clazz, methodName, getParameterTypes(args));
    }

    public static Method findMethodBestMatch(Class<?> clazz, String methodName, Class<?>[] parameterTypes, Object[] args) {
        Class<?>[] clsArr = null;
        for (int i2 = 0; i2 < parameterTypes.length; i2++) {
            if (parameterTypes[i2] == null) {
                if (clsArr == null) {
                    clsArr = getParameterTypes(args);
                }
                parameterTypes[i2] = clsArr[i2];
            }
        }
        return findMethodBestMatch(clazz, methodName, parameterTypes);
    }
}
