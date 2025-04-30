package com.tencent.mm.opensdk.diffdev.a;

import com.bytedance.sdk.openadsdk.TTAdConstant;
/* loaded from: classes4.dex */
public enum d {
    UUID_EXPIRED(402),
    UUID_CANCELED(403),
    UUID_SCANED(TTAdConstant.SDK_NOT_SUPPORT_LIVE_MATE_CODE),
    UUID_CONFIRM(TTAdConstant.LANDING_PAGE_TYPE_CODE),
    UUID_KEEP_CONNECT(TTAdConstant.INTERACTION_TYPE_CODE),
    UUID_ERROR(500);
    

    /* renamed from: a  reason: collision with root package name */
    private int f59909a;

    d(int i2) {
        this.f59909a = i2;
    }

    public int a() {
        return this.f59909a;
    }

    @Override // java.lang.Enum
    public String toString() {
        return "UUIDStatusCode:" + this.f59909a;
    }
}
