package com.bytedance.pangle;

import android.app.Application;
import android.content.pm.ProviderInfo;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.Keep;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.plugin.Plugin;
import com.bytedance.pangle.plugin.PluginManager;
import com.bytedance.pangle.util.FieldUtils;
import com.bytedance.pangle.util.MethodUtils;
import java.util.HashMap;
import java.util.List;
@Keep
/* loaded from: classes2.dex */
public class Zeus {
    private static Application sApplication;
    private static final HashMap<String, ProviderInfo> serverManagerHashMap = new HashMap<>();
    private static volatile boolean onPrivacyAgreed = false;

    public static void addPluginEventCallback(ZeusPluginEventCallback zeusPluginEventCallback) {
        g a4 = g.a();
        if (zeusPluginEventCallback != null) {
            synchronized (a4.f10258c) {
                a4.f10258c.add(zeusPluginEventCallback);
            }
        }
    }

    public static void fetchPlugin(final String str) {
        com.bytedance.pangle.download.b a4 = com.bytedance.pangle.download.b.a();
        if (com.bytedance.pangle.c.d.a(getAppApplication())) {
            final com.bytedance.pangle.download.c a5 = com.bytedance.pangle.download.c.a();
            Runnable runnable = a5.f10187c.get(str);
            if (runnable != null) {
                a5.f10186b.removeCallbacks(runnable);
            }
            Runnable runnable2 = new Runnable() { // from class: com.bytedance.pangle.download.c.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (com.bytedance.pangle.util.b.a(Zeus.getAppApplication())) {
                        c.this.f10186b.postDelayed(this, 1800000L);
                    }
                }
            };
            a5.f10187c.put(str, runnable2);
            a5.f10186b.postDelayed(runnable2, 1800000L);
            com.bytedance.pangle.download.c.a();
            if (a4.f10182a.contains(str)) {
                return;
            }
            a4.f10182a.add(str);
        }
    }

    public static Application getAppApplication() {
        if (sApplication == null) {
            b.a();
            try {
                sApplication = (Application) MethodUtils.invokeMethod(com.bytedance.pangle.c.a.a(), "getApplication", new Object[0]);
            } catch (Throwable unused) {
            }
        }
        return sApplication;
    }

    public static String getHostAbi() {
        return com.bytedance.pangle.c.b.a();
    }

    public static int getHostAbiBit() {
        return com.bytedance.pangle.c.b.b();
    }

    public static int getInstalledPluginVersion(String str) {
        Plugin plugin = PluginManager.getInstance().getPlugin(str);
        if (plugin == null) {
            return -1;
        }
        int version = plugin.getVersion();
        ZeusLogger.d(ZeusLogger.TAG_DOWNLOAD, " getInstalledPluginVersion, " + str + " = " + version);
        return version;
    }

    public static int getMaxInstallVer(String str) {
        if (com.bytedance.pangle.c.d.a(getAppApplication())) {
            return getPlugin(str).getInstalledMaxVer();
        }
        return -1;
    }

    public static Plugin getPlugin(String str) {
        return getPlugin(str, true);
    }

    public static HashMap<String, ProviderInfo> getServerManagerHashMap() {
        return serverManagerHashMap;
    }

    public static boolean hasInit() {
        return g.a().f10256a;
    }

    public static void init(Application application, boolean z3) {
        g.a().a(application);
    }

    public static void installFromDownloadDir() {
        if (com.bytedance.pangle.c.d.a(getAppApplication())) {
            PluginManager.getInstance().installFromDownloadDir();
        }
    }

    public static boolean isPluginInstalled(String str) {
        Plugin plugin = PluginManager.getInstance().getPlugin(str);
        return plugin != null && plugin.isInstalled();
    }

    public static boolean isPluginLoaded(String str) {
        return PluginManager.getInstance().isLoaded(str);
    }

    public static boolean loadPlugin(String str) {
        return PluginManager.getInstance().loadPlugin(str);
    }

    public static synchronized void onPrivacyAgreed() {
        synchronized (Zeus.class) {
        }
    }

    public static void registerPluginStateListener(ZeusPluginStateListener zeusPluginStateListener) {
        g.a().f10257b.add(zeusPluginStateListener);
    }

    public static void removePluginEventCallback(ZeusPluginEventCallback zeusPluginEventCallback) {
        g a4 = g.a();
        if (zeusPluginEventCallback != null) {
            synchronized (a4.f10258c) {
                a4.f10258c.remove(zeusPluginEventCallback);
            }
        }
    }

    public static void setAllowDownloadPlugin(String str, int i2, boolean z3) {
        PluginManager.getInstance().setAllowDownloadPlugin(str, i2, z3);
    }

    public static void setAppContext(Application application) {
        if (application != null && TextUtils.equals(application.getClass().getSimpleName(), "PluginApplicationWrapper")) {
            try {
                sApplication = (Application) FieldUtils.readField(application, "mOriginApplication");
                return;
            } catch (Throwable unused) {
            }
        }
        sApplication = application;
    }

    public static boolean syncInstallPlugin(String str, String str2) {
        c a4 = com.bytedance.pangle.servermanager.b.a();
        if (a4 != null) {
            try {
                return a4.a(str, str2);
            } catch (RemoteException e4) {
                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "syncInstallPlugin error.", e4);
                return false;
            }
        }
        return false;
    }

    public static void unInstallPlugin(String str) {
        PluginManager.getInstance().unInstallPackage(str);
    }

    public static void unregisterPluginStateListener(ZeusPluginStateListener zeusPluginStateListener) {
        List<ZeusPluginStateListener> list = g.a().f10257b;
        if (list != null) {
            list.remove(zeusPluginStateListener);
        }
    }

    public static Plugin getPlugin(String str, boolean z3) {
        if (!hasInit() && com.bytedance.pangle.util.b.a()) {
            throw new RuntimeException("Please init Zeus first!");
        }
        return PluginManager.getInstance().getPlugin(str, z3);
    }
}
