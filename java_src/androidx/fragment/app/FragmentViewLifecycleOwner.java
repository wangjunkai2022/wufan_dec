package androidx.fragment.app;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FragmentViewLifecycleOwner implements HasDefaultViewModelProviderFactory, SavedStateRegistryOwner, ViewModelStoreOwner {

    /* renamed from: a  reason: collision with root package name */
    private final Fragment f6102a;

    /* renamed from: b  reason: collision with root package name */
    private final ViewModelStore f6103b;

    /* renamed from: c  reason: collision with root package name */
    private ViewModelProvider.Factory f6104c;

    /* renamed from: d  reason: collision with root package name */
    private LifecycleRegistry f6105d = null;

    /* renamed from: e  reason: collision with root package name */
    private SavedStateRegistryController f6106e = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentViewLifecycleOwner(@NonNull Fragment fragment, @NonNull ViewModelStore viewModelStore) {
        this.f6102a = fragment;
        this.f6103b = viewModelStore;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull Lifecycle.Event event) {
        this.f6105d.handleLifecycleEvent(event);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        if (this.f6105d == null) {
            this.f6105d = new LifecycleRegistry(this);
            this.f6106e = SavedStateRegistryController.create(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        return this.f6105d != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(@Nullable Bundle bundle) {
        this.f6106e.performRestore(bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(@NonNull Bundle bundle) {
        this.f6106e.performSave(bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(@NonNull Lifecycle.State state) {
        this.f6105d.setCurrentState(state);
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    @NonNull
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        ViewModelProvider.Factory defaultViewModelProviderFactory = this.f6102a.getDefaultViewModelProviderFactory();
        if (!defaultViewModelProviderFactory.equals(this.f6102a.mDefaultFactory)) {
            this.f6104c = defaultViewModelProviderFactory;
            return defaultViewModelProviderFactory;
        }
        if (this.f6104c == null) {
            Application application = null;
            Context applicationContext = this.f6102a.requireContext().getApplicationContext();
            while (true) {
                if (!(applicationContext instanceof ContextWrapper)) {
                    break;
                } else if (applicationContext instanceof Application) {
                    application = applicationContext;
                    break;
                } else {
                    applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
                }
            }
            this.f6104c = new SavedStateViewModelFactory(application, this, this.f6102a.getArguments());
        }
        return this.f6104c;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    @NonNull
    public Lifecycle getLifecycle() {
        b();
        return this.f6105d;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    @NonNull
    public SavedStateRegistry getSavedStateRegistry() {
        b();
        return this.f6106e.getSavedStateRegistry();
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    @NonNull
    public ViewModelStore getViewModelStore() {
        b();
        return this.f6103b;
    }
}
