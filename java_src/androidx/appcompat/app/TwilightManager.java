package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresPermission;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.PermissionChecker;
import java.util.Calendar;
/* loaded from: classes.dex */
class TwilightManager {

    /* renamed from: d  reason: collision with root package name */
    private static final String f313d = "TwilightManager";

    /* renamed from: e  reason: collision with root package name */
    private static final int f314e = 6;

    /* renamed from: f  reason: collision with root package name */
    private static final int f315f = 22;

    /* renamed from: g  reason: collision with root package name */
    private static TwilightManager f316g;

    /* renamed from: a  reason: collision with root package name */
    private final Context f317a;

    /* renamed from: b  reason: collision with root package name */
    private final LocationManager f318b;

    /* renamed from: c  reason: collision with root package name */
    private final TwilightState f319c = new TwilightState();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class TwilightState {

        /* renamed from: a  reason: collision with root package name */
        boolean f320a;

        /* renamed from: b  reason: collision with root package name */
        long f321b;

        /* renamed from: c  reason: collision with root package name */
        long f322c;

        /* renamed from: d  reason: collision with root package name */
        long f323d;

        /* renamed from: e  reason: collision with root package name */
        long f324e;

        /* renamed from: f  reason: collision with root package name */
        long f325f;

        TwilightState() {
        }
    }

    @VisibleForTesting
    TwilightManager(@NonNull Context context, @NonNull LocationManager locationManager) {
        this.f317a = context;
        this.f318b = locationManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static TwilightManager a(@NonNull Context context) {
        if (f316g == null) {
            Context applicationContext = context.getApplicationContext();
            f316g = new TwilightManager(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
        }
        return f316g;
    }

    @SuppressLint({"MissingPermission"})
    private Location b() {
        Location c4 = PermissionChecker.checkSelfPermission(this.f317a, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? c("network") : null;
        Location c5 = PermissionChecker.checkSelfPermission(this.f317a, "android.permission.ACCESS_FINE_LOCATION") == 0 ? c("gps") : null;
        return (c5 == null || c4 == null) ? c5 != null ? c5 : c4 : c5.getTime() > c4.getTime() ? c5 : c4;
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    private Location c(String str) {
        try {
            if (this.f318b.isProviderEnabled(str)) {
                return this.f318b.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private boolean e() {
        return this.f319c.f325f > System.currentTimeMillis();
    }

    @VisibleForTesting
    static void f(TwilightManager twilightManager) {
        f316g = twilightManager;
    }

    private void g(@NonNull Location location) {
        long j4;
        TwilightState twilightState = this.f319c;
        long currentTimeMillis = System.currentTimeMillis();
        TwilightCalculator a4 = TwilightCalculator.a();
        a4.calculateTwilight(currentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        long j5 = a4.sunset;
        a4.calculateTwilight(currentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z3 = a4.state == 1;
        long j6 = a4.sunrise;
        long j7 = a4.sunset;
        boolean z4 = z3;
        a4.calculateTwilight(86400000 + currentTimeMillis, location.getLatitude(), location.getLongitude());
        long j8 = a4.sunrise;
        if (j6 == -1 || j7 == -1) {
            j4 = 43200000 + currentTimeMillis;
        } else {
            j4 = (currentTimeMillis > j7 ? 0 + j8 : currentTimeMillis > j6 ? 0 + j7 : 0 + j6) + 60000;
        }
        twilightState.f320a = z4;
        twilightState.f321b = j5;
        twilightState.f322c = j6;
        twilightState.f323d = j7;
        twilightState.f324e = j8;
        twilightState.f325f = j4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        TwilightState twilightState = this.f319c;
        if (e()) {
            return twilightState.f320a;
        }
        Location b4 = b();
        if (b4 != null) {
            g(b4);
            return twilightState.f320a;
        }
        int i2 = Calendar.getInstance().get(11);
        return i2 < 6 || i2 >= 22;
    }
}
