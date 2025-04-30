package com.join.mgps.ad;

import android.app.Activity;
import android.content.Context;
import com.join.mgps.Util.u0;
import com.qq.e.ads.interstitial2.UnifiedInterstitialAD;
import com.qq.e.ads.interstitial2.UnifiedInterstitialADListener;
import com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener;
import com.qq.e.comm.listeners.NegativeFeedbackListener;
import com.qq.e.comm.managers.GDTAdSdk;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.qq.e.comm.util.AdError;
/* compiled from: GDTInteractionRewardVideo.java */
/* loaded from: classes.dex */
public class d extends c {

    /* renamed from: p  reason: collision with root package name */
    public static boolean f38649p;

    /* renamed from: m  reason: collision with root package name */
    private UnifiedInterstitialAD f38650m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f38651n;

    /* renamed from: o  reason: collision with root package name */
    private b f38652o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GDTInteractionRewardVideo.java */
    /* loaded from: classes3.dex */
    public class a implements NegativeFeedbackListener {
        a() {
        }

        @Override // com.qq.e.comm.listeners.NegativeFeedbackListener
        public void onComplainSuccess() {
            String str = d.this.f38641d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GDTInteractionRewardVideo.java */
    /* loaded from: classes3.dex */
    public class b implements UnifiedInterstitialADListener, UnifiedInterstitialMediaListener {

        /* renamed from: a  reason: collision with root package name */
        boolean f38654a = false;

        b() {
        }

        public void a(boolean z3) {
            this.f38654a = z3;
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onADClicked() {
            u0.c(d.this.f38641d, "rewardVideoAd bar click");
            d.this.onADClick();
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onADClosed() {
            c.i(d.this.f38638a, 1004);
            d.this.onADClose();
            d dVar = d.this;
            dVar.c(dVar.f38643f);
            d dVar2 = d.this;
            dVar2.a(dVar2.f38643f, dVar2.f38644g, dVar2.f38645h);
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onADExposure() {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onADLeftApplication() {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onADOpened() {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onADReceive() {
            d.this.f38651n = true;
            d dVar = d.this;
            dVar.f38647j = false;
            dVar.b(this.f38654a);
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onNoAD(AdError adError) {
            d.this.f38651n = false;
            d dVar = d.this;
            dVar.f38647j = false;
            dVar.onError(adError.getErrorCode(), adError.getErrorMsg());
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onRenderFail() {
            d.this.f38651n = false;
            d dVar = d.this;
            dVar.f38647j = false;
            c.i(dVar.f38638a, 1004);
            d.this.onError(-1, "广告渲染失败");
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onRenderSuccess() {
            d.this.f38651n = false;
            c.i(d.this.f38638a, 1003);
            d.this.onADShow();
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
        public void onVideoCached() {
            d.this.f38651n = true;
            d dVar = d.this;
            dVar.f38647j = false;
            dVar.onVideoCached();
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoComplete() {
            d.this.onVideoComplete();
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoError(AdError adError) {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoInit() {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoLoading() {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoPageClose() {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoPageOpen() {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoPause() {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoReady(long j4) {
        }

        @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
        public void onVideoStart() {
        }
    }

    public d(Context context, String str, String str2) {
        super("GDT", context, str, str2);
        this.f38651n = false;
    }

    @Override // com.join.mgps.ad.c
    public void e() {
        try {
            if (!f38649p) {
                GDTAdSdk.init(this.f38638a, this.f38639b);
                GlobalSetting.setChannel(1);
                GlobalSetting.setEnableMediationTool(true);
                f38649p = true;
                onInitSuccess();
            } else {
                onInitSuccess();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.join.mgps.ad.c
    protected boolean f() {
        return this.f38650m != null && this.f38651n;
    }

    @Override // com.join.mgps.ad.c
    public void h(boolean z3) {
        this.f38651n = false;
        if (c.f38637l) {
            StringBuilder sb = new StringBuilder();
            sb.append("load:");
            sb.append(z3);
        }
        try {
            if (this.f38652o == null) {
                this.f38652o = new b();
            }
            this.f38652o.a(z3);
            if (this.f38647j) {
                return;
            }
            this.f38647j = true;
            UnifiedInterstitialAD unifiedInterstitialAD = this.f38650m;
            if (unifiedInterstitialAD != null) {
                unifiedInterstitialAD.close();
                this.f38650m.destroy();
            }
            UnifiedInterstitialAD unifiedInterstitialAD2 = new UnifiedInterstitialAD(this.f38642e, this.f38640c, this.f38652o);
            this.f38650m = unifiedInterstitialAD2;
            unifiedInterstitialAD2.setNegativeFeedbackListener(new a());
            this.f38650m.setMediaListener(this.f38652o);
            this.f38650m.loadAD();
        } catch (Exception e4) {
            e4.printStackTrace();
            onError(-1, "广告加载错误");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.ad.c
    public void t(Activity activity) {
        super.t(activity);
        this.f38651n = false;
        this.f38650m.show(activity);
    }

    public void v() {
        UnifiedInterstitialAD unifiedInterstitialAD = this.f38650m;
        if (unifiedInterstitialAD != null) {
            unifiedInterstitialAD.destroy();
        }
    }
}
