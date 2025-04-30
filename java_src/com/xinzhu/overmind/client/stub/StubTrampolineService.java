package com.xinzhu.overmind.client.stub;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.Nullable;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.b;
import com.xinzhu.overmind.client.stub.record.StubTrampolineRecord;
/* loaded from: classes.dex */
public class StubTrampolineService extends Service {

    /* renamed from: a  reason: collision with root package name */
    public static final String f64267a = StubTrampolineService.class.getSimpleName();

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        StubTrampolineRecord create;
        Intent startService;
        b.c(f64267a, "StubTrampolineService onStartCommand");
        try {
            create = StubTrampolineRecord.create(intent);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (create.sanityCheck()) {
            Intent intent2 = create.mTarget;
            if (Overmind.getMindPackageManager().B(intent2, 0, intent2.getType(), create.mUserId) != null && (startService = Overmind.getMindActivityManager().startService(intent2, intent2.getType(), create.mUserId)) != null) {
                startService(startService);
            }
            return 2;
        }
        return 2;
    }
}
