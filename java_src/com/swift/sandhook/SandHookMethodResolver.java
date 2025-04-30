package com.swift.sandhook;

import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class SandHookMethodResolver {
    public static Field artMethodField;
    public static boolean canResolvedInJava;
    public static Field dexCacheField;
    public static int dexMethodIndex;
    public static Field dexMethodIndexField;
    public static long entryPointFromCompiledCode;
    public static long entryPointFromInterpreter;
    public static Field fieldEntryPointFromCompiledCode;
    public static Field fieldEntryPointFromInterpreter;
    public static boolean isArtMethod;
    public static long resolvedMethodsAddress;
    public static Field resolvedMethodsField;
    public static Object testArtMethod;
    public static Method testMethod;

    private static void checkSupport() {
        try {
            Field field = SandHook.getField(Method.class, "artMethod");
            artMethodField = field;
            testArtMethod = field.get(testMethod);
            if (SandHook.hasJavaArtMethod() && testArtMethod.getClass() == SandHook.artMethodClass) {
                checkSupportForArtMethod();
                isArtMethod = true;
            } else if (testArtMethod instanceof Long) {
                checkSupportForArtMethodId();
                isArtMethod = false;
            } else {
                canResolvedInJava = false;
            }
        } catch (Exception unused) {
        }
    }

    private static void checkSupportForArtMethod() throws Exception {
        try {
            dexMethodIndexField = SandHook.getField(SandHook.artMethodClass, "dexMethodIndex");
        } catch (NoSuchFieldException unused) {
            dexMethodIndexField = SandHook.getField(SandHook.artMethodClass, "methodDexIndex");
        }
        Field field = SandHook.getField(Class.class, "dexCache");
        dexCacheField = field;
        Object obj = field.get(testMethod.getDeclaringClass());
        Field field2 = SandHook.getField(obj.getClass(), "resolvedMethods");
        resolvedMethodsField = field2;
        if (field2.get(obj) instanceof Object[]) {
            canResolvedInJava = true;
        }
        try {
            dexMethodIndex = ((Integer) dexMethodIndexField.get(testArtMethod)).intValue();
        } catch (Throwable unused2) {
        }
        try {
            fieldEntryPointFromCompiledCode = SandHook.getField(SandHook.artMethodClass, "entryPointFromQuickCompiledCode");
            Class<?> type = fieldEntryPointFromCompiledCode.getType();
            Class<?> cls = Integer.TYPE;
            if (type == cls) {
                entryPointFromCompiledCode = fieldEntryPointFromCompiledCode.getInt(testArtMethod);
            } else if (fieldEntryPointFromCompiledCode.getType() == Long.TYPE) {
                entryPointFromCompiledCode = fieldEntryPointFromCompiledCode.getLong(testArtMethod);
            }
            Field field3 = SandHook.getField(SandHook.artMethodClass, "entryPointFromInterpreter");
            fieldEntryPointFromInterpreter = field3;
            if (field3.getType() == cls) {
                entryPointFromInterpreter = fieldEntryPointFromInterpreter.getInt(testArtMethod);
            } else if (fieldEntryPointFromCompiledCode.getType() == Long.TYPE) {
                entryPointFromInterpreter = fieldEntryPointFromInterpreter.getLong(testArtMethod);
            }
        } catch (Throwable unused3) {
        }
    }

    private static void checkSupportForArtMethodId() throws Exception {
        Field field = SandHook.getField(Method.class, "dexMethodIndex");
        dexMethodIndexField = field;
        dexMethodIndex = ((Integer) field.get(testMethod)).intValue();
        Field field2 = SandHook.getField(Class.class, "dexCache");
        dexCacheField = field2;
        Object obj = field2.get(testMethod.getDeclaringClass());
        Field field3 = SandHook.getField(obj.getClass(), "resolvedMethods");
        resolvedMethodsField = field3;
        Object obj2 = field3.get(obj);
        if (obj2 instanceof Long) {
            canResolvedInJava = false;
            resolvedMethodsAddress = ((Long) obj2).longValue();
        } else if (obj2 instanceof long[]) {
            canResolvedInJava = true;
        } else if (obj2 instanceof int[]) {
            canResolvedInJava = true;
        }
    }

    public static long getArtMethod(Member member) {
        Field field = artMethodField;
        if (field == null) {
            return 0L;
        }
        try {
            return ((Long) field.get(member)).longValue();
        } catch (IllegalAccessException unused) {
            return 0L;
        }
    }

    public static void init() {
        testMethod = SandHook.testOffsetMethod1;
        checkSupport();
    }

    private static void resolveInJava(Method hook, Method backup) throws Exception {
        Object obj = dexCacheField.get(hook.getDeclaringClass());
        if (isArtMethod) {
            Object obj2 = artMethodField.get(backup);
            ((Object[]) resolvedMethodsField.get(obj))[((Integer) dexMethodIndexField.get(obj2)).intValue()] = obj2;
            return;
        }
        int intValue = ((Integer) dexMethodIndexField.get(backup)).intValue();
        Object obj3 = resolvedMethodsField.get(obj);
        if (obj3 instanceof long[]) {
            ((long[]) obj3)[intValue] = ((Long) artMethodField.get(backup)).longValue();
        } else if (obj3 instanceof int[]) {
            ((int[]) obj3)[intValue] = Long.valueOf(((Long) artMethodField.get(backup)).longValue()).intValue();
        } else {
            throw new UnsupportedOperationException("un support");
        }
    }

    private static void resolveInNative(Method hook, Method backup) {
        SandHook.ensureMethodCached(hook, backup);
    }

    public static void resolveMethod(Method hook, Method backup) {
        if (canResolvedInJava && artMethodField != null) {
            try {
                resolveInJava(hook, backup);
                return;
            } catch (Exception unused) {
                resolveInNative(hook, backup);
                return;
            }
        }
        resolveInNative(hook, backup);
    }
}
