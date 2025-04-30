package com.swift.sandhook.xposedcompat.hookstub;

import com.swift.sandhook.SandHook;
import com.swift.sandhook.SandHookMethodResolver;
import com.swift.sandhook.utils.ParamWrapper;
import com.swift.sandhook.wrapper.StubMethodsFactory;
import com.swift.sandhook.xposedcompat.XposedCompat;
import com.swift.sandhook.xposedcompat.utils.DexLog;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes4.dex */
public class HookStubManager {
    public static int ALL_STUB = 0;
    public static final int MAX_64_ARGS = 7;
    public static int MAX_STUB_ARGS;
    public static XposedBridge.AdditionalHookInfo[] additionalHookInfos;
    public static AtomicInteger[] curUseStubIndexes;
    public static boolean hasStubBackup;
    public static HookMethodEntity[] hookMethodEntities;
    public static volatile boolean is64Bit = SandHook.is64Bit();
    public static Member[] originMethods;
    public static int[] stubSizes;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class StubMethodsInfo {
        int args;
        Method backup;
        Method hook;
        int index;

        public StubMethodsInfo(int args, int index, Method hook, Method backup) {
            this.args = 0;
            this.index = 0;
            this.args = args;
            this.index = index;
            this.hook = hook;
            this.backup = backup;
        }
    }

    static {
        Class cls = is64Bit ? MethodHookerStubs64.class : MethodHookerStubs32.class;
        stubSizes = (int[]) XposedHelpers.getStaticObjectField(cls, "stubSizes");
        Boolean bool = (Boolean) XposedHelpers.getStaticObjectField(cls, "hasStubBackup");
        hasStubBackup = (bool == null || !bool.booleanValue() || XposedCompat.useNewCallBackup) ? false : true;
        int[] iArr = stubSizes;
        if (iArr == null || iArr.length <= 0) {
            return;
        }
        int length = iArr.length - 1;
        MAX_STUB_ARGS = length;
        curUseStubIndexes = new AtomicInteger[length + 1];
        for (int i2 = 0; i2 < MAX_STUB_ARGS + 1; i2++) {
            curUseStubIndexes[i2] = new AtomicInteger(0);
            ALL_STUB += stubSizes[i2];
        }
        int i4 = ALL_STUB;
        originMethods = new Member[i4];
        hookMethodEntities = new HookMethodEntity[i4];
        additionalHookInfos = new XposedBridge.AdditionalHookInfo[i4];
    }

    public static final long callOrigin(HookMethodEntity entity, Member origin, Object thiz, Object[] args) throws Throwable {
        return entity.getResultAddress(SandHook.callOriginMethod(origin, entity.backup, thiz, args));
    }

    public static String getBackupMethodName(int index) {
        return "stub_backup_" + index;
    }

    public static String getCallOriginClassName(int args, int index) {
        return "call_origin_" + args + "_" + index;
    }

    public static Method getCallOriginMethod(int args, int index) {
        Class cls = is64Bit ? MethodHookerStubs64.class : MethodHookerStubs32.class;
        try {
            return Class.forName((cls.getName() + "$") + getCallOriginClassName(args, index), true, cls.getClassLoader()).getDeclaredMethod("call", long[].class);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Class[] getFindMethodParTypes(boolean is64Bit2, int stubArgs) {
        if (stubArgs == 0) {
            return null;
        }
        Class[] clsArr = new Class[stubArgs];
        int i2 = 0;
        if (is64Bit2) {
            while (i2 < stubArgs) {
                clsArr[i2] = Long.TYPE;
                i2++;
            }
        } else {
            while (i2 < stubArgs) {
                clsArr[i2] = Integer.TYPE;
                i2++;
            }
        }
        return clsArr;
    }

    public static HookMethodEntity getHookMethodEntity(Member origin, XposedBridge.AdditionalHookInfo additionalHookInfo) {
        Class<?> cls;
        Class<?>[] parameterTypes;
        if (support()) {
            boolean isStatic = Modifier.isStatic(origin.getModifiers());
            if (origin instanceof Method) {
                Method method = (Method) origin;
                cls = method.getReturnType();
                parameterTypes = method.getParameterTypes();
            } else if (!(origin instanceof Constructor)) {
                return null;
            } else {
                cls = Void.TYPE;
                parameterTypes = ((Constructor) origin).getParameterTypes();
            }
            if (ParamWrapper.support(cls)) {
                int i2 = !isStatic ? 1 : 0;
                if (parameterTypes != null) {
                    i2 += parameterTypes.length;
                    if (i2 > MAX_STUB_ARGS) {
                        return null;
                    }
                    if (is64Bit && i2 > 7) {
                        return null;
                    }
                    for (Class<?> cls2 : parameterTypes) {
                        if (!ParamWrapper.support(cls2)) {
                            return null;
                        }
                    }
                } else {
                    parameterTypes = new Class[0];
                }
                synchronized (HookStubManager.class) {
                    StubMethodsInfo stubMethodPair = getStubMethodPair(is64Bit, i2);
                    if (stubMethodPair == null) {
                        return null;
                    }
                    HookMethodEntity hookMethodEntity = new HookMethodEntity(origin, stubMethodPair.hook, stubMethodPair.backup);
                    hookMethodEntity.retType = cls;
                    hookMethodEntity.parType = parameterTypes;
                    if (hasStubBackup && !tryCompileAndResolveCallOriginMethod(hookMethodEntity.backup, stubMethodPair.args, stubMethodPair.index)) {
                        DexLog.w("internal stub <" + hookMethodEntity.hook.getName() + "> call origin compile failure, skip use internal stub");
                        return null;
                    }
                    int methodId = getMethodId(stubMethodPair.args, stubMethodPair.index);
                    originMethods[methodId] = origin;
                    hookMethodEntities[methodId] = hookMethodEntity;
                    additionalHookInfos[methodId] = additionalHookInfo;
                    return hookMethodEntity;
                }
            }
            return null;
        }
        return null;
    }

    public static String getHookMethodName(int index) {
        return "stub_hook_" + index;
    }

    public static int getMatchStubArgsCount(int stubArgs) {
        while (stubArgs <= MAX_STUB_ARGS) {
            if (curUseStubIndexes[stubArgs].get() < stubSizes[stubArgs]) {
                return stubArgs;
            }
            stubArgs++;
        }
        return -1;
    }

    public static int getMethodId(int args, int index) {
        for (int i2 = 0; i2 < args; i2++) {
            index += stubSizes[i2];
        }
        return index;
    }

    private static synchronized StubMethodsInfo getStubMethodPair(boolean is64Bit2, int stubArgs) {
        synchronized (HookStubManager.class) {
            int matchStubArgsCount = getMatchStubArgsCount(stubArgs);
            if (matchStubArgsCount < 0) {
                return null;
            }
            int andIncrement = curUseStubIndexes[matchStubArgsCount].getAndIncrement();
            Class[] findMethodParTypes = getFindMethodParTypes(is64Bit2, matchStubArgsCount);
            try {
                if (is64Bit2) {
                    Method declaredMethod = MethodHookerStubs64.class.getDeclaredMethod(getHookMethodName(andIncrement), findMethodParTypes);
                    Method declaredMethod2 = hasStubBackup ? MethodHookerStubs64.class.getDeclaredMethod(getBackupMethodName(andIncrement), findMethodParTypes) : StubMethodsFactory.getStubMethod();
                    if (declaredMethod != null && declaredMethod2 != null) {
                        return new StubMethodsInfo(matchStubArgsCount, andIncrement, declaredMethod, declaredMethod2);
                    }
                    return null;
                }
                Method declaredMethod3 = MethodHookerStubs32.class.getDeclaredMethod(getHookMethodName(andIncrement), findMethodParTypes);
                Method declaredMethod4 = hasStubBackup ? MethodHookerStubs32.class.getDeclaredMethod(getBackupMethodName(andIncrement), findMethodParTypes) : StubMethodsFactory.getStubMethod();
                if (declaredMethod3 != null && declaredMethod4 != null) {
                    return new StubMethodsInfo(matchStubArgsCount, andIncrement, declaredMethod3, declaredMethod4);
                }
                return null;
            } catch (Throwable unused) {
                return null;
            }
        }
    }

    private static boolean hasArgs(long... args) {
        return args != null && args.length > 0;
    }

    public static long hookBridge(int id, CallOriginCallBack callOrigin, long... stubArgs) throws Throwable {
        Object obj;
        Object[] objArr;
        Member member = originMethods[id];
        HookMethodEntity hookMethodEntity = hookMethodEntities[id];
        if (hasArgs(stubArgs)) {
            obj = hookMethodEntity.getThis(stubArgs[0]);
            objArr = hookMethodEntity.getArgs(stubArgs);
        } else {
            obj = null;
            objArr = null;
        }
        if (XposedBridge.disableHooks) {
            if (hasStubBackup) {
                return callOrigin.call(stubArgs);
            }
            return callOrigin(hookMethodEntity, member, obj, objArr);
        }
        DexLog.printMethodHookIn(member);
        Object[] snapshot = additionalHookInfos[id].callbacks.getSnapshot();
        if (snapshot != null && snapshot.length != 0) {
            XC_MethodHook.MethodHookParam methodHookParam = new XC_MethodHook.MethodHookParam();
            methodHookParam.method = member;
            methodHookParam.thisObject = obj;
            methodHookParam.args = objArr;
            int i2 = 0;
            while (true) {
                try {
                    ((XC_MethodHook) snapshot[i2]).callBeforeHookedMethod(methodHookParam);
                    if (methodHookParam.returnEarly) {
                        i2++;
                        break;
                    }
                } catch (Throwable unused) {
                    methodHookParam.setResult(null);
                    methodHookParam.returnEarly = false;
                }
                i2++;
                if (i2 >= snapshot.length) {
                    break;
                }
            }
            if (!methodHookParam.returnEarly) {
                try {
                    if (hasStubBackup) {
                        methodHookParam.setResult(hookMethodEntity.getResult(callOrigin.call(hookMethodEntity.getArgsAddress(stubArgs, methodHookParam.args))));
                    } else {
                        methodHookParam.setResult(SandHook.callOriginMethod(member, hookMethodEntity.backup, obj, methodHookParam.args));
                    }
                } catch (Throwable th) {
                    XposedBridge.log(th);
                    methodHookParam.setThrowable(th);
                }
            }
            int i4 = i2 - 1;
            do {
                Object result = methodHookParam.getResult();
                Throwable throwable = methodHookParam.getThrowable();
                try {
                    ((XC_MethodHook) snapshot[i4]).callAfterHookedMethod(methodHookParam);
                } catch (Throwable th2) {
                    XposedBridge.log(th2);
                    if (throwable == null) {
                        methodHookParam.setResult(result);
                    } else {
                        methodHookParam.setThrowable(throwable);
                    }
                }
                i4--;
            } while (i4 >= 0);
            if (!methodHookParam.hasThrowable()) {
                return hookMethodEntity.getResultAddress(methodHookParam.getResult());
            }
            throw methodHookParam.getThrowable();
        } else if (hasStubBackup) {
            return callOrigin.call(stubArgs);
        } else {
            return callOrigin(hookMethodEntity, member, obj, objArr);
        }
    }

    public static boolean support() {
        return MAX_STUB_ARGS > 0 && SandHook.canGetObject() && SandHook.canGetObjectAddress();
    }

    public static boolean tryCompileAndResolveCallOriginMethod(Method backupMethod, int args, int index) {
        Method callOriginMethod = getCallOriginMethod(args, index);
        if (callOriginMethod != null) {
            SandHookMethodResolver.resolveMethod(callOriginMethod, backupMethod);
            return SandHook.compileMethod(callOriginMethod);
        }
        return false;
    }

    public static Object hookBridge(Member origin, Method backup, XposedBridge.AdditionalHookInfo additionalHookInfo, Object thiz, Object... args) throws Throwable {
        if (XposedBridge.disableHooks) {
            return SandHook.callOriginMethod(origin, backup, thiz, args);
        }
        DexLog.printMethodHookIn(origin);
        Object[] snapshot = additionalHookInfo.callbacks.getSnapshot();
        if (snapshot != null && snapshot.length != 0) {
            XC_MethodHook.MethodHookParam methodHookParam = new XC_MethodHook.MethodHookParam();
            methodHookParam.method = origin;
            methodHookParam.thisObject = thiz;
            methodHookParam.args = args;
            int i2 = 0;
            while (true) {
                try {
                    ((XC_MethodHook) snapshot[i2]).callBeforeHookedMethod(methodHookParam);
                    if (methodHookParam.returnEarly) {
                        i2++;
                        break;
                    }
                } catch (Throwable unused) {
                    methodHookParam.setResult(null);
                    methodHookParam.returnEarly = false;
                }
                i2++;
                if (i2 >= snapshot.length) {
                    break;
                }
            }
            if (!methodHookParam.returnEarly) {
                try {
                    methodHookParam.setResult(SandHook.callOriginMethod(origin, backup, thiz, methodHookParam.args));
                } catch (Throwable th) {
                    XposedBridge.log(th);
                    methodHookParam.setThrowable(th);
                }
            }
            int i4 = i2 - 1;
            do {
                Object result = methodHookParam.getResult();
                Throwable throwable = methodHookParam.getThrowable();
                try {
                    ((XC_MethodHook) snapshot[i4]).callAfterHookedMethod(methodHookParam);
                } catch (Throwable th2) {
                    XposedBridge.log(th2);
                    if (throwable == null) {
                        methodHookParam.setResult(result);
                    } else {
                        methodHookParam.setThrowable(throwable);
                    }
                }
                i4--;
            } while (i4 >= 0);
            if (!methodHookParam.hasThrowable()) {
                return methodHookParam.getResult();
            }
            throw methodHookParam.getThrowable();
        }
        return SandHook.callOriginMethod(origin, backup, thiz, args);
    }
}
