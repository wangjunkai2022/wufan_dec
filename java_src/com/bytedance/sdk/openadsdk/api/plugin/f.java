package com.bytedance.sdk.openadsdk.api.plugin;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.AdConfig;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import com.bytedance.sdk.openadsdk.TTInitializer;
import com.bytedance.sdk.openadsdk.api.plugin.e;
import dalvik.system.DexClassLoader;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: TTPluginSdkInitializer.java */
/* loaded from: classes2.dex */
public class f implements TTInitializer {

    /* renamed from: b  reason: collision with root package name */
    private volatile TTInitializer f10617b;

    /* renamed from: c  reason: collision with root package name */
    private static final Bundle f10616c = new Bundle();

    /* renamed from: a  reason: collision with root package name */
    public static ScheduledExecutorService f10615a = Executors.newSingleThreadScheduledExecutor(new b());

    /* compiled from: TTPluginSdkInitializer.java */
    /* loaded from: classes2.dex */
    private static class a implements TTAdSdk.InitCallback {

        /* renamed from: a  reason: collision with root package name */
        private TTAdSdk.InitCallback f10622a;

        public a(TTAdSdk.InitCallback initCallback) {
            this.f10622a = initCallback;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void fail(int i2, String str) {
            TTAdSdk.InitCallback initCallback = this.f10622a;
            if (initCallback != null) {
                initCallback.fail(i2, str);
                d.b(i2, str, 0L);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void success() {
            TTAdSdk.InitCallback initCallback = this.f10622a;
            if (initCallback != null) {
                initCallback.success();
            }
            d.a();
        }
    }

    private static TTInitializer b(AdConfig adConfig) {
        DexClassLoader b4;
        try {
            b4 = e.a(TTAppContextHolder.getContext()).b();
        } catch (Throwable th) {
            if (th instanceof c) {
                c cVar = th;
                d.a(cVar.a(), cVar.getMessage(), 0L);
            } else {
                d.a(6, th.getMessage(), 0L);
            }
            com.bytedance.sdk.openadsdk.api.a.e("TTPluginManager", "Create initializer failed: " + th);
        }
        if (b4 == null) {
            d.a(6, "Load plugin failed", 0L);
            com.bytedance.sdk.openadsdk.api.a.e("TTPluginManager", "Load plugin failed");
            return null;
        }
        Class<?> loadClass = b4.loadClass(TTAdSdk.INITIALIZER_CLASS_NAME);
        Bundle bundle = new Bundle();
        bundle.putSerializable(PluginConstants.KEY_PL_UPDATE_LISTENER, new e.b());
        bundle.putBundle(PluginConstants.KEY_PL_CONFIG_INFO, f10616c);
        TTInitializer tTInitializer = (TTInitializer) loadClass.getDeclaredMethod("getInstance", Bundle.class).invoke(null, bundle);
        com.bytedance.sdk.openadsdk.api.a.b("TTPluginManager", "Create initializer success");
        return tTInitializer;
    }

    @Override // com.bytedance.sdk.openadsdk.TTInitializer
    public TTAdManager getAdManager() {
        return com.bytedance.sdk.openadsdk.api.plugin.a.f10506a;
    }

    @Override // com.bytedance.sdk.openadsdk.TTInitializer
    public void init(Context context, AdConfig adConfig, TTAdSdk.InitCallback initCallback) {
        if (Build.VERSION.SDK_INT < 21) {
            initCallback.fail(4201, "Only support >= 5.0");
            return;
        }
        e.a(context).a();
        if (this.f10617b != null) {
            this.f10617b.init(context, adConfig, new a(initCallback));
        } else {
            a(context, adConfig, new a(initCallback));
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTInitializer
    public boolean isInitSuccess() {
        if (this.f10617b != null) {
            return this.f10617b.isInitSuccess();
        }
        return false;
    }

    public static void a(String str, Bundle bundle) {
        if (TextUtils.isEmpty(str) || bundle == null) {
            return;
        }
        f10616c.putBundle(str, bundle);
    }

    /* compiled from: TTPluginSdkInitializer.java */
    /* loaded from: classes2.dex */
    public static class b implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private final ThreadGroup f10623a;

        /* renamed from: b  reason: collision with root package name */
        private final AtomicInteger f10624b;

        /* renamed from: c  reason: collision with root package name */
        private final String f10625c;

        b() {
            this.f10624b = new AtomicInteger(1);
            this.f10623a = new ThreadGroup("tt_pangle_group_pl_init");
            this.f10625c = "tt_pangle_thread_pl_init";
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            ThreadGroup threadGroup = this.f10623a;
            Thread thread = new Thread(threadGroup, runnable, this.f10625c + this.f10624b.getAndIncrement(), 0L);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 10) {
                thread.setPriority(10);
            }
            return thread;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(String str) {
            this.f10624b = new AtomicInteger(1);
            this.f10623a = new ThreadGroup("tt_pangle_group_pl_init");
            this.f10625c = str;
        }
    }

    private void a(final Context context, final AdConfig adConfig, final TTAdSdk.InitCallback initCallback) {
        f10615a.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.api.plugin.f.1
            @Override // java.lang.Runnable
            public void run() {
                TTInitializer a4 = f.this.a(adConfig);
                if (a4 != null) {
                    com.bytedance.sdk.openadsdk.api.plugin.a.f10506a.a(a4.getAdManager());
                    a4.init(context, adConfig, initCallback);
                    a4.getAdManager().register(com.bytedance.sdk.openadsdk.a.b.a());
                    return;
                }
                initCallback.fail(4201, "No initializer");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TTInitializer a(AdConfig adConfig) {
        if (this.f10617b == null) {
            synchronized (this) {
                if (this.f10617b == null) {
                    d.a(adConfig);
                    com.bytedance.sdk.openadsdk.api.a.b("TTPluginManager", "Create initializer");
                    long currentTimeMillis = System.currentTimeMillis();
                    this.f10617b = b(adConfig);
                    long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.putOpt("duration", Long.valueOf(currentTimeMillis2));
                    } catch (JSONException e4) {
                        e4.printStackTrace();
                    }
                    adConfig.setExtra("plugin", jSONObject);
                }
            }
        }
        return this.f10617b;
    }

    @Override // com.bytedance.sdk.openadsdk.TTInitializer
    public TTAdManager init(Context context, AdConfig adConfig) {
        throw new RuntimeException("Please use init(Context context, AdConfig config, TTAdSdk.InitCallback callback)!");
    }
}
