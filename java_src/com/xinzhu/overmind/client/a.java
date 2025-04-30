package com.xinzhu.overmind.client;
/* compiled from: ClientConfiguration.java */
/* loaded from: classes.dex */
public abstract class a {
    public abstract String getHostPackageName();

    public abstract String getMainAuthorityPrefix();

    public abstract String getMainPackageName();

    public abstract String getPluginAuthorityPrefix();

    public abstract String getPluginPackageName();

    public abstract boolean ifDisableDaemonService();

    public abstract boolean ifDisablePluginPackageAutoManage();

    public abstract boolean ifDisableVirtualDeviceForPackage(String packageName, int userId);

    public boolean isHideRoot() {
        return true;
    }

    public boolean isHideXposed() {
        return false;
    }

    public abstract boolean isPluginValid();

    public boolean isUseGlobalFakePath() {
        return false;
    }
}
