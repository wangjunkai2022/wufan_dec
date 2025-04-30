package com.join.mgps.ad;

import android.content.Context;
import android.graphics.Point;
import com.bytedance.sdk.openadsdk.TTAdConfig;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.join.mgps.activity.login.AbScreenUtils;
/* compiled from: TTAdManagerHolder.java */
/* loaded from: classes3.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private static final String f38662a = "TTAdManagerHolder";

    /* renamed from: b  reason: collision with root package name */
    private static boolean f38663b;

    /* renamed from: c  reason: collision with root package name */
    private static Point f38664c;

    /* renamed from: d  reason: collision with root package name */
    private static Point f38665d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TTAdManagerHolder.java */
    /* loaded from: classes3.dex */
    public class a implements TTAdSdk.InitCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TTAdSdk.InitCallback f38666a;

        a(TTAdSdk.InitCallback initCallback) {
            this.f38666a = initCallback;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void fail(int i2, String str) {
            TTAdSdk.InitCallback initCallback = this.f38666a;
            if (initCallback != null) {
                initCallback.fail(i2, str);
            }
            StringBuilder sb = new StringBuilder();
            sb.append("fail:  code = ");
            sb.append(i2);
            sb.append(" msg = ");
            sb.append(str);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void success() {
            TTAdSdk.InitCallback initCallback = this.f38666a;
            if (initCallback != null) {
                initCallback.success();
            }
            StringBuilder sb = new StringBuilder();
            sb.append("success: ");
            sb.append(TTAdSdk.isInitSuccess());
        }
    }

    private static TTAdConfig a(String str) {
        return new TTAdConfig.Builder().appId(str).useTextureView(true).appName("悟饭游戏厅_android").titleBarTheme(0).directDownloadNetworkType(4, 3, 5).debug(false).supportMultiProcess(true).needClearTaskReset(new String[0]).allowShowNotify(true).build();
    }

    private static void b(Context context, String str, TTAdSdk.InitCallback initCallback) {
        if (f38663b) {
            if (initCallback != null) {
                initCallback.success();
                return;
            }
            return;
        }
        f38664c = AbScreenUtils.getScreenSize(context, true);
        f38665d = AbScreenUtils.getScreenSize(context, false);
        TTAdSdk.init(context, a(str), new a(initCallback));
        f38663b = true;
    }

    public static TTAdManager c() {
        return TTAdSdk.getAdManager();
    }

    public static Point d() {
        return f38664c;
    }

    public static Point e() {
        return f38665d;
    }

    public static void f(Context context, String str, TTAdSdk.InitCallback initCallback) {
        b(context, str, initCallback);
    }
}
