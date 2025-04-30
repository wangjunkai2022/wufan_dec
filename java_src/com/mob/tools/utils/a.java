package com.mob.tools.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import com.mob.commons.n;
import com.mob.tools.MobLog;
import com.mob.tools.a.l;
@SuppressLint({"MissingPermission"})
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static a f53971a;

    /* renamed from: b  reason: collision with root package name */
    private Location f53972b;

    /* renamed from: c  reason: collision with root package name */
    private Location f53973c;

    /* renamed from: d  reason: collision with root package name */
    private LocationManager f53974d;

    /* renamed from: e  reason: collision with root package name */
    private LocationListener f53975e = new LocationListener() { // from class: com.mob.tools.utils.a.1
        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            try {
                a.this.f53974d.removeUpdates(this);
                a.this.f53973c = new Location(location);
                a.this.f53972b = new Location(location);
                a.this.f53976f = System.currentTimeMillis();
                synchronized (a.this) {
                    notifyAll();
                }
            } catch (Throwable unused) {
            }
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
    };

    /* renamed from: f  reason: collision with root package name */
    private long f53976f;

    private a() {
    }

    private Location b(Context context, int i2, int i4, boolean z3) {
        Location location = null;
        try {
            DeviceHelper deviceHelper = DeviceHelper.getInstance(context);
            if (deviceHelper.checkPermission(n.a("039KcecjGgAcgdbcd gLdk*dhBcgOkIcdefefcddbcjdkdifffffcdgdgccejdfdefcccdjekffdidhdfekde"))) {
                if (this.f53974d == null) {
                    this.f53974d = (LocationManager) deviceHelper.getSystemServiceSafe("location");
                }
                if (this.f53974d == null) {
                    return null;
                }
                synchronized (this) {
                    boolean z4 = true;
                    if ((i2 != 0) && this.f53974d.isProviderEnabled("gps")) {
                        try {
                            l.a(context).a().a(n.a("003Ree-dGef"), 1000L, 0.0f, this.f53975e);
                            wait(i2 * 1000);
                        } catch (Throwable th) {
                            MobLog.getInstance().d(th);
                        }
                        this.f53974d.removeUpdates(this.f53975e);
                    }
                    if (i4 == 0) {
                        z4 = false;
                    }
                    if (z4 && this.f53974d.isProviderEnabled("network")) {
                        try {
                            l.a(context).a().a(n.a("007*cj;hc7ecdbcgci"), 1000L, 0.0f, this.f53975e);
                            wait(i4 * 1000);
                        } catch (Throwable th2) {
                            MobLog.getInstance().d(th2);
                        }
                        this.f53974d.removeUpdates(this.f53975e);
                    }
                }
            }
            if (this.f53973c == null && z3) {
                Location b4 = l.a(context).a().b(n.a("003^eeRd@ef"));
                this.f53973c = b4;
                if (b4 == null) {
                    this.f53973c = l.a(context).a().b(n.a("007<cj^hc4ecdbcgci"));
                }
            }
            if (this.f53973c != null) {
                this.f53972b = new Location(this.f53973c);
                this.f53976f = System.currentTimeMillis();
                Location location2 = new Location(this.f53973c);
                try {
                    this.f53973c = null;
                    return location2;
                } catch (Throwable th3) {
                    location = location2;
                    th = th3;
                    MobLog.getInstance().d(th);
                    return location;
                }
            }
            return null;
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public static a a() {
        if (f53971a == null) {
            synchronized (a.class) {
                if (f53971a == null) {
                    f53971a = new a();
                }
            }
        }
        return f53971a;
    }

    public Location a(Context context, int i2, int i4, boolean z3) {
        return a(context, i2, i4, z3, false);
    }

    public Location a(Context context, int i2, int i4, boolean z3, boolean z4) {
        Location a4 = a(z4);
        if (a4 == null) {
            synchronized (a.class) {
                Location a5 = a(z4);
                a4 = a5 == null ? b(context, i2, i4, z3) : a5;
            }
        }
        return a4;
    }

    private Location a(boolean z3) {
        if (z3 || this.f53972b == null || System.currentTimeMillis() - this.f53976f > 180000) {
            return null;
        }
        return new Location(this.f53972b);
    }
}
