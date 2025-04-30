package com.bytedance.pangle.plugin;

import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.Keep;
import com.bytedance.pangle.GlobalParam;
import com.bytedance.pangle.PluginClassLoader;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.ZeusApplication;
import com.bytedance.pangle.ZeusConstants;
import com.bytedance.pangle.ZeusPluginStateListener;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.util.e;
import com.bytedance.pangle.util.f;
import com.bytedance.pangle.util.g;
import com.bytedance.pangle.util.j;
import com.bytedance.pangle.util.l;
import com.bytedance.pangle.wrapper.PluginApplicationWrapper;
import com.bytedance.sdk.openadsdk.live.TTLiveConstants;
import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import org.json.JSONObject;
@Keep
/* loaded from: classes2.dex */
public class Plugin {
    public static final int LIFE_INSTALLED = 2;
    public static final int LIFE_LOADED = 3;
    public static final int LIFE_PENDING = 1;
    private static final String TAG = "Plugin";
    private int mApiVersionCode;
    public final String mAppKey;
    public final String mAppSecretKey;
    public ZeusApplication mApplication;
    public PluginClassLoader mClassLoader;
    public PluginApplicationWrapper mHostApplication;
    public ApplicationInfo mHostApplicationInfoHookSomeField;
    private volatile boolean mInitialized;
    private String mInternalPath;
    private int mInternalVersionCode;
    public boolean mIsSupportLibIso;
    public int mMaxVersionCode;
    public int mMinVersionCode;
    public final boolean mOpenLoadClassOpt;
    private String mPackageDir;
    public String mPkgName;
    public Resources mResources;
    public String mSignature;
    public final boolean mUnInstallPluginWhenHostChange;
    private int mVersionCode;
    public HashMap<String, ActivityInfo> pluginActivities = new HashMap<>();
    public HashMap<String, ServiceInfo> pluginServices = new HashMap<>();
    public HashMap<String, ActivityInfo> pluginReceiver = new HashMap<>();
    public HashMap<String, ProviderInfo> pluginProvider = new HashMap<>();
    private volatile int mLifeCycle = 1;
    final Object installLock = new Object();
    final Object initializeLock = new Object();

    public Plugin(JSONObject jSONObject) {
        this.mInternalVersionCode = -1;
        this.mMaxVersionCode = Integer.MAX_VALUE;
        this.mPkgName = jSONObject.getString("packageName");
        this.mMinVersionCode = jSONObject.optInt("minPluginVersion", 0);
        this.mMaxVersionCode = jSONObject.optInt("maxPluginVersion", Integer.MAX_VALUE);
        this.mApiVersionCode = jSONObject.getInt(TTLiveConstants.LIVE_API_VERSION_KEY);
        this.mSignature = jSONObject.optString("signature", "");
        this.mIsSupportLibIso = jSONObject.optBoolean("isSupportLibIsolate", false);
        this.mInternalPath = jSONObject.optString("internalPath", "");
        this.mInternalVersionCode = jSONObject.optInt("internalVersionCode", -1);
        this.mAppKey = jSONObject.optString("appKey", "");
        this.mAppSecretKey = jSONObject.optString("appSecretKey", "");
        this.mOpenLoadClassOpt = jSONObject.optBoolean("loadClassOpt", false);
        this.mUnInstallPluginWhenHostChange = jSONObject.optBoolean("unInstallPluginWhenHostChange", false);
        setupInternalPlugin();
    }

    private boolean checkValid(File file, String str, int i2) {
        if (!TextUtils.equals(this.mPkgName, str)) {
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "Plugin checkValid " + str + " package name not match !!!");
            return false;
        } else if (i2 >= this.mMinVersionCode && i2 <= this.mMaxVersionCode) {
            if (i2 < this.mVersionCode && isInstalled()) {
                String format = String.format(" pluginApk ver[%s] lower than installed plugin[%s].", Integer.valueOf(i2), Integer.valueOf(this.mVersionCode));
                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "Plugin checkValid " + str + format);
                return false;
            } else if (file != null && file.exists()) {
                if (i2 == this.mVersionCode && l.a().f10394a.getString("MD5_".concat(String.valueOf(str)), "").equals(e.a(file))) {
                    ZeusLogger.w(ZeusLogger.TAG_INSTALL, "Plugin checkValid " + str + " pluginApk with the same md5 has already installed.");
                    return false;
                }
                ZeusLogger.i(ZeusLogger.TAG_INSTALL, "Plugin checkValid " + str + ":" + i2 + " true");
                return true;
            } else {
                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "Plugin checkValid " + str + " pluginApk not exist.");
                return false;
            }
        } else {
            String format2 = String.format(" pluginApk ver[%s] not match plugin VerRange[%s, %s].", Integer.valueOf(i2), Integer.valueOf(this.mMinVersionCode), Integer.valueOf(this.mMaxVersionCode));
            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "Plugin checkValid " + str + " " + format2);
            return false;
        }
    }

    private boolean checkVersionValid(int i2, int i4, boolean z3) {
        int a4 = l.a().a(this.mPkgName);
        boolean z4 = false;
        if (a4 > i4) {
            ZeusLogger.w(ZeusLogger.TAG_INIT, "Plugin".concat(String.valueOf(String.format(" checkVersionValid %s apiVersion downgrade , lastApiVersion=%s , currentApiVersion=%s", this.mPkgName, Integer.valueOf(a4), Integer.valueOf(i4)))));
            return false;
        }
        boolean z5 = i2 >= 0 && i2 >= this.mMinVersionCode && i2 <= this.mMaxVersionCode;
        if (z5 && i4 != -1) {
            l a5 = l.a();
            String str = this.mPkgName;
            SharedPreferences sharedPreferences = a5.f10394a;
            int i5 = sharedPreferences.getInt("API_MIN_" + str + "_" + i2, 0);
            l a6 = l.a();
            String str2 = this.mPkgName;
            SharedPreferences sharedPreferences2 = a6.f10394a;
            int i6 = sharedPreferences2.getInt("API_MAX_" + str2 + "_" + i2, Integer.MAX_VALUE);
            int i7 = i6 != 0 ? i6 : Integer.MAX_VALUE;
            if (i4 < i5 || i4 > i7) {
                ZeusLogger.w(ZeusLogger.TAG_INIT, "Plugin".concat(String.valueOf(String.format(" checkVersionValid plugin[%s, ver=%s] is not compatible with api[ver_code=%s], apiCompatibleVer=[%s,%s]", this.mPkgName, Integer.valueOf(this.mVersionCode), Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i7)))));
                z5 = false;
            }
        }
        if (z5 && z3 && com.bytedance.pangle.c.b.b(new File(com.bytedance.pangle.c.c.b(this.mPkgName, i2)))) {
            ZeusLogger.w(ZeusLogger.TAG_INIT, "Plugin".concat(String.valueOf(String.format(" checkVersionValid plugin[%s, ver=%s] not match hostAbi", this.mPkgName, Integer.valueOf(i2)))));
        } else {
            z4 = z5;
        }
        ZeusLogger.i(ZeusLogger.TAG_INIT, "Plugin checkVersionValid, pkg=" + this.mPkgName + ", ver=" + this.mVersionCode + ", valid=" + z4);
        return z4;
    }

    private void deleteIfNeeded() {
        if (com.bytedance.pangle.c.d.a(Zeus.getAppApplication())) {
            if (l.a().f10394a.getBoolean("UNINSTALL__".concat(String.valueOf(this.mPkgName)), false)) {
                l a4 = l.a();
                String str = this.mPkgName;
                SharedPreferences.Editor edit = a4.f10394a.edit();
                edit.remove("UNINSTALL__".concat(String.valueOf(str)));
                edit.apply();
                deleteInstalledPlugin();
                ZeusLogger.w(ZeusLogger.TAG_INIT, "Plugin deleteIfNeeded " + this.mPkgName);
            }
        }
    }

    private void deleteInstalledPlugin() {
        if (TextUtils.isEmpty(this.mPackageDir)) {
            this.mPackageDir = com.bytedance.pangle.c.c.a(this.mPkgName);
        }
        new File(this.mPackageDir).listFiles(new FileFilter() { // from class: com.bytedance.pangle.plugin.Plugin.3
            @Override // java.io.FileFilter
            public final boolean accept(File file) {
                if (file.getName().matches("^version-(\\d+)$")) {
                    l.a().a(Plugin.this.mPkgName, Integer.parseInt(file.getName().split("-")[1]), false);
                }
                return false;
            }
        });
        f.a(this.mPackageDir);
    }

    private void deleteOtherExpiredVer(int i2) {
        if (com.bytedance.pangle.c.d.a(Zeus.getAppApplication())) {
            if (TextUtils.isEmpty(this.mPackageDir)) {
                this.mPackageDir = com.bytedance.pangle.c.c.a(this.mPkgName);
            }
            final String concat = "version-".concat(String.valueOf(i2));
            new File(this.mPackageDir).listFiles(new FileFilter() { // from class: com.bytedance.pangle.plugin.Plugin.4
                @Override // java.io.FileFilter
                public final boolean accept(File file) {
                    if (file != null && !concat.equals(file.getName()) && !"data".equals(file.getName())) {
                        f.a(file.getAbsolutePath());
                        ZeusLogger.w(ZeusLogger.TAG_INIT, "Plugin deleteOtherExpired " + file.getAbsolutePath());
                        if (file.getName().matches("^version-(\\d+)$")) {
                            l.a().a(Plugin.this.mPkgName, Integer.parseInt(file.getName().split("-")[1]), false);
                        }
                    }
                    return false;
                }
            });
        }
    }

    private void installInternalPlugin() {
        if (!com.bytedance.pangle.c.d.a(Zeus.getAppApplication()) || getVersion() >= this.mInternalVersionCode || TextUtils.isEmpty(this.mInternalPath)) {
            return;
        }
        com.bytedance.pangle.c.e.f10124a.execute(new Runnable() { // from class: com.bytedance.pangle.plugin.Plugin.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    String b4 = com.bytedance.pangle.c.c.b();
                    File file = new File(b4, Plugin.this.mPkgName + ".apk");
                    ZeusLogger.i(ZeusLogger.TAG_INIT, "Plugin copyInternalPlugin " + Plugin.this.mInternalPath + " --> " + file.getAbsolutePath());
                    g.a(Zeus.getAppApplication().getAssets().open(Plugin.this.mInternalPath), new FileOutputStream(file));
                    if (file.exists()) {
                        PluginManager.getInstance().asyncInstall(Plugin.this.mPkgName, file);
                        return;
                    }
                    ZeusLogger.w(ZeusLogger.TAG_INSTALL, "installInternalPlugin failed. " + file.getAbsolutePath() + " is not exists.");
                } catch (Throwable th) {
                    ZeusLogger.w(ZeusLogger.TAG_INSTALL, "installInternalPlugin failed. " + th.getMessage());
                }
            }
        });
    }

    private int modifyResIfNeed(int i2) {
        if (TextUtils.equals(l.a().b(this.mPkgName), com.bytedance.pangle.util.b.b(Zeus.getAppApplication()))) {
            return i2;
        }
        if (!this.mUnInstallPluginWhenHostChange && !GlobalParam.getInstance().unInstallPluginWhenHostChange(this.mPkgName)) {
            ZeusLogger.d(ZeusLogger.TAG_INIT, "modifyRes by init. " + this.mPkgName + " " + i2);
            int a4 = new com.bytedance.pangle.res.a.c().a(new File(com.bytedance.pangle.c.c.b(this.mPkgName, i2)), true, new StringBuilder());
            if (a4 == 100 || a4 == 200) {
                return i2;
            }
            return 0;
        }
        ZeusLogger.d(ZeusLogger.TAG_INIT, "uninstall plugin by host update. " + this.mPkgName + " " + i2);
        return 0;
    }

    private void setupInternalPlugin() {
        String[] list;
        int a4;
        if (l.a().f10394a.getInt(String.format(Locale.getDefault(), "OFFLINE_INTERNAL_%s", this.mPkgName), -1) == this.mApiVersionCode) {
            return;
        }
        if (TextUtils.isEmpty(this.mInternalPath) || this.mInternalVersionCode == -1) {
            try {
                for (String str : Zeus.getAppApplication().getAssets().list(ZeusConstants.f10058d)) {
                    if (str.startsWith(this.mPkgName + "_") && (a4 = j.a(str.split("_")[1])) != -1) {
                        this.mInternalPath = ZeusConstants.f10058d + net.lingala.zip4j.util.e.F0 + str;
                        this.mInternalVersionCode = a4;
                        return;
                    }
                }
            } catch (IOException e4) {
                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "setupInternalPlugin failed.", e4);
            }
        }
    }

    private void updateInstallStateFromMainProcess() {
        com.bytedance.pangle.c a4;
        try {
            if (com.bytedance.pangle.c.d.a(Zeus.getAppApplication()) || this.mLifeCycle >= 2 || (a4 = com.bytedance.pangle.servermanager.b.a()) == null || !a4.a(this.mPkgName)) {
                return;
            }
            updateToInstalled(a4.b(this.mPkgName));
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder("updateInstallStateFromMainProcess error. process = ");
            Zeus.getAppApplication();
            sb.append(com.bytedance.pangle.c.d.a());
            ZeusLogger.w(ZeusLogger.TAG_PPM, sb.toString(), th);
        }
    }

    private void updateToInstalled(int i2) {
        this.mVersionCode = i2;
        this.mLifeCycle = 2;
    }

    public int getApiVersionCode() {
        return this.mApiVersionCode;
    }

    public int getInstalledMaxVer() {
        if (TextUtils.isEmpty(this.mPackageDir)) {
            this.mPackageDir = com.bytedance.pangle.c.c.a(this.mPkgName);
        }
        File[] listFiles = new File(this.mPackageDir).listFiles(new FileFilter() { // from class: com.bytedance.pangle.plugin.Plugin.2
            @Override // java.io.FileFilter
            public final boolean accept(File file) {
                return file != null && file.getName().matches("^version-(\\d+)$");
            }
        });
        int i2 = -1;
        if (listFiles != null && listFiles.length > 0) {
            for (File file : listFiles) {
                int parseInt = Integer.parseInt(file.getName().split("-")[1]);
                if (parseInt > i2 && l.a().a(this.mPkgName, parseInt) && new File(com.bytedance.pangle.c.c.b(this.mPkgName, parseInt)).exists()) {
                    i2 = parseInt;
                }
            }
        }
        ZeusLogger.i(ZeusLogger.TAG_INIT, "Plugin getInstalledMaxVersion, pkg=" + this.mPkgName + ", maxVer=" + i2);
        return i2;
    }

    public int getInternalVersionCode() {
        return this.mInternalVersionCode;
    }

    public int getLifeCycle() {
        updateInstallStateFromMainProcess();
        return this.mLifeCycle;
    }

    public String getNativeLibraryDir() {
        int i2 = this.mVersionCode;
        if (i2 > 0) {
            return com.bytedance.pangle.c.c.d(this.mPkgName, i2);
        }
        return com.bytedance.pangle.c.c.a(this.mPkgName);
    }

    public int getVersion() {
        updateInstallStateFromMainProcess();
        return this.mVersionCode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void init() {
        boolean z3;
        if (this.mInitialized) {
            return;
        }
        synchronized (this.initializeLock) {
            if (this.mInitialized) {
                return;
            }
            if (com.bytedance.pangle.c.d.a(Zeus.getAppApplication())) {
                int i2 = 0;
                if (!TextUtils.isEmpty(l.a().f10394a.getString("HOST_ABI_".concat(String.valueOf(this.mPkgName)), ""))) {
                    l a4 = l.a();
                    String str = this.mPkgName;
                    z3 = !TextUtils.equals(a4.f10394a.getString("HOST_ABI_".concat(String.valueOf(str)), ""), Zeus.getHostAbi());
                    ZeusLogger.i(ZeusLogger.TAG_INIT, "ZeusSpUtils isHostAbiUpdate HOST_ABI=" + a4.f10394a.getString("HOST_ABI_".concat(String.valueOf(str)), "") + ", " + Zeus.getHostAbi() + ", result=" + z3);
                } else {
                    z3 = false;
                }
                deleteIfNeeded();
                int installedMaxVer = getInstalledMaxVer();
                if (checkVersionValid(installedMaxVer, this.mApiVersionCode, z3)) {
                    i2 = modifyResIfNeed(installedMaxVer);
                    updateToInstalled(i2);
                }
                deleteOtherExpiredVer(i2);
                ZeusLogger.i(ZeusLogger.TAG_INIT, "Plugin initPlugins result=".concat(String.valueOf(this)));
                l a5 = l.a();
                String str2 = this.mPkgName;
                SharedPreferences.Editor edit = a5.f10394a.edit();
                edit.putString("ROM_LAST_".concat(String.valueOf(str2)), Build.VERSION.INCREMENTAL);
                edit.apply();
                l a6 = l.a();
                String str3 = this.mPkgName;
                String string = a6.f10394a.getString("HOST_ABI_".concat(String.valueOf(str3)), "");
                SharedPreferences.Editor edit2 = a6.f10394a.edit();
                edit2.putString("HOST_ABI_".concat(String.valueOf(str3)), Zeus.getHostAbi());
                edit2.apply();
                ZeusLogger.i(ZeusLogger.TAG_INIT, "ZeusSpUtils setHostAbiUpdated HOST_ABI=" + string + " --> " + Zeus.getHostAbi());
                l a7 = l.a();
                String str4 = this.mPkgName;
                String b4 = com.bytedance.pangle.util.b.b(Zeus.getAppApplication());
                String b5 = a7.b(str4);
                if (!TextUtils.equals(b5, b4)) {
                    SharedPreferences.Editor edit3 = a7.f10394a.edit();
                    edit3.putString("HOST_IDENTITY_".concat(String.valueOf(str4)), b4);
                    edit3.apply();
                }
                ZeusLogger.i(ZeusLogger.TAG_INIT, "ZeusSpUtils setHostIdentity(" + str4 + ") " + b5 + " --> " + b4);
                l a8 = l.a();
                String str5 = this.mPkgName;
                int i4 = this.mApiVersionCode;
                int a9 = a8.a(str5);
                if (a9 != i4) {
                    SharedPreferences.Editor edit4 = a8.f10394a.edit();
                    edit4.putInt("PLUGIN_API_VERSION_".concat(String.valueOf(str5)), i4);
                    edit4.apply();
                }
                ZeusLogger.i(ZeusLogger.TAG_INIT, "ZeusSpUtils setPluginApiVersion " + a9 + " --> " + i4);
            } else {
                updateInstallStateFromMainProcess();
            }
            this.mInitialized = true;
            installInternalPlugin();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x015b -> B:29:0x015c). Please submit an issue!!! */
    public boolean install(File file, com.bytedance.pangle.e.a.e eVar) {
        boolean z3;
        boolean z4 = false;
        try {
            ZeusLogger.i(ZeusLogger.TAG_INSTALL, "Plugin install from local file " + file + ", " + Thread.currentThread().getName());
            String str = eVar.f10209a;
            int i2 = eVar.f10210b;
            synchronized (this.installLock) {
                try {
                    ZeusLogger.i(ZeusLogger.TAG_INSTALL, "Plugin synchronized begin, plugin=".concat(String.valueOf(this)));
                    boolean checkValid = checkValid(file, str, i2);
                    if (checkValid) {
                        z3 = b.a(file, str, i2);
                        if (z3) {
                            try {
                                String b4 = e.b(com.bytedance.pangle.c.c.b(this.mPkgName, i2));
                                l a4 = l.a();
                                String str2 = this.mPkgName;
                                SharedPreferences.Editor edit = a4.f10394a.edit();
                                edit.putString("MD5_".concat(String.valueOf(str2)), b4);
                                edit.apply();
                                l.a().a(this.mPkgName, i2, true);
                                ZeusLogger.i(ZeusLogger.TAG_INSTALL, "Plugin markPluginInstalled, " + this.mPkgName + ":" + i2 + " md5=" + b4);
                                f.a(file);
                            } catch (Throwable th) {
                                th = th;
                                z4 = z3;
                            }
                        }
                    } else {
                        z3 = false;
                    }
                    synchronized (this) {
                        if (checkValid) {
                            if (this.mLifeCycle == 3) {
                                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "Plugin LIFE_LOADED, valid next restart " + str + ":" + i2);
                            } else if (z3) {
                                updateToInstalled(i2);
                                ZeusLogger.i(ZeusLogger.TAG_INSTALL, "Plugin INSTALLED " + str + ":" + i2);
                                ZeusPluginStateListener.postStateChange(this.mPkgName, 6, new Object[0]);
                            } else {
                                ZeusLogger.i(ZeusLogger.TAG_INSTALL, "Plugin INSTALL_FAILED" + str + ":" + i2);
                                ZeusPluginStateListener.postStateChange(this.mPkgName, 7, "Internal error.");
                                f.a(file);
                                ZeusLogger.w(ZeusLogger.TAG_INSTALL, "Plugin delete file by failedCount > 0 " + str + ":" + i2);
                            }
                        } else {
                            f.a(file);
                            ZeusLogger.w(ZeusLogger.TAG_INSTALL, "Plugin deleting invalid " + str + ":" + i2);
                        }
                    }
                    return z3;
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            throw th;
        } catch (Throwable th3) {
            ZeusLogger.errReport(ZeusLogger.TAG_INSTALL, "Plugin IMPOSSIBLE!!!", th3);
            return z4;
        }
    }

    public boolean isInstalled() {
        updateInstallStateFromMainProcess();
        return this.mLifeCycle >= 2;
    }

    public boolean isLoaded() {
        return this.mLifeCycle == 3;
    }

    public boolean isVersionInstalled(int i2) {
        return l.a().a(this.mPkgName, i2);
    }

    public void setApiCompatVersion(int i2, int i4, int i5) {
        l a4 = l.a();
        String str = this.mPkgName;
        SharedPreferences.Editor edit = a4.f10394a.edit();
        edit.putInt("API_MIN_" + str + "_" + i2, i4);
        edit.putInt("API_MAX_" + str + "_" + i2, i5);
        edit.apply();
    }

    public void setLifeCycle(int i2) {
        this.mLifeCycle = i2;
    }

    public String toString() {
        return "Plugin{pkg=" + this.mPkgName + ", ver=" + this.mVersionCode + ", life=" + this.mLifeCycle + '}';
    }
}
