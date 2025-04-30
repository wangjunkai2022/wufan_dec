package androidx.lifecycle;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
/* loaded from: classes.dex */
final class SavedStateHandleController implements LifecycleEventObserver {

    /* renamed from: d  reason: collision with root package name */
    static final String f6305d = "androidx.lifecycle.savedstate.vm.tag";

    /* renamed from: a  reason: collision with root package name */
    private final String f6306a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f6307b = false;

    /* renamed from: c  reason: collision with root package name */
    private final SavedStateHandle f6308c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class OnRecreation implements SavedStateRegistry.AutoRecreated {
        OnRecreation() {
        }

        @Override // androidx.savedstate.SavedStateRegistry.AutoRecreated
        public void onRecreated(@NonNull SavedStateRegistryOwner owner) {
            if (owner instanceof ViewModelStoreOwner) {
                ViewModelStore viewModelStore = ((ViewModelStoreOwner) owner).getViewModelStore();
                SavedStateRegistry savedStateRegistry = owner.getSavedStateRegistry();
                for (String str : viewModelStore.b()) {
                    SavedStateHandleController.a(viewModelStore.a(str), savedStateRegistry, owner.getLifecycle());
                }
                if (viewModelStore.b().isEmpty()) {
                    return;
                }
                savedStateRegistry.runOnNextRecreation(OnRecreation.class);
                return;
            }
            throw new IllegalStateException("Internal error: OnRecreation should be registered only on componentsthat implement ViewModelStoreOwner");
        }
    }

    SavedStateHandleController(String key, SavedStateHandle handle) {
        this.f6306a = key;
        this.f6308c = handle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(ViewModel viewModel, SavedStateRegistry registry, Lifecycle lifecycle) {
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) viewModel.getTag(f6305d);
        if (savedStateHandleController == null || savedStateHandleController.e()) {
            return;
        }
        savedStateHandleController.b(registry, lifecycle);
        f(registry, lifecycle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SavedStateHandleController c(SavedStateRegistry registry, Lifecycle lifecycle, String key, Bundle defaultArgs) {
        SavedStateHandleController savedStateHandleController = new SavedStateHandleController(key, SavedStateHandle.a(registry.consumeRestoredStateForKey(key), defaultArgs));
        savedStateHandleController.b(registry, lifecycle);
        f(registry, lifecycle);
        return savedStateHandleController;
    }

    private static void f(final SavedStateRegistry registry, final Lifecycle lifecycle) {
        Lifecycle.State currentState = lifecycle.getCurrentState();
        if (currentState != Lifecycle.State.INITIALIZED && !currentState.isAtLeast(Lifecycle.State.STARTED)) {
            lifecycle.addObserver(new LifecycleEventObserver() { // from class: androidx.lifecycle.SavedStateHandleController.1
                @Override // androidx.lifecycle.LifecycleEventObserver
                public void onStateChanged(@NonNull LifecycleOwner source, @NonNull Lifecycle.Event event) {
                    if (event == Lifecycle.Event.ON_START) {
                        Lifecycle.this.removeObserver(this);
                        registry.runOnNextRecreation(OnRecreation.class);
                    }
                }
            });
        } else {
            registry.runOnNextRecreation(OnRecreation.class);
        }
    }

    void b(SavedStateRegistry registry, Lifecycle lifecycle) {
        if (!this.f6307b) {
            this.f6307b = true;
            lifecycle.addObserver(this);
            registry.registerSavedStateProvider(this.f6306a, this.f6308c.c());
            return;
        }
        throw new IllegalStateException("Already attached to lifecycleOwner");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SavedStateHandle d() {
        return this.f6308c;
    }

    boolean e() {
        return this.f6307b;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NonNull LifecycleOwner source, @NonNull Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            this.f6307b = false;
            source.getLifecycle().removeObserver(this);
        }
    }
}
