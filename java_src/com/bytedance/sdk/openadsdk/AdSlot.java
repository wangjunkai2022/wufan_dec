package com.bytedance.sdk.openadsdk;

import com.bytedance.sdk.openadsdk.api.a;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class AdSlot implements TTAdSlot {

    /* renamed from: a  reason: collision with root package name */
    private String f10397a;

    /* renamed from: b  reason: collision with root package name */
    private int f10398b;

    /* renamed from: c  reason: collision with root package name */
    private int f10399c;

    /* renamed from: d  reason: collision with root package name */
    private float f10400d;

    /* renamed from: e  reason: collision with root package name */
    private float f10401e;

    /* renamed from: f  reason: collision with root package name */
    private int f10402f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f10403g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f10404h;

    /* renamed from: i  reason: collision with root package name */
    private String f10405i;

    /* renamed from: j  reason: collision with root package name */
    private String f10406j;

    /* renamed from: k  reason: collision with root package name */
    private int f10407k;

    /* renamed from: l  reason: collision with root package name */
    private int f10408l;

    /* renamed from: m  reason: collision with root package name */
    private int f10409m;

    /* renamed from: n  reason: collision with root package name */
    private int f10410n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f10411o;

    /* renamed from: p  reason: collision with root package name */
    private int[] f10412p;

    /* renamed from: q  reason: collision with root package name */
    private String f10413q;

    /* renamed from: r  reason: collision with root package name */
    private int f10414r;

    /* renamed from: s  reason: collision with root package name */
    private String f10415s;

    /* renamed from: t  reason: collision with root package name */
    private String f10416t;

    /* renamed from: u  reason: collision with root package name */
    private String f10417u;

    /* renamed from: v  reason: collision with root package name */
    private String f10418v;

    /* renamed from: w  reason: collision with root package name */
    private String f10419w;

    /* renamed from: x  reason: collision with root package name */
    private String f10420x;

    /* renamed from: y  reason: collision with root package name */
    private TTAdLoadType f10421y;

    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f10422a;

        /* renamed from: g  reason: collision with root package name */
        private String f10428g;

        /* renamed from: j  reason: collision with root package name */
        private int f10431j;

        /* renamed from: k  reason: collision with root package name */
        private String f10432k;

        /* renamed from: l  reason: collision with root package name */
        private int f10433l;

        /* renamed from: m  reason: collision with root package name */
        private float f10434m;

        /* renamed from: n  reason: collision with root package name */
        private float f10435n;

        /* renamed from: p  reason: collision with root package name */
        private int[] f10437p;

        /* renamed from: q  reason: collision with root package name */
        private int f10438q;

        /* renamed from: r  reason: collision with root package name */
        private String f10439r;

        /* renamed from: s  reason: collision with root package name */
        private String f10440s;

        /* renamed from: t  reason: collision with root package name */
        private String f10441t;

        /* renamed from: v  reason: collision with root package name */
        private String f10443v;

        /* renamed from: w  reason: collision with root package name */
        private String f10444w;

        /* renamed from: x  reason: collision with root package name */
        private String f10445x;

        /* renamed from: b  reason: collision with root package name */
        private int f10423b = 640;

        /* renamed from: c  reason: collision with root package name */
        private int f10424c = 320;

        /* renamed from: d  reason: collision with root package name */
        private boolean f10425d = true;

        /* renamed from: e  reason: collision with root package name */
        private boolean f10426e = false;

        /* renamed from: f  reason: collision with root package name */
        private int f10427f = 1;

        /* renamed from: h  reason: collision with root package name */
        private String f10429h = "defaultUser";

        /* renamed from: i  reason: collision with root package name */
        private int f10430i = 2;

        /* renamed from: o  reason: collision with root package name */
        private boolean f10436o = true;

        /* renamed from: u  reason: collision with root package name */
        private TTAdLoadType f10442u = TTAdLoadType.UNKNOWN;

        public AdSlot build() {
            AdSlot adSlot = new AdSlot();
            adSlot.f10397a = this.f10422a;
            adSlot.f10402f = this.f10427f;
            adSlot.f10403g = this.f10425d;
            adSlot.f10404h = this.f10426e;
            adSlot.f10398b = this.f10423b;
            adSlot.f10399c = this.f10424c;
            float f4 = this.f10434m;
            if (f4 <= 0.0f) {
                adSlot.f10400d = this.f10423b;
                adSlot.f10401e = this.f10424c;
            } else {
                adSlot.f10400d = f4;
                adSlot.f10401e = this.f10435n;
            }
            adSlot.f10405i = this.f10428g;
            adSlot.f10406j = this.f10429h;
            adSlot.f10407k = this.f10430i;
            adSlot.f10409m = this.f10431j;
            adSlot.f10411o = this.f10436o;
            adSlot.f10412p = this.f10437p;
            adSlot.f10414r = this.f10438q;
            adSlot.f10415s = this.f10439r;
            adSlot.f10413q = this.f10432k;
            adSlot.f10417u = this.f10443v;
            adSlot.f10418v = this.f10444w;
            adSlot.f10419w = this.f10445x;
            adSlot.f10408l = this.f10433l;
            adSlot.f10416t = this.f10440s;
            adSlot.f10420x = this.f10441t;
            adSlot.f10421y = this.f10442u;
            return adSlot;
        }

        public Builder setAdCount(int i2) {
            if (i2 <= 0) {
                i2 = 1;
                a.c(TTAdConstant.TAG, "setAdCount: adCount must greater than 0 ");
            }
            if (i2 > 20) {
                a.c(TTAdConstant.TAG, "setAdCount: adCount must less than or equal to 20 ");
                i2 = 20;
            }
            this.f10427f = i2;
            return this;
        }

        public Builder setAdId(String str) {
            this.f10443v = str;
            return this;
        }

        public Builder setAdLoadType(TTAdLoadType tTAdLoadType) {
            this.f10442u = tTAdLoadType;
            return this;
        }

        public Builder setAdType(int i2) {
            this.f10433l = i2;
            return this;
        }

        public Builder setAdloadSeq(int i2) {
            this.f10438q = i2;
            return this;
        }

        public Builder setCodeId(String str) {
            this.f10422a = str;
            return this;
        }

        public Builder setCreativeId(String str) {
            this.f10444w = str;
            return this;
        }

        public Builder setExpressViewAcceptedSize(float f4, float f5) {
            this.f10434m = f4;
            this.f10435n = f5;
            return this;
        }

        public Builder setExt(String str) {
            this.f10445x = str;
            return this;
        }

        public Builder setExternalABVid(int... iArr) {
            this.f10437p = iArr;
            return this;
        }

        public Builder setExtraParam(String str) {
            this.f10432k = str;
            return this;
        }

        public Builder setImageAcceptedSize(int i2, int i4) {
            this.f10423b = i2;
            this.f10424c = i4;
            return this;
        }

        public Builder setIsAutoPlay(boolean z3) {
            this.f10436o = z3;
            return this;
        }

        public Builder setMediaExtra(String str) {
            this.f10428g = str;
            return this;
        }

        public Builder setNativeAdType(int i2) {
            this.f10431j = i2;
            return this;
        }

        public Builder setOrientation(int i2) {
            this.f10430i = i2;
            return this;
        }

        public Builder setPrimeRit(String str) {
            this.f10439r = str;
            return this;
        }

        public Builder setSupportDeepLink(boolean z3) {
            this.f10425d = z3;
            return this;
        }

        public Builder setUserData(String str) {
            this.f10441t = str;
            return this;
        }

        public Builder setUserID(String str) {
            this.f10429h = str;
            return this;
        }

        public Builder supportRenderControl() {
            this.f10426e = true;
            return this;
        }

        public Builder withBid(String str) {
            if (str == null) {
                return this;
            }
            this.f10440s = str;
            return this;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public int getAdCount() {
        return this.f10402f;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public String getAdId() {
        return this.f10417u;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public TTAdLoadType getAdLoadType() {
        return this.f10421y;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public int getAdType() {
        return this.f10408l;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public int getAdloadSeq() {
        return this.f10414r;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public String getBidAdm() {
        return this.f10416t;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public String getCodeId() {
        return this.f10397a;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public String getCreativeId() {
        return this.f10418v;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public int getDurationSlotType() {
        return this.f10410n;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public float getExpressViewAcceptedHeight() {
        return this.f10401e;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public float getExpressViewAcceptedWidth() {
        return this.f10400d;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public String getExt() {
        return this.f10419w;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public int[] getExternalABVid() {
        return this.f10412p;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public String getExtraSmartLookParam() {
        return this.f10413q;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public int getImgAcceptedHeight() {
        return this.f10399c;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public int getImgAcceptedWidth() {
        return this.f10398b;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public String getMediaExtra() {
        return this.f10405i;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public int getNativeAdType() {
        return this.f10409m;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public int getOrientation() {
        return this.f10407k;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public String getPrimeRit() {
        String str = this.f10415s;
        return str == null ? "" : str;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public String getUserData() {
        return this.f10420x;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public String getUserID() {
        return this.f10406j;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public boolean isAutoPlay() {
        return this.f10411o;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public boolean isSupportDeepLink() {
        return this.f10403g;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public boolean isSupportRenderConrol() {
        return this.f10404h;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public void setAdCount(int i2) {
        this.f10402f = i2;
    }

    public void setAdLoadType(TTAdLoadType tTAdLoadType) {
        this.f10421y = tTAdLoadType;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public void setDurationSlotType(int i2) {
        this.f10410n = i2;
    }

    public void setExternalABVid(int... iArr) {
        this.f10412p = iArr;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSlot
    public void setNativeAdType(int i2) {
        this.f10409m = i2;
    }

    public void setUserData(String str) {
        this.f10420x = str;
    }

    public JSONObject toJsonObj() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("mCodeId", this.f10397a);
            jSONObject.put("mIsAutoPlay", this.f10411o);
            jSONObject.put("mImgAcceptedWidth", this.f10398b);
            jSONObject.put("mImgAcceptedHeight", this.f10399c);
            jSONObject.put("mExpressViewAcceptedWidth", this.f10400d);
            jSONObject.put("mExpressViewAcceptedHeight", this.f10401e);
            jSONObject.put("mAdCount", this.f10402f);
            jSONObject.put("mSupportDeepLink", this.f10403g);
            jSONObject.put("mSupportRenderControl", this.f10404h);
            jSONObject.put("mMediaExtra", this.f10405i);
            jSONObject.put("mUserID", this.f10406j);
            jSONObject.put("mOrientation", this.f10407k);
            jSONObject.put("mNativeAdType", this.f10409m);
            jSONObject.put("mAdloadSeq", this.f10414r);
            jSONObject.put("mPrimeRit", this.f10415s);
            jSONObject.put("mExtraSmartLookParam", this.f10413q);
            jSONObject.put("mAdId", this.f10417u);
            jSONObject.put("mCreativeId", this.f10418v);
            jSONObject.put("mExt", this.f10419w);
            jSONObject.put("mBidAdm", this.f10416t);
            jSONObject.put("mUserData", this.f10420x);
            jSONObject.put("mAdLoadType", this.f10421y);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public String toString() {
        return "AdSlot{mCodeId='" + this.f10397a + "', mImgAcceptedWidth=" + this.f10398b + ", mImgAcceptedHeight=" + this.f10399c + ", mExpressViewAcceptedWidth=" + this.f10400d + ", mExpressViewAcceptedHeight=" + this.f10401e + ", mAdCount=" + this.f10402f + ", mSupportDeepLink=" + this.f10403g + ", mSupportRenderControl=" + this.f10404h + ", mMediaExtra='" + this.f10405i + "', mUserID='" + this.f10406j + "', mOrientation=" + this.f10407k + ", mNativeAdType=" + this.f10409m + ", mIsAutoPlay=" + this.f10411o + ", mPrimeRit" + this.f10415s + ", mAdloadSeq" + this.f10414r + ", mAdId" + this.f10417u + ", mCreativeId" + this.f10418v + ", mExt" + this.f10419w + ", mUserData" + this.f10420x + ", mAdLoadType" + this.f10421y + '}';
    }

    private AdSlot() {
        this.f10407k = 2;
        this.f10411o = true;
    }
}
