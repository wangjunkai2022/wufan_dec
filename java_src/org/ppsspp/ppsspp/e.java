package org.ppsspp.ppsspp;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
/* compiled from: LocationHelper.java */
/* loaded from: classes5.dex */
class e implements LocationListener {

    /* renamed from: c  reason: collision with root package name */
    private static final String f73852c = "LocationHelper";

    /* renamed from: a  reason: collision with root package name */
    private LocationManager f73853a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f73854b = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Context context) {
        this.f73853a = (LocationManager) context.getSystemService("location");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (this.f73854b) {
            return;
        }
        try {
            this.f73853a.isProviderEnabled("gps");
            this.f73853a.isProviderEnabled("network");
            this.f73853a.requestLocationUpdates("gps", 1000L, 0.0f, this);
            this.f73853a.requestLocationUpdates("network", 1000L, 0.0f, this);
            this.f73854b = true;
        } catch (SecurityException e4) {
            StringBuilder sb = new StringBuilder();
            sb.append("Cannot start location updates: ");
            sb.append(e4.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        if (this.f73854b) {
            this.f73854b = false;
            this.f73853a.removeUpdates(this);
        }
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        NativeApp.pushNewGpsData((float) location.getLatitude(), (float) location.getLongitude(), (float) location.getAltitude(), location.getSpeed(), location.getBearing(), location.getTime() / 1000);
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String str, int i2, Bundle bundle) {
    }
}
