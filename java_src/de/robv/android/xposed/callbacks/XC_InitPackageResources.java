package de.robv.android.xposed.callbacks;

import de.robv.android.xposed.IXposedHookInitPackageResources;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.callbacks.XCallback;
/* loaded from: classes3.dex */
public abstract class XC_InitPackageResources extends XCallback implements IXposedHookInitPackageResources {

    /* loaded from: classes3.dex */
    public static final class InitPackageResourcesParam extends XCallback.Param {
        public String packageName;

        public InitPackageResourcesParam(XposedBridge.CopyOnWriteSortedSet<XC_InitPackageResources> callbacks) {
            super(callbacks);
        }
    }

    public XC_InitPackageResources() {
    }

    @Override // de.robv.android.xposed.callbacks.XCallback
    protected void call(XCallback.Param param) throws Throwable {
        if (param instanceof InitPackageResourcesParam) {
            handleInitPackageResources((InitPackageResourcesParam) param);
        }
    }

    public XC_InitPackageResources(int priority) {
        super(priority);
    }
}
