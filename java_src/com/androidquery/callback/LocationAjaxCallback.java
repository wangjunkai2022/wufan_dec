package com.androidquery.callback;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;
import com.alipay.sdk.packet.d;
import com.androidquery.util.AQUtility;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes2.dex */
public class LocationAjaxCallback extends AbstractAjaxCallback<Location, LocationAjaxCallback> {
    private Listener gpsListener;
    private long initTime;
    private LocationManager lm;
    private Listener networkListener;
    private long timeout = 30000;
    private long interval = 1000;
    private float tolerance = 10.0f;
    private float accuracy = 1000.0f;
    private int iteration = 3;

    /* renamed from: n  reason: collision with root package name */
    private int f9966n = 0;
    private boolean networkEnabled = false;
    private boolean gpsEnabled = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class Listener extends TimerTask implements LocationListener {
        private Listener() {
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            AQUtility.debug("changed", location);
            LocationAjaxCallback.this.check(location);
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
            AQUtility.debug("onProviderDisabled");
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
            AQUtility.debug("onProviderEnabled");
            LocationAjaxCallback locationAjaxCallback = LocationAjaxCallback.this;
            locationAjaxCallback.check(locationAjaxCallback.getBestLocation());
            LocationAjaxCallback.this.lm.removeUpdates(this);
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i2, Bundle bundle) {
            AQUtility.debug("onStatusChanged");
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            LocationAjaxCallback.this.failure();
        }

        /* synthetic */ Listener(LocationAjaxCallback locationAjaxCallback, Listener listener) {
            this();
        }
    }

    public LocationAjaxCallback() {
        type(Location.class).url(d.f9795p);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void callback(Location location) {
        this.result = location;
        status(location, 200);
        callback();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void check(Location location) {
        if (location == null || !isBetter(location)) {
            return;
        }
        boolean z3 = true;
        int i2 = this.f9966n + 1;
        this.f9966n = i2;
        boolean z4 = i2 >= this.iteration;
        boolean isAccurate = isAccurate(location);
        boolean isDiff = isDiff(location);
        if (this.gpsEnabled && !"gps".equals(location.getProvider())) {
            z3 = false;
        }
        AQUtility.debug(Integer.valueOf(this.f9966n), Integer.valueOf(this.iteration));
        AQUtility.debug("acc", Boolean.valueOf(isAccurate));
        AQUtility.debug("best", Boolean.valueOf(z3));
        if (isDiff) {
            if (!z4) {
                if (isAccurate && z3) {
                    stop();
                }
                callback(location);
            } else if (isAccurate && z3) {
                stop();
                callback(location);
            }
        }
    }

    private static float distFrom(double d4, double d5, double d6, double d7) {
        double radians = Math.toRadians(d6 - d4);
        double d8 = radians / 2.0d;
        double radians2 = Math.toRadians(d7 - d5) / 2.0d;
        double sin = (Math.sin(d8) * Math.sin(d8)) + (Math.cos(Math.toRadians(d4)) * Math.cos(Math.toRadians(d6)) * Math.sin(radians2) * Math.sin(radians2));
        return ((float) (Math.atan2(Math.sqrt(sin), Math.sqrt(1.0d - sin)) * 2.0d * 3958.75d)) * 1609;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void failure() {
        if (this.gpsListener == null && this.networkListener == null) {
            return;
        }
        AQUtility.debug("fail");
        this.result = null;
        status(null, AjaxStatus.TRANSFORM_ERROR);
        stop();
        callback();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Location getBestLocation() {
        Location lastKnownLocation = this.lm.getLastKnownLocation("gps");
        Location lastKnownLocation2 = this.lm.getLastKnownLocation("network");
        return lastKnownLocation2 == null ? lastKnownLocation : (lastKnownLocation != null && lastKnownLocation.getTime() > lastKnownLocation2.getTime()) ? lastKnownLocation : lastKnownLocation2;
    }

    private boolean isAccurate(Location location) {
        return location.getAccuracy() < this.accuracy;
    }

    private boolean isBetter(Location location) {
        T t3 = this.result;
        if (t3 != 0 && ((Location) t3).getTime() > this.initTime && ((Location) this.result).getProvider().equals("gps") && location.getProvider().equals("network")) {
            AQUtility.debug("inferior location");
            return false;
        }
        return true;
    }

    private boolean isDiff(Location location) {
        T t3 = this.result;
        if (t3 != 0 && distFrom(((Location) t3).getLatitude(), ((Location) this.result).getLongitude(), location.getLatitude(), location.getLongitude()) < this.tolerance) {
            AQUtility.debug("duplicate location");
            return false;
        }
        return true;
    }

    private void status(Location location, int i2) {
        if (this.status == null) {
            this.status = new AjaxStatus();
        }
        if (location != null) {
            this.status.time(new Date(location.getTime()));
        }
        this.status.code(i2).done().source(5);
    }

    private void work() {
        Location bestLocation = getBestLocation();
        Timer timer = new Timer(false);
        if (this.networkEnabled) {
            AQUtility.debug("register net");
            Listener listener = new Listener(this, null);
            this.networkListener = listener;
            this.lm.requestLocationUpdates("network", this.interval, 0.0f, listener, Looper.getMainLooper());
            timer.schedule(this.networkListener, this.timeout);
        }
        if (this.gpsEnabled) {
            AQUtility.debug("register gps");
            Listener listener2 = new Listener(this, null);
            this.gpsListener = listener2;
            this.lm.requestLocationUpdates("gps", this.interval, 0.0f, listener2, Looper.getMainLooper());
            timer.schedule(this.gpsListener, this.timeout);
        }
        if (this.iteration > 1 && bestLocation != null) {
            this.f9966n++;
            callback(bestLocation);
        }
        this.initTime = System.currentTimeMillis();
    }

    public LocationAjaxCallback accuracy(float f4) {
        this.accuracy = f4;
        return this;
    }

    @Override // com.androidquery.callback.AbstractAjaxCallback
    public void async(Context context) {
        LocationManager locationManager = (LocationManager) context.getSystemService("location");
        this.lm = locationManager;
        this.gpsEnabled = locationManager.isProviderEnabled("gps");
        this.networkEnabled = this.lm.isProviderEnabled("network");
        work();
    }

    public LocationAjaxCallback iteration(int i2) {
        this.iteration = i2;
        return this;
    }

    public void stop() {
        AQUtility.debug("stop");
        Listener listener = this.gpsListener;
        if (listener != null) {
            this.lm.removeUpdates(listener);
            listener.cancel();
        }
        Listener listener2 = this.networkListener;
        if (listener2 != null) {
            this.lm.removeUpdates(listener2);
            listener2.cancel();
        }
        this.gpsListener = null;
        this.networkListener = null;
    }

    public LocationAjaxCallback timeout(long j4) {
        this.timeout = j4;
        return this;
    }

    public LocationAjaxCallback tolerance(float f4) {
        this.tolerance = f4;
        return this;
    }
}
