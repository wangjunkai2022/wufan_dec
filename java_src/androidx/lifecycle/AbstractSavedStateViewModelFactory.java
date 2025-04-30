package androidx.lifecycle;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.lifecycle.ViewModelProvider;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
/* loaded from: classes.dex */
public abstract class AbstractSavedStateViewModelFactory extends ViewModelProvider.KeyedFactory {

    /* renamed from: d  reason: collision with root package name */
    static final String f6177d = "androidx.lifecycle.savedstate.vm.tag";

    /* renamed from: a  reason: collision with root package name */
    private final SavedStateRegistry f6178a;

    /* renamed from: b  reason: collision with root package name */
    private final Lifecycle f6179b;

    /* renamed from: c  reason: collision with root package name */
    private final Bundle f6180c;

    public AbstractSavedStateViewModelFactory(@NonNull SavedStateRegistryOwner owner, @Nullable Bundle defaultArgs) {
        this.f6178a = owner.getSavedStateRegistry();
        this.f6179b = owner.getLifecycle();
        this.f6180c = defaultArgs;
    }

    @Override // androidx.lifecycle.ViewModelProvider.OnRequeryFactory
    void a(@NonNull ViewModel viewModel) {
        SavedStateHandleController.a(viewModel, this.f6178a, this.f6179b);
    }

    @NonNull
    protected abstract <T extends ViewModel> T b(@NonNull String key, @NonNull Class<T> modelClass, @NonNull SavedStateHandle handle);

    @Override // androidx.lifecycle.ViewModelProvider.KeyedFactory
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final <T extends ViewModel> T create(@NonNull String key, @NonNull Class<T> modelClass) {
        SavedStateHandleController c4 = SavedStateHandleController.c(this.f6178a, this.f6179b, key, this.f6180c);
        T t3 = (T) b(key, modelClass, c4.d());
        t3.setTagIfAbsent(f6177d, c4);
        return t3;
    }

    @Override // androidx.lifecycle.ViewModelProvider.KeyedFactory, androidx.lifecycle.ViewModelProvider.Factory
    @NonNull
    public final <T extends ViewModel> T create(@NonNull Class<T> modelClass) {
        String canonicalName = modelClass.getCanonicalName();
        if (canonicalName != null) {
            return (T) create(canonicalName, modelClass);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }
}
