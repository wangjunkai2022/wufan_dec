package androidx.core.location;

import android.location.GnssStatus;
import android.os.Build;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
@RequiresApi(24)
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
class GnssStatusWrapper extends GnssStatusCompat {

    /* renamed from: a  reason: collision with root package name */
    private final GnssStatus f4367a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GnssStatusWrapper(GnssStatus gnssStatus) {
        this.f4367a = (GnssStatus) Preconditions.checkNotNull(gnssStatus);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GnssStatusWrapper) {
            return this.f4367a.equals(((GnssStatusWrapper) obj).f4367a);
        }
        return false;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getAzimuthDegrees(int i2) {
        return this.f4367a.getAzimuthDegrees(i2);
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getBasebandCn0DbHz(int i2) {
        if (Build.VERSION.SDK_INT >= 30) {
            return this.f4367a.getBasebandCn0DbHz(i2);
        }
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getCarrierFrequencyHz(int i2) {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.f4367a.getCarrierFrequencyHz(i2);
        }
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getCn0DbHz(int i2) {
        return this.f4367a.getCn0DbHz(i2);
    }

    @Override // androidx.core.location.GnssStatusCompat
    public int getConstellationType(int i2) {
        return this.f4367a.getConstellationType(i2);
    }

    @Override // androidx.core.location.GnssStatusCompat
    public float getElevationDegrees(int i2) {
        return this.f4367a.getElevationDegrees(i2);
    }

    @Override // androidx.core.location.GnssStatusCompat
    public int getSatelliteCount() {
        return this.f4367a.getSatelliteCount();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public int getSvid(int i2) {
        return this.f4367a.getSvid(i2);
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasAlmanacData(int i2) {
        return this.f4367a.hasAlmanacData(i2);
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasBasebandCn0DbHz(int i2) {
        if (Build.VERSION.SDK_INT >= 30) {
            return this.f4367a.hasBasebandCn0DbHz(i2);
        }
        return false;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasCarrierFrequencyHz(int i2) {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.f4367a.hasCarrierFrequencyHz(i2);
        }
        return false;
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean hasEphemerisData(int i2) {
        return this.f4367a.hasEphemerisData(i2);
    }

    public int hashCode() {
        return this.f4367a.hashCode();
    }

    @Override // androidx.core.location.GnssStatusCompat
    public boolean usedInFix(int i2) {
        return this.f4367a.usedInFix(i2);
    }
}
