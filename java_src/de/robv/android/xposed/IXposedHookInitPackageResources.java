package de.robv.android.xposed;

import de.robv.android.xposed.callbacks.XC_InitPackageResources;
/* loaded from: classes3.dex */
public interface IXposedHookInitPackageResources extends IXposedMod {

    /* loaded from: classes3.dex */
    public static final class Wrapper extends XC_InitPackageResources {
        private final IXposedHookInitPackageResources instance;

        public Wrapper(IXposedHookInitPackageResources instance) {
            this.instance = instance;
        }

        @Override // de.robv.android.xposed.IXposedHookInitPackageResources
        public void handleInitPackageResources(XC_InitPackageResources.InitPackageResourcesParam resparam) throws Throwable {
            this.instance.handleInitPackageResources(resparam);
        }
    }

    void handleInitPackageResources(XC_InitPackageResources.InitPackageResourcesParam resparam) throws Throwable;
}
