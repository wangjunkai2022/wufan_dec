package com.xinzhu.overmind.server;

import android.annotation.SuppressLint;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.core.app.NotificationCompat;
import androidx.core.internal.view.SupportMenu;
/* loaded from: classes.dex */
public class DaemonService extends Service {

    /* renamed from: a  reason: collision with root package name */
    public static final String f64338a = "DaemonService";

    /* renamed from: b  reason: collision with root package name */
    private static final int f64339b = (int) (System.currentTimeMillis() / 1000);

    /* renamed from: c  reason: collision with root package name */
    public static final String f64340c = "daemon_overmind";

    /* loaded from: classes.dex */
    public static class DaemonInnerService extends Service {
        @Override // android.app.Service
        public IBinder onBind(Intent intent) {
            return null;
        }

        @Override // android.app.Service
        public void onCreate() {
            super.onCreate();
        }

        @Override // android.app.Service
        public void onDestroy() {
            super.onDestroy();
        }

        @Override // android.app.Service
        public int onStartCommand(Intent intent, int flags, int startId) {
            ((NotificationManager) getSystemService("notification")).cancel(DaemonService.f64339b);
            stopSelf();
            return super.onStartCommand(intent, flags, startId);
        }
    }

    @SuppressLint({"NewApi"})
    private void b() {
        NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
        if (com.xinzhu.overmind.utils.e.v()) {
            NotificationChannel notificationChannel = new NotificationChannel(f64340c, "overmind", 4);
            notificationChannel.enableLights(true);
            notificationChannel.setLightColor(SupportMenu.CATEGORY_MASK);
            notificationChannel.setShowBadge(true);
            notificationChannel.setLockscreenVisibility(1);
            notificationManager.createNotificationChannel(notificationChannel);
        }
    }

    private void c() {
        startForeground(f64339b, new NotificationCompat.Builder(getApplicationContext(), f64340c).setPriority(2).build());
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        b();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        startService(new Intent(this, DaemonInnerService.class));
        if (com.xinzhu.overmind.utils.e.v()) {
            c();
            return 1;
        }
        return 1;
    }
}
