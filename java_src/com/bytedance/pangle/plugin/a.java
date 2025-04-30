package com.bytedance.pangle.plugin;

import com.bytedance.pangle.ZeusPluginStateListener;
import com.bytedance.pangle.e.a.e;
import com.bytedance.pangle.log.ZeusLogger;
import java.io.File;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final File f10280a;

    /* renamed from: b  reason: collision with root package name */
    private final String f10281b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, File file) {
        this.f10280a = file;
        this.f10281b = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        e a4 = com.bytedance.pangle.e.a.d.a(this.f10280a);
        if (a4 == null) {
            String str = this.f10281b;
            ZeusPluginStateListener.postStateChange(str, 7, " read local file package info failed !!! pluginPkg = " + this.f10281b + " mApkFile.exists = " + this.f10280a.exists());
            StringBuilder sb = new StringBuilder("PluginInstallRunnable read local file package info failed !!! pluginPkg = ");
            sb.append(this.f10281b);
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, sb.toString());
            return false;
        }
        Plugin plugin = PluginManager.getInstance().getPlugin(a4.f10209a);
        if (plugin == null) {
            String str2 = this.f10281b;
            ZeusPluginStateListener.postStateChange(str2, 7, " plugin == null !!! pluginPkg = " + this.f10281b);
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "PluginInstallRunnable cannot query valid plugin !!! packageName = " + a4.f10209a);
            return false;
        }
        boolean install = plugin.install(this.f10280a, a4);
        if (install) {
            ZeusPluginStateListener.postStateChange(a4.f10209a, 6, new Object[0]);
        } else {
            ZeusPluginStateListener.postStateChange(a4.f10209a, 7, "Internal error.");
        }
        return install;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a();
    }
}
