package com.join.mgps.ad;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdLoadType;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.join.mgps.Util.u0;
import com.qq.e.comm.managers.setting.GlobalSetting;
import java.util.Map;
/* compiled from: TTRewardVideo.java */
/* loaded from: classes3.dex */
public class m extends c {

    /* renamed from: m  reason: collision with root package name */
    private TTAdNative f38695m;

    /* renamed from: n  reason: collision with root package name */
    private TTRewardVideoAd f38696n;

    /* renamed from: o  reason: collision with root package name */
    private AdSlot f38697o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f38698p;

    /* renamed from: q  reason: collision with root package name */
    private b f38699q;

    /* renamed from: r  reason: collision with root package name */
    private TTRewardVideoAd.RewardAdInteractionListener f38700r;

    /* compiled from: TTRewardVideo.java */
    /* loaded from: classes3.dex */
    class a implements TTRewardVideoAd.RewardAdInteractionListener {
        a() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdClose() {
            c.i(m.this.f38638a, 3);
            m.this.onADClose();
            m mVar = m.this;
            mVar.c(mVar.f38643f);
            m mVar2 = m.this;
            mVar2.a(mVar2.f38643f, mVar2.f38644g, mVar2.f38645h);
            m mVar3 = m.this;
            mVar3.d(mVar3.f38643f, mVar3.f38644g, mVar3.f38645h, mVar3.f38648k);
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdShow() {
            m.this.f38698p = false;
            c.i(m.this.f38638a, 1);
            m.this.onADShow();
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdVideoBarClick() {
            c.i(m.this.f38638a, 2);
            u0.c(m.this.f38641d, "rewardVideoAd bar click");
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onRewardArrived(boolean z3, int i2, Bundle bundle) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onRewardVerify(boolean z3, int i2, String str, int i4, String str2) {
            String str3 = m.this.f38641d;
            u0.c(str3, "verify:" + z3 + " amount:" + i2 + " name:" + str);
            c.i(m.this.f38638a, 6);
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onSkippedVideo() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onVideoComplete() {
            c.i(m.this.f38638a, 4);
            m.this.onVideoComplete();
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onVideoError() {
            m mVar = m.this;
            Map<String, Object> map = mVar.f38648k;
            if (map != null) {
                c.j(mVar.f38638a, 5, map);
            } else {
                c.i(mVar.f38638a, 5);
            }
        }
    }

    public m(Context context, String str, String str2) {
        super(GlobalSetting.TT_SDK_WRAPPER, context, str, str2);
        this.f38698p = false;
    }

    private void w(boolean z3) {
        this.f38697o = new AdSlot.Builder().setCodeId(this.f38640c).setAdCount(1).setImageAcceptedSize(1080, 1920).setAdLoadType(z3 ? TTAdLoadType.LOAD : TTAdLoadType.PRELOAD).setUserID("user123").setMediaExtra("media_extra").build();
    }

    @Override // com.join.mgps.ad.c
    public void e() {
        if (this.f38699q == null) {
            this.f38699q = new b();
        }
        j.f(this.f38638a, this.f38639b, this.f38699q);
    }

    @Override // com.join.mgps.ad.c
    protected boolean f() {
        if (c.f38637l) {
            StringBuilder sb = new StringBuilder();
            sb.append("RewardVideoAd:");
            sb.append(this.f38696n != null);
            sb.append("hasLoaded:");
            sb.append(this.f38698p);
        }
        return this.f38696n != null && this.f38698p;
    }

    @Override // com.join.mgps.ad.c
    public void h(boolean z3) {
        try {
            this.f38698p = false;
            if (c.f38637l) {
                StringBuilder sb = new StringBuilder();
                sb.append("load:");
                sb.append(z3);
            }
            w(z3);
            if (this.f38699q == null) {
                this.f38699q = new b();
            }
            this.f38699q.a(z3);
            if (this.f38647j) {
                return;
            }
            this.f38647j = true;
            if (this.f38695m == null) {
                this.f38695m = j.c().createAdNative(this.f38638a);
            }
            TTAdNative tTAdNative = this.f38695m;
            if (tTAdNative != null) {
                tTAdNative.loadRewardVideoAd(this.f38697o, this.f38699q);
                return;
            }
            Map<String, Object> map = this.f38648k;
            if (map != null) {
                c.j(this.f38638a, 5, map);
            } else {
                c.i(this.f38638a, 5);
            }
            onError(-1, "广告加载错误");
        } catch (Exception e4) {
            e4.printStackTrace();
            this.f38647j = false;
            Map<String, Object> map2 = this.f38648k;
            if (map2 != null) {
                c.j(this.f38638a, 5, map2);
            } else {
                c.i(this.f38638a, 5);
            }
            onError(-1, "广告加载错误");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.ad.c
    public void t(Activity activity) {
        super.t(activity);
        if (this.f38700r == null) {
            this.f38700r = new a();
        }
        this.f38696n.setRewardAdInteractionListener(this.f38700r);
        this.f38696n.showRewardVideoAd(activity);
        this.f38696n = null;
    }

    /* compiled from: TTRewardVideo.java */
    /* loaded from: classes3.dex */
    class b implements TTAdNative.RewardVideoAdListener, TTAdSdk.InitCallback {

        /* renamed from: a  reason: collision with root package name */
        boolean f38702a = false;

        b() {
        }

        public void a(boolean z3) {
            this.f38702a = z3;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void fail(int i2, String str) {
            m mVar = m.this;
            Map<String, Object> map = mVar.f38648k;
            if (map != null) {
                c.j(mVar.f38638a, 5, map);
            } else {
                c.i(mVar.f38638a, 5);
            }
            m.this.onError(i2, str);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener, com.bytedance.sdk.openadsdk.common.CommonListener
        public void onError(int i2, String str) {
            m.this.f38698p = false;
            m mVar = m.this;
            mVar.f38647j = false;
            Map<String, Object> map = mVar.f38648k;
            if (map != null) {
                c.j(mVar.f38638a, 5, map);
            } else {
                c.i(mVar.f38638a, 5);
            }
            m.this.onError(i2, str);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoAdLoad(TTRewardVideoAd tTRewardVideoAd) {
            u0.c(m.this.f38641d, "rewardVideoAd loaded");
            m.this.f38698p = true;
            m mVar = m.this;
            mVar.f38647j = false;
            mVar.f38696n = tTRewardVideoAd;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoCached() {
            u0.c(m.this.f38641d, "rewardVideoAd video cached");
            m.this.f38698p = true;
            m mVar = m.this;
            mVar.f38647j = false;
            mVar.onVideoCached();
            m.this.b(this.f38702a);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void success() {
            m.this.onInitSuccess();
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoCached(TTRewardVideoAd tTRewardVideoAd) {
            m.this.f38698p = true;
            m mVar = m.this;
            mVar.f38647j = false;
            mVar.f38696n = tTRewardVideoAd;
            m.this.onVideoCached();
        }
    }
}
