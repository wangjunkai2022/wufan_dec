package androidx.core.location;

import android.location.LocationRequest;
import android.os.Build;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import androidx.core.util.TimeUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public final class LocationRequestCompat {
    public static final long PASSIVE_INTERVAL = Long.MAX_VALUE;
    public static final int QUALITY_BALANCED_POWER_ACCURACY = 102;
    public static final int QUALITY_HIGH_ACCURACY = 100;
    public static final int QUALITY_LOW_POWER = 104;

    /* renamed from: h  reason: collision with root package name */
    private static final long f4410h = -1;

    /* renamed from: i  reason: collision with root package name */
    private static Method f4411i;

    /* renamed from: j  reason: collision with root package name */
    private static Method f4412j;

    /* renamed from: k  reason: collision with root package name */
    private static Method f4413k;

    /* renamed from: l  reason: collision with root package name */
    private static Method f4414l;

    /* renamed from: m  reason: collision with root package name */
    private static Method f4415m;

    /* renamed from: a  reason: collision with root package name */
    final int f4416a;

    /* renamed from: b  reason: collision with root package name */
    final long f4417b;

    /* renamed from: c  reason: collision with root package name */
    final long f4418c;

    /* renamed from: d  reason: collision with root package name */
    final long f4419d;

    /* renamed from: e  reason: collision with root package name */
    final int f4420e;

    /* renamed from: f  reason: collision with root package name */
    final float f4421f;

    /* renamed from: g  reason: collision with root package name */
    final long f4422g;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public @interface Quality {
    }

    LocationRequestCompat(long j4, int i2, long j5, int i4, long j6, float f4, long j7) {
        this.f4417b = j4;
        this.f4416a = i2;
        this.f4418c = j6;
        this.f4419d = j5;
        this.f4420e = i4;
        this.f4421f = f4;
        this.f4422g = j7;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocationRequestCompat) {
            LocationRequestCompat locationRequestCompat = (LocationRequestCompat) obj;
            return this.f4416a == locationRequestCompat.f4416a && this.f4417b == locationRequestCompat.f4417b && this.f4418c == locationRequestCompat.f4418c && this.f4419d == locationRequestCompat.f4419d && this.f4420e == locationRequestCompat.f4420e && Float.compare(locationRequestCompat.f4421f, this.f4421f) == 0 && this.f4422g == locationRequestCompat.f4422g;
        }
        return false;
    }

    @IntRange(from = 1)
    public long getDurationMillis() {
        return this.f4419d;
    }

    @IntRange(from = 0)
    public long getIntervalMillis() {
        return this.f4417b;
    }

    @IntRange(from = 0)
    public long getMaxUpdateDelayMillis() {
        return this.f4422g;
    }

    @IntRange(from = 1, to = 2147483647L)
    public int getMaxUpdates() {
        return this.f4420e;
    }

    @FloatRange(from = 0.0d, to = 3.4028234663852886E38d)
    public float getMinUpdateDistanceMeters() {
        return this.f4421f;
    }

    @IntRange(from = 0)
    public long getMinUpdateIntervalMillis() {
        long j4 = this.f4418c;
        return j4 == -1 ? this.f4417b : j4;
    }

    public int getQuality() {
        return this.f4416a;
    }

    public int hashCode() {
        long j4 = this.f4417b;
        long j5 = this.f4418c;
        return (((this.f4416a * 31) + ((int) (j4 ^ (j4 >>> 32)))) * 31) + ((int) (j5 ^ (j5 >>> 32)));
    }

    @NonNull
    @RequiresApi(31)
    public LocationRequest toLocationRequest() {
        return new LocationRequest.Builder(this.f4417b).setQuality(this.f4416a).setMinUpdateIntervalMillis(this.f4418c).setDurationMillis(this.f4419d).setMaxUpdates(this.f4420e).setMinUpdateDistanceMeters(this.f4421f).setMaxUpdateDelayMillis(this.f4422g).build();
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Request[");
        if (this.f4417b != Long.MAX_VALUE) {
            sb.append("@");
            TimeUtils.formatDuration(this.f4417b, sb);
            int i2 = this.f4416a;
            if (i2 == 100) {
                sb.append(" HIGH_ACCURACY");
            } else if (i2 == 102) {
                sb.append(" BALANCED");
            } else if (i2 == 104) {
                sb.append(" LOW_POWER");
            }
        } else {
            sb.append("PASSIVE");
        }
        if (this.f4419d != Long.MAX_VALUE) {
            sb.append(", duration=");
            TimeUtils.formatDuration(this.f4419d, sb);
        }
        if (this.f4420e != Integer.MAX_VALUE) {
            sb.append(", maxUpdates=");
            sb.append(this.f4420e);
        }
        long j4 = this.f4418c;
        if (j4 != -1 && j4 < this.f4417b) {
            sb.append(", minUpdateInterval=");
            TimeUtils.formatDuration(this.f4418c, sb);
        }
        if (this.f4421f > 0.0d) {
            sb.append(", minUpdateDistance=");
            sb.append(this.f4421f);
        }
        if (this.f4422g / 2 > this.f4417b) {
            sb.append(", maxUpdateDelay=");
            TimeUtils.formatDuration(this.f4422g, sb);
        }
        sb.append(']');
        return sb.toString();
    }

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private long f4423a;

        /* renamed from: b  reason: collision with root package name */
        private int f4424b;

        /* renamed from: c  reason: collision with root package name */
        private long f4425c;

        /* renamed from: d  reason: collision with root package name */
        private int f4426d;

        /* renamed from: e  reason: collision with root package name */
        private long f4427e;

        /* renamed from: f  reason: collision with root package name */
        private float f4428f;

        /* renamed from: g  reason: collision with root package name */
        private long f4429g;

        public Builder(long j4) {
            setIntervalMillis(j4);
            this.f4424b = 102;
            this.f4425c = Long.MAX_VALUE;
            this.f4426d = Integer.MAX_VALUE;
            this.f4427e = -1L;
            this.f4428f = 0.0f;
            this.f4429g = 0L;
        }

        @NonNull
        public LocationRequestCompat build() {
            Preconditions.checkState((this.f4423a == Long.MAX_VALUE && this.f4427e == -1) ? false : true, "passive location requests must have an explicit minimum update interval");
            long j4 = this.f4423a;
            return new LocationRequestCompat(j4, this.f4424b, this.f4425c, this.f4426d, Math.min(this.f4427e, j4), this.f4428f, this.f4429g);
        }

        @NonNull
        public Builder clearMinUpdateIntervalMillis() {
            this.f4427e = -1L;
            return this;
        }

        @NonNull
        public Builder setDurationMillis(@IntRange(from = 1) long j4) {
            this.f4425c = Preconditions.checkArgumentInRange(j4, 1L, Long.MAX_VALUE, "durationMillis");
            return this;
        }

        @NonNull
        public Builder setIntervalMillis(@IntRange(from = 0) long j4) {
            this.f4423a = Preconditions.checkArgumentInRange(j4, 0L, Long.MAX_VALUE, "intervalMillis");
            return this;
        }

        @NonNull
        public Builder setMaxUpdateDelayMillis(@IntRange(from = 0) long j4) {
            this.f4429g = j4;
            this.f4429g = Preconditions.checkArgumentInRange(j4, 0L, Long.MAX_VALUE, "maxUpdateDelayMillis");
            return this;
        }

        @NonNull
        public Builder setMaxUpdates(@IntRange(from = 1, to = 2147483647L) int i2) {
            this.f4426d = Preconditions.checkArgumentInRange(i2, 1, Integer.MAX_VALUE, "maxUpdates");
            return this;
        }

        @NonNull
        public Builder setMinUpdateDistanceMeters(@FloatRange(from = 0.0d, to = 3.4028234663852886E38d) float f4) {
            this.f4428f = f4;
            this.f4428f = Preconditions.checkArgumentInRange(f4, 0.0f, Float.MAX_VALUE, "minUpdateDistanceMeters");
            return this;
        }

        @NonNull
        public Builder setMinUpdateIntervalMillis(@IntRange(from = 0) long j4) {
            this.f4427e = Preconditions.checkArgumentInRange(j4, 0L, Long.MAX_VALUE, "minUpdateIntervalMillis");
            return this;
        }

        @NonNull
        public Builder setQuality(int i2) {
            Preconditions.checkArgument(i2 == 104 || i2 == 102 || i2 == 100, "quality must be a defined QUALITY constant, not %d", Integer.valueOf(i2));
            this.f4424b = i2;
            return this;
        }

        public Builder(@NonNull LocationRequestCompat locationRequestCompat) {
            this.f4423a = locationRequestCompat.f4417b;
            this.f4424b = locationRequestCompat.f4416a;
            this.f4425c = locationRequestCompat.f4419d;
            this.f4426d = locationRequestCompat.f4420e;
            this.f4427e = locationRequestCompat.f4418c;
            this.f4428f = locationRequestCompat.f4421f;
            this.f4429g = locationRequestCompat.f4422g;
        }
    }

    @Nullable
    @RequiresApi(19)
    public LocationRequest toLocationRequest(@NonNull String str) {
        if (Build.VERSION.SDK_INT >= 31) {
            return toLocationRequest();
        }
        try {
            if (f4411i == null) {
                Method declaredMethod = LocationRequest.class.getDeclaredMethod("createFromDeprecatedProvider", String.class, Long.TYPE, Float.TYPE, Boolean.TYPE);
                f4411i = declaredMethod;
                declaredMethod.setAccessible(true);
            }
            LocationRequest locationRequest = (LocationRequest) f4411i.invoke(null, str, Long.valueOf(this.f4417b), Float.valueOf(this.f4421f), Boolean.FALSE);
            if (locationRequest == null) {
                return null;
            }
            if (f4412j == null) {
                Method declaredMethod2 = LocationRequest.class.getDeclaredMethod("setQuality", Integer.TYPE);
                f4412j = declaredMethod2;
                declaredMethod2.setAccessible(true);
            }
            f4412j.invoke(locationRequest, Integer.valueOf(this.f4416a));
            if (getMinUpdateIntervalMillis() != this.f4417b) {
                if (f4413k == null) {
                    Method declaredMethod3 = LocationRequest.class.getDeclaredMethod("setFastestInterval", Long.TYPE);
                    f4413k = declaredMethod3;
                    declaredMethod3.setAccessible(true);
                }
                f4413k.invoke(locationRequest, Long.valueOf(this.f4418c));
            }
            if (this.f4420e < Integer.MAX_VALUE) {
                if (f4414l == null) {
                    Method declaredMethod4 = LocationRequest.class.getDeclaredMethod("setNumUpdates", Integer.TYPE);
                    f4414l = declaredMethod4;
                    declaredMethod4.setAccessible(true);
                }
                f4414l.invoke(locationRequest, Integer.valueOf(this.f4420e));
            }
            if (this.f4419d < Long.MAX_VALUE) {
                if (f4415m == null) {
                    Method declaredMethod5 = LocationRequest.class.getDeclaredMethod("setExpireIn", Long.TYPE);
                    f4415m = declaredMethod5;
                    declaredMethod5.setAccessible(true);
                }
                f4415m.invoke(locationRequest, Long.valueOf(this.f4419d));
            }
            return locationRequest;
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }
}
