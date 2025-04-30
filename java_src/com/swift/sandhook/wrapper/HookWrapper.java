package com.swift.sandhook.wrapper;

import android.text.TextUtils;
import com.swift.sandhook.SandHook;
import com.swift.sandhook.annotation.HookClass;
import com.swift.sandhook.annotation.HookMethod;
import com.swift.sandhook.annotation.HookMethodBackup;
import com.swift.sandhook.annotation.HookReflectClass;
import com.swift.sandhook.annotation.MethodParams;
import com.swift.sandhook.annotation.MethodReflectParams;
import com.swift.sandhook.annotation.Param;
import com.swift.sandhook.annotation.SkipParamCheck;
import com.swift.sandhook.annotation.ThisObject;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class HookWrapper {
    public static void addHookClass(Class<?>... classes) throws HookErrorException {
        addHookClass((ClassLoader) null, classes);
    }

    public static void checkSignature(Member origin, Method fake, Class[] originPars) throws HookErrorException {
        Class<?> returnType;
        if (Modifier.isStatic(fake.getModifiers())) {
            if (origin instanceof Constructor) {
                if (!fake.getReturnType().equals(Void.TYPE)) {
                    throw new HookErrorException("error return type! - " + fake.getName());
                }
            } else if ((origin instanceof Method) && (returnType = ((Method) origin).getReturnType()) != fake.getReturnType() && !returnType.isAssignableFrom(returnType)) {
                throw new HookErrorException("error return type! - " + fake.getName());
            }
            Class<?>[] parameterTypes = fake.getParameterTypes();
            if (parameterTypes == null) {
                parameterTypes = new Class[0];
            }
            if (originPars == null) {
                originPars = new Class[0];
            }
            if (originPars.length == 0 && parameterTypes.length == 0) {
                return;
            }
            int i2 = 1;
            if (!Modifier.isStatic(origin.getModifiers())) {
                if (parameterTypes.length != 0) {
                    if (parameterTypes[0] != origin.getDeclaringClass() && !parameterTypes[0].isAssignableFrom(origin.getDeclaringClass())) {
                        throw new HookErrorException("first par must be this! " + fake.getName());
                    } else if (parameterTypes.length != originPars.length + 1) {
                        throw new HookErrorException("hook method pars must match the origin method! " + fake.getName());
                    }
                } else {
                    throw new HookErrorException("first par must be this! " + fake.getName());
                }
            } else if (parameterTypes.length != originPars.length) {
                throw new HookErrorException("hook method pars must match the origin method! " + fake.getName());
            } else {
                i2 = 0;
            }
            for (int i4 = 0; i4 < originPars.length; i4++) {
                int i5 = i4 + i2;
                if (parameterTypes[i5] != originPars[i4] && !parameterTypes[i5].isAssignableFrom(originPars[i4])) {
                    throw new HookErrorException("hook method pars must match the origin method! " + fake.getName());
                }
            }
            return;
        }
        throw new HookErrorException("hook method must static! - " + fake.getName());
    }

    private static Class classNameToClass(String name, ClassLoader classLoader) throws ClassNotFoundException {
        name.hashCode();
        char c4 = 65535;
        switch (name.hashCode()) {
            case -1325958191:
                if (name.equals(MethodReflectParams.DOUBLE)) {
                    c4 = 0;
                    break;
                }
                break;
            case 104431:
                if (name.equals(MethodReflectParams.INT)) {
                    c4 = 1;
                    break;
                }
                break;
            case 3039496:
                if (name.equals(MethodReflectParams.BYTE)) {
                    c4 = 2;
                    break;
                }
                break;
            case 3052374:
                if (name.equals(MethodReflectParams.CHAR)) {
                    c4 = 3;
                    break;
                }
                break;
            case 3327612:
                if (name.equals(MethodReflectParams.LONG)) {
                    c4 = 4;
                    break;
                }
                break;
            case 64711720:
                if (name.equals("boolean")) {
                    c4 = 5;
                    break;
                }
                break;
            case 97526364:
                if (name.equals("float")) {
                    c4 = 6;
                    break;
                }
                break;
            case 109413500:
                if (name.equals(MethodReflectParams.SHORT)) {
                    c4 = 7;
                    break;
                }
                break;
        }
        switch (c4) {
            case 0:
                return Double.TYPE;
            case 1:
                return Integer.TYPE;
            case 2:
                return Byte.TYPE;
            case 3:
                return Character.TYPE;
            case 4:
                return Long.TYPE;
            case 5:
                return Boolean.TYPE;
            case 6:
                return Float.TYPE;
            case 7:
                return Short.TYPE;
            default:
                if (classLoader == null) {
                    return Class.forName(name);
                }
                return Class.forName(name, true, classLoader);
        }
    }

    private static void fillBackupMethod(ClassLoader classLoader, Class<?> clazz, Map<Member, HookEntity> hookEntityMap) {
        Field[] fieldArr;
        HookMethodBackup hookMethodBackup;
        try {
            fieldArr = clazz.getDeclaredFields();
        } catch (Throwable unused) {
            fieldArr = null;
        }
        if (fieldArr == null || fieldArr.length == 0 || hookEntityMap.isEmpty()) {
            return;
        }
        for (Field field : fieldArr) {
            if (Modifier.isStatic(field.getModifiers()) && (hookMethodBackup = (HookMethodBackup) field.getAnnotation(HookMethodBackup.class)) != null) {
                for (HookEntity hookEntity : hookEntityMap.values()) {
                    if (TextUtils.equals(hookEntity.isCtor() ? "<init>" : hookEntity.target.getName(), hookMethodBackup.value()) && samePars(classLoader, field, hookEntity.pars)) {
                        field.setAccessible(true);
                        if (hookEntity.backup == null) {
                            hookEntity.backup = StubMethodsFactory.getStubMethod();
                            hookEntity.hookIsStub = true;
                            hookEntity.resolveDexCache = false;
                        }
                        if (hookEntity.backup != null) {
                            try {
                                if (field.getType() == Method.class) {
                                    field.set(null, hookEntity.backup);
                                } else if (field.getType() == HookEntity.class) {
                                    field.set(null, hookEntity);
                                }
                            } catch (IllegalAccessException e4) {
                                e4.printStackTrace();
                            }
                        }
                    }
                }
            }
        }
    }

    private static Map<Member, HookEntity> getHookMethods(ClassLoader classLoader, Class targetHookClass, Class<?> hookWrapperClass) throws HookErrorException {
        Method[] methodArr;
        Member declaredMethod;
        Member declaredMethod2;
        HashMap hashMap = new HashMap();
        try {
            methodArr = hookWrapperClass.getDeclaredMethods();
        } catch (Throwable unused) {
            methodArr = null;
        }
        if (methodArr != null && methodArr.length != 0) {
            for (Method method : methodArr) {
                HookMethod hookMethod = (HookMethod) method.getAnnotation(HookMethod.class);
                HookMethodBackup hookMethodBackup = (HookMethodBackup) method.getAnnotation(HookMethodBackup.class);
                if (hookMethod != null) {
                    String value = hookMethod.value();
                    Class<?>[] parseMethodPars = parseMethodPars(classLoader, method);
                    try {
                        if (value.equals("<init>")) {
                            declaredMethod2 = targetHookClass.getConstructor(parseMethodPars);
                        } else {
                            declaredMethod2 = targetHookClass.getDeclaredMethod(value, parseMethodPars);
                        }
                        if (!method.isAnnotationPresent(SkipParamCheck.class)) {
                            checkSignature(declaredMethod2, method, parseMethodPars);
                        }
                        HookEntity hookEntity = (HookEntity) hashMap.get(declaredMethod2);
                        if (hookEntity == null) {
                            hookEntity = new HookEntity(declaredMethod2);
                            hashMap.put(declaredMethod2, hookEntity);
                        }
                        hookEntity.pars = parseMethodPars;
                        hookEntity.hook = method;
                    } catch (NoSuchMethodException e4) {
                        throw new HookErrorException("can not find target method: " + value, e4);
                    }
                } else if (hookMethodBackup != null) {
                    String value2 = hookMethodBackup.value();
                    Class<?>[] parseMethodPars2 = parseMethodPars(classLoader, method);
                    try {
                        if (value2.equals("<init>")) {
                            declaredMethod = targetHookClass.getConstructor(parseMethodPars2);
                        } else {
                            declaredMethod = targetHookClass.getDeclaredMethod(value2, parseMethodPars2);
                        }
                        if (!method.isAnnotationPresent(SkipParamCheck.class)) {
                            checkSignature(declaredMethod, method, parseMethodPars2);
                        }
                        HookEntity hookEntity2 = (HookEntity) hashMap.get(declaredMethod);
                        if (hookEntity2 == null) {
                            hookEntity2 = new HookEntity(declaredMethod);
                            hashMap.put(declaredMethod, hookEntity2);
                        }
                        hookEntity2.pars = parseMethodPars2;
                        hookEntity2.backup = method;
                    } catch (NoSuchMethodException e5) {
                        throw new HookErrorException("can not find target method: " + value2, e5);
                    }
                } else {
                    continue;
                }
            }
            return hashMap;
        }
        throw new HookErrorException("error hook wrapper class :" + targetHookClass.getName());
    }

    private static int getParsCount(Method method) {
        Class<?>[] parameterTypes = method.getParameterTypes();
        if (parameterTypes == null) {
            return 0;
        }
        return parameterTypes.length;
    }

    private static Class getRealParType(ClassLoader classLoader, Class hookPar, Annotation[] annotations, boolean skipCheck) throws Exception {
        if (annotations != null && annotations.length != 0) {
            for (Annotation annotation : annotations) {
                if (annotation instanceof Param) {
                    Param param = (Param) annotation;
                    if (TextUtils.isEmpty(param.value())) {
                        return hookPar;
                    }
                    Class<?> classNameToClass = classNameToClass(param.value(), classLoader);
                    if (skipCheck || classNameToClass.equals(hookPar) || hookPar.isAssignableFrom(classNameToClass)) {
                        return classNameToClass;
                    }
                    throw new ClassCastException("hook method par cast error!");
                }
            }
        }
        return hookPar;
    }

    private static Class getTargetHookClass(ClassLoader classLoader, Class<?> hookWrapperClass) {
        HookClass hookClass = (HookClass) hookWrapperClass.getAnnotation(HookClass.class);
        HookReflectClass hookReflectClass = (HookReflectClass) hookWrapperClass.getAnnotation(HookReflectClass.class);
        if (hookClass != null) {
            return hookClass.value();
        }
        if (hookReflectClass != null) {
            try {
                if (classLoader == null) {
                    return Class.forName(hookReflectClass.value());
                }
                return Class.forName(hookReflectClass.value(), true, classLoader);
            } catch (ClassNotFoundException unused) {
            }
        }
        return null;
    }

    private static boolean hasThisObject(Method method) {
        Annotation[][] parameterAnnotations = method.getParameterAnnotations();
        if (parameterAnnotations == null || parameterAnnotations.length == 0) {
            return false;
        }
        return isThisObject(parameterAnnotations[0]);
    }

    private static boolean isThisObject(Annotation[] annotations) {
        if (annotations != null && annotations.length != 0) {
            for (Annotation annotation : annotations) {
                if (annotation instanceof ThisObject) {
                    return true;
                }
            }
        }
        return false;
    }

    private static Class[] parseMethodPars(ClassLoader classLoader, Method method) throws HookErrorException {
        MethodParams methodParams = (MethodParams) method.getAnnotation(MethodParams.class);
        MethodReflectParams methodReflectParams = (MethodReflectParams) method.getAnnotation(MethodReflectParams.class);
        if (methodParams != null) {
            return methodParams.value();
        }
        if (methodReflectParams != null) {
            if (methodReflectParams.value().length == 0) {
                return null;
            }
            Class[] clsArr = new Class[methodReflectParams.value().length];
            for (int i2 = 0; i2 < methodReflectParams.value().length; i2++) {
                try {
                    clsArr[i2] = classNameToClass(methodReflectParams.value()[i2], classLoader);
                } catch (ClassNotFoundException e4) {
                    throw new HookErrorException("hook method pars error: " + method.getName(), e4);
                }
            }
            return clsArr;
        } else if (getParsCount(method) > 0) {
            if (getParsCount(method) == 1) {
                if (hasThisObject(method)) {
                    return parseMethodParsNew(classLoader, method);
                }
                return null;
            }
            return parseMethodParsNew(classLoader, method);
        } else {
            return null;
        }
    }

    private static Class[] parseMethodParsNew(ClassLoader classLoader, Method method) throws HookErrorException {
        Class<?>[] parameterTypes = method.getParameterTypes();
        Class[] clsArr = null;
        if (parameterTypes != null && parameterTypes.length != 0) {
            Annotation[][] parameterAnnotations = method.getParameterAnnotations();
            int i2 = 0;
            for (int i4 = 0; i4 < parameterAnnotations.length; i4++) {
                Class<?> cls = parameterTypes[i4];
                Annotation[] annotationArr = parameterAnnotations[i4];
                try {
                    if (i4 == 0) {
                        if (isThisObject(annotationArr)) {
                            clsArr = new Class[parameterAnnotations.length - 1];
                        } else {
                            clsArr = new Class[parameterAnnotations.length];
                        }
                    }
                    clsArr[i2] = getRealParType(classLoader, cls, annotationArr, method.isAnnotationPresent(SkipParamCheck.class));
                    i2++;
                } catch (Exception e4) {
                    throw new HookErrorException("hook method <" + method.getName() + "> parser pars error", e4);
                }
            }
        }
        return clsArr;
    }

    private static boolean samePars(ClassLoader classLoader, Field field, Class[] par) {
        try {
            Class[] parseMethodPars = parseMethodPars(classLoader, field);
            if (parseMethodPars == null && field.isAnnotationPresent(SkipParamCheck.class)) {
                return true;
            }
            if (par == null) {
                par = new Class[0];
            }
            if (parseMethodPars == null) {
                parseMethodPars = new Class[0];
            }
            if (par.length != parseMethodPars.length) {
                return false;
            }
            for (int i2 = 0; i2 < par.length; i2++) {
                if (par[i2] != parseMethodPars[i2]) {
                    return false;
                }
            }
            return true;
        } catch (HookErrorException unused) {
            return false;
        }
    }

    public static void addHookClass(ClassLoader classLoader, Class<?>... classes) throws HookErrorException {
        for (Class<?> cls : classes) {
            addHookClass(classLoader, cls);
        }
    }

    public static void addHookClass(ClassLoader classLoader, Class<?> clazz) throws HookErrorException {
        Class targetHookClass = getTargetHookClass(classLoader, clazz);
        if (targetHookClass != null) {
            Map<Member, HookEntity> hookMethods = getHookMethods(classLoader, targetHookClass, clazz);
            try {
                fillBackupMethod(classLoader, clazz, hookMethods);
                for (HookEntity hookEntity : hookMethods.values()) {
                    SandHook.hook(hookEntity);
                }
                return;
            } catch (Throwable th) {
                throw new HookErrorException("fillBackupMethod error!", th);
            }
        }
        throw new HookErrorException("error hook wrapper class :" + clazz.getName());
    }

    /* loaded from: classes.dex */
    public static class HookEntity {
        public Method backup;
        public boolean backupIsStub;
        public Method hook;
        public boolean hookIsStub;
        public int hookMode;
        public boolean initClass;
        public Class[] pars;
        public boolean resolveDexCache;
        public Member target;

        public HookEntity(Member target) {
            this.hookIsStub = false;
            this.resolveDexCache = true;
            this.backupIsStub = true;
            this.initClass = true;
            this.target = target;
        }

        public Object callOrigin(Object thiz, Object... args) throws Throwable {
            return SandHook.callOriginMethod(this.backupIsStub, this.target, this.backup, thiz, args);
        }

        public boolean isCtor() {
            return this.target instanceof Constructor;
        }

        public HookEntity(Member target, Method hook, Method backup) {
            this.hookIsStub = false;
            this.resolveDexCache = true;
            this.backupIsStub = true;
            this.initClass = true;
            this.target = target;
            this.hook = hook;
            this.backup = backup;
        }

        public HookEntity(Member target, Method hook, Method backup, boolean resolveDexCache) {
            this.hookIsStub = false;
            this.resolveDexCache = true;
            this.backupIsStub = true;
            this.initClass = true;
            this.target = target;
            this.hook = hook;
            this.backup = backup;
            this.resolveDexCache = resolveDexCache;
        }
    }

    private static Class[] parseMethodPars(ClassLoader classLoader, Field field) throws HookErrorException {
        MethodParams methodParams = (MethodParams) field.getAnnotation(MethodParams.class);
        MethodReflectParams methodReflectParams = (MethodReflectParams) field.getAnnotation(MethodReflectParams.class);
        if (methodParams != null) {
            return methodParams.value();
        }
        Class[] clsArr = null;
        if (methodReflectParams != null) {
            if (methodReflectParams.value().length == 0) {
                return null;
            }
            clsArr = new Class[methodReflectParams.value().length];
            for (int i2 = 0; i2 < methodReflectParams.value().length; i2++) {
                try {
                    clsArr[i2] = classNameToClass(methodReflectParams.value()[i2], classLoader);
                } catch (ClassNotFoundException e4) {
                    throw new HookErrorException("hook method pars error: " + field.getName(), e4);
                }
            }
        }
        return clsArr;
    }
}
