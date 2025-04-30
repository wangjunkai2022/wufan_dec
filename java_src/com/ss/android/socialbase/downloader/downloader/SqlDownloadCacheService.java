package com.ss.android.socialbase.downloader.downloader;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.IBinder;
/* loaded from: classes4.dex */
public class SqlDownloadCacheService extends Service {

    /* renamed from: a  reason: collision with root package name */
    private static final String f57941a = SqlDownloadCacheService.class.getSimpleName();

    public static void a(Context context, ServiceConnection serviceConnection) {
        if (context != null) {
            try {
                Intent intent = new Intent(context, SqlDownloadCacheService.class);
                if (serviceConnection != null) {
                    context.bindService(intent, serviceConnection, 1);
                }
                context.startService(intent);
            } catch (Throwable unused) {
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        t tVar;
        j x3 = c.x();
        if (x3 instanceof com.ss.android.socialbase.downloader.impls.d) {
            tVar = ((com.ss.android.socialbase.downloader.impls.d) x3).f();
        } else {
            tVar = x3 instanceof t ? (t) x3 : null;
        }
        if (tVar instanceof IBinder) {
            return (IBinder) tVar;
        }
        return new Binder();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        c.a(getApplicationContext());
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i4) {
        int onStartCommand = super.onStartCommand(intent, i2, i4);
        if (c.j()) {
            return 2;
        }
        return onStartCommand;
    }
}
