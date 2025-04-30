package de.robv.android.xposed.callbacks;

import android.content.pm.ApplicationInfo;
import com.swift.sandhook.xposedcompat.XposedCompat;
import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.callbacks.XCallback;
/* loaded from: classes.dex */
public abstract class XC_LoadPackage extends XCallback implements IXposedHookLoadPackage {

    /* loaded from: classes.dex */
    public static final class LoadPackageParam extends XCallback.Param {
        public ApplicationInfo appInfo;
        public ClassLoader classLoader;
        public boolean isFirstApplication;
        public String packageName;
        public String processName;

        public LoadPackageParam(XposedBridge.CopyOnWriteSortedSet<XC_LoadPackage> callbacks) {
            super(callbacks);
            this.packageName = XposedCompat.packageName;
            this.processName = XposedCompat.processName;
            this.classLoader = XposedCompat.classLoader;
            this.appInfo = XposedCompat.context.getApplicationInfo();
            this.isFirstApplication = XposedCompat.isFirstApplication;
        }
    }

    public XC_LoadPackage() {
    }

    @Override // de.robv.android.xposed.callbacks.XCallback
    protected void call(XCallback.Param param) throws Throwable {
        if (param instanceof LoadPackageParam) {
            handleLoadPackage((LoadPackageParam) param);
        }
    }

    public XC_LoadPackage(int priority) {
        super(priority);
    }
}
