package androidx.lifecycle;

import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FullLifecycleObserverAdapter implements LifecycleEventObserver {

    /* renamed from: a  reason: collision with root package name */
    private final FullLifecycleObserver f6208a;

    /* renamed from: b  reason: collision with root package name */
    private final LifecycleEventObserver f6209b;

    /* renamed from: androidx.lifecycle.FullLifecycleObserverAdapter$1  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f6210a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            f6210a = iArr;
            try {
                iArr[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6210a[Lifecycle.Event.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6210a[Lifecycle.Event.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f6210a[Lifecycle.Event.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f6210a[Lifecycle.Event.ON_STOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f6210a[Lifecycle.Event.ON_DESTROY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f6210a[Lifecycle.Event.ON_ANY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FullLifecycleObserverAdapter(FullLifecycleObserver fullLifecycleObserver, LifecycleEventObserver lifecycleEventObserver) {
        this.f6208a = fullLifecycleObserver;
        this.f6209b = lifecycleEventObserver;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
        switch (AnonymousClass1.f6210a[event.ordinal()]) {
            case 1:
                this.f6208a.onCreate(lifecycleOwner);
                break;
            case 2:
                this.f6208a.onStart(lifecycleOwner);
                break;
            case 3:
                this.f6208a.onResume(lifecycleOwner);
                break;
            case 4:
                this.f6208a.onPause(lifecycleOwner);
                break;
            case 5:
                this.f6208a.onStop(lifecycleOwner);
                break;
            case 6:
                this.f6208a.onDestroy(lifecycleOwner);
                break;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        LifecycleEventObserver lifecycleEventObserver = this.f6209b;
        if (lifecycleEventObserver != null) {
            lifecycleEventObserver.onStateChanged(lifecycleOwner, event);
        }
    }
}
