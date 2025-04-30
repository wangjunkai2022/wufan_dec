package com.join.mgps.ad;

import android.app.Activity;
import android.content.Context;
import com.join.mgps.Util.u0;
import com.qq.e.ads.rewardvideo.RewardVideoAD;
import com.qq.e.ads.rewardvideo.RewardVideoADListener;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import com.qq.e.comm.managers.GDTAdSdk;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.qq.e.comm.util.AdError;
import java.util.Map;
/* compiled from: GDTRewardVideo.java */
/* loaded from: classes3.dex */
public class e extends c {

    /* renamed from: p  reason: collision with root package name */
    public static boolean f38656p;

    /* renamed from: m  reason: collision with root package name */
    private RewardVideoAD f38657m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f38658n;

    /* renamed from: o  reason: collision with root package name */
    private a f38659o;

    /* compiled from: GDTRewardVideo.java */
    /* loaded from: classes3.dex */
    class a implements RewardVideoADListener {

        /* renamed from: a  reason: collision with root package name */
        boolean f38660a = false;

        a() {
        }

        public void a(boolean z3) {
            this.f38660a = z3;
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onADClick() {
            c.i(e.this.f38638a, 2);
            u0.c(e.this.f38641d, "rewardVideoAd bar click");
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onADClose() {
            c.i(e.this.f38638a, 3);
            e.this.onADClose();
            e eVar = e.this;
            eVar.c(eVar.f38643f);
            e eVar2 = e.this;
            eVar2.a(eVar2.f38643f, eVar2.f38644g, eVar2.f38645h);
            e eVar3 = e.this;
            eVar3.d(eVar3.f38643f, eVar3.f38644g, eVar3.f38645h, eVar3.f38648k);
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onADExpose() {
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onADLoad() {
            e.this.f38658n = true;
            e eVar = e.this;
            eVar.f38647j = false;
            eVar.b(this.f38660a);
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onADShow() {
            e.this.f38658n = false;
            c.i(e.this.f38638a, 1);
            e.this.onADShow();
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onError(AdError adError) {
            e.this.f38658n = false;
            e eVar = e.this;
            eVar.f38647j = false;
            Map<String, Object> map = eVar.f38648k;
            if (map != null) {
                c.j(eVar.f38638a, 5, map);
            } else {
                c.i(eVar.f38638a, 5);
            }
            e.this.onError(adError.getErrorCode(), adError.getErrorMsg());
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onReward(Map<String, Object> map) {
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onVideoCached() {
            e.this.f38658n = true;
            e eVar = e.this;
            eVar.f38647j = false;
            eVar.onVideoCached();
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onVideoComplete() {
            c.i(e.this.f38638a, 4);
            e.this.onVideoComplete();
        }
    }

    public e(Context context, String str, String str2) {
        super("GDT", context, str, str2);
        this.f38658n = false;
    }

    @Override // com.join.mgps.ad.c
    public void e() {
        try {
            if (!f38656p) {
                GDTAdSdk.init(this.f38638a, this.f38639b);
                GlobalSetting.setChannel(1);
                GlobalSetting.setEnableMediationTool(true);
                f38656p = true;
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
        return this.f38657m != null && this.f38658n;
    }

    @Override // com.join.mgps.ad.c
    public void h(boolean z3) {
        this.f38658n = false;
        if (c.f38637l) {
            StringBuilder sb = new StringBuilder();
            sb.append("load:");
            sb.append(z3);
        }
        try {
            if (this.f38659o == null) {
                this.f38659o = new a();
            }
            this.f38659o.a(z3);
            if (this.f38647j) {
                return;
            }
            this.f38647j = true;
            if (this.f38657m == null) {
                this.f38657m = new RewardVideoAD(this.f38638a, this.f38640c, this.f38659o, true);
            }
            this.f38657m.setServerSideVerificationOptions(new ServerSideVerificationOptions.Builder().build());
            this.f38657m.loadAD();
        } catch (Exception e4) {
            e4.printStackTrace();
            Map<String, Object> map = this.f38648k;
            if (map != null) {
                c.j(this.f38638a, 5, map);
            } else {
                c.i(this.f38638a, 5);
            }
            onError(-1, "广告初始化错误");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.ad.c
    public void t(Activity activity) {
        super.t(activity);
        this.f38657m.showAD(activity);
    }
}
