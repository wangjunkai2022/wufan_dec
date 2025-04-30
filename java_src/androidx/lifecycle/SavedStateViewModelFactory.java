package androidx.lifecycle;

import android.annotation.SuppressLint;
import android.app.Application;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.ViewModelProvider;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class SavedStateViewModelFactory extends ViewModelProvider.KeyedFactory {

    /* renamed from: f  reason: collision with root package name */
    private static final Class<?>[] f6311f = {Application.class, SavedStateHandle.class};

    /* renamed from: g  reason: collision with root package name */
    private static final Class<?>[] f6312g = {SavedStateHandle.class};

    /* renamed from: a  reason: collision with root package name */
    private final Application f6313a;

    /* renamed from: b  reason: collision with root package name */
    private final ViewModelProvider.Factory f6314b;

    /* renamed from: c  reason: collision with root package name */
    private final Bundle f6315c;

    /* renamed from: d  reason: collision with root package name */
    private final Lifecycle f6316d;

    /* renamed from: e  reason: collision with root package name */
    private final SavedStateRegistry f6317e;

    public SavedStateViewModelFactory(@Nullable Application application, @NonNull SavedStateRegistryOwner owner) {
        this(application, owner, null);
    }

    private static <T> Constructor<T> b(Class<T> modelClass, Class<?>[] signature) {
        for (Constructor<?> constructor : modelClass.getConstructors()) {
            Constructor<T> constructor2 = (Constructor<T>) constructor;
            if (Arrays.equals(signature, constructor2.getParameterTypes())) {
                return constructor2;
            }
        }
        return null;
    }

    @Override // androidx.lifecycle.ViewModelProvider.OnRequeryFactory
    void a(@NonNull ViewModel viewModel) {
        SavedStateHandleController.a(viewModel, this.f6317e, this.f6316d);
    }

    @Override // androidx.lifecycle.ViewModelProvider.KeyedFactory
    @NonNull
    public <T extends ViewModel> T create(@NonNull String key, @NonNull Class<T> modelClass) {
        Constructor b4;
        T t3;
        boolean isAssignableFrom = AndroidViewModel.class.isAssignableFrom(modelClass);
        if (isAssignableFrom && this.f6313a != null) {
            b4 = b(modelClass, f6311f);
        } else {
            b4 = b(modelClass, f6312g);
        }
        if (b4 == null) {
            return (T) this.f6314b.create(modelClass);
        }
        SavedStateHandleController c4 = SavedStateHandleController.c(this.f6317e, this.f6316d, key, this.f6315c);
        if (isAssignableFrom) {
            try {
                Application application = this.f6313a;
                if (application != null) {
                    t3 = (T) b4.newInstance(application, c4.d());
                    t3.setTagIfAbsent("androidx.lifecycle.savedstate.vm.tag", c4);
                    return t3;
                }
            } catch (IllegalAccessException e4) {
                throw new RuntimeException("Failed to access " + modelClass, e4);
            } catch (InstantiationException e5) {
                throw new RuntimeException("A " + modelClass + " cannot be instantiated.", e5);
            } catch (InvocationTargetException e6) {
                throw new RuntimeException("An exception happened in constructor of " + modelClass, e6.getCause());
            }
        }
        t3 = (T) b4.newInstance(c4.d());
        t3.setTagIfAbsent("androidx.lifecycle.savedstate.vm.tag", c4);
        return t3;
    }

    @SuppressLint({"LambdaLast"})
    public SavedStateViewModelFactory(@Nullable Application application, @NonNull SavedStateRegistryOwner owner, @Nullable Bundle defaultArgs) {
        ViewModelProvider.Factory a4;
        this.f6317e = owner.getSavedStateRegistry();
        this.f6316d = owner.getLifecycle();
        this.f6315c = defaultArgs;
        this.f6313a = application;
        if (application != null) {
            a4 = ViewModelProvider.AndroidViewModelFactory.getInstance(application);
        } else {
            a4 = ViewModelProvider.NewInstanceFactory.a();
        }
        this.f6314b = a4;
    }

    @Override // androidx.lifecycle.ViewModelProvider.KeyedFactory, androidx.lifecycle.ViewModelProvider.Factory
    @NonNull
    public <T extends ViewModel> T create(@NonNull Class<T> modelClass) {
        String canonicalName = modelClass.getCanonicalName();
        if (canonicalName != null) {
            return (T) create(canonicalName, modelClass);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }
}
