package androidx.lifecycle;

import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
/* loaded from: classes.dex */
public class ServiceLifecycleDispatcher {

    /* renamed from: a  reason: collision with root package name */
    private final LifecycleRegistry f6318a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f6319b = new Handler();

    /* renamed from: c  reason: collision with root package name */
    private DispatchRunnable f6320c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class DispatchRunnable implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final LifecycleRegistry f6321a;

        /* renamed from: b  reason: collision with root package name */
        final Lifecycle.Event f6322b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f6323c = false;

        DispatchRunnable(@NonNull LifecycleRegistry lifecycleRegistry, Lifecycle.Event event) {
            this.f6321a = lifecycleRegistry;
            this.f6322b = event;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f6323c) {
                return;
            }
            this.f6321a.handleLifecycleEvent(this.f6322b);
            this.f6323c = true;
        }
    }

    public ServiceLifecycleDispatcher(@NonNull LifecycleOwner lifecycleOwner) {
        this.f6318a = new LifecycleRegistry(lifecycleOwner);
    }

    private void a(Lifecycle.Event event) {
        DispatchRunnable dispatchRunnable = this.f6320c;
        if (dispatchRunnable != null) {
            dispatchRunnable.run();
        }
        DispatchRunnable dispatchRunnable2 = new DispatchRunnable(this.f6318a, event);
        this.f6320c = dispatchRunnable2;
        this.f6319b.postAtFrontOfQueue(dispatchRunnable2);
    }

    @NonNull
    public Lifecycle getLifecycle() {
        return this.f6318a;
    }

    public void onServicePreSuperOnBind() {
        a(Lifecycle.Event.ON_START);
    }

    public void onServicePreSuperOnCreate() {
        a(Lifecycle.Event.ON_CREATE);
    }

    public void onServicePreSuperOnDestroy() {
        a(Lifecycle.Event.ON_STOP);
        a(Lifecycle.Event.ON_DESTROY);
    }

    public void onServicePreSuperOnStart() {
        a(Lifecycle.Event.ON_START);
    }
}
