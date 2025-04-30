package de.robv.android.xposed;
/* loaded from: classes3.dex */
public interface IXposedHookZygoteInit extends IXposedMod {

    /* loaded from: classes3.dex */
    public static final class StartupParam {
        public String modulePath;
        public boolean startsSystemServer;
    }

    void initZygote(StartupParam startupParam) throws Throwable;
}
