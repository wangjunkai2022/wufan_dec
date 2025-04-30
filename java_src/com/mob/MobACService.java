package com.mob;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.mob.apc.a.a;
/* loaded from: classes4.dex */
public class MobACService extends Service {

    /* renamed from: a  reason: collision with root package name */
    private a f52696a = new a(this);

    public boolean a(Intent intent) {
        return super.onUnbind(intent);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f52696a.a(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f52696a.a();
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f52696a.b();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i4) {
        return this.f52696a.a(intent, i2, i4);
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return this.f52696a.b(intent);
    }

    public int a(Intent intent, int i2, int i4) {
        return super.onStartCommand(intent, i2, i4);
    }
}
