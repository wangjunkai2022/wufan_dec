package de.robv.android.xposed;

import de.robv.android.xposed.callbacks.XC_LoadPackage;
/* loaded from: classes.dex */
public interface IXposedHookLoadPackage extends IXposedMod {

    /* loaded from: classes.dex */
    public static final class Wrapper extends XC_LoadPackage {
        private final IXposedHookLoadPackage instance;

        public Wrapper(IXposedHookLoadPackage instance) {
            this.instance = instance;
        }

        @Override // de.robv.android.xposed.IXposedHookLoadPackage
        public void handleLoadPackage(XC_LoadPackage.LoadPackageParam lpparam) throws Throwable {
            this.instance.handleLoadPackage(lpparam);
        }
    }

    void handleLoadPackage(XC_LoadPackage.LoadPackageParam lpparam) throws Throwable;
}
