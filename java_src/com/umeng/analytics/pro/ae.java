package com.umeng.analytics.pro;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.umeng.analytics.pro.a;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* compiled from: SamsungDeviceIdSupplier.java */
/* loaded from: classes4.dex */
public class ae implements y {

    /* renamed from: a  reason: collision with root package name */
    private static final String f60392a = "DeviceIdService";

    /* renamed from: b  reason: collision with root package name */
    private static final String f60393b = "com.samsung.android.deviceidservice";

    /* renamed from: c  reason: collision with root package name */
    private static final String f60394c = "com.samsung.android.deviceidservice.DeviceIdService";

    /* renamed from: e  reason: collision with root package name */
    private CountDownLatch f60396e;

    /* renamed from: d  reason: collision with root package name */
    private String f60395d = "";

    /* renamed from: f  reason: collision with root package name */
    private final ServiceConnection f60397f = new ServiceConnection() { // from class: com.umeng.analytics.pro.ae.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                a a4 = a.AbstractBinderC0347a.a(iBinder);
                ae.this.f60395d = a4.a();
            } catch (RemoteException | NullPointerException e4) {
                StringBuilder sb = new StringBuilder();
                sb.append("onServiceConnected failed e=");
                sb.append(e4.getMessage());
            }
            ae.this.f60396e.countDown();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    };

    private void b(Context context) {
        try {
            Intent intent = new Intent();
            intent.setClassName(f60393b, f60394c);
            if (context.bindService(intent, this.f60397f, 1)) {
                return;
            }
            throw new UnsupportedOperationException("not supported service");
        } catch (Error | Exception e4) {
            StringBuilder sb = new StringBuilder();
            sb.append("bindService failed. e=");
            sb.append(e4.getMessage());
            this.f60396e.countDown();
        }
    }

    private void c(Context context) {
        try {
            context.unbindService(this.f60397f);
        } catch (Error | Exception e4) {
            StringBuilder sb = new StringBuilder();
            sb.append("unbindService failed. e=");
            sb.append(e4.getMessage());
        }
    }

    @Override // com.umeng.analytics.pro.y
    public String a(Context context) {
        this.f60396e = new CountDownLatch(1);
        try {
            try {
                b(context);
                this.f60396e.await(500L, TimeUnit.MILLISECONDS);
                return this.f60395d;
            } catch (InterruptedException e4) {
                StringBuilder sb = new StringBuilder();
                sb.append("getOAID interrupted. e=");
                sb.append(e4.getMessage());
                c(context);
                return null;
            }
        } finally {
            c(context);
        }
    }
}
