package androidx.lifecycle;

import android.app.Application;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes.dex */
public class ViewModelProvider {

    /* renamed from: c  reason: collision with root package name */
    private static final String f6333c = "androidx.lifecycle.ViewModelProvider.DefaultKey";

    /* renamed from: a  reason: collision with root package name */
    private final Factory f6334a;

    /* renamed from: b  reason: collision with root package name */
    private final ViewModelStore f6335b;

    /* loaded from: classes.dex */
    public static class AndroidViewModelFactory extends NewInstanceFactory {

        /* renamed from: c  reason: collision with root package name */
        private static AndroidViewModelFactory f6336c;

        /* renamed from: b  reason: collision with root package name */
        private Application f6337b;

        public AndroidViewModelFactory(@NonNull Application application) {
            this.f6337b = application;
        }

        @NonNull
        public static AndroidViewModelFactory getInstance(@NonNull Application application) {
            if (f6336c == null) {
                f6336c = new AndroidViewModelFactory(application);
            }
            return f6336c;
        }

        @Override // androidx.lifecycle.ViewModelProvider.NewInstanceFactory, androidx.lifecycle.ViewModelProvider.Factory
        @NonNull
        public <T extends ViewModel> T create(@NonNull Class<T> cls) {
            if (AndroidViewModel.class.isAssignableFrom(cls)) {
                try {
                    return cls.getConstructor(Application.class).newInstance(this.f6337b);
                } catch (IllegalAccessException e4) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e4);
                } catch (InstantiationException e5) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e5);
                } catch (NoSuchMethodException e6) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e6);
                } catch (InvocationTargetException e7) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e7);
                }
            }
            return (T) super.create(cls);
        }
    }

    /* loaded from: classes.dex */
    public interface Factory {
        @NonNull
        <T extends ViewModel> T create(@NonNull Class<T> cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static abstract class KeyedFactory extends OnRequeryFactory implements Factory {
        @NonNull
        public <T extends ViewModel> T create(@NonNull Class<T> cls) {
            throw new UnsupportedOperationException("create(String, Class<?>) must be called on implementaions of KeyedFactory");
        }

        @NonNull
        public abstract <T extends ViewModel> T create(@NonNull String str, @NonNull Class<T> cls);
    }

    /* loaded from: classes.dex */
    public static class NewInstanceFactory implements Factory {

        /* renamed from: a  reason: collision with root package name */
        private static NewInstanceFactory f6338a;

        /* JADX INFO: Access modifiers changed from: package-private */
        @NonNull
        public static NewInstanceFactory a() {
            if (f6338a == null) {
                f6338a = new NewInstanceFactory();
            }
            return f6338a;
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        @NonNull
        public <T extends ViewModel> T create(@NonNull Class<T> cls) {
            try {
                return cls.newInstance();
            } catch (IllegalAccessException e4) {
                throw new RuntimeException("Cannot create an instance of " + cls, e4);
            } catch (InstantiationException e5) {
                throw new RuntimeException("Cannot create an instance of " + cls, e5);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class OnRequeryFactory {
        OnRequeryFactory() {
        }

        void a(@NonNull ViewModel viewModel) {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ViewModelProvider(@androidx.annotation.NonNull androidx.lifecycle.ViewModelStoreOwner r3) {
        /*
            r2 = this;
            androidx.lifecycle.ViewModelStore r0 = r3.getViewModelStore()
            boolean r1 = r3 instanceof androidx.lifecycle.HasDefaultViewModelProviderFactory
            if (r1 == 0) goto Lf
            androidx.lifecycle.HasDefaultViewModelProviderFactory r3 = (androidx.lifecycle.HasDefaultViewModelProviderFactory) r3
            androidx.lifecycle.ViewModelProvider$Factory r3 = r3.getDefaultViewModelProviderFactory()
            goto L13
        Lf:
            androidx.lifecycle.ViewModelProvider$NewInstanceFactory r3 = androidx.lifecycle.ViewModelProvider.NewInstanceFactory.a()
        L13:
            r2.<init>(r0, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.ViewModelProvider.<init>(androidx.lifecycle.ViewModelStoreOwner):void");
    }

    @NonNull
    @MainThread
    public <T extends ViewModel> T get(@NonNull Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) get("androidx.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @NonNull
    @MainThread
    public <T extends ViewModel> T get(@NonNull String str, @NonNull Class<T> cls) {
        T t3;
        T t4 = (T) this.f6335b.a(str);
        if (cls.isInstance(t4)) {
            Factory factory = this.f6334a;
            if (factory instanceof OnRequeryFactory) {
                ((OnRequeryFactory) factory).a(t4);
            }
            return t4;
        }
        Factory factory2 = this.f6334a;
        if (factory2 instanceof KeyedFactory) {
            t3 = (T) ((KeyedFactory) factory2).create(str, cls);
        } else {
            t3 = (T) factory2.create(cls);
        }
        this.f6335b.c(str, t3);
        return t3;
    }

    public ViewModelProvider(@NonNull ViewModelStoreOwner viewModelStoreOwner, @NonNull Factory factory) {
        this(viewModelStoreOwner.getViewModelStore(), factory);
    }

    public ViewModelProvider(@NonNull ViewModelStore viewModelStore, @NonNull Factory factory) {
        this.f6334a = factory;
        this.f6335b = viewModelStore;
    }
}
