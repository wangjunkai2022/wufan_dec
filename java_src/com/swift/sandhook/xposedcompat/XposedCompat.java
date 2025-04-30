package com.swift.sandhook.xposedcompat;

import android.app.Application;
import android.content.Context;
import com.swift.sandhook.xposedcompat.classloaders.ProxyClassLoader;
import com.swift.sandhook.xposedcompat.methodgen.DynamicBridge;
import com.swift.sandhook.xposedcompat.utils.ApplicationUtils;
import com.swift.sandhook.xposedcompat.utils.DexMakerUtils;
import com.swift.sandhook.xposedcompat.utils.FileUtils;
import com.swift.sandhook.xposedcompat.utils.ProcessUtils;
import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedInit;
import de.robv.android.xposed.callbacks.XC_LoadPackage;
import de.robv.android.xposed.callbacks.XCallback;
import java.io.File;
/* loaded from: classes.dex */
public class XposedCompat {
    public static File cacheDir = null;
    public static volatile ClassLoader classLoader = null;
    public static Context context = null;
    public static boolean isFirstApplication = false;
    public static String packageName = null;
    public static String processName = null;
    public static volatile boolean retryWhenCallOriginError = false;
    private static ClassLoader sandHookXposedClassLoader = null;
    public static volatile boolean useInternalStub = true;
    public static volatile boolean useNewCallBackup = true;

    public static void addXposedModuleCallback(IXposedHookLoadPackage module) {
        XposedBridge.hookLoadPackage(new IXposedHookLoadPackage.Wrapper(module));
    }

    public static void callXposedModuleInit() throws Throwable {
        XC_LoadPackage.LoadPackageParam loadPackageParam = new XC_LoadPackage.LoadPackageParam(XposedBridge.sLoadedPackageCallbacks);
        Application currentApplication = ApplicationUtils.currentApplication();
        if (currentApplication != null) {
            if (loadPackageParam.packageName == null) {
                loadPackageParam.packageName = currentApplication.getPackageName();
            }
            if (loadPackageParam.processName == null) {
                loadPackageParam.processName = ProcessUtils.getProcessName(currentApplication);
            }
            if (loadPackageParam.classLoader == null) {
                loadPackageParam.classLoader = currentApplication.getClassLoader();
            }
            if (loadPackageParam.appInfo == null) {
                loadPackageParam.appInfo = currentApplication.getApplicationInfo();
            }
            if (cacheDir == null) {
                currentApplication.getCacheDir();
            }
        }
        XCallback.callAll(loadPackageParam);
    }

    public static boolean clearCache() {
        try {
            FileUtils.delete(getCacheDir());
            getCacheDir().mkdirs();
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void clearOatCache() {
        DynamicBridge.clearOatFile();
    }

    public static File getCacheDir() {
        if (cacheDir == null) {
            if (context == null) {
                context = ApplicationUtils.currentApplication();
            }
            if (context != null) {
                File cacheDir2 = context.getCacheDir();
                String str = processName;
                if (str == null) {
                    str = ProcessUtils.getProcessName(context);
                }
                cacheDir = new File(cacheDir2, DexMakerUtils.MD5(str));
            }
        }
        return cacheDir;
    }

    public static ClassLoader getSandHookXposedClassLoader(ClassLoader appOriginClassLoader, ClassLoader sandBoxHostClassLoader) {
        ClassLoader classLoader2 = sandHookXposedClassLoader;
        if (classLoader2 != null) {
            return classLoader2;
        }
        ProxyClassLoader proxyClassLoader = new ProxyClassLoader(sandBoxHostClassLoader, appOriginClassLoader);
        sandHookXposedClassLoader = proxyClassLoader;
        return proxyClassLoader;
    }

    public static void loadModule(String modulePath, String moduleOdexDir, String moduleSoPath, ClassLoader classLoader2) {
        XposedInit.loadModule(modulePath, moduleOdexDir, moduleSoPath, classLoader2);
    }
}
