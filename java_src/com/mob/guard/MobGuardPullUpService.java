package com.mob.guard;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.mob.MobSDK;
import com.mob.mgs.impl.e;
import com.mob.mgs.impl.g;
import com.mob.tools.proguard.ClassKeeper;
@Deprecated
/* loaded from: classes4.dex */
public class MobGuardPullUpService extends Service implements ClassKeeper {
    private void a(Intent intent) {
        g.a(this, intent, false);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        a(intent);
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        try {
            MobSDK.init(getApplicationContext());
            e.a().a("[MobGuard] MobGuardPullUpService onCreate");
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i4) {
        if (intent != null) {
            a(intent);
        }
        return super.onStartCommand(intent, i2, i4);
    }
}
