package androidx.core.location;

import android.location.GpsSatellite;
import android.location.GpsStatus;
import android.os.Build;
import androidx.annotation.GuardedBy;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class GpsStatusWrapper extends GnssStatusCompat {

    /* renamed from: f  reason: collision with root package name */
    private static final int f4368f = 0;

    /* renamed from: g  reason: collision with root package name */
    private static final int f4369g = 32;

    /* renamed from: h  reason: collision with root package name */
    private static final int f4370h = 33;

    /* renamed from: i  reason: collision with root package name */
    private static final int f4371i = 64;

    /* renamed from: j  reason: collision with root package name */
    private static final int f4372j = -87;

    /* renamed from: k  reason: collision with root package name */
    private static final int f4373k = 64;

    /* renamed from: l  reason: collision with root package name */
    private static final int f4374l = 24;

    /* renamed from: m  reason: collision with root package name */
    private static final int f4375m = 193;

    /* renamed from: n  reason: collision with root package name */
    private static final int f4376n = 200;

    /* renamed from: o  reason: collision with root package name */
    private static final int f4377o = 200;

    /* renamed from: p  reason: collision with root package name */
    private static final int f4378p = 35;

    /* renamed from: a  reason: collision with root package name */
    private final GpsStatus f4379a;
    @GuardedBy("mWrapped")

    /* renamed from: b  reason: collision with root package name */
    private int f4380b;
    @GuardedBy("mWrapped")

    /* renamed from: c  reason: collision with root package name */
    private Iterator<GpsSatellite> f4381c;
    @GuardedBy("mWrapped")

    /* renamed from: d  reason: collision with root package name */
    private int f4382d;
    @GuardedBy("mWrapped")

    /* renamed from: e  reason: collision with root package name */
    private GpsSatellite f4383e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GpsStatusWrapper(GpsStatus gpsStatus) {
        GpsStatus gpsStatus2 = (GpsStatus) Preconditions.checkNotNull(gpsStatus);
        this.f4379a = gpsStatus2;
        this.f4380b = -1;
        this.f4381c = gpsStatus2.getSatellites().iterator();
        this.f4382d = -1;
        this.f4383e = null;
    }

    private static int a(int i2) {
        if (i2 <= 0 || i2 > 32) {
            if (i2 < 33 || i2 > 64) {
                if (i2 <= 64 || i2 > 88) {
                    if (i2 <= 200 || i2 > 235) {
                        return (i2 < 193 || i2 > 200) ? 0 : 4;
                    }
                    return 5;
                }
                return 3;
            }
            return 2;
        }
        return 1;
    }

    private GpsSatellite b(int i2) {
        GpsSatellite gpsSatellite;
        synchronized (this.f4379a) {
            if (i2 < this.f4382d) {
                this.f4381c = this.f4379a.getSatellites().iterator();
                this.f4382d = -1;
            }
            while (true) {
                int i4 = this.f4382d;
                if (i4 >= i2) {
                    break;
                }
                this.f4382d = i4 + 1;
                if (!this.f4381c.hasNext()) {
                    this.f4383e = null;
                    break;
                }
                this.f4383e = this.f4381c.next();
            }
            gpsSatellite = this.f4383e;
        }
        return (GpsSatellite) Preconditions.checkNotNull(gpsSatellite);
    }

    private static int c(int i2) {
        int a4 = a(i2);
        return a4 != 2 ? a4 != 3 ? a4 != 5 ? i2 : i2 - 200 : i2 - 64 : i2 + 87;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GpsStatusWrapper) {
            return this.f4379a.equals(((GpsStatusWrapper) obj).f4379a);
        }
        return false;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getAzimuthDegrees(int i2) {
        return b(i2).getAzimuth();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getBasebandCn0DbHz(int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getCarrierFrequencyHz(int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getCn0DbHz(int i2) {
        return b(i2).getSnr();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public int getConstellationType(int i2) {
        if (Build.VERSION.SDK_INT < 24) {
            return 1;
        }
        return a(b(i2).getPrn());
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getElevationDegrees(int i2) {
        return b(i2).getElevation();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public int getSatelliteCount() {
        int i2;
        synchronized (this.f4379a) {
            if (this.f4380b == -1) {
                for (GpsSatellite gpsSatellite : this.f4379a.getSatellites()) {
                    this.f4380b++;
                }
                this.f4380b++;
            }
            i2 = this.f4380b;
        }
        return i2;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public int getSvid(int i2) {
        if (Build.VERSION.SDK_INT < 24) {
            return b(i2).getPrn();
        }
        return c(b(i2).getPrn());
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasAlmanacData(int i2) {
        return b(i2).hasAlmanac();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasBasebandCn0DbHz(int i2) {
        return false;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasCarrierFrequencyHz(int i2) {
        return false;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasEphemerisData(int i2) {
        return b(i2).hasEphemeris();
    }

    public int hashCode() {
        return this.f4379a.hashCode();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean usedInFix(int i2) {
        return b(i2).usedInFix();
    }
}
