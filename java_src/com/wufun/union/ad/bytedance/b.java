package com.wufun.union.ad.bytedance;

import android.os.Bundle;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
/* compiled from: RewardBundleModel.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private int f62302a;

    /* renamed from: b  reason: collision with root package name */
    private String f62303b;

    /* renamed from: c  reason: collision with root package name */
    private String f62304c;

    /* renamed from: d  reason: collision with root package name */
    private int f62305d;

    /* renamed from: e  reason: collision with root package name */
    private float f62306e;

    public b(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        this.f62302a = bundle.getInt(TTRewardVideoAd.REWARD_EXTRA_KEY_ERROR_CODE);
        this.f62303b = bundle.getString(TTRewardVideoAd.REWARD_EXTRA_KEY_ERROR_MSG);
        this.f62304c = bundle.getString(TTRewardVideoAd.REWARD_EXTRA_KEY_REWARD_NAME);
        this.f62305d = bundle.getInt(TTRewardVideoAd.REWARD_EXTRA_KEY_REWARD_AMOUNT);
        this.f62306e = bundle.getFloat(TTRewardVideoAd.REWARD_EXTRA_KEY_REWARD_PROPOSE);
    }

    public int a() {
        return this.f62305d;
    }

    public String b() {
        return this.f62304c;
    }

    public float c() {
        return this.f62306e;
    }

    public int d() {
        return this.f62302a;
    }

    public String e() {
        return this.f62303b;
    }
}
