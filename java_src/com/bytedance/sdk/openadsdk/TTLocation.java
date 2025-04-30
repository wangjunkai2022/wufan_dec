package com.bytedance.sdk.openadsdk;
/* loaded from: classes2.dex */
public class TTLocation implements LocationProvider {

    /* renamed from: a  reason: collision with root package name */
    private double f10495a;

    /* renamed from: b  reason: collision with root package name */
    private double f10496b;

    public TTLocation(double d4, double d5) {
        this.f10495a = 0.0d;
        this.f10496b = 0.0d;
        this.f10495a = d4;
        this.f10496b = d5;
    }

    @Override // com.bytedance.sdk.openadsdk.LocationProvider
    public double getLatitude() {
        return this.f10495a;
    }

    @Override // com.bytedance.sdk.openadsdk.LocationProvider
    public double getLongitude() {
        return this.f10496b;
    }

    public void setLatitude(double d4) {
        this.f10495a = d4;
    }

    public void setLongitude(double d4) {
        this.f10496b = d4;
    }
}
