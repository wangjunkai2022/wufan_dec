package com.bytedance.sdk.openadsdk.api.plugin;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.bytedance.pangle.GlobalParam;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.ZeusPluginStateListener;
import com.bytedance.pangle.log.IZeusLogger;
import com.bytedance.pangle.log.IZeusReporter;
import com.bytedance.pangle.plugin.Plugin;
import com.bytedance.sdk.openadsdk.TTAdEvent;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTPluginListener;
import com.join.mgps.Util.g0;
import com.join.mgps.dto.Constant;
import com.tencent.cos.common.COSHttpResponseKey;
import com.umeng.analytics.pro.ai;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: TTPluginManager.java */
/* loaded from: classes2.dex */
public class e {

    /* renamed from: d  reason: collision with root package name */
    private static volatile DexClassLoader f10600d;

    /* renamed from: f  reason: collision with root package name */
    private static volatile boolean f10602f;

    /* renamed from: k  reason: collision with root package name */
    private static volatile TTPluginListener f10603k;

    /* renamed from: g  reason: collision with root package name */
    private final CountDownLatch f10604g = new CountDownLatch(1);

    /* renamed from: h  reason: collision with root package name */
    private volatile boolean f10605h = false;

    /* renamed from: i  reason: collision with root package name */
    private volatile String f10606i = "none";

    /* renamed from: j  reason: collision with root package name */
    private final Context f10607j;

    /* renamed from: a  reason: collision with root package name */
    private static final String f10597a = "next" + File.separator;

    /* renamed from: b  reason: collision with root package name */
    private static final HashMap<String, TTPluginListener> f10598b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private static final HashMap<String, Handler> f10599c = new HashMap<>();

    /* renamed from: e  reason: collision with root package name */
    private static volatile e f10601e = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TTPluginManager.java */
    /* loaded from: classes2.dex */
    public static final class a implements IZeusLogger {
        private a() {
        }

        @Override // com.bytedance.pangle.log.IZeusLogger
        public void e(String str, String str2, Throwable th) {
            com.bytedance.sdk.openadsdk.api.a.b(str, str2, th);
        }

        @Override // com.bytedance.pangle.log.IZeusLogger
        public void i(String str, String str2) {
            com.bytedance.sdk.openadsdk.api.a.c(str, str2);
        }

        @Override // com.bytedance.pangle.log.IZeusLogger
        public void v(String str, String str2) {
            com.bytedance.sdk.openadsdk.api.a.a(str, str2);
        }

        @Override // com.bytedance.pangle.log.IZeusLogger
        public void w(String str, String str2) {
            com.bytedance.sdk.openadsdk.api.a.a(str, str2);
        }

        @Override // com.bytedance.pangle.log.IZeusLogger
        public void w(String str, String str2, Throwable th) {
            com.bytedance.sdk.openadsdk.api.a.a(str, str2, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TTPluginManager.java */
    /* loaded from: classes2.dex */
    public static final class b implements TTAdEvent {
        @Override // com.bytedance.sdk.openadsdk.TTAdEvent
        public void onEvent(int i2, Bundle bundle) {
            if (i2 == 1) {
                String string = bundle.getString("config");
                String string2 = bundle.getString("plugin_pkg_name");
                int i4 = bundle.getInt("code");
                if (i4 == 0) {
                    com.bytedance.sdk.openadsdk.api.plugin.b c4 = e.c(string);
                    if (c4 != null && !TextUtils.isEmpty(c4.mPackageName)) {
                        if (!bundle.getBoolean("success")) {
                            e.c(c4.mPackageName, 1004);
                            return;
                        }
                        com.bytedance.sdk.openadsdk.api.a.d("TTPluginManager", "plugin update received: " + c4.mPackageName);
                        if (!c4.isRevert()) {
                            if (e.b(c4)) {
                                bundle.putBoolean("installed", true);
                                return;
                            }
                            return;
                        }
                        Zeus.unInstallPlugin(c4.mPackageName);
                        return;
                    }
                    com.bytedance.sdk.openadsdk.api.a.d("TTPluginManager", "plugin update received with invalid config");
                    return;
                }
                e.c(string2, i4);
            }
        }
    }

    private e(Context context) {
        this.f10607j = context.getApplicationContext();
        d.a(context);
        b(context.getApplicationContext());
    }

    private static File c(Context context) {
        return new File(new File(context.getDir("tt_pangle_bykv_file", 0), "pangle_com.byted.pangle"), f10597a);
    }

    public DexClassLoader b() throws Exception {
        if (this.f10605h) {
            if (!Zeus.isPluginInstalled("com.byted.pangle")) {
                this.f10604g.await(60000L, TimeUnit.MILLISECONDS);
            }
            boolean z3 = false;
            if (Zeus.isPluginLoaded("com.byted.pangle") || Zeus.loadPlugin("com.byted.pangle")) {
                f10600d = Zeus.getPlugin("com.byted.pangle").mClassLoader;
                z3 = true;
            }
            Zeus.installFromDownloadDir();
            if (f10600d == null) {
                if (this.f10604g.getCount() != 0) {
                    com.bytedance.sdk.openadsdk.api.a.d("TTPluginManager", "Install wait time out");
                    throw new c(8, "install wait timeout");
                } else if (z3) {
                    com.bytedance.sdk.openadsdk.api.a.d("TTPluginManager", "Get null after load");
                    throw new c(9, "Get null after load");
                }
            }
            return f10600d;
        }
        com.bytedance.sdk.openadsdk.api.a.d("TTPluginManager", "Zeus init failed.");
        throw new c(4, this.f10606i);
    }

    public static e a(Context context) {
        if (f10601e == null) {
            synchronized (e.class) {
                if (f10601e == null) {
                    f10601e = new e(context);
                }
            }
        }
        return f10601e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.bytedance.sdk.openadsdk.api.plugin.b c(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return a(new JSONObject(str));
        } catch (JSONException unused) {
            com.bytedance.sdk.openadsdk.api.a.e("TTPluginManager", "Invalid plugin info:" + str);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(String str, int i2) {
        com.bytedance.sdk.openadsdk.api.a.d("TTPluginManager", "plugin update failed");
        Bundle bundle = new Bundle();
        bundle.putInt("code", i2);
        TTPluginListener tTPluginListener = f10598b.get(str);
        if (tTPluginListener != null) {
            tTPluginListener.onPluginListener(1001, null, null, bundle);
        }
    }

    public void a() {
        f10602f = true;
        d.a(new ArrayList());
    }

    public Bundle a(String str, Bundle bundle) {
        String a4 = a(str);
        if (!TextUtils.isEmpty(a4)) {
            bundle.putString(PluginConstants.KEY_PLUGIN_VERSION, a4);
        }
        f.a(str, bundle);
        Bundle bundle2 = new Bundle();
        bundle2.putBundle(str, bundle);
        Bundle bundle3 = new Bundle();
        bundle3.putBundle(PluginConstants.KEY_PL_CONFIG_INFO, bundle2);
        return bundle3;
    }

    private void b(Context context) {
        try {
            IZeusReporter iZeusReporter = new IZeusReporter() { // from class: com.bytedance.sdk.openadsdk.api.plugin.e.1
                @Override // com.bytedance.pangle.log.IZeusReporter
                public void report(String str, JSONObject jSONObject) {
                    if (e.f10602f) {
                        d.a(str, jSONObject);
                    } else {
                        d.c(str, jSONObject);
                    }
                }
            };
            GlobalParam globalParam = GlobalParam.getInstance();
            globalParam.setCloseDefaultReport(true);
            globalParam.setReporter(iZeusReporter);
            globalParam.setCheckPermission(false);
            globalParam.setDownloadDir(c(context));
            globalParam.setLogger(new a());
            Zeus.registerPluginStateListener(new ZeusPluginStateListener() { // from class: com.bytedance.sdk.openadsdk.api.plugin.e.2
                @Override // com.bytedance.pangle.ZeusPluginStateListener
                public void onPluginStateChange(final String str, final int i2, Object... objArr) {
                    com.bytedance.sdk.openadsdk.api.a.b("TTPluginManager", str + " state changed, " + i2);
                    if (i2 == 6 || i2 == 7) {
                        com.bytedance.sdk.openadsdk.b.a.a().a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.api.plugin.e.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                e.this.b(str, i2);
                            }
                        });
                    }
                }
            });
            Zeus.init((Application) context, true);
            this.f10605h = true;
        } catch (Throwable th) {
            com.bytedance.sdk.openadsdk.api.a.a("TTPluginManager", "Unexpected error for init zeus.", th);
            this.f10606i = th.getMessage();
        }
    }

    public static String a(String str) {
        Plugin plugin;
        try {
            if (!Zeus.isPluginInstalled(str) || (plugin = Zeus.getPlugin(str)) == null) {
                return null;
            }
            return a(plugin.getVersion());
        } catch (Throwable unused) {
            com.bytedance.sdk.openadsdk.api.a.d("TTPluginManager", "Get local version failed");
            return null;
        }
    }

    public void a(final TTPluginListener tTPluginListener) {
        if (!this.f10605h) {
            com.bytedance.sdk.openadsdk.api.a.d("TTPluginManager", "Zeus init failed.");
            if (tTPluginListener != null) {
                tTPluginListener.onPluginListener(1002, null, null, null);
                return;
            }
            return;
        }
        Handler handler = new Handler(Looper.getMainLooper());
        handler.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.api.plugin.e.3
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.api.a.b("TTPluginManager", "Load plugin failed, caused by timeout.");
                tTPluginListener.onPluginListener(1001, null, null, null);
            }
        }, 180000L);
        String packageName = tTPluginListener.packageName();
        Plugin plugin = (Zeus.isPluginInstalled(packageName) && (Zeus.isPluginLoaded(packageName) || Zeus.loadPlugin(packageName))) ? Zeus.getPlugin(packageName) : null;
        StringBuilder sb = new StringBuilder();
        sb.append("Find plugin:");
        sb.append(plugin != null);
        com.bytedance.sdk.openadsdk.api.a.b("TTPluginManager", sb.toString());
        if (plugin != null) {
            a(plugin);
            handler.removeCallbacksAndMessages(null);
            tTPluginListener.onPluginListener(1000, plugin.mClassLoader, plugin.mResources, null);
            return;
        }
        f10598b.put(packageName, tTPluginListener);
        f10599c.put(packageName, handler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str, int i2) {
        if ("com.byted.pangle".equals(str)) {
            if (i2 == 6 && Zeus.loadPlugin(str)) {
                f10600d = Zeus.getPlugin(str).mClassLoader;
            }
            this.f10604g.countDown();
        }
        a(i2 == 6, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(com.bytedance.sdk.openadsdk.api.plugin.b bVar) {
        File file;
        if (bVar != null && (file = bVar.f10585b) != null) {
            boolean syncInstallPlugin = Zeus.syncInstallPlugin(bVar.mPackageName, file.getAbsolutePath());
            a(syncInstallPlugin, bVar.mPackageName);
            return syncInstallPlugin;
        }
        com.bytedance.sdk.openadsdk.api.a.d("TTPluginManager", "plugin config is null");
        return false;
    }

    private static com.bytedance.sdk.openadsdk.api.plugin.b a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        com.bytedance.sdk.openadsdk.api.plugin.b bVar = new com.bytedance.sdk.openadsdk.api.plugin.b();
        bVar.mPackageName = jSONObject.optString(ai.f60415o);
        bVar.mVersionCode = jSONObject.optInt("version_code");
        bVar.mUrl = jSONObject.optString(COSHttpResponseKey.DOWNLOAD_URL);
        bVar.mMd5 = jSONObject.optString("md5");
        bVar.mApiVersionMin = jSONObject.optInt("min_version");
        bVar.mApiVersionMax = jSONObject.optInt("max_version");
        bVar.f10584a = jSONObject.optString(Constant.MD5);
        bVar.mFlag = jSONObject.optBoolean("is_revert") ? 3 : 2;
        bVar.f10585b = new File(jSONObject.optString("plugin_file"));
        return bVar;
    }

    private static void a(Plugin plugin) {
        if (plugin == null) {
            com.bytedance.sdk.openadsdk.api.a.d("TTPluginManager", "plugin is null.");
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("action", 0);
        bundle.putString("plugin_pkg_name", plugin.mPkgName);
        bundle.putString(PluginConstants.KEY_PLUGIN_VERSION, a(plugin.getVersion()));
        TTAdManager adManager = TTAdSdk.getAdManager();
        if (adManager != null) {
            adManager.getExtra(Bundle.class, bundle);
        }
    }

    public static String a(int i2) {
        char[] charArray = String.valueOf(i2).toCharArray();
        StringBuilder sb = new StringBuilder();
        for (int i4 = 0; i4 < charArray.length; i4++) {
            sb.append(charArray[i4]);
            if (i4 < charArray.length - 1) {
                sb.append(g0.f27568a);
            }
        }
        return sb.toString();
    }

    private static void a(boolean z3, String str) {
        HashMap<String, TTPluginListener> hashMap = f10598b;
        TTPluginListener tTPluginListener = hashMap.get(str);
        StringBuilder sb = new StringBuilder();
        sb.append("Install dl plugin ");
        sb.append(str);
        sb.append(z3 ? " success" : " failed");
        sb.append(", need notify: ");
        sb.append(tTPluginListener != null);
        com.bytedance.sdk.openadsdk.api.a.b("TTPluginManager", sb.toString());
        HashMap<String, Handler> hashMap2 = f10599c;
        Handler handler = hashMap2.get(str);
        if (z3) {
            if (f10603k == null && (tTPluginListener == null || handler == null)) {
                return;
            }
            if (Zeus.loadPlugin(str)) {
                Plugin plugin = Zeus.getPlugin(str);
                a(plugin);
                if (handler != null) {
                    handler.removeCallbacksAndMessages(null);
                }
                if (tTPluginListener != null) {
                    tTPluginListener.onPluginListener(1000, plugin.mClassLoader, plugin.mResources, null);
                }
                TTPluginListener tTPluginListener2 = f10603k;
                if (tTPluginListener2 != null && tTPluginListener2.packageName() != null && tTPluginListener2.packageName().equals(str)) {
                    tTPluginListener2.onPluginListener(1000, plugin.mClassLoader, plugin.mResources, null);
                    f10603k = null;
                }
            } else {
                c(str, 1002);
            }
        } else {
            c(str, 1003);
        }
        hashMap.remove(str);
        hashMap2.remove(str);
    }

    public static void a(Throwable th) {
        if (th instanceof AbstractMethodError) {
            Zeus.unInstallPlugin("com.byted.pangle");
            com.bytedance.sdk.openadsdk.api.a.d("TTPluginManager", "AbstractMethodError, rollback to builtin version.");
        }
    }
}
