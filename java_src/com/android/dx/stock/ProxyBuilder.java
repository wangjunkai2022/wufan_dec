package com.android.dx.stock;

import com.android.dx.Code;
import com.android.dx.Comparison;
import com.android.dx.DexMaker;
import com.android.dx.Label;
import com.android.dx.Local;
import com.android.dx.MethodId;
import com.android.dx.TypeId;
import com.join.mgps.Util.g0;
import external.org.apache.commons.lang3.d;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.UndeclaredThrowableException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import net.lingala.zip4j.util.e;
/* loaded from: classes2.dex */
public final class ProxyBuilder<T> {
    private static final String FIELD_NAME_HANDLER = "$__handler";
    private static final String FIELD_NAME_METHODS = "$__methodArray";
    private static final Map<Class<?>, Class<?>> PRIMITIVE_TO_BOXED;
    private static final Map<Class<?>, MethodId<?, ?>> PRIMITIVE_TO_UNBOX_METHOD;
    private static final Map<TypeId<?>, MethodId<?, ?>> PRIMITIVE_TYPE_TO_UNBOX_METHOD;
    public static final int VERSION = 1;
    private static final Map<ProxiedClass<?>, Class<?>> generatedProxyClasses = Collections.synchronizedMap(new HashMap());
    private final Class<T> baseClass;
    private File dexCache;
    private InvocationHandler handler;
    private boolean markTrusted;
    private Method[] methods;
    private boolean sharedClassLoader;
    private ClassLoader parentClassLoader = ProxyBuilder.class.getClassLoader();
    private Class<?>[] constructorArgTypes = new Class[0];
    private Object[] constructorArgValues = new Object[0];
    private List<Class<?>> interfaces = new ArrayList();

    /* loaded from: classes2.dex */
    public static class MethodSetEntry {
        public final String name;
        public final Method originalMethod;
        public final Class<?>[] paramTypes;
        public final Class<?> returnType;

        public MethodSetEntry(Method method) {
            this.originalMethod = method;
            this.name = method.getName();
            this.paramTypes = method.getParameterTypes();
            this.returnType = method.getReturnType();
        }

        public boolean equals(Object o3) {
            if (o3 instanceof MethodSetEntry) {
                MethodSetEntry methodSetEntry = (MethodSetEntry) o3;
                return this.name.equals(methodSetEntry.name) && this.returnType.equals(methodSetEntry.returnType) && Arrays.equals(this.paramTypes, methodSetEntry.paramTypes);
            }
            return false;
        }

        public int hashCode() {
            int hashCode = 527 + this.name.hashCode() + 17;
            int hashCode2 = hashCode + (hashCode * 31) + this.returnType.hashCode();
            return hashCode2 + (hashCode2 * 31) + Arrays.hashCode(this.paramTypes);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class ProxiedClass<U> {
        final Class<U> clazz;
        final List<Class<?>> interfaces;
        final ClassLoader requestedClassloader;
        final boolean sharedClassLoader;

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (other == null || getClass() != other.getClass()) {
                return false;
            }
            ProxiedClass proxiedClass = (ProxiedClass) other;
            return this.clazz == proxiedClass.clazz && this.interfaces.equals(proxiedClass.interfaces) && this.requestedClassloader == proxiedClass.requestedClassloader && this.sharedClassLoader == proxiedClass.sharedClassLoader;
        }

        public int hashCode() {
            return this.clazz.hashCode() + this.interfaces.hashCode() + this.requestedClassloader.hashCode() + (this.sharedClassLoader ? 1 : 0);
        }

        private ProxiedClass(Class<U> clazz, List<Class<?>> interfaces, ClassLoader requestedClassloader, boolean sharedClassLoader) {
            this.clazz = clazz;
            this.interfaces = new ArrayList(interfaces);
            this.requestedClassloader = requestedClassloader;
            this.sharedClassLoader = sharedClassLoader;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        PRIMITIVE_TO_BOXED = hashMap;
        hashMap.put(Boolean.TYPE, Boolean.class);
        hashMap.put(Integer.TYPE, Integer.class);
        hashMap.put(Byte.TYPE, Byte.class);
        hashMap.put(Long.TYPE, Long.class);
        hashMap.put(Short.TYPE, Short.class);
        hashMap.put(Float.TYPE, Float.class);
        hashMap.put(Double.TYPE, Double.class);
        hashMap.put(Character.TYPE, Character.class);
        PRIMITIVE_TYPE_TO_UNBOX_METHOD = new HashMap();
        for (Map.Entry entry : hashMap.entrySet()) {
            TypeId<?> typeId = TypeId.get((Class) entry.getKey());
            TypeId typeId2 = TypeId.get((Class) entry.getValue());
            PRIMITIVE_TYPE_TO_UNBOX_METHOD.put(typeId, typeId2.getMethod(typeId2, "valueOf", typeId));
        }
        HashMap hashMap2 = new HashMap();
        hashMap2.put(Boolean.TYPE, TypeId.get(Boolean.class).getMethod(TypeId.BOOLEAN, "booleanValue", new TypeId[0]));
        hashMap2.put(Integer.TYPE, TypeId.get(Integer.class).getMethod(TypeId.INT, "intValue", new TypeId[0]));
        hashMap2.put(Byte.TYPE, TypeId.get(Byte.class).getMethod(TypeId.BYTE, "byteValue", new TypeId[0]));
        hashMap2.put(Long.TYPE, TypeId.get(Long.class).getMethod(TypeId.LONG, "longValue", new TypeId[0]));
        hashMap2.put(Short.TYPE, TypeId.get(Short.class).getMethod(TypeId.SHORT, "shortValue", new TypeId[0]));
        hashMap2.put(Float.TYPE, TypeId.get(Float.class).getMethod(TypeId.FLOAT, "floatValue", new TypeId[0]));
        hashMap2.put(Double.TYPE, TypeId.get(Double.class).getMethod(TypeId.DOUBLE, "doubleValue", new TypeId[0]));
        hashMap2.put(Character.TYPE, TypeId.get(Character.class).getMethod(TypeId.CHAR, "charValue", new TypeId[0]));
        PRIMITIVE_TO_UNBOX_METHOD = hashMap2;
    }

    private ProxyBuilder(Class<T> clazz) {
        this.baseClass = clazz;
    }

    private static Local<?> boxIfRequired(Code code, Local<?> parameter, Local<Object> temp) {
        MethodId<?, ?> methodId = PRIMITIVE_TYPE_TO_UNBOX_METHOD.get(parameter.getType());
        if (methodId == null) {
            return parameter;
        }
        code.invokeStatic(methodId, temp, parameter);
        return temp;
    }

    public static Object callSuper(Object proxy, Method method, Object... args) throws Throwable {
        try {
            return proxy.getClass().getMethod(superMethodName(method), method.getParameterTypes()).invoke(proxy, args);
        } catch (InvocationTargetException e4) {
            throw e4.getCause();
        }
    }

    private static void check(boolean condition, String message) {
        if (!condition) {
            throw new IllegalArgumentException(message);
        }
    }

    private static TypeId<?>[] classArrayToTypeArray(Class<?>[] input) {
        TypeId<?>[] typeIdArr = new TypeId[input.length];
        for (int i2 = 0; i2 < input.length; i2++) {
            typeIdArr[i2] = TypeId.get(input[i2]);
        }
        return typeIdArr;
    }

    public static <T> ProxyBuilder<T> forClass(Class<T> clazz) {
        return new ProxyBuilder<>(clazz);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.dx.DexMaker] */
    /* JADX WARN: Type inference failed for: r36v0, types: [com.android.dx.TypeId<G extends T>] */
    private static <T, G extends T> void generateCodeForAllMethods(DexMaker dexMaker, TypeId<G> generatedType, Method[] methodsToProxy, TypeId<T> superclassType) {
        TypeId typeId;
        Class<?>[] clsArr;
        Local newLocal;
        Local newLocal2;
        Local local;
        Local[] localArr;
        TypeId typeId2;
        MethodId methodId;
        DexMaker dexMaker2 = dexMaker;
        TypeId<T> typeId3 = generatedType;
        Method[] methodArr = methodsToProxy;
        TypeId typeId4 = TypeId.get(InvocationHandler.class);
        TypeId typeId5 = TypeId.get(Method[].class);
        Object field = typeId3.getField(typeId4, FIELD_NAME_HANDLER);
        Object field2 = typeId3.getField(typeId5, FIELD_NAME_METHODS);
        TypeId<?> typeId6 = TypeId.get(Method.class);
        TypeId<?> typeId7 = TypeId.get(Object[].class);
        TypeId<?> typeId8 = TypeId.OBJECT;
        MethodId method = typeId4.getMethod(typeId8, "invoke", typeId8, typeId6, typeId7);
        int i2 = 0;
        TypeId typeId9 = typeId4;
        TypeId typeId10 = typeId5;
        while (i2 < methodArr.length) {
            Method method2 = methodArr[i2];
            String name = method2.getName();
            Class<?>[] parameterTypes = method2.getParameterTypes();
            int length = parameterTypes.length;
            TypeId<?>[] typeIdArr = new TypeId[length];
            for (int i4 = 0; i4 < length; i4++) {
                typeIdArr[i4] = TypeId.get(parameterTypes[i4]);
            }
            Class<?> returnType = method2.getReturnType();
            MethodId methodId2 = method;
            TypeId typeId11 = TypeId.get(returnType);
            Object obj = field;
            MethodId method3 = typeId3.getMethod(typeId11, name, typeIdArr);
            TypeId typeId12 = TypeId.get(AbstractMethodError.class);
            Object obj2 = field2;
            Code declare = dexMaker2.declare(method3, 1);
            Local<T> local2 = declare.getThis(typeId3);
            Local<T> newLocal3 = declare.newLocal(typeId9);
            TypeId<Object> typeId13 = TypeId.OBJECT;
            Local<T> newLocal4 = declare.newLocal(typeId13);
            TypeId<Integer> typeId14 = TypeId.INT;
            Local newLocal5 = declare.newLocal(typeId14);
            Local newLocal6 = declare.newLocal(typeId7);
            TypeId<?> typeId15 = typeId7;
            Local newLocal7 = declare.newLocal(typeId14);
            Local newLocal8 = declare.newLocal(typeId13);
            Local newLocal9 = declare.newLocal(typeId11);
            Local newLocal10 = declare.newLocal(typeId10);
            TypeId typeId16 = typeId10;
            Local newLocal11 = declare.newLocal(typeId6);
            Local newLocal12 = declare.newLocal(typeId14);
            TypeId<?> typeId17 = typeId6;
            Class<?> cls = PRIMITIVE_TO_BOXED.get(returnType);
            Local newLocal13 = cls != null ? declare.newLocal(TypeId.get(cls)) : null;
            Local newLocal14 = declare.newLocal(typeId9);
            TypeId typeId18 = typeId9;
            if ((method2.getModifiers() & 1024) == 0) {
                Local newLocal15 = declare.newLocal(typeId11);
                MethodId method4 = superclassType.getMethod(typeId11, name, typeIdArr);
                typeId = typeId11;
                local = newLocal15;
                newLocal = null;
                typeId2 = typeId12;
                methodId = method4;
                localArr = new Local[parameterTypes.length];
                clsArr = parameterTypes;
                newLocal2 = null;
            } else {
                typeId = typeId11;
                clsArr = parameterTypes;
                newLocal = declare.newLocal(TypeId.STRING);
                newLocal2 = declare.newLocal(typeId12);
                local = null;
                localArr = null;
                typeId2 = typeId12;
                methodId = null;
            }
            declare.loadConstant(newLocal12, Integer.valueOf(i2));
            declare.sget(obj2, newLocal10);
            declare.aget(newLocal11, newLocal10, newLocal12);
            declare.loadConstant(newLocal7, Integer.valueOf(length));
            declare.newArray(newLocal6, newLocal7);
            declare.iget(obj, newLocal3, local2);
            declare.loadConstant(newLocal14, null);
            Label label = new Label();
            declare.compare(Comparison.EQ, label, newLocal14, newLocal3);
            int i5 = length;
            int i6 = 0;
            while (i6 < i5) {
                declare.loadConstant(newLocal5, Integer.valueOf(i6));
                declare.aput(newLocal6, newLocal5, boxIfRequired(declare, declare.getParameter(i6, typeIdArr[i6]), newLocal8));
                i6++;
                i5 = i5;
                i2 = i2;
                newLocal2 = newLocal2;
            }
            int i7 = i2;
            Local local3 = newLocal2;
            declare.invokeInterface(methodId2, newLocal4, newLocal3, local2, newLocal11, newLocal6);
            generateCodeForReturnStatement(declare, returnType, newLocal4, newLocal9, newLocal13);
            declare.mark(label);
            if ((method2.getModifiers() & 1024) == 0) {
                for (int i8 = 0; i8 < localArr.length; i8++) {
                    localArr[i8] = declare.getParameter(i8, typeIdArr[i8]);
                }
                if (Void.TYPE.equals(returnType)) {
                    declare.invokeSuper(methodId, null, local2, localArr);
                    declare.returnVoid();
                } else {
                    invokeSuper(methodId, declare, local2, localArr, local);
                    declare.returnValue(local);
                }
            } else {
                throwAbstractMethodError(declare, method2, newLocal, local3);
            }
            typeId3 = generatedType;
            TypeId typeId19 = typeId;
            Code declare2 = dexMaker.declare(typeId3.getMethod(typeId19, superMethodName(method2), typeIdArr), 1);
            if ((method2.getModifiers() & 1024) == 0) {
                Local local4 = declare2.getThis(typeId3);
                int length2 = clsArr.length;
                Local[] localArr2 = new Local[length2];
                for (int i9 = 0; i9 < length2; i9++) {
                    localArr2[i9] = declare2.getParameter(i9, typeIdArr[i9]);
                }
                if (Void.TYPE.equals(returnType)) {
                    declare2.invokeSuper(methodId, null, local4, localArr2);
                    declare2.returnVoid();
                } else {
                    Local newLocal16 = declare2.newLocal(typeId19);
                    invokeSuper(methodId, declare2, local4, localArr2, newLocal16);
                    declare2.returnValue(newLocal16);
                }
            } else {
                throwAbstractMethodError(declare2, method2, declare2.newLocal(TypeId.STRING), declare2.newLocal(typeId2));
            }
            methodArr = methodsToProxy;
            i2 = i7 + 1;
            method = methodId2;
            dexMaker2 = dexMaker;
            field = obj;
            field2 = obj2;
            typeId7 = typeId15;
            typeId10 = typeId16;
            typeId6 = typeId17;
            typeId9 = typeId18;
        }
    }

    private static void generateCodeForReturnStatement(Code code, Class methodReturnType, Local localForResultOfInvoke, Local localOfMethodReturnType, Local aBoxedResult) {
        if (PRIMITIVE_TO_UNBOX_METHOD.containsKey(methodReturnType)) {
            code.cast(aBoxedResult, localForResultOfInvoke);
            code.invokeVirtual(getUnboxMethodForPrimitive(methodReturnType), localOfMethodReturnType, aBoxedResult, new Local[0]);
            code.returnValue(localOfMethodReturnType);
        } else if (Void.TYPE.equals(methodReturnType)) {
            code.returnVoid();
        } else {
            code.cast(localOfMethodReturnType, localForResultOfInvoke);
            code.returnValue(localOfMethodReturnType);
        }
    }

    private static <T, G extends T> void generateConstructorsAndFields(DexMaker dexMaker, TypeId<G> generatedType, TypeId<T> superType, Class<T> superClass) {
        Constructor[] constructorsToOverwrite;
        TypeId<V> typeId = TypeId.get(InvocationHandler.class);
        TypeId<V> typeId2 = TypeId.get(Method[].class);
        dexMaker.declare(generatedType.getField(typeId, FIELD_NAME_HANDLER), 2, null);
        dexMaker.declare(generatedType.getField(typeId2, FIELD_NAME_METHODS), 10, null);
        for (Constructor constructor : getConstructorsToOverwrite(superClass)) {
            if (constructor.getModifiers() != 16) {
                TypeId<?>[] classArrayToTypeArray = classArrayToTypeArray(constructor.getParameterTypes());
                Code declare = dexMaker.declare(generatedType.getConstructor(classArrayToTypeArray), 1);
                Local<T> local = declare.getThis(generatedType);
                int length = classArrayToTypeArray.length;
                Local<?>[] localArr = new Local[length];
                for (int i2 = 0; i2 < length; i2++) {
                    localArr[i2] = declare.getParameter(i2, classArrayToTypeArray[i2]);
                }
                declare.invokeDirect(superType.getConstructor(classArrayToTypeArray), null, local, localArr);
                declare.returnVoid();
            }
        }
    }

    private static <T> Constructor<T>[] getConstructorsToOverwrite(Class<T> clazz) {
        return (Constructor<T>[]) clazz.getDeclaredConstructors();
    }

    private TypeId<?>[] getInterfacesAsTypeIds() {
        TypeId<?>[] typeIdArr = new TypeId[this.interfaces.size()];
        int i2 = 0;
        for (Class<?> cls : this.interfaces) {
            typeIdArr[i2] = TypeId.get(cls);
            i2++;
        }
        return typeIdArr;
    }

    public static InvocationHandler getInvocationHandler(Object instance) {
        try {
            Field declaredField = instance.getClass().getDeclaredField(FIELD_NAME_HANDLER);
            declaredField.setAccessible(true);
            return (InvocationHandler) declaredField.get(instance);
        } catch (IllegalAccessException e4) {
            throw new AssertionError(e4);
        } catch (NoSuchFieldException e5) {
            throw new IllegalArgumentException("Not a valid proxy instance", e5);
        }
    }

    private static <T> String getMethodNameForProxyOf(Class<T> clazz, List<Class<?>> interfaces) {
        String hexString = Integer.toHexString(interfaces.hashCode());
        return clazz.getName().replace(g0.f27568a, e.F0) + "_" + hexString + "_Proxy";
    }

    private void getMethodsToProxy(Set<MethodSetEntry> sink, Set<MethodSetEntry> seenFinalMethods, Class<?> c4) {
        Method[] declaredMethods;
        for (Method method : c4.getDeclaredMethods()) {
            if ((method.getModifiers() & 16) != 0) {
                MethodSetEntry methodSetEntry = new MethodSetEntry(method);
                seenFinalMethods.add(methodSetEntry);
                sink.remove(methodSetEntry);
            } else if ((method.getModifiers() & 8) == 0 && ((Modifier.isPublic(method.getModifiers()) || Modifier.isProtected(method.getModifiers()) || (this.sharedClassLoader && !Modifier.isPrivate(method.getModifiers()))) && (!method.getName().equals("finalize") || method.getParameterTypes().length != 0))) {
                MethodSetEntry methodSetEntry2 = new MethodSetEntry(method);
                if (!seenFinalMethods.contains(methodSetEntry2)) {
                    sink.add(methodSetEntry2);
                }
            }
        }
        if (c4.isInterface()) {
            for (Class<?> cls : c4.getInterfaces()) {
                getMethodsToProxy(sink, seenFinalMethods, cls);
            }
        }
    }

    private Method[] getMethodsToProxyRecursive() {
        int i2;
        Set<MethodSetEntry> hashSet = new HashSet<>();
        Set<MethodSetEntry> hashSet2 = new HashSet<>();
        for (Class<T> cls = this.baseClass; cls != null; cls = cls.getSuperclass()) {
            getMethodsToProxy(hashSet, hashSet2, cls);
        }
        Class<T> cls2 = this.baseClass;
        while (true) {
            i2 = 0;
            if (cls2 == null) {
                break;
            }
            Class<?>[] interfaces = cls2.getInterfaces();
            int length = interfaces.length;
            while (i2 < length) {
                getMethodsToProxy(hashSet, hashSet2, interfaces[i2]);
                i2++;
            }
            cls2 = cls2.getSuperclass();
        }
        for (Class<?> cls3 : this.interfaces) {
            getMethodsToProxy(hashSet, hashSet2, cls3);
        }
        Method[] methodArr = new Method[hashSet.size()];
        for (MethodSetEntry methodSetEntry : hashSet) {
            methodArr[i2] = methodSetEntry.originalMethod;
            i2++;
        }
        return methodArr;
    }

    private static MethodId<?, ?> getUnboxMethodForPrimitive(Class<?> methodReturnType) {
        return PRIMITIVE_TO_UNBOX_METHOD.get(methodReturnType);
    }

    private static void invokeSuper(MethodId superMethod, Code superCode, Local superThis, Local[] superArgs, Local superResult) {
        superCode.invokeSuper(superMethod, superResult, superThis, superArgs);
    }

    public static boolean isProxyClass(Class<?> c4) {
        try {
            c4.getDeclaredField(FIELD_NAME_HANDLER);
            return true;
        } catch (NoSuchFieldException unused) {
            return false;
        }
    }

    private static RuntimeException launderCause(InvocationTargetException e4) {
        Throwable cause = e4.getCause();
        if (!(cause instanceof Error)) {
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new UndeclaredThrowableException(cause);
        }
        throw ((Error) cause);
    }

    private Class<? extends T> loadClass(ClassLoader classLoader, String generatedName) throws ClassNotFoundException {
        return (Class<? extends T>) classLoader.loadClass(generatedName);
    }

    public static void setInvocationHandler(Object instance, InvocationHandler handler) {
        try {
            Field declaredField = instance.getClass().getDeclaredField(FIELD_NAME_HANDLER);
            declaredField.setAccessible(true);
            declaredField.set(instance, handler);
        } catch (IllegalAccessException e4) {
            throw new AssertionError(e4);
        } catch (NoSuchFieldException e5) {
            throw new IllegalArgumentException("Not a valid proxy instance", e5);
        }
    }

    private static void setMethodsStaticField(Class<?> proxyClass, Method[] methodsToProxy) {
        try {
            Field declaredField = proxyClass.getDeclaredField(FIELD_NAME_METHODS);
            declaredField.setAccessible(true);
            declaredField.set(null, methodsToProxy);
        } catch (IllegalAccessException e4) {
            throw new AssertionError(e4);
        } catch (NoSuchFieldException e5) {
            throw new AssertionError(e5);
        }
    }

    private static String superMethodName(Method method) {
        String name = method.getReturnType().getName();
        return "super$" + method.getName() + "$" + name.replace(d.f65364a, '_').replace('[', '_').replace(';', '_');
    }

    private static void throwAbstractMethodError(Code code, Method method, Local<String> abstractMethodErrorMessage, Local<AbstractMethodError> abstractMethodError) {
        MethodId<T, Void> constructor = TypeId.get(AbstractMethodError.class).getConstructor(TypeId.STRING);
        code.loadConstant(abstractMethodErrorMessage, "'" + method + "' cannot be called");
        code.newInstance(abstractMethodError, constructor, abstractMethodErrorMessage);
        code.throwValue(abstractMethodError);
    }

    public T build() throws IOException {
        check(this.handler != null, "handler == null");
        check(this.constructorArgTypes.length == this.constructorArgValues.length, "constructorArgValues.length != constructorArgTypes.length");
        try {
            try {
                T newInstance = buildProxyClass().getConstructor(this.constructorArgTypes).newInstance(this.constructorArgValues);
                setInvocationHandler(newInstance, this.handler);
                return newInstance;
            } catch (IllegalAccessException e4) {
                throw new AssertionError(e4);
            } catch (InstantiationException e5) {
                throw new AssertionError(e5);
            } catch (InvocationTargetException e6) {
                throw launderCause(e6);
            }
        } catch (NoSuchMethodException unused) {
            throw new IllegalArgumentException("No constructor for " + this.baseClass.getName() + " with parameter types " + Arrays.toString(this.constructorArgTypes));
        }
    }

    public Class<? extends T> buildProxyClass() throws IOException {
        ClassLoader classLoader;
        ClassLoader generateAndLoad;
        if (this.sharedClassLoader) {
            classLoader = this.baseClass.getClassLoader();
        } else {
            classLoader = this.parentClassLoader;
        }
        ProxiedClass<?> proxiedClass = new ProxiedClass<>(this.baseClass, this.interfaces, classLoader, this.sharedClassLoader);
        Map<ProxiedClass<?>, Class<?>> map = generatedProxyClasses;
        Class<? extends T> cls = (Class<? extends T>) map.get(proxiedClass);
        if (cls != null) {
            return cls;
        }
        DexMaker dexMaker = new DexMaker();
        String methodNameForProxyOf = getMethodNameForProxyOf(this.baseClass, this.interfaces);
        TypeId<?> typeId = TypeId.get("L" + methodNameForProxyOf + ";");
        TypeId<?> typeId2 = TypeId.get(this.baseClass);
        generateConstructorsAndFields(dexMaker, typeId, typeId2, this.baseClass);
        Method[] methodArr = this.methods;
        if (methodArr == null) {
            methodArr = getMethodsToProxyRecursive();
        }
        Arrays.sort(methodArr, new Comparator<Method>() { // from class: com.android.dx.stock.ProxyBuilder.1
            @Override // java.util.Comparator
            public int compare(Method method1, Method method2) {
                return (method1.getDeclaringClass() + method1.getName() + Arrays.toString(method1.getParameterTypes()) + method1.getReturnType()).compareTo(method2.getDeclaringClass() + method2.getName() + Arrays.toString(method2.getParameterTypes()) + method2.getReturnType());
            }
        });
        generateCodeForAllMethods(dexMaker, typeId, methodArr, typeId2);
        dexMaker.declare(typeId, methodNameForProxyOf + ".generated", 1, typeId2, getInterfacesAsTypeIds());
        if (this.sharedClassLoader) {
            dexMaker.setSharedClassLoader(classLoader);
        }
        if (this.markTrusted) {
            dexMaker.markAsTrusted();
        }
        if (this.sharedClassLoader) {
            generateAndLoad = dexMaker.generateAndLoad(null, this.dexCache);
        } else {
            generateAndLoad = dexMaker.generateAndLoad(this.parentClassLoader, this.dexCache);
        }
        try {
            Class<? extends T> loadClass = loadClass(generateAndLoad, methodNameForProxyOf);
            setMethodsStaticField(loadClass, methodArr);
            map.put(proxiedClass, loadClass);
            return loadClass;
        } catch (ClassNotFoundException e4) {
            throw new AssertionError(e4);
        } catch (IllegalAccessError e5) {
            throw new UnsupportedOperationException("cannot proxy inaccessible class " + this.baseClass, e5);
        }
    }

    public ProxyBuilder<T> constructorArgTypes(Class<?>... constructorArgTypes) {
        this.constructorArgTypes = constructorArgTypes;
        return this;
    }

    public ProxyBuilder<T> constructorArgValues(Object... constructorArgValues) {
        this.constructorArgValues = constructorArgValues;
        return this;
    }

    public ProxyBuilder<T> dexCache(File dexCacheParent) {
        File file = new File(dexCacheParent, "v" + Integer.toString(1));
        this.dexCache = file;
        file.mkdir();
        return this;
    }

    public ProxyBuilder<T> handler(InvocationHandler handler) {
        this.handler = handler;
        return this;
    }

    public ProxyBuilder<T> implementing(Class<?>... interfaces) {
        List<Class<?>> list = this.interfaces;
        for (Class<?> cls : interfaces) {
            if (cls.isInterface()) {
                if (!list.contains(cls)) {
                    list.add(cls);
                }
            } else {
                throw new IllegalArgumentException("Not an interface: " + cls.getName());
            }
        }
        return this;
    }

    public ProxyBuilder<T> markTrusted() {
        this.markTrusted = true;
        return this;
    }

    public ProxyBuilder<T> onlyMethods(Method[] methods) {
        this.methods = methods;
        return this;
    }

    public ProxyBuilder<T> parentClassLoader(ClassLoader parent) {
        this.parentClassLoader = parent;
        return this;
    }

    public ProxyBuilder<T> withSharedClassLoader() {
        this.sharedClassLoader = true;
        return this;
    }
}
