package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.GenericLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.savedstate.Recreator;
import java.util.Map;
@SuppressLint({"RestrictedApi"})
/* loaded from: classes2.dex */
public final class SavedStateRegistry {

    /* renamed from: f  reason: collision with root package name */
    private static final String f7367f = "androidx.lifecycle.BundlableSavedStateRegistry.key";
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private Bundle f7369b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f7370c;

    /* renamed from: d  reason: collision with root package name */
    private Recreator.SavedStateProvider f7371d;

    /* renamed from: a  reason: collision with root package name */
    private SafeIterableMap<String, SavedStateProvider> f7368a = new SafeIterableMap<>();

    /* renamed from: e  reason: collision with root package name */
    boolean f7372e = true;

    /* loaded from: classes2.dex */
    public interface AutoRecreated {
        void onRecreated(@NonNull SavedStateRegistryOwner savedStateRegistryOwner);
    }

    /* loaded from: classes2.dex */
    public interface SavedStateProvider {
        @NonNull
        Bundle saveState();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @MainThread
    public void a(@NonNull Lifecycle lifecycle, @Nullable Bundle bundle) {
        if (!this.f7370c) {
            if (bundle != null) {
                this.f7369b = bundle.getBundle(f7367f);
            }
            lifecycle.addObserver(new GenericLifecycleObserver() { // from class: androidx.savedstate.SavedStateRegistry.1
                @Override // androidx.lifecycle.LifecycleEventObserver
                public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                    if (event == Lifecycle.Event.ON_START) {
                        SavedStateRegistry.this.f7372e = true;
                    } else if (event == Lifecycle.Event.ON_STOP) {
                        SavedStateRegistry.this.f7372e = false;
                    }
                }
            });
            this.f7370c = true;
            return;
        }
        throw new IllegalStateException("SavedStateRegistry was already restored.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @MainThread
    public void b(@NonNull Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = this.f7369b;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        SafeIterableMap<String, SavedStateProvider>.IteratorWithAdditions iteratorWithAdditions = this.f7368a.iteratorWithAdditions();
        while (iteratorWithAdditions.hasNext()) {
            Map.Entry next = iteratorWithAdditions.next();
            bundle2.putBundle((String) next.getKey(), ((SavedStateProvider) next.getValue()).saveState());
        }
        bundle.putBundle(f7367f, bundle2);
    }

    @Nullable
    @MainThread
    public Bundle consumeRestoredStateForKey(@NonNull String str) {
        if (this.f7370c) {
            Bundle bundle = this.f7369b;
            if (bundle != null) {
                Bundle bundle2 = bundle.getBundle(str);
                this.f7369b.remove(str);
                if (this.f7369b.isEmpty()) {
                    this.f7369b = null;
                }
                return bundle2;
            }
            return null;
        }
        throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
    }

    @MainThread
    public boolean isRestored() {
        return this.f7370c;
    }

    @MainThread
    public void registerSavedStateProvider(@NonNull String str, @NonNull SavedStateProvider savedStateProvider) {
        if (this.f7368a.putIfAbsent(str, savedStateProvider) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }

    @MainThread
    public void runOnNextRecreation(@NonNull Class<? extends AutoRecreated> cls) {
        if (this.f7372e) {
            if (this.f7371d == null) {
                this.f7371d = new Recreator.SavedStateProvider(this);
            }
            try {
                cls.getDeclaredConstructor(new Class[0]);
                this.f7371d.a(cls.getName());
                return;
            } catch (NoSuchMethodException e4) {
                throw new IllegalArgumentException("Class" + cls.getSimpleName() + " must have default constructor in order to be automatically recreated", e4);
            }
        }
        throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    }

    @MainThread
    public void unregisterSavedStateProvider(@NonNull String str) {
        this.f7368a.remove(str);
    }
}
