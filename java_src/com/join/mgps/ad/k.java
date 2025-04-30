package com.join.mgps.ad;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.MApplication;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdConfig;
import com.bytedance.sdk.openadsdk.TTAdLoadType;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTAppDownloadListener;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.join.mgps.Util.i2;
import com.join.mgps.Util.u0;
/* compiled from: TTAdVideo.java */
/* loaded from: classes3.dex */
public class k extends com.join.mgps.ad.b {

    /* renamed from: p  reason: collision with root package name */
    private static boolean f38667p;

    /* renamed from: a  reason: collision with root package name */
    private TTAdNative f38668a;

    /* renamed from: b  reason: collision with root package name */
    private TTRewardVideoAd f38669b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f38670c;

    /* renamed from: d  reason: collision with root package name */
    private String f38671d;

    /* renamed from: e  reason: collision with root package name */
    private AdSlot f38672e;

    /* renamed from: f  reason: collision with root package name */
    private int f38673f;

    /* renamed from: g  reason: collision with root package name */
    c f38674g;

    /* renamed from: h  reason: collision with root package name */
    private String f38675h;

    /* renamed from: i  reason: collision with root package name */
    private Context f38676i;

    /* renamed from: j  reason: collision with root package name */
    private int f38677j;

    /* renamed from: k  reason: collision with root package name */
    private int f38678k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f38679l;

    /* renamed from: m  reason: collision with root package name */
    private Activity f38680m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f38681n;

    /* renamed from: o  reason: collision with root package name */
    private long f38682o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TTAdVideo.java */
    /* loaded from: classes3.dex */
    public class a implements TTAdSdk.InitCallback {
        a() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void fail(int i2, String str) {
            boolean unused = k.f38667p = false;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void success() {
        }
    }

    /* compiled from: TTAdVideo.java */
    /* loaded from: classes3.dex */
    public static class c implements TTAdNative.RewardVideoAdListener, TTRewardVideoAd.RewardAdInteractionListener {
        public void a(String str) {
        }

        public void b(String str, int i2, int i4) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdClose() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdShow() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdVideoBarClick() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener, com.bytedance.sdk.openadsdk.common.CommonListener
        public void onError(int i2, String str) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onRewardArrived(boolean z3, int i2, Bundle bundle) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onRewardVerify(boolean z3, int i2, String str, int i4, String str2) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoAdLoad(TTRewardVideoAd tTRewardVideoAd) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoCached() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoCached(TTRewardVideoAd tTRewardVideoAd) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onSkippedVideo() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onVideoComplete() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onVideoError() {
        }
    }

    public k(Context context, String str, String str2, c cVar) {
        this(context, str, str2, 1, cVar);
    }

    private static TTAdConfig o(Context context, String str) {
        return new TTAdConfig.Builder().appId(str).useTextureView(true).appName("悟饭游戏厅_android").titleBarTheme(1).allowShowNotify(true).debug(com.join.android.app.common.http.c.f17006c).supportMultiProcess(false).build();
    }

    private static void p(Context context, String str) {
        if (f38667p) {
            return;
        }
        TTAdSdk.init(context, o(context, str), new a());
        f38667p = true;
    }

    private void q() {
        this.f38672e = new AdSlot.Builder().setCodeId(this.f38671d).setAdLoadType(TTAdLoadType.LOAD).setUserID("user123").setMediaExtra("media_extra").setOrientation(this.f38673f).build();
    }

    public void r() {
        try {
            q();
            TTAdNative tTAdNative = this.f38668a;
            if (tTAdNative != null) {
                tTAdNative.loadRewardVideoAd(this.f38672e, new b());
            } else {
                com.join.mgps.ad.b.a(this.f38676i, 5);
                c cVar = this.f38674g;
                if (cVar != null) {
                    cVar.onError(-1, "广告初始化错误");
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            com.join.mgps.ad.b.a(this.f38676i, 5);
            c cVar2 = this.f38674g;
            if (cVar2 != null) {
                cVar2.onError(-1, "广告初始化错误");
            }
        }
    }

    public void s(Activity activity) {
        t(activity, "");
    }

    public void t(Activity activity, String str) {
        u(activity, str, 0, 0);
    }

    public void u(Activity activity, String str, int i2, int i4) {
        this.f38675h = str;
        this.f38678k = i4;
        this.f38677j = i2;
        if (activity == null || activity.isFinishing()) {
            activity = MApplication.f9223q.getActivity();
        }
        this.f38680m = activity;
        this.f38679l = false;
        if (com.join.android.app.common.utils.f.j(activity)) {
            TTRewardVideoAd tTRewardVideoAd = this.f38669b;
            if (tTRewardVideoAd != null && this.f38681n) {
                tTRewardVideoAd.showRewardVideoAd(activity);
                this.f38669b = null;
                return;
            }
            this.f38679l = true;
            if (Math.abs(System.currentTimeMillis() - this.f38682o) > 2000) {
                this.f38682o = System.currentTimeMillis();
                r();
                return;
            }
            i2.a(activity).b("广告加载中...");
            return;
        }
        i2.a(activity).b("网络异常，请联网重试");
    }

    public k(Context context, String str, String str2, int i2, c cVar) {
        this.f38670c = false;
        this.f38679l = false;
        this.f38681n = false;
        this.f38682o = 0L;
        this.f38676i = context;
        this.f38671d = str2;
        this.f38673f = i2;
        this.f38674g = cVar;
        p(context, str);
        this.f38668a = TTAdSdk.getAdManager().createAdNative(context);
        q();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TTAdVideo.java */
    /* loaded from: classes3.dex */
    public class b implements TTAdNative.RewardVideoAdListener {

        /* compiled from: TTAdVideo.java */
        /* loaded from: classes3.dex */
        class a implements TTRewardVideoAd.RewardAdInteractionListener {
            a() {
            }

            @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
            public void onAdClose() {
                com.join.mgps.ad.b.a(k.this.f38676i, 3);
                c cVar = k.this.f38674g;
                if (cVar != null) {
                    cVar.onAdClose();
                    k kVar = k.this;
                    kVar.f38674g.a(kVar.f38675h);
                    k kVar2 = k.this;
                    kVar2.f38674g.b(kVar2.f38675h, k.this.f38677j, k.this.f38678k);
                }
                u0.c("RewardVideo", "rewardVideoAd close");
            }

            @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
            public void onAdShow() {
                k.this.f38681n = false;
                com.join.mgps.ad.b.a(k.this.f38676i, 1);
                c cVar = k.this.f38674g;
                if (cVar != null) {
                    cVar.onAdShow();
                }
                u0.c("RewardVideo", "rewardVideoAd show");
            }

            @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
            public void onAdVideoBarClick() {
                com.join.mgps.ad.b.a(k.this.f38676i, 2);
                c cVar = k.this.f38674g;
                if (cVar != null) {
                    cVar.onAdVideoBarClick();
                }
                u0.c("RewardVideo", "rewardVideoAd bar click");
            }

            @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
            public void onRewardArrived(boolean z3, int i2, Bundle bundle) {
            }

            @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
            public void onRewardVerify(boolean z3, int i2, String str, int i4, String str2) {
                u0.c("RewardVideo", "verify:" + z3 + " amount:" + i2 + " name:" + str);
                com.join.mgps.ad.b.a(k.this.f38676i, 6);
                c cVar = k.this.f38674g;
                if (cVar != null) {
                    cVar.onRewardVerify(z3, i2, str, i4, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
            public void onSkippedVideo() {
                c cVar = k.this.f38674g;
                if (cVar != null) {
                    cVar.onSkippedVideo();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
            public void onVideoComplete() {
                com.join.mgps.ad.b.a(k.this.f38676i, 4);
                u0.c("RewardVideo", "rewardVideoAd complete");
                c cVar = k.this.f38674g;
                if (cVar != null) {
                    cVar.onVideoComplete();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
            public void onVideoError() {
                com.join.mgps.ad.b.a(k.this.f38676i, 5);
                u0.c("RewardVideo", "rewardVideoAd error");
                c cVar = k.this.f38674g;
                if (cVar != null) {
                    cVar.onVideoError();
                }
            }
        }

        /* compiled from: TTAdVideo.java */
        /* renamed from: com.join.mgps.ad.k$b$b  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0176b implements TTAppDownloadListener {
            C0176b() {
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onDownloadActive(long j4, long j5, String str, String str2) {
                if (k.this.f38670c) {
                    return;
                }
                k.this.f38670c = true;
                u0.c("RewardVideo", "下载中，点击下载区域暂停");
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onDownloadFailed(long j4, long j5, String str, String str2) {
                u0.c("RewardVideo", "下载失败，点击下载区域重新下载");
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onDownloadFinished(long j4, String str, String str2) {
                u0.c("RewardVideo", "下载完成，点击下载区域重新下载");
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onDownloadPaused(long j4, long j5, String str, String str2) {
                u0.c("RewardVideo", "下载暂停，点击下载区域继续");
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onIdle() {
                k.this.f38670c = false;
            }

            @Override // com.bytedance.sdk.openadsdk.TTAppDownloadListener
            public void onInstalled(String str, String str2) {
                u0.c("RewardVideo", "安装完成，点击下载区域打开");
            }
        }

        b() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener, com.bytedance.sdk.openadsdk.common.CommonListener
        public void onError(int i2, String str) {
            com.join.mgps.ad.b.a(k.this.f38676i, 5);
            c cVar = k.this.f38674g;
            if (cVar != null) {
                cVar.onError(i2, str);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoAdLoad(TTRewardVideoAd tTRewardVideoAd) {
            u0.c("RewardVideo", "rewardVideoAd loaded");
            k.this.f38681n = false;
            k.this.f38669b = tTRewardVideoAd;
            k.this.f38669b.setRewardAdInteractionListener(new a());
            k.this.f38669b.setDownloadListener(new C0176b());
            c cVar = k.this.f38674g;
            if (cVar != null) {
                cVar.onRewardVideoAdLoad(tTRewardVideoAd);
            }
            if (!k.this.f38679l || k.this.f38680m == null || k.this.f38680m.isFinishing()) {
                return;
            }
            k kVar = k.this;
            kVar.u(kVar.f38680m, k.this.f38675h, k.this.f38677j, k.this.f38678k);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoCached() {
            u0.c("RewardVideo", "rewardVideoAd video cached");
            k.this.f38681n = true;
            c cVar = k.this.f38674g;
            if (cVar != null) {
                cVar.onRewardVideoCached();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoCached(TTRewardVideoAd tTRewardVideoAd) {
            k.this.f38681n = true;
        }
    }
}
