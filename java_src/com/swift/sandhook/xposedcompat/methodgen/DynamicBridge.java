package com.swift.sandhook.xposedcompat.methodgen;

import android.os.Trace;
import com.swift.sandhook.SandHook;
import com.swift.sandhook.blacklist.HookBlackList;
import com.swift.sandhook.wrapper.HookWrapper;
import com.swift.sandhook.xposedcompat.XposedCompat;
import com.swift.sandhook.xposedcompat.classloaders.ProxyClassLoader;
import com.swift.sandhook.xposedcompat.hookstub.HookMethodEntity;
import com.swift.sandhook.xposedcompat.hookstub.HookStubManager;
import com.swift.sandhook.xposedcompat.utils.DexLog;
import com.swift.sandhook.xposedcompat.utils.FileUtils;
import de.robv.android.xposed.XposedBridge;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public final class DynamicBridge {
    private static HookMaker defaultHookMaker;
    private static File dexDir;
    private static final AtomicBoolean dexPathInited;
    private static final Map<Member, HookMethodEntity> entityMap;
    private static final HashMap<Member, Method> hookedInfo;

    static {
        defaultHookMaker = XposedCompat.useNewCallBackup ? new HookerDexMakerNew() : new HookerDexMaker();
        dexPathInited = new AtomicBoolean(false);
        entityMap = new HashMap();
        hookedInfo = new HashMap<>();
    }

    private static boolean checkMember(Member member) {
        if ((member instanceof Method) || (member instanceof Constructor)) {
            return true;
        }
        if (member.getDeclaringClass().isInterface()) {
            DexLog.e("Cannot hook interfaces: " + member.toString());
            return false;
        } else if (Modifier.isAbstract(member.getModifiers())) {
            DexLog.e("Cannot hook abstract methods: " + member.toString());
            return false;
        } else {
            DexLog.e("Only methods and constructors can be hooked: " + member.toString());
            return false;
        }
    }

    public static void clearOatFile() {
        File file = new File(XposedCompat.getCacheDir().getAbsolutePath(), "/sandxposed/oat/");
        if (file.exists()) {
            try {
                FileUtils.delete(file);
                file.mkdirs();
            } catch (Throwable unused) {
            }
        }
    }

    public static synchronized void hookMethod(Member hookMethod, XposedBridge.AdditionalHookInfo additionalHookInfo) {
        HookMaker hookMaker;
        synchronized (DynamicBridge.class) {
            if (checkMember(hookMethod)) {
                if (!hookedInfo.containsKey(hookMethod) && !entityMap.containsKey(hookMethod)) {
                    if (dexPathInited.compareAndSet(false, true)) {
                        try {
                            File file = new File(XposedCompat.getCacheDir().getAbsolutePath(), "/sandxposed/");
                            dexDir = file;
                            if (!file.exists()) {
                                dexDir.mkdirs();
                            }
                        } catch (Throwable th) {
                            DexLog.e("error when init dex path", th);
                        }
                    }
                    Trace.beginSection("SandHook-Xposed");
                    long currentTimeMillis = System.currentTimeMillis();
                    String str = null;
                    HookMethodEntity hookMethodEntity = (!XposedCompat.useInternalStub || HookBlackList.canNotHookByStub(hookMethod) || HookBlackList.canNotHookByBridge(hookMethod)) ? null : HookStubManager.getHookMethodEntity(hookMethod, additionalHookInfo);
                    if (hookMethodEntity != null) {
                        SandHook.hook(new HookWrapper.HookEntity(hookMethod, hookMethodEntity.hook, hookMethodEntity.backup, false));
                        entityMap.put(hookMethod, hookMethodEntity);
                    } else {
                        if (HookBlackList.canNotHookByBridge(hookMethod)) {
                            hookMaker = new HookerDexMaker();
                        } else {
                            hookMaker = defaultHookMaker;
                        }
                        ProxyClassLoader proxyClassLoader = new ProxyClassLoader(DynamicBridge.class.getClassLoader(), hookMethod.getDeclaringClass().getClassLoader());
                        File file2 = dexDir;
                        if (file2 != null) {
                            str = file2.getAbsolutePath();
                        }
                        hookMaker.start(hookMethod, additionalHookInfo, proxyClassLoader, str);
                        hookedInfo.put(hookMethod, hookMaker.getCallBackupMethod());
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("hook method <");
                    sb.append(hookMethod.toString());
                    sb.append("> cost ");
                    sb.append(System.currentTimeMillis() - currentTimeMillis);
                    sb.append(" ms, by ");
                    sb.append(hookMethodEntity != null ? "internal stub" : "dex maker");
                    DexLog.d(sb.toString());
                    Trace.endSection();
                    return;
                }
                DexLog.w("already hook method:" + hookMethod.toString());
            }
        }
    }
}
