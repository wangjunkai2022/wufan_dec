package com.wufun.union.ad.bytedance;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdConfig;
import com.bytedance.sdk.openadsdk.TTAdLoadType;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.wufun.union.ad.AdChannel;
import com.wufun.union.ad.AdService;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ChannelTT.java */
/* loaded from: classes3.dex */
public class a extends AdChannel {

    /* renamed from: m  reason: collision with root package name */
    public static final int f62286m = 0;

    /* renamed from: n  reason: collision with root package name */
    public static final int f62287n = 1;

    /* renamed from: o  reason: collision with root package name */
    public static final int f62288o = 2;

    /* renamed from: p  reason: collision with root package name */
    public static final int f62289p = 3;

    /* renamed from: q  reason: collision with root package name */
    public static final int f62290q = 4;

    /* renamed from: r  reason: collision with root package name */
    public static final int f62291r = 5;

    /* renamed from: s  reason: collision with root package name */
    public static final int f62292s = 6;

    /* renamed from: t  reason: collision with root package name */
    public static final int f62293t = 7;

    /* renamed from: u  reason: collision with root package name */
    public static final int f62294u = 8;

    /* renamed from: j  reason: collision with root package name */
    private boolean f62295j = false;

    /* renamed from: k  reason: collision with root package name */
    TTAdNative f62296k;

    /* renamed from: l  reason: collision with root package name */
    TTRewardVideoAd f62297l;

    /* compiled from: ChannelTT.java */
    /* renamed from: com.wufun.union.ad.bytedance.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0367a implements TTAdSdk.InitCallback {
        C0367a() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void fail(int i2, String str) {
            ((AdChannel) a.this).f62263b = false;
            a aVar = a.this;
            Boolean bool = Boolean.FALSE;
            aVar.i(0, bool, "[" + i2 + ", " + str + "]");
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void success() {
            ((AdChannel) a.this).f62263b = true;
            a.this.i(0, Boolean.TRUE, "");
        }
    }

    /* compiled from: ChannelTT.java */
    /* loaded from: classes3.dex */
    class b implements TTAdNative.RewardVideoAdListener {
        b() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener, com.bytedance.sdk.openadsdk.common.CommonListener
        public void onError(int i2, String str) {
            a aVar = a.this;
            Boolean bool = Boolean.FALSE;
            aVar.i(1, bool, "[" + i2 + ", " + str + "]");
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoAdLoad(TTRewardVideoAd tTRewardVideoAd) {
            a aVar = a.this;
            aVar.f62297l = tTRewardVideoAd;
            ((AdChannel) aVar).f62262a = true;
            a.this.i(1, Boolean.TRUE, "");
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoCached() {
            ((AdChannel) a.this).f62262a = true;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
        public void onRewardVideoCached(TTRewardVideoAd tTRewardVideoAd) {
            a aVar = a.this;
            aVar.f62297l = tTRewardVideoAd;
            ((AdChannel) aVar).f62262a = true;
        }
    }

    /* compiled from: ChannelTT.java */
    /* loaded from: classes3.dex */
    class c implements TTRewardVideoAd.RewardAdInteractionListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f62300a;

        c(Activity activity) {
            this.f62300a = activity;
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdClose() {
            try {
                this.f62300a.finish();
                a.this.i(6, Boolean.TRUE, "");
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdShow() {
            a.this.i(3, Boolean.TRUE, "");
            Context context = ((AdChannel) a.this).f62266e;
            String str = ((AdChannel) a.this).f62270i;
            AdService.i(context, str, "smallExpAdSDK", ((AdChannel) a.this).f62268g + "");
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdVideoBarClick() {
            a.this.i(5, Boolean.TRUE, "");
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onRewardArrived(boolean z3, int i2, Bundle bundle) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("isRewardValid", Boolean.valueOf(z3));
                jSONObject.putOpt("rewardType", Integer.valueOf(i2));
                com.wufun.union.ad.bytedance.b bVar = new com.wufun.union.ad.bytedance.b(bundle);
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("rewardAmount", Integer.valueOf(bVar.a()));
                jSONObject2.putOpt("rewardName", bVar.b());
                jSONObject2.putOpt("rewardPropose", Float.valueOf(bVar.c()));
                jSONObject2.putOpt("errorCode", Integer.valueOf(bVar.d()));
                jSONObject2.putOpt("errorMsg", bVar.e());
                jSONObject.putOpt("extraInfo", jSONObject2);
                a.this.i(8, Boolean.TRUE, jSONObject.toString());
            } catch (JSONException e4) {
                e4.printStackTrace();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onRewardVerify(boolean z3, int i2, String str, int i4, String str2) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt("rewardVerify", Boolean.valueOf(z3));
                jSONObject.putOpt("rewardAmount", Integer.valueOf(i2));
                jSONObject.putOpt("rewardName", str);
                jSONObject.putOpt("code", Integer.valueOf(i4));
                jSONObject.putOpt("msg", str2);
                a.this.i(7, Boolean.TRUE, jSONObject.toString());
            } catch (JSONException e4) {
                e4.printStackTrace();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onSkippedVideo() {
            a.this.i(4, Boolean.TRUE, "");
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onVideoComplete() {
            a.this.i(2, Boolean.TRUE, "");
            Context context = ((AdChannel) a.this).f62266e;
            String str = ((AdChannel) a.this).f62270i;
            AdService.i(context, str, "smallVideoDoneAdSDK", ((AdChannel) a.this).f62268g + "");
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onVideoError() {
            a.this.i(2, Boolean.FALSE, "");
        }
    }

    public a() {
        this.f62264c = AdChannel.Type.TT;
    }

    @Override // com.wufun.union.ad.AdChannel
    public void d(Context context, String str) {
        this.f62266e = context;
        TTAdSdk.init(context, new TTAdConfig.Builder().appId(str).useTextureView(true).appName("悟饭游戏厅_android").titleBarTheme(0).directDownloadNetworkType(4, 3, 5).supportMultiProcess(true).needClearTaskReset(new String[0]).allowShowNotify(true).build(), new C0367a());
        this.f62296k = TTAdSdk.getAdManager().createAdNative(context);
    }

    @Override // com.wufun.union.ad.AdChannel
    public void h(String str, float f4, float f5) {
        if (this.f62296k != null && TTAdSdk.isInitSuccess()) {
            if (TextUtils.isEmpty(str)) {
                i(1, Boolean.FALSE, "ad code id is must not null");
                return;
            }
            this.f62269h = str;
            this.f62296k.loadRewardVideoAd(new AdSlot.Builder().setCodeId(str).setExpressViewAcceptedSize(f4, f5).setOrientation(2).setAdLoadType(TTAdLoadType.PRELOAD).build(), new b());
            return;
        }
        i(1, Boolean.FALSE, "ad sdk not init");
    }

    @Override // com.wufun.union.ad.AdChannel
    public void m(Activity activity) {
        if (activity == null) {
            return;
        }
        if (this.f62297l != null && this.f62262a) {
            c cVar = new c(activity);
            this.f62297l.setRewardAdInteractionListener(cVar);
            this.f62297l.setRewardPlayAgainInteractionListener(cVar);
            this.f62297l.showRewardVideoAd(activity);
            this.f62297l = null;
            this.f62262a = false;
            if (!this.f62295j || TextUtils.isEmpty(this.f62269h)) {
                return;
            }
            g(this.f62269h);
        } else if (TextUtils.isEmpty(this.f62269h)) {
        } else {
            g(this.f62269h);
        }
    }
}
