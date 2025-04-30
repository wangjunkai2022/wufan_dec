package androidx.savedstate;

import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
/* loaded from: classes2.dex */
public final class SavedStateRegistryController {

    /* renamed from: a  reason: collision with root package name */
    private final SavedStateRegistryOwner f7374a;

    /* renamed from: b  reason: collision with root package name */
    private final SavedStateRegistry f7375b = new SavedStateRegistry();

    private SavedStateRegistryController(SavedStateRegistryOwner savedStateRegistryOwner) {
        this.f7374a = savedStateRegistryOwner;
    }

    @NonNull
    public static SavedStateRegistryController create(@NonNull SavedStateRegistryOwner savedStateRegistryOwner) {
        return new SavedStateRegistryController(savedStateRegistryOwner);
    }

    @NonNull
    public SavedStateRegistry getSavedStateRegistry() {
        return this.f7375b;
    }

    @MainThread
    public void performRestore(@Nullable Bundle bundle) {
        Lifecycle lifecycle = this.f7374a.getLifecycle();
        if (lifecycle.getCurrentState() == Lifecycle.State.INITIALIZED) {
            lifecycle.addObserver(new Recreator(this.f7374a));
            this.f7375b.a(lifecycle, bundle);
            return;
        }
        throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
    }

    @MainThread
    public void performSave(@NonNull Bundle bundle) {
        this.f7375b.b(bundle);
    }
}
