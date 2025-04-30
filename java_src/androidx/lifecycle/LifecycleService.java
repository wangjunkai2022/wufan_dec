package androidx.lifecycle;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public class LifecycleService extends Service implements LifecycleOwner {

    /* renamed from: a  reason: collision with root package name */
    private final ServiceLifecycleDispatcher f6251a = new ServiceLifecycleDispatcher(this);

    @Override // androidx.lifecycle.LifecycleOwner
    @NonNull
    public Lifecycle getLifecycle() {
        return this.f6251a.getLifecycle();
    }

    @Override // android.app.Service
    @Nullable
    @CallSuper
    public IBinder onBind(@NonNull Intent intent) {
        this.f6251a.onServicePreSuperOnBind();
        return null;
    }

    @Override // android.app.Service
    @CallSuper
    public void onCreate() {
        this.f6251a.onServicePreSuperOnCreate();
        super.onCreate();
    }

    @Override // android.app.Service
    @CallSuper
    public void onDestroy() {
        this.f6251a.onServicePreSuperOnDestroy();
        super.onDestroy();
    }

    @Override // android.app.Service
    @CallSuper
    public void onStart(@Nullable Intent intent, int i2) {
        this.f6251a.onServicePreSuperOnStart();
        super.onStart(intent, i2);
    }

    @Override // android.app.Service
    @CallSuper
    public int onStartCommand(@Nullable Intent intent, int i2, int i4) {
        return super.onStartCommand(intent, i2, i4);
    }
}
