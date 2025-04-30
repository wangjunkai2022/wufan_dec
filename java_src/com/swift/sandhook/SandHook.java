package com.swift.sandhook;

import com.swift.sandhook.annotation.HookMode;
import com.swift.sandhook.blacklist.HookBlackList;
import com.swift.sandhook.utils.ClassStatusUtils;
import com.swift.sandhook.utils.FileUtils;
import com.swift.sandhook.utils.ReflectionUtils;
import com.swift.sandhook.utils.Unsafe;
import com.swift.sandhook.wrapper.HookErrorException;
import com.swift.sandhook.wrapper.HookWrapper;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import net.lingala.zip4j.util.e;
/* loaded from: classes.dex */
public class SandHook {
    public static Class artMethodClass;
    private static HookModeCallBack hookModeCallBack;
    private static HookResultCallBack hookResultCallBack;
    public static Field nativePeerField;
    public static int testAccessFlag;
    public static Object testOffsetArtMethod1;
    public static Object testOffsetArtMethod2;
    public static Method testOffsetMethod1;
    public static Method testOffsetMethod2;
    static Map<Member, HookWrapper.HookEntity> globalHookEntityMap = new ConcurrentHashMap();
    static Map<Method, HookWrapper.HookEntity> globalBackupMap = new ConcurrentHashMap();

    @FunctionalInterface
    /* loaded from: classes.dex */
    public interface HookModeCallBack {
        int hookMode(Member originMethod);
    }

    @FunctionalInterface
    /* loaded from: classes.dex */
    public interface HookResultCallBack {
        void hookResult(boolean success, HookWrapper.HookEntity hookEntity);
    }

    static {
        init();
    }

    public static native void MakeInitializedClassVisibilyInitialized(long self);

    public static void addHookClass(Class... hookWrapperClass) throws HookErrorException {
        HookWrapper.addHookClass(hookWrapperClass);
    }

    public static final Object callOriginByBackup(Method backupMethod, Object thiz, Object... args) throws Throwable {
        HookWrapper.HookEntity hookEntity = globalBackupMap.get(backupMethod);
        if (hookEntity == null) {
            return null;
        }
        return callOriginMethod(hookEntity.backupIsStub, hookEntity.target, backupMethod, thiz, args);
    }

    public static final Object callOriginMethod(Member originMethod, Object thiz, Object... args) throws Throwable {
        Method method;
        HookWrapper.HookEntity hookEntity = globalHookEntityMap.get(originMethod);
        if (hookEntity == null || (method = hookEntity.backup) == null) {
            return null;
        }
        return callOriginMethod(hookEntity.backupIsStub, originMethod, method, thiz, args);
    }

    public static native boolean canGetObject();

    public static boolean canGetObjectAddress() {
        return Unsafe.support();
    }

    public static native boolean compileMethod(Member member);

    public static native boolean deCompileMethod(Member member, boolean disableJit);

    public static native boolean disableDex2oatInline(boolean disableDex2oat);

    public static native boolean disableVMInline();

    public static final void ensureBackupMethod(Method backupMethod) {
        HookWrapper.HookEntity hookEntity;
        if (SandHookConfig.SDK_INT >= 24 && (hookEntity = globalBackupMap.get(backupMethod)) != null) {
            ensureDeclareClass(hookEntity.target, backupMethod);
        }
    }

    public static native void ensureDeclareClass(Member origin, Method backup);

    public static native void ensureMethodCached(Method hook, Method backup);

    public static long getArtMethod(Member member) {
        return SandHookMethodResolver.getArtMethod(member);
    }

    private static Object[] getFakeArgs(Method method) {
        Class<?>[] parameterTypes = method.getParameterTypes();
        if (parameterTypes == null || parameterTypes.length == 0) {
            return new Object[]{new Object()};
        }
        return null;
    }

    public static Field getField(Class topClass, String fieldName) throws NoSuchFieldException {
        while (topClass != null && topClass != Object.class) {
            try {
                Field declaredField = topClass.getDeclaredField(fieldName);
                declaredField.setAccessible(true);
                return declaredField;
            } catch (Exception unused) {
                topClass = topClass.getSuperclass();
            }
        }
        throw new NoSuchFieldException(fieldName);
    }

    public static Object getJavaMethod(String className, String methodName) {
        if (className == null) {
            return null;
        }
        try {
            return Class.forName(className).getDeclaredMethod(methodName, new Class[0]);
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return null;
        }
    }

    public static Object getObject(long address) {
        if (address == 0) {
            return null;
        }
        return getObjectNative(getThreadId(), address);
    }

    public static long getObjectAddress(Object object) {
        return Unsafe.getObjectAddress(object);
    }

    public static native Object getObjectNative(long thread, long address);

    public static long getThreadId() {
        Field field = nativePeerField;
        if (field == null) {
            return 0L;
        }
        try {
            if (field.getType() == Integer.TYPE) {
                return nativePeerField.getInt(Thread.currentThread());
            }
            return nativePeerField.getLong(Thread.currentThread());
        } catch (IllegalAccessException unused) {
            return 0L;
        }
    }

    public static boolean hasJavaArtMethod() {
        if (SandHookConfig.SDK_INT >= 26) {
            return false;
        }
        if (artMethodClass != null) {
            return true;
        }
        try {
            if (SandHookConfig.initClassLoader == null) {
                artMethodClass = Class.forName("java.lang.reflect.ArtMethod");
            } else {
                artMethodClass = Class.forName("java.lang.reflect.ArtMethod", true, SandHookConfig.initClassLoader);
            }
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static synchronized void hook(HookWrapper.HookEntity entity) throws HookErrorException {
        int hookMethod;
        synchronized (SandHook.class) {
            try {
                if (entity != null) {
                    Member member = entity.target;
                    Method method = entity.hook;
                    Method method2 = entity.backup;
                    if (member != null && method != null) {
                        if (!globalHookEntityMap.containsKey(member)) {
                            if (!HookBlackList.canNotHook(member)) {
                                if (SandHookConfig.delayHook && PendingHookHandler.canWork() && ClassStatusUtils.isStaticAndNoInited(entity.target)) {
                                    PendingHookHandler.addPendingHook(entity);
                                    return;
                                }
                                if (entity.initClass) {
                                    resolveStaticMethod(member);
                                    MakeInitializedClassVisibilyInitialized(getThreadId());
                                }
                                resolveStaticMethod(method2);
                                if (method2 != null && entity.resolveDexCache) {
                                    SandHookMethodResolver.resolveMethod(method, method2);
                                }
                                if (member instanceof Method) {
                                    ((Method) member).setAccessible(true);
                                }
                                HookModeCallBack hookModeCallBack2 = hookModeCallBack;
                                int hookMode = hookModeCallBack2 != null ? hookModeCallBack2.hookMode(member) : 0;
                                globalHookEntityMap.put(entity.target, entity);
                                if (hookMode != 0) {
                                    hookMethod = hookMethod(member, method, method2, hookMode);
                                } else {
                                    HookMode hookMode2 = (HookMode) method.getAnnotation(HookMode.class);
                                    hookMethod = hookMethod(member, method, method2, hookMode2 == null ? 0 : hookMode2.value());
                                }
                                if (hookMethod > 0 && method2 != null) {
                                    method2.setAccessible(true);
                                }
                                entity.hookMode = hookMethod;
                                HookResultCallBack hookResultCallBack2 = hookResultCallBack;
                                if (hookResultCallBack2 != null) {
                                    hookResultCallBack2.hookResult(hookMethod > 0, entity);
                                }
                                if (hookMethod >= 0) {
                                    Method method3 = entity.backup;
                                    if (method3 != null) {
                                        globalBackupMap.put(method3, entity);
                                    }
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("method <");
                                    sb.append(entity.target.toString());
                                    sb.append("> hook <");
                                    sb.append(hookMethod == 1 ? "inline" : "replacement");
                                    sb.append("> success!");
                                    HookLog.d(sb.toString());
                                    return;
                                }
                                globalHookEntityMap.remove(entity.target);
                                throw new HookErrorException("hook method <" + entity.target.toString() + "> error in native!");
                            }
                            throw new HookErrorException("method <" + entity.target.toString() + "> can not hook, because of in blacklist!");
                        }
                        throw new HookErrorException("method <" + entity.target.toString() + "> has been hooked!");
                    }
                    throw new HookErrorException("null input");
                }
                throw new HookErrorException("null hook entity");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static native int hookMethod(Member originMethod, Method hookMethod, Method backupMethod, int hookMode);

    private static boolean init() {
        initTestOffset();
        initThreadPeer();
        SandHookMethodResolver.init();
        return initNative(SandHookConfig.SDK_INT, SandHookConfig.DEBUG);
    }

    public static native boolean initForPendingHook();

    private static native boolean initNative(int sdk, boolean debug);

    private static void initTestAccessFlag() {
        try {
            if (hasJavaArtMethod()) {
                loadArtMethod();
                testAccessFlag = ((Integer) getField(artMethodClass, "accessFlags").get(testOffsetArtMethod1)).intValue();
            } else {
                testAccessFlag = ((Integer) getField(Method.class, "accessFlags").get(testOffsetMethod1)).intValue();
            }
        } catch (Exception unused) {
        }
    }

    private static void initTestOffset() {
        ArtMethodSizeTest.method1();
        ArtMethodSizeTest.method2();
        try {
            testOffsetMethod1 = ArtMethodSizeTest.class.getDeclaredMethod("method1", new Class[0]);
            testOffsetMethod2 = ArtMethodSizeTest.class.getDeclaredMethod("method2", new Class[0]);
            initTestAccessFlag();
        } catch (NoSuchMethodException e4) {
            throw new RuntimeException("SandHook init error", e4);
        }
    }

    private static void initThreadPeer() {
        try {
            nativePeerField = getField(Thread.class, "nativePeer");
        } catch (NoSuchFieldException unused) {
        }
    }

    public static native boolean is64Bit();

    private static void loadArtMethod() {
        try {
            Field field = getField(Method.class, "artMethod");
            testOffsetArtMethod1 = field.get(testOffsetMethod1);
            testOffsetArtMethod2 = field.get(testOffsetMethod2);
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
        } catch (NoSuchFieldException e5) {
            e5.printStackTrace();
        }
    }

    public static boolean passApiCheck() {
        return ReflectionUtils.passApiCheck();
    }

    public static boolean resolveStaticMethod(Member method) {
        if (method == null) {
            return true;
        }
        try {
            if ((method instanceof Method) && Modifier.isStatic(method.getModifiers())) {
                ((Method) method).setAccessible(true);
                ((Method) method).invoke(new Object(), getFakeArgs((Method) method));
            }
        } catch (ExceptionInInitializerError unused) {
            return false;
        } catch (Throwable unused2) {
        }
        return true;
    }

    public static native void setHookMode(int hookMode);

    public static void setHookModeCallBack(HookModeCallBack hookModeCallBack2) {
        hookModeCallBack = hookModeCallBack2;
    }

    public static void setHookResultCallBack(HookResultCallBack hookResultCallBack2) {
        hookResultCallBack = hookResultCallBack2;
    }

    public static native void setInlineSafeCheck(boolean check);

    public static native boolean setNativeEntry(Member origin, Member hook, long nativeEntry);

    public static native void skipAllSafeCheck(boolean skip);

    public static boolean tryDisableProfile(String selfPackageName) {
        if (SandHookConfig.SDK_INT < 24) {
            return false;
        }
        try {
            File file = new File("/data/misc/profiles/cur/" + SandHookConfig.curUser + e.F0 + selfPackageName + "/primary.prof");
            if (file.getParentFile().exists()) {
                try {
                    file.delete();
                    file.createNewFile();
                } catch (Throwable unused) {
                }
                FileUtils.chmod(file.getAbsolutePath(), 256);
                return true;
            }
            return false;
        } catch (Throwable unused2) {
            return false;
        }
    }

    public static void addHookClass(ClassLoader classLoader, Class... hookWrapperClass) throws HookErrorException {
        HookWrapper.addHookClass(classLoader, hookWrapperClass);
    }

    public static final Object callOriginMethod(Member originMethod, Method backupMethod, Object thiz, Object[] args) throws Throwable {
        return callOriginMethod(true, originMethod, backupMethod, thiz, args);
    }

    public static final Object callOriginMethod(boolean backupIsStub, Member originMethod, Method backupMethod, Object thiz, Object[] args) throws Throwable {
        if (!backupIsStub && SandHookConfig.SDK_INT >= 24) {
            originMethod.getDeclaringClass();
            ensureDeclareClass(originMethod, backupMethod);
        }
        if (Modifier.isStatic(originMethod.getModifiers())) {
            try {
                return backupMethod.invoke(null, args);
            } catch (InvocationTargetException e4) {
                if (e4.getCause() != null) {
                    throw e4.getCause();
                }
                throw e4;
            }
        }
        try {
            return backupMethod.invoke(thiz, args);
        } catch (InvocationTargetException e5) {
            if (e5.getCause() != null) {
                throw e5.getCause();
            }
            throw e5;
        }
    }
}
