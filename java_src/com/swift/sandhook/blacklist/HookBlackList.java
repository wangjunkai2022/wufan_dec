package com.swift.sandhook.blacklist;

import com.join.mgps.Util.g0;
import com.swift.sandhook.SandHookConfig;
import java.lang.reflect.Member;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public class HookBlackList {
    public static Set<String> methodBlackList = new HashSet();
    public static Set<Class> classBlackList = new HashSet();
    public static Set<String> methodUseInHookBridge = new HashSet();
    public static Set<String> methodUseInHookStub = new HashSet();

    static {
        methodBlackList.add("java.lang.reflect.Method.invoke");
        methodBlackList.add("java.lang.reflect.AccessibleObject.setAccessible");
        methodUseInHookBridge.add("java.lang.Class.getDeclaredField");
        methodUseInHookBridge.add("java.lang.reflect.InvocationTargetException.getCause");
        methodUseInHookStub.add("java.lang.Object.equals");
        methodUseInHookStub.add("java.lang.Class.isPrimitive");
    }

    public static final boolean canNotHook(Member origin) {
        if (classBlackList.contains(origin.getDeclaringClass())) {
            return true;
        }
        return methodBlackList.contains(origin.getDeclaringClass().getName() + g0.f27568a + origin.getName());
    }

    public static final boolean canNotHookByBridge(Member origin) {
        return methodUseInHookBridge.contains(origin.getDeclaringClass().getName() + g0.f27568a + origin.getName());
    }

    public static final boolean canNotHookByStub(Member origin) {
        if (SandHookConfig.SDK_INT < 29 || !Thread.class.equals(origin.getDeclaringClass())) {
            return methodUseInHookStub.contains(origin.getDeclaringClass().getName() + g0.f27568a + origin.getName());
        }
        return true;
    }
}
