package com.join.mgps.ad;

import android.app.Activity;
import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdLoadType;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import com.join.mgps.Util.u0;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.uc.crashsdk.export.LogType;
/* compiled from: TTInteractionRewardVideo.java */
/* loaded from: classes.dex */
public class l extends c {

    /* renamed from: m  reason: collision with root package name */
    private TTAdNative f38686m;

    /* renamed from: n  reason: collision with root package name */
    private TTFullScreenVideoAd f38687n;

    /* renamed from: o  reason: collision with root package name */
    private AdSlot f38688o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f38689p;

    /* renamed from: q  reason: collision with root package name */
    private b f38690q;

    /* renamed from: r  reason: collision with root package name */
    private TTFullScreenVideoAd.FullScreenVideoAdInteractionListener f38691r;

    /* compiled from: TTInteractionRewardVideo.java */
    /* loaded from: classes3.dex */
    class a implements TTFullScreenVideoAd.FullScreenVideoAdInteractionListener {
        a() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onAdClose() {
            c.i(l.this.f38638a, 1004);
            l.this.onADClose();
            l lVar = l.this;
            lVar.c(lVar.f38643f);
            l lVar2 = l.this;
            lVar2.a(lVar2.f38643f, lVar2.f38644g, lVar2.f38645h);
        }

        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onAdShow() {
            l.this.f38689p = false;
            c.i(l.this.f38638a, 1003);
            l.this.onADShow();
        }

        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onAdVideoBarClick() {
            u0.c(l.this.f38641d, "rewardVideoAd onAdClicked");
            l.this.onADClick();
        }

        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onSkippedVideo() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onVideoComplete() {
            l.this.onVideoComplete();
        }
    }

    public l(Context context, String str, String str2) {
        super(GlobalSetting.TT_SDK_WRAPPER, context, str, str2);
        this.f38689p = false;
    }

    private void x(boolean z3) {
        int i2;
        int i4;
        if (j.d() != null) {
            i2 = j.d().x;
            i4 = j.d().y;
        } else {
            i2 = LogType.UNEXP_ANR;
            i4 = 720;
        }
        this.f38688o = new AdSlot.Builder().setCodeId(this.f38640c).setAdCount(1).setImageAcceptedSize(i2, i4).setAdLoadType(z3 ? TTAdLoadType.LOAD : TTAdLoadType.PRELOAD).setExpressViewAcceptedSize(500.0f, 500.0f).build();
    }

    @Override // com.join.mgps.ad.c
    public void e() {
        if (this.f38690q == null) {
            this.f38690q = new b();
        }
        j.f(this.f38638a, this.f38639b, this.f38690q);
    }

    @Override // com.join.mgps.ad.c
    protected boolean f() {
        if (c.f38637l) {
            StringBuilder sb = new StringBuilder();
            sb.append("RewardVideoAd:");
            sb.append(this.f38687n != null);
            sb.append("hasLoaded:");
            sb.append(this.f38689p);
        }
        return this.f38687n != null && this.f38689p;
    }

    @Override // com.join.mgps.ad.c
    public void h(boolean z3) {
        try {
            this.f38689p = false;
            if (c.f38637l) {
                StringBuilder sb = new StringBuilder();
                sb.append("load:");
                sb.append(z3);
            }
            x(z3);
            if (this.f38690q == null) {
                this.f38690q = new b();
            }
            this.f38690q.a(z3);
            if (this.f38647j) {
                return;
            }
            this.f38647j = true;
            TTAdNative createAdNative = j.c().createAdNative(this.f38638a);
            this.f38686m = createAdNative;
            if (createAdNative != null) {
                createAdNative.loadFullScreenVideoAd(this.f38688o, this.f38690q);
            } else {
                onError(-1, "广告加载错误");
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            this.f38647j = false;
            onError(-1, "广告加载错误");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.ad.c
    public void t(Activity activity) {
        super.t(activity);
        this.f38689p = false;
        if (this.f38691r == null) {
            this.f38691r = new a();
        }
        this.f38687n.setFullScreenVideoAdInteractionListener(this.f38691r);
        this.f38687n.showFullScreenVideoAd(activity);
    }

    public void w() {
        if (this.f38687n != null) {
            this.f38687n = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TTInteractionRewardVideo.java */
    /* loaded from: classes3.dex */
    public class b implements TTAdNative.FullScreenVideoAdListener, TTAdSdk.InitCallback {

        /* renamed from: a  reason: collision with root package name */
        boolean f38693a = false;

        b() {
        }

        public void a(boolean z3) {
            this.f38693a = z3;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void fail(int i2, String str) {
            l.this.onError(i2, str);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener, com.bytedance.sdk.openadsdk.common.CommonListener
        public void onError(int i2, String str) {
            l.this.f38689p = false;
            l lVar = l.this;
            lVar.f38647j = false;
            lVar.onError(i2, str);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
        public void onFullScreenVideoAdLoad(TTFullScreenVideoAd tTFullScreenVideoAd) {
            u0.c(l.this.f38641d, "rewardVideoAd loaded");
            l.this.f38689p = true;
            l lVar = l.this;
            lVar.f38647j = false;
            lVar.f38687n = tTFullScreenVideoAd;
            l.this.b(this.f38693a);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
        public void onFullScreenVideoCached() {
            l.this.f38689p = true;
            l lVar = l.this;
            lVar.f38647j = false;
            lVar.onVideoCached();
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void success() {
            l.this.onInitSuccess();
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
        public void onFullScreenVideoCached(TTFullScreenVideoAd tTFullScreenVideoAd) {
            l.this.f38689p = true;
            l lVar = l.this;
            lVar.f38647j = false;
            lVar.onVideoCached();
        }
    }
}
