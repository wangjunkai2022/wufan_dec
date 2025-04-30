package com.bytedance.sdk.openadsdk;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTCodeGroupRit;
import com.bytedance.sdk.openadsdk.api.a;
import com.bytedance.sdk.openadsdk.api.plugin.f;
import com.bytedance.sdk.openadsdk.live.b;
import com.join.mgps.activity.SearchHintActivity_;
import com.umeng.analytics.pro.n;
/* loaded from: classes2.dex */
public final class TTAdSdk {
    public static final String INITIALIZER_CLASS_NAME = "com.bytedance.sdk.openadsdk.core.AdSdkInitializerHolder";

    /* renamed from: a  reason: collision with root package name */
    private static final TTInitializer f10488a = new f();

    /* loaded from: classes2.dex */
    public interface InitCallback {
        void fail(int i2, String str);

        void success();
    }

    private static void a(Context context, TTAdConfig tTAdConfig) {
        if (tTAdConfig != null && tTAdConfig.isDebug()) {
            a.a();
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            a.a("Wrong Thread ! Please exec TTAdSdk.init in main thread.");
        }
        a(context, "Context is null, please check.");
        a(tTAdConfig, "TTAdConfig is null, please check.");
        TTAppContextHolder.setContext(context);
        updateConfigAuth(tTAdConfig);
        tTAdConfig.setExtra(TTAdConstant.PANGLE_INIT_START_TIME, Long.valueOf(SystemClock.elapsedRealtime()));
        tTAdConfig.setExtra(TTAdConstant.KEY_S_C, "main");
        tTAdConfig.setExtra(TTAdConstant.KEY_L_S, Boolean.FALSE);
    }

    public static TTAdManager getAdManager() {
        TTInitializer tTInitializer = f10488a;
        if (tTInitializer != null) {
            return tTInitializer.getAdManager();
        }
        return null;
    }

    public static void getCodeGroupRit(final long j4, final TTCodeGroupRit.TTCodeGroupRitListener tTCodeGroupRitListener) {
        TTInitializer tTInitializer = f10488a;
        if (tTInitializer != null) {
            tTInitializer.getAdManager().register(new CodeGroupRitObject() { // from class: com.bytedance.sdk.openadsdk.TTAdSdk.1
                @Override // com.bytedance.sdk.openadsdk.CodeGroupRitObject
                public long getCodeGroupId() {
                    return j4;
                }

                @Override // com.bytedance.sdk.openadsdk.CodeGroupRitObject
                public TTCodeGroupRit.TTCodeGroupRitListener getListener() {
                    return tTCodeGroupRitListener;
                }
            });
        } else if (tTCodeGroupRitListener != null) {
            tTCodeGroupRitListener.onFail(n.a.f60840d, "please init sdk first!");
        }
    }

    @Deprecated
    public static TTAdManager init(Context context, TTAdConfig tTAdConfig) {
        a.a("Please call init(final Context context, final TTAdConfig config, final InitCallback callback), this method will be deprecated");
        a(context, tTAdConfig);
        Context applicationContext = context.getApplicationContext();
        TTInitializer tTInitializer = f10488a;
        if (tTInitializer != null) {
            return tTInitializer.init(applicationContext, tTAdConfig);
        }
        return null;
    }

    public static boolean isInitSuccess() {
        TTInitializer tTInitializer = f10488a;
        if (tTInitializer != null) {
            return tTInitializer.isInitSuccess();
        }
        return false;
    }

    public static void updateAdConfig(TTAdConfig tTAdConfig) {
        TTAdManager adManager;
        if (tTAdConfig == null || (adManager = f10488a.getAdManager()) == null) {
            return;
        }
        Bundle bundle = new Bundle();
        if (!TextUtils.isEmpty(tTAdConfig.getData())) {
            bundle.putString("extra_data", tTAdConfig.getData());
        }
        if (!TextUtils.isEmpty(tTAdConfig.getKeywords())) {
            bundle.putString(SearchHintActivity_.O0, tTAdConfig.getKeywords());
        }
        if (bundle.keySet().isEmpty()) {
            return;
        }
        adManager.getExtra(AdConfig.class, bundle);
    }

    public static void updateConfigAuth(TTAdConfig tTAdConfig) {
        b a4;
        if (tTAdConfig == null || (a4 = b.a()) == null) {
            return;
        }
        a4.a(tTAdConfig.getInjectionAuth());
    }

    public static void updatePaid(boolean z3) {
        TTAdManager adManager = f10488a.getAdManager();
        if (adManager == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("is_paid", z3);
        if (bundle.keySet().isEmpty()) {
            return;
        }
        adManager.getExtra(AdConfig.class, bundle);
    }

    public static void init(Context context, TTAdConfig tTAdConfig, InitCallback initCallback) {
        a(context, tTAdConfig);
        Context applicationContext = context.getApplicationContext();
        TTInitializer tTInitializer = f10488a;
        if (tTInitializer == null) {
            initCallback.fail(n.a.f60840d, "Load initializer failed");
        } else {
            tTInitializer.init(applicationContext, tTAdConfig, initCallback);
        }
    }

    private static void a(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }
}
