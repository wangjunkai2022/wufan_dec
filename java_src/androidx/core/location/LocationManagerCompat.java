package androidx.core.location;

import android.content.Context;
import android.location.GnssStatus;
import android.location.GpsStatus;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.location.LocationRequest;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.annotation.DoNotInline;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.collection.SimpleArrayMap;
import androidx.core.location.GnssStatusCompat;
import androidx.core.location.LocationManagerCompat;
import androidx.core.os.CancellationSignal;
import androidx.core.os.ExecutorCompat;
import androidx.core.util.Consumer;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final class LocationManagerCompat {

    /* renamed from: a  reason: collision with root package name */
    private static final long f4385a = 30000;

    /* renamed from: b  reason: collision with root package name */
    private static final long f4386b = 10000;

    /* renamed from: c  reason: collision with root package name */
    private static final long f4387c = 5;

    /* renamed from: d  reason: collision with root package name */
    private static Field f4388d;

    /* renamed from: e  reason: collision with root package name */
    private static Method f4389e;

    /* renamed from: f  reason: collision with root package name */
    private static Method f4390f;
    @GuardedBy("sLocationListeners")

    /* renamed from: g  reason: collision with root package name */
    static final WeakHashMap<LocationListener, List<WeakReference<LocationListenerTransport>>> f4391g = new WeakHashMap<>();

    @RequiresApi(28)
    /* loaded from: classes.dex */
    private static class Api28Impl {
        private Api28Impl() {
        }

        @DoNotInline
        static String a(LocationManager locationManager) {
            return locationManager.getGnssHardwareModelName();
        }

        @DoNotInline
        static int b(LocationManager locationManager) {
            return locationManager.getGnssYearOfHardware();
        }

        @DoNotInline
        static boolean c(LocationManager locationManager) {
            return locationManager.isLocationEnabled();
        }
    }

    @RequiresApi(30)
    /* loaded from: classes.dex */
    private static class Api30Impl {
        private Api30Impl() {
        }

        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        @DoNotInline
        static void a(LocationManager locationManager, @NonNull String str, @Nullable CancellationSignal cancellationSignal, @NonNull Executor executor, @NonNull final Consumer<Location> consumer) {
            android.os.CancellationSignal cancellationSignal2 = cancellationSignal != null ? (android.os.CancellationSignal) cancellationSignal.getCancellationSignalObject() : null;
            Objects.requireNonNull(consumer);
            locationManager.getCurrentLocation(str, cancellationSignal2, executor, new java.util.function.Consumer() { // from class: androidx.core.location.d
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    Consumer.this.accept((Location) obj);
                }
            });
        }
    }

    @RequiresApi(31)
    /* loaded from: classes.dex */
    private static class Api31Impl {
        private Api31Impl() {
        }

        @DoNotInline
        static boolean a(LocationManager locationManager, @NonNull String str) {
            return locationManager.hasProvider(str);
        }

        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        @DoNotInline
        static void b(LocationManager locationManager, @NonNull String str, @NonNull LocationRequest locationRequest, @NonNull Executor executor, @NonNull LocationListener locationListener) {
            locationManager.requestLocationUpdates(str, locationRequest, executor, locationListener);
        }
    }

    /* loaded from: classes.dex */
    private static final class CancellableLocationListener implements LocationListener {

        /* renamed from: a  reason: collision with root package name */
        private final LocationManager f4393a;

        /* renamed from: b  reason: collision with root package name */
        private final Executor f4394b;

        /* renamed from: c  reason: collision with root package name */
        private final Handler f4395c = new Handler(Looper.getMainLooper());

        /* renamed from: d  reason: collision with root package name */
        private Consumer<Location> f4396d;
        @GuardedBy("this")

        /* renamed from: e  reason: collision with root package name */
        private boolean f4397e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        Runnable f4398f;

        CancellableLocationListener(LocationManager locationManager, Executor executor, Consumer<Location> consumer) {
            this.f4393a = locationManager;
            this.f4394b = executor;
            this.f4396d = consumer;
        }

        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        private void b() {
            this.f4396d = null;
            this.f4393a.removeUpdates(this);
            Runnable runnable = this.f4398f;
            if (runnable != null) {
                this.f4395c.removeCallbacks(runnable);
                this.f4398f = null;
            }
        }

        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        public void cancel() {
            synchronized (this) {
                if (this.f4397e) {
                    return;
                }
                this.f4397e = true;
                b();
            }
        }

        @Override // android.location.LocationListener
        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        public void onLocationChanged(@Nullable final Location location) {
            synchronized (this) {
                if (this.f4397e) {
                    return;
                }
                this.f4397e = true;
                final Consumer<Location> consumer = this.f4396d;
                this.f4394b.execute(new Runnable() { // from class: androidx.core.location.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        Consumer.this.accept(location);
                    }
                });
                b();
            }
        }

        @Override // android.location.LocationListener
        @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
        public void onProviderDisabled(@NonNull String str) {
            onLocationChanged((Location) null);
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(@NonNull String str) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i2, Bundle bundle) {
        }

        public void startTimeout(long j4) {
            synchronized (this) {
                if (this.f4397e) {
                    return;
                }
                Runnable runnable = new Runnable() { // from class: androidx.core.location.LocationManagerCompat.CancellableLocationListener.1
                    @Override // java.lang.Runnable
                    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
                    public void run() {
                        CancellableLocationListener cancellableLocationListener = CancellableLocationListener.this;
                        cancellableLocationListener.f4398f = null;
                        cancellableLocationListener.onLocationChanged((Location) null);
                    }
                };
                this.f4398f = runnable;
                this.f4395c.postDelayed(runnable, j4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class GnssLazyLoader {
        @GuardedBy("sGnssStatusListeners")

        /* renamed from: a  reason: collision with root package name */
        static final SimpleArrayMap<Object, Object> f4400a = new SimpleArrayMap<>();

        private GnssLazyLoader() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(30)
    /* loaded from: classes.dex */
    public static class GnssStatusTransport extends GnssStatus.Callback {

        /* renamed from: a  reason: collision with root package name */
        final GnssStatusCompat.Callback f4401a;

        GnssStatusTransport(GnssStatusCompat.Callback callback) {
            Preconditions.checkArgument(callback != null, "invalid null callback");
            this.f4401a = callback;
        }

        @Override // android.location.GnssStatus.Callback
        public void onFirstFix(int i2) {
            this.f4401a.onFirstFix(i2);
        }

        @Override // android.location.GnssStatus.Callback
        public void onSatelliteStatusChanged(GnssStatus gnssStatus) {
            this.f4401a.onSatelliteStatusChanged(GnssStatusCompat.wrap(gnssStatus));
        }

        @Override // android.location.GnssStatus.Callback
        public void onStarted() {
            this.f4401a.onStarted();
        }

        @Override // android.location.GnssStatus.Callback
        public void onStopped() {
            this.f4401a.onStopped();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class GpsStatusTransport implements GpsStatus.Listener {

        /* renamed from: a  reason: collision with root package name */
        private final LocationManager f4402a;

        /* renamed from: b  reason: collision with root package name */
        final GnssStatusCompat.Callback f4403b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        volatile Executor f4404c;

        GpsStatusTransport(LocationManager locationManager, GnssStatusCompat.Callback callback) {
            Preconditions.checkArgument(callback != null, "invalid null callback");
            this.f4402a = locationManager;
            this.f4403b = callback;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e(Executor executor) {
            if (this.f4404c != executor) {
                return;
            }
            this.f4403b.onStarted();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f(Executor executor) {
            if (this.f4404c != executor) {
                return;
            }
            this.f4403b.onStopped();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g(Executor executor, int i2) {
            if (this.f4404c != executor) {
                return;
            }
            this.f4403b.onFirstFix(i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void h(Executor executor, GnssStatusCompat gnssStatusCompat) {
            if (this.f4404c != executor) {
                return;
            }
            this.f4403b.onSatelliteStatusChanged(gnssStatusCompat);
        }

        @Override // android.location.GpsStatus.Listener
        @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
        public void onGpsStatusChanged(int i2) {
            GpsStatus gpsStatus;
            final Executor executor = this.f4404c;
            if (executor == null) {
                return;
            }
            if (i2 == 1) {
                executor.execute(new Runnable() { // from class: androidx.core.location.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        LocationManagerCompat.GpsStatusTransport.this.e(executor);
                    }
                });
            } else if (i2 == 2) {
                executor.execute(new Runnable() { // from class: androidx.core.location.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        LocationManagerCompat.GpsStatusTransport.this.f(executor);
                    }
                });
            } else if (i2 != 3) {
                if (i2 == 4 && (gpsStatus = this.f4402a.getGpsStatus(null)) != null) {
                    final GnssStatusCompat wrap = GnssStatusCompat.wrap(gpsStatus);
                    executor.execute(new Runnable() { // from class: androidx.core.location.i
                        @Override // java.lang.Runnable
                        public final void run() {
                            LocationManagerCompat.GpsStatusTransport.this.h(executor, wrap);
                        }
                    });
                }
            } else {
                GpsStatus gpsStatus2 = this.f4402a.getGpsStatus(null);
                if (gpsStatus2 != null) {
                    final int timeToFirstFix = gpsStatus2.getTimeToFirstFix();
                    executor.execute(new Runnable() { // from class: androidx.core.location.h
                        @Override // java.lang.Runnable
                        public final void run() {
                            LocationManagerCompat.GpsStatusTransport.this.g(executor, timeToFirstFix);
                        }
                    });
                }
            }
        }

        public void register(Executor executor) {
            Preconditions.checkState(this.f4404c == null);
            this.f4404c = executor;
        }

        public void unregister() {
            this.f4404c = null;
        }
    }

    /* loaded from: classes.dex */
    private static final class InlineHandlerExecutor implements Executor {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f4405a;

        InlineHandlerExecutor(@NonNull Handler handler) {
            this.f4405a = (Handler) Preconditions.checkNotNull(handler);
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            if (Looper.myLooper() == this.f4405a.getLooper()) {
                runnable.run();
            } else if (this.f4405a.post((Runnable) Preconditions.checkNotNull(runnable))) {
            } else {
                throw new RejectedExecutionException(this.f4405a + " is shutting down");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(24)
    /* loaded from: classes.dex */
    public static class PreRGnssStatusTransport extends GnssStatus.Callback {

        /* renamed from: a  reason: collision with root package name */
        final GnssStatusCompat.Callback f4408a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        volatile Executor f4409b;

        PreRGnssStatusTransport(GnssStatusCompat.Callback callback) {
            Preconditions.checkArgument(callback != null, "invalid null callback");
            this.f4408a = callback;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e(Executor executor, int i2) {
            if (this.f4409b != executor) {
                return;
            }
            this.f4408a.onFirstFix(i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f(Executor executor, GnssStatus gnssStatus) {
            if (this.f4409b != executor) {
                return;
            }
            this.f4408a.onSatelliteStatusChanged(GnssStatusCompat.wrap(gnssStatus));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g(Executor executor) {
            if (this.f4409b != executor) {
                return;
            }
            this.f4408a.onStarted();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void h(Executor executor) {
            if (this.f4409b != executor) {
                return;
            }
            this.f4408a.onStopped();
        }

        @Override // android.location.GnssStatus.Callback
        public void onFirstFix(final int i2) {
            final Executor executor = this.f4409b;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable() { // from class: androidx.core.location.t
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.PreRGnssStatusTransport.this.e(executor, i2);
                }
            });
        }

        @Override // android.location.GnssStatus.Callback
        public void onSatelliteStatusChanged(final GnssStatus gnssStatus) {
            final Executor executor = this.f4409b;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable() { // from class: androidx.core.location.u
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.PreRGnssStatusTransport.this.f(executor, gnssStatus);
                }
            });
        }

        @Override // android.location.GnssStatus.Callback
        public void onStarted() {
            final Executor executor = this.f4409b;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable() { // from class: androidx.core.location.s
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.PreRGnssStatusTransport.this.g(executor);
                }
            });
        }

        @Override // android.location.GnssStatus.Callback
        public void onStopped() {
            final Executor executor = this.f4409b;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable() { // from class: androidx.core.location.r
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.PreRGnssStatusTransport.this.h(executor);
                }
            });
        }

        public void register(Executor executor) {
            Preconditions.checkArgument(executor != null, "invalid null executor");
            Preconditions.checkState(this.f4409b == null);
            this.f4409b = executor;
        }

        public void unregister() {
            this.f4409b = null;
        }
    }

    private LocationManagerCompat() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean d(LocationManager locationManager, GpsStatusTransport gpsStatusTransport) throws Exception {
        return Boolean.valueOf(locationManager.addGpsStatusListener(gpsStatusTransport));
    }

    /* JADX WARN: Removed duplicated region for block: B:89:0x010a A[Catch: all -> 0x0126, TryCatch #2 {all -> 0x0126, blocks: (B:83:0x00e9, B:84:0x00ff, B:87:0x0102, B:89:0x010a, B:91:0x0112, B:92:0x0118, B:93:0x0119, B:94:0x011e, B:95:0x011f, B:96:0x0125, B:73:0x00d8), top: B:109:0x0098 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x011f A[Catch: all -> 0x0126, TryCatch #2 {all -> 0x0126, blocks: (B:83:0x00e9, B:84:0x00ff, B:87:0x0102, B:89:0x010a, B:91:0x0112, B:92:0x0118, B:93:0x0119, B:94:0x011e, B:95:0x011f, B:96:0x0125, B:73:0x00d8), top: B:109:0x0098 }] */
    @androidx.annotation.RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean e(final android.location.LocationManager r9, android.os.Handler r10, java.util.concurrent.Executor r11, androidx.core.location.GnssStatusCompat.Callback r12) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.location.LocationManagerCompat.e(android.location.LocationManager, android.os.Handler, java.util.concurrent.Executor, androidx.core.location.GnssStatusCompat$Callback):boolean");
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public static void getCurrentLocation(@NonNull LocationManager locationManager, @NonNull String str, @Nullable CancellationSignal cancellationSignal, @NonNull Executor executor, @NonNull final Consumer<Location> consumer) {
        if (Build.VERSION.SDK_INT >= 30) {
            Api30Impl.a(locationManager, str, cancellationSignal, executor, consumer);
            return;
        }
        if (cancellationSignal != null) {
            cancellationSignal.throwIfCanceled();
        }
        final Location lastKnownLocation = locationManager.getLastKnownLocation(str);
        if (lastKnownLocation != null && SystemClock.elapsedRealtime() - LocationCompat.getElapsedRealtimeMillis(lastKnownLocation) < 10000) {
            executor.execute(new Runnable() { // from class: androidx.core.location.b
                @Override // java.lang.Runnable
                public final void run() {
                    Consumer.this.accept(lastKnownLocation);
                }
            });
            return;
        }
        final CancellableLocationListener cancellableLocationListener = new CancellableLocationListener(locationManager, executor, consumer);
        locationManager.requestLocationUpdates(str, 0L, 0.0f, cancellableLocationListener, Looper.getMainLooper());
        if (cancellationSignal != null) {
            cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: androidx.core.location.LocationManagerCompat.1
                @Override // androidx.core.os.CancellationSignal.OnCancelListener
                @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
                public void onCancel() {
                    CancellableLocationListener.this.cancel();
                }
            });
        }
        cancellableLocationListener.startTimeout(f4385a);
    }

    @Nullable
    public static String getGnssHardwareModelName(@NonNull LocationManager locationManager) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Api28Impl.a(locationManager);
        }
        return null;
    }

    public static int getGnssYearOfHardware(@NonNull LocationManager locationManager) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Api28Impl.b(locationManager);
        }
        return 0;
    }

    public static boolean hasProvider(@NonNull LocationManager locationManager, @NonNull String str) {
        if (Build.VERSION.SDK_INT >= 31) {
            return Api31Impl.a(locationManager, str);
        }
        if (locationManager.getAllProviders().contains(str)) {
            return true;
        }
        try {
            return locationManager.getProvider(str) != null;
        } catch (SecurityException unused) {
            return false;
        }
    }

    public static boolean isLocationEnabled(@NonNull LocationManager locationManager) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            return Api28Impl.c(locationManager);
        }
        if (i2 <= 19) {
            try {
                if (f4388d == null) {
                    Field declaredField = LocationManager.class.getDeclaredField("mContext");
                    f4388d = declaredField;
                    declaredField.setAccessible(true);
                }
                Context context = (Context) f4388d.get(locationManager);
                if (context != null) {
                    if (i2 == 19) {
                        return Settings.Secure.getInt(context.getContentResolver(), "location_mode", 0) != 0;
                    }
                    return !TextUtils.isEmpty(Settings.Secure.getString(context.getContentResolver(), "location_providers_allowed"));
                }
            } catch (ClassCastException | IllegalAccessException | NoSuchFieldException | SecurityException unused) {
            }
        }
        return locationManager.isProviderEnabled("network") || locationManager.isProviderEnabled("gps");
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static boolean registerGnssStatusCallback(@NonNull LocationManager locationManager, @NonNull GnssStatusCompat.Callback callback, @NonNull Handler handler) {
        if (Build.VERSION.SDK_INT >= 30) {
            return registerGnssStatusCallback(locationManager, ExecutorCompat.create(handler), callback);
        }
        return registerGnssStatusCallback(locationManager, new InlineHandlerExecutor(handler), callback);
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public static void removeUpdates(@NonNull LocationManager locationManager, @NonNull LocationListenerCompat locationListenerCompat) {
        WeakHashMap<LocationListener, List<WeakReference<LocationListenerTransport>>> weakHashMap = f4391g;
        synchronized (weakHashMap) {
            List<WeakReference<LocationListenerTransport>> remove = weakHashMap.remove(locationListenerCompat);
            if (remove != null) {
                for (WeakReference<LocationListenerTransport> weakReference : remove) {
                    LocationListenerTransport locationListenerTransport = weakReference.get();
                    if (locationListenerTransport != null && locationListenerTransport.unregister()) {
                        locationManager.removeUpdates(locationListenerTransport);
                    }
                }
            }
        }
        locationManager.removeUpdates(locationListenerCompat);
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public static void requestLocationUpdates(@NonNull LocationManager locationManager, @NonNull String str, @NonNull LocationRequestCompat locationRequestCompat, @NonNull Executor executor, @NonNull LocationListenerCompat locationListenerCompat) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 31) {
            Api31Impl.b(locationManager, str, locationRequestCompat.toLocationRequest(), executor, locationListenerCompat);
            return;
        }
        if (i2 >= 30) {
            try {
                if (f4389e == null) {
                    Method declaredMethod = LocationManager.class.getDeclaredMethod("requestLocationUpdates", LocationRequest.class, Executor.class, LocationListener.class);
                    f4389e = declaredMethod;
                    declaredMethod.setAccessible(true);
                }
                LocationRequest locationRequest = locationRequestCompat.toLocationRequest(str);
                if (locationRequest != null) {
                    f4389e.invoke(locationManager, locationRequest, executor, locationListenerCompat);
                    return;
                }
            } catch (IllegalAccessException | NoSuchMethodException | UnsupportedOperationException | InvocationTargetException unused) {
            }
        }
        LocationListenerTransport locationListenerTransport = new LocationListenerTransport(locationListenerCompat, executor);
        if (Build.VERSION.SDK_INT >= 19) {
            try {
                if (f4390f == null) {
                    Method declaredMethod2 = LocationManager.class.getDeclaredMethod("requestLocationUpdates", LocationRequest.class, LocationListener.class, Looper.class);
                    f4390f = declaredMethod2;
                    declaredMethod2.setAccessible(true);
                }
                LocationRequest locationRequest2 = locationRequestCompat.toLocationRequest(str);
                if (locationRequest2 != null) {
                    synchronized (f4391g) {
                        f4390f.invoke(locationManager, locationRequest2, locationListenerTransport, Looper.getMainLooper());
                        locationListenerTransport.register();
                    }
                    return;
                }
            } catch (IllegalAccessException | NoSuchMethodException | UnsupportedOperationException | InvocationTargetException unused2) {
            }
        }
        synchronized (f4391g) {
            locationManager.requestLocationUpdates(str, locationRequestCompat.getIntervalMillis(), locationRequestCompat.getMinUpdateDistanceMeters(), locationListenerTransport, Looper.getMainLooper());
            locationListenerTransport.register();
        }
    }

    public static void unregisterGnssStatusCallback(@NonNull LocationManager locationManager, @NonNull GnssStatusCompat.Callback callback) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            SimpleArrayMap<Object, Object> simpleArrayMap = GnssLazyLoader.f4400a;
            synchronized (simpleArrayMap) {
                GnssStatus.Callback callback2 = (GnssStatusTransport) simpleArrayMap.remove(callback);
                if (callback2 != null) {
                    locationManager.unregisterGnssStatusCallback(callback2);
                }
            }
        } else if (i2 >= 24) {
            SimpleArrayMap<Object, Object> simpleArrayMap2 = GnssLazyLoader.f4400a;
            synchronized (simpleArrayMap2) {
                PreRGnssStatusTransport preRGnssStatusTransport = (PreRGnssStatusTransport) simpleArrayMap2.remove(callback);
                if (preRGnssStatusTransport != null) {
                    preRGnssStatusTransport.unregister();
                    locationManager.unregisterGnssStatusCallback(preRGnssStatusTransport);
                }
            }
        } else {
            SimpleArrayMap<Object, Object> simpleArrayMap3 = GnssLazyLoader.f4400a;
            synchronized (simpleArrayMap3) {
                GpsStatusTransport gpsStatusTransport = (GpsStatusTransport) simpleArrayMap3.remove(callback);
                if (gpsStatusTransport != null) {
                    gpsStatusTransport.unregister();
                    locationManager.removeGpsStatusListener(gpsStatusTransport);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class LocationListenerTransport implements LocationListener {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        volatile LocationListenerCompat f4406a;

        /* renamed from: b  reason: collision with root package name */
        final Executor f4407b;

        LocationListenerTransport(@Nullable LocationListenerCompat locationListenerCompat, Executor executor) {
            this.f4406a = (LocationListenerCompat) ObjectsCompat.requireNonNull(locationListenerCompat, "invalid null listener");
            this.f4407b = executor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void i(LocationListenerCompat locationListenerCompat, int i2) {
            if (this.f4406a != locationListenerCompat) {
                return;
            }
            locationListenerCompat.onFlushComplete(i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void j(LocationListenerCompat locationListenerCompat, Location location) {
            if (this.f4406a != locationListenerCompat) {
                return;
            }
            locationListenerCompat.onLocationChanged(location);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void k(LocationListenerCompat locationListenerCompat, List list) {
            if (this.f4406a != locationListenerCompat) {
                return;
            }
            locationListenerCompat.onLocationChanged(list);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void l(LocationListenerCompat locationListenerCompat, String str) {
            if (this.f4406a != locationListenerCompat) {
                return;
            }
            locationListenerCompat.onProviderDisabled(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void m(LocationListenerCompat locationListenerCompat, String str) {
            if (this.f4406a != locationListenerCompat) {
                return;
            }
            locationListenerCompat.onProviderEnabled(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void n(LocationListenerCompat locationListenerCompat, String str, int i2, Bundle bundle) {
            if (this.f4406a != locationListenerCompat) {
                return;
            }
            locationListenerCompat.onStatusChanged(str, i2, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean o(WeakReference weakReference) {
            return weakReference.get() == null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean p(WeakReference weakReference) {
            return weakReference.get() == null;
        }

        @Override // android.location.LocationListener
        public void onFlushComplete(final int i2) {
            final LocationListenerCompat locationListenerCompat = this.f4406a;
            if (locationListenerCompat == null) {
                return;
            }
            this.f4407b.execute(new Runnable() { // from class: androidx.core.location.j
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.LocationListenerTransport.this.i(locationListenerCompat, i2);
                }
            });
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(@NonNull final Location location) {
            final LocationListenerCompat locationListenerCompat = this.f4406a;
            if (locationListenerCompat == null) {
                return;
            }
            this.f4407b.execute(new Runnable() { // from class: androidx.core.location.k
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.LocationListenerTransport.this.j(locationListenerCompat, location);
                }
            });
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(@NonNull final String str) {
            final LocationListenerCompat locationListenerCompat = this.f4406a;
            if (locationListenerCompat == null) {
                return;
            }
            this.f4407b.execute(new Runnable() { // from class: androidx.core.location.l
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.LocationListenerTransport.this.l(locationListenerCompat, str);
                }
            });
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(@NonNull final String str) {
            final LocationListenerCompat locationListenerCompat = this.f4406a;
            if (locationListenerCompat == null) {
                return;
            }
            this.f4407b.execute(new Runnable() { // from class: androidx.core.location.m
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.LocationListenerTransport.this.m(locationListenerCompat, str);
                }
            });
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(final String str, final int i2, final Bundle bundle) {
            final LocationListenerCompat locationListenerCompat = this.f4406a;
            if (locationListenerCompat == null) {
                return;
            }
            this.f4407b.execute(new Runnable() { // from class: androidx.core.location.n
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.LocationListenerTransport.this.n(locationListenerCompat, str, i2, bundle);
                }
            });
        }

        @GuardedBy("sLocationListeners")
        public void register() {
            WeakHashMap<LocationListener, List<WeakReference<LocationListenerTransport>>> weakHashMap = LocationManagerCompat.f4391g;
            List<WeakReference<LocationListenerTransport>> list = weakHashMap.get(this.f4406a);
            if (list == null) {
                list = new ArrayList<>(1);
                weakHashMap.put(this.f4406a, list);
            } else if (Build.VERSION.SDK_INT >= 24) {
                list.removeIf(new Predicate() { // from class: androidx.core.location.p
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean o3;
                        o3 = LocationManagerCompat.LocationListenerTransport.o((WeakReference) obj);
                        return o3;
                    }
                });
            } else {
                Iterator<WeakReference<LocationListenerTransport>> it2 = list.iterator();
                while (it2.hasNext()) {
                    if (it2.next().get() == null) {
                        it2.remove();
                    }
                }
            }
            list.add(new WeakReference<>(this));
        }

        @GuardedBy("sLocationListeners")
        public boolean unregister() {
            LocationListenerCompat locationListenerCompat = this.f4406a;
            if (locationListenerCompat == null) {
                return false;
            }
            this.f4406a = null;
            List<WeakReference<LocationListenerTransport>> list = LocationManagerCompat.f4391g.get(locationListenerCompat);
            if (list != null) {
                if (Build.VERSION.SDK_INT >= 24) {
                    list.removeIf(new Predicate() { // from class: androidx.core.location.q
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            boolean p3;
                            p3 = LocationManagerCompat.LocationListenerTransport.p((WeakReference) obj);
                            return p3;
                        }
                    });
                } else {
                    Iterator<WeakReference<LocationListenerTransport>> it2 = list.iterator();
                    while (it2.hasNext()) {
                        if (it2.next().get() == null) {
                            it2.remove();
                        }
                    }
                }
                if (list.isEmpty()) {
                    LocationManagerCompat.f4391g.remove(locationListenerCompat);
                    return true;
                }
                return true;
            }
            return true;
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(@NonNull final List<Location> list) {
            final LocationListenerCompat locationListenerCompat = this.f4406a;
            if (locationListenerCompat == null) {
                return;
            }
            this.f4407b.execute(new Runnable() { // from class: androidx.core.location.o
                @Override // java.lang.Runnable
                public final void run() {
                    LocationManagerCompat.LocationListenerTransport.this.k(locationListenerCompat, list);
                }
            });
        }
    }

    @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
    public static boolean registerGnssStatusCallback(@NonNull LocationManager locationManager, @NonNull Executor executor, @NonNull GnssStatusCompat.Callback callback) {
        if (Build.VERSION.SDK_INT >= 30) {
            return e(locationManager, null, executor, callback);
        }
        Looper myLooper = Looper.myLooper();
        if (myLooper == null) {
            myLooper = Looper.getMainLooper();
        }
        return e(locationManager, new Handler(myLooper), executor, callback);
    }

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    public static void requestLocationUpdates(@NonNull LocationManager locationManager, @NonNull String str, @NonNull LocationRequestCompat locationRequestCompat, @NonNull LocationListenerCompat locationListenerCompat, @NonNull Looper looper) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 31) {
            Api31Impl.b(locationManager, str, locationRequestCompat.toLocationRequest(), ExecutorCompat.create(new Handler(looper)), locationListenerCompat);
            return;
        }
        if (i2 >= 19) {
            try {
                if (f4390f == null) {
                    Method declaredMethod = LocationManager.class.getDeclaredMethod("requestLocationUpdates", LocationRequest.class, LocationListener.class, Looper.class);
                    f4390f = declaredMethod;
                    declaredMethod.setAccessible(true);
                }
                try {
                    LocationRequest locationRequest = locationRequestCompat.toLocationRequest(str);
                    if (locationRequest != null) {
                        f4390f.invoke(locationManager, locationRequest, locationListenerCompat, looper);
                        return;
                    }
                } catch (IllegalAccessException | NoSuchMethodException | UnsupportedOperationException | InvocationTargetException unused) {
                }
            } catch (IllegalAccessException | NoSuchMethodException | UnsupportedOperationException | InvocationTargetException unused2) {
            }
            locationManager.requestLocationUpdates(str, locationRequestCompat.getIntervalMillis(), locationRequestCompat.getMinUpdateDistanceMeters(), locationListenerCompat, looper);
        }
        locationManager.requestLocationUpdates(str, locationRequestCompat.getIntervalMillis(), locationRequestCompat.getMinUpdateDistanceMeters(), locationListenerCompat, looper);
    }
}
