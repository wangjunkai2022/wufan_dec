package com.wufun.union.ad.gdt;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.qq.e.ads.rewardvideo.RewardVideoAD;
import com.qq.e.ads.rewardvideo.RewardVideoADListener;
import com.qq.e.ads.rewardvideo.ServerSideVerificationOptions;
import com.qq.e.comm.managers.GDTAdSdk;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.qq.e.comm.util.AdError;
import com.wufun.union.ad.AdChannel;
import com.wufun.union.ad.AdService;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ChannelGDT.java */
/* loaded from: classes3.dex */
public class a extends AdChannel {

    /* renamed from: k  reason: collision with root package name */
    public static final int f62307k = 0;

    /* renamed from: l  reason: collision with root package name */
    public static final int f62308l = 1;

    /* renamed from: m  reason: collision with root package name */
    public static final int f62309m = 2;

    /* renamed from: n  reason: collision with root package name */
    public static final int f62310n = 3;

    /* renamed from: o  reason: collision with root package name */
    public static final int f62311o = 4;

    /* renamed from: p  reason: collision with root package name */
    public static final int f62312p = 5;

    /* renamed from: q  reason: collision with root package name */
    public static final int f62313q = 6;

    /* renamed from: r  reason: collision with root package name */
    public static final int f62314r = 7;

    /* renamed from: s  reason: collision with root package name */
    public static final int f62315s = 8;

    /* renamed from: j  reason: collision with root package name */
    RewardVideoAD f62316j;

    /* compiled from: ChannelGDT.java */
    /* renamed from: com.wufun.union.ad.gdt.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0368a implements RewardVideoADListener {
        C0368a() {
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onADClick() {
            a.this.i(5, Boolean.TRUE, "");
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onADClose() {
            a.this.i(6, Boolean.TRUE, "");
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onADExpose() {
            a.this.i(3, Boolean.TRUE, "");
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onADLoad() {
            a.this.i(1, Boolean.TRUE, "");
            ((AdChannel) a.this).f62262a = true;
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onADShow() {
            a.this.i(2, Boolean.TRUE, "");
            Context context = ((AdChannel) a.this).f62266e;
            String str = ((AdChannel) a.this).f62270i;
            AdService.i(context, str, "smallExpAdSDK", ((AdChannel) a.this).f62268g + "");
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onError(AdError adError) {
            try {
                JSONObject jSONObject = new JSONObject();
                if (adError != null) {
                    jSONObject.putOpt("code", Integer.valueOf(adError.getErrorCode()));
                    jSONObject.putOpt("msg", adError.getErrorMsg());
                }
                a.this.i(8, Boolean.TRUE, jSONObject.toString());
            } catch (JSONException e4) {
                e4.printStackTrace();
            }
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onReward(Map<String, Object> map) {
            a.this.i(7, Boolean.TRUE, map.get(ServerSideVerificationOptions.TRANS_ID) + "");
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onVideoCached() {
            ((AdChannel) a.this).f62262a = true;
        }

        @Override // com.qq.e.ads.rewardvideo.RewardVideoADListener
        public void onVideoComplete() {
            a.this.i(4, Boolean.TRUE, "");
            Context context = ((AdChannel) a.this).f62266e;
            String str = ((AdChannel) a.this).f62270i;
            AdService.i(context, str, "smallVideoDoneAdSDK", ((AdChannel) a.this).f62268g + "");
        }
    }

    public a() {
        this.f62264c = AdChannel.Type.GDT;
    }

    @Override // com.wufun.union.ad.AdChannel
    public void d(Context context, String str) {
        this.f62266e = context;
        try {
            GDTAdSdk.init(context, str);
            GlobalSetting.setChannel(1);
            GlobalSetting.setEnableMediationTool(true);
            this.f62263b = true;
            i(0, Boolean.TRUE, "");
        } catch (Exception e4) {
            e4.printStackTrace();
            this.f62263b = false;
            i(0, Boolean.FALSE, "");
        }
    }

    @Override // com.wufun.union.ad.AdChannel
    public void h(String str, float f4, float f5) {
        if (TextUtils.isEmpty(str)) {
            i(1, Boolean.FALSE, "ad code id is must not null");
            return;
        }
        this.f62269h = str;
        this.f62316j = new RewardVideoAD(this.f62266e, str, new C0368a());
        this.f62316j.setServerSideVerificationOptions(new ServerSideVerificationOptions.Builder().build());
        this.f62316j.loadAD();
    }

    @Override // com.wufun.union.ad.AdChannel
    public void m(Activity activity) {
        this.f62316j.showAD(activity);
        this.f62262a = false;
        if (!this.f62267f || TextUtils.isEmpty(this.f62269h)) {
            return;
        }
        g(this.f62269h);
    }
}
