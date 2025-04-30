package androidx.core.location;

import android.location.Location;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class LocationCompat {
    public static final String EXTRA_BEARING_ACCURACY = "bearingAccuracy";
    public static final String EXTRA_IS_MOCK = "mockLocation";
    public static final String EXTRA_SPEED_ACCURACY = "speedAccuracy";
    public static final String EXTRA_VERTICAL_ACCURACY = "verticalAccuracy";
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private static Method f4384a;

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(17)
    /* loaded from: classes.dex */
    public static class Api17Impl {
        private Api17Impl() {
        }

        @DoNotInline
        static long a(Location location) {
            return location.getElapsedRealtimeNanos();
        }
    }

    @RequiresApi(18)
    /* loaded from: classes.dex */
    private static class Api18Impl {
        private Api18Impl() {
        }

        @DoNotInline
        static boolean a(Location location) {
            return location.isFromMockProvider();
        }
    }

    @RequiresApi(26)
    /* loaded from: classes.dex */
    private static class Api26Impl {
        private Api26Impl() {
        }

        @DoNotInline
        static float a(Location location) {
            return location.getBearingAccuracyDegrees();
        }

        @DoNotInline
        static float b(Location location) {
            return location.getSpeedAccuracyMetersPerSecond();
        }

        @DoNotInline
        static float c(Location location) {
            return location.getVerticalAccuracyMeters();
        }

        @DoNotInline
        static boolean d(Location location) {
            return location.hasBearingAccuracy();
        }

        @DoNotInline
        static boolean e(Location location) {
            return location.hasSpeedAccuracy();
        }

        @DoNotInline
        static boolean f(Location location) {
            return location.hasVerticalAccuracy();
        }

        @DoNotInline
        static void g(Location location, float f4) {
            location.setBearingAccuracyDegrees(f4);
        }

        @DoNotInline
        static void h(Location location, float f4) {
            location.setSpeedAccuracyMetersPerSecond(f4);
        }

        @DoNotInline
        static void i(Location location, float f4) {
            location.setVerticalAccuracyMeters(f4);
        }
    }

    private LocationCompat() {
    }

    private static Method a() throws NoSuchMethodException {
        if (f4384a == null) {
            Method declaredMethod = Location.class.getDeclaredMethod("setIsFromMockProvider", Boolean.TYPE);
            f4384a = declaredMethod;
            declaredMethod.setAccessible(true);
        }
        return f4384a;
    }

    public static float getBearingAccuracyDegrees(@NonNull Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.a(location);
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            return 0.0f;
        }
        return extras.getFloat(EXTRA_BEARING_ACCURACY, 0.0f);
    }

    public static long getElapsedRealtimeMillis(@NonNull Location location) {
        if (Build.VERSION.SDK_INT >= 17) {
            return TimeUnit.NANOSECONDS.toMillis(Api17Impl.a(location));
        }
        long currentTimeMillis = System.currentTimeMillis() - location.getTime();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (currentTimeMillis < 0) {
            return elapsedRealtime;
        }
        if (currentTimeMillis > elapsedRealtime) {
            return 0L;
        }
        return elapsedRealtime - currentTimeMillis;
    }

    public static long getElapsedRealtimeNanos(@NonNull Location location) {
        if (Build.VERSION.SDK_INT >= 17) {
            return Api17Impl.a(location);
        }
        return TimeUnit.MILLISECONDS.toNanos(getElapsedRealtimeMillis(location));
    }

    public static float getSpeedAccuracyMetersPerSecond(@NonNull Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.b(location);
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            return 0.0f;
        }
        return extras.getFloat(EXTRA_SPEED_ACCURACY, 0.0f);
    }

    public static float getVerticalAccuracyMeters(@NonNull Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.c(location);
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            return 0.0f;
        }
        return extras.getFloat(EXTRA_VERTICAL_ACCURACY, 0.0f);
    }

    public static boolean hasBearingAccuracy(@NonNull Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.d(location);
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            return false;
        }
        return extras.containsKey(EXTRA_BEARING_ACCURACY);
    }

    public static boolean hasSpeedAccuracy(@NonNull Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.e(location);
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            return false;
        }
        return extras.containsKey(EXTRA_SPEED_ACCURACY);
    }

    public static boolean hasVerticalAccuracy(@NonNull Location location) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.f(location);
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            return false;
        }
        return extras.containsKey(EXTRA_VERTICAL_ACCURACY);
    }

    public static boolean isMock(@NonNull Location location) {
        if (Build.VERSION.SDK_INT >= 18) {
            return Api18Impl.a(location);
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            return false;
        }
        return extras.getBoolean(EXTRA_IS_MOCK, false);
    }

    public static void setBearingAccuracyDegrees(@NonNull Location location, float f4) {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.g(location, f4);
            return;
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            location.setExtras(new Bundle());
            extras = location.getExtras();
        }
        extras.putFloat(EXTRA_BEARING_ACCURACY, f4);
    }

    public static void setMock(@NonNull Location location, boolean z3) {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                a().invoke(location, Boolean.valueOf(z3));
                return;
            } catch (IllegalAccessException e4) {
                IllegalAccessError illegalAccessError = new IllegalAccessError();
                illegalAccessError.initCause(e4);
                throw illegalAccessError;
            } catch (NoSuchMethodException e5) {
                NoSuchMethodError noSuchMethodError = new NoSuchMethodError();
                noSuchMethodError.initCause(e5);
                throw noSuchMethodError;
            } catch (InvocationTargetException e6) {
                throw new RuntimeException(e6);
            }
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            if (z3) {
                Bundle bundle = new Bundle();
                bundle.putBoolean(EXTRA_IS_MOCK, true);
                location.setExtras(bundle);
            }
        } else if (z3) {
            extras.putBoolean(EXTRA_IS_MOCK, true);
        } else {
            extras.remove(EXTRA_IS_MOCK);
            if (extras.isEmpty()) {
                location.setExtras(null);
            }
        }
    }

    public static void setSpeedAccuracyMetersPerSecond(@NonNull Location location, float f4) {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.h(location, f4);
            return;
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            location.setExtras(new Bundle());
            extras = location.getExtras();
        }
        extras.putFloat(EXTRA_SPEED_ACCURACY, f4);
    }

    public static void setVerticalAccuracyMeters(@NonNull Location location, float f4) {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.i(location, f4);
            return;
        }
        Bundle extras = location.getExtras();
        if (extras == null) {
            location.setExtras(new Bundle());
            extras = location.getExtras();
        }
        extras.putFloat(EXTRA_VERTICAL_ACCURACY, f4);
    }
}
