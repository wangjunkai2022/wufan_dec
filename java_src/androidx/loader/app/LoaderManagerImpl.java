package androidx.loader.app;

import android.os.Bundle;
import android.os.Looper;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SparseArrayCompat;
import androidx.core.util.DebugUtils;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.loader.app.LoaderManager;
import androidx.loader.content.Loader;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class LoaderManagerImpl extends LoaderManager {

    /* renamed from: c  reason: collision with root package name */
    static final String f6340c = "LoaderManager";

    /* renamed from: d  reason: collision with root package name */
    static boolean f6341d;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LifecycleOwner f6342a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final LoaderViewModel f6343b;

    /* loaded from: classes.dex */
    public static class LoaderInfo<D> extends MutableLiveData<D> implements Loader.OnLoadCompleteListener<D> {

        /* renamed from: a  reason: collision with root package name */
        private final int f6344a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final Bundle f6345b;
        @NonNull

        /* renamed from: c  reason: collision with root package name */
        private final Loader<D> f6346c;

        /* renamed from: d  reason: collision with root package name */
        private LifecycleOwner f6347d;

        /* renamed from: e  reason: collision with root package name */
        private LoaderObserver<D> f6348e;

        /* renamed from: f  reason: collision with root package name */
        private Loader<D> f6349f;

        LoaderInfo(int i2, @Nullable Bundle bundle, @NonNull Loader<D> loader, @Nullable Loader<D> loader2) {
            this.f6344a = i2;
            this.f6345b = bundle;
            this.f6346c = loader;
            this.f6349f = loader2;
            loader.registerListener(i2, this);
        }

        @MainThread
        Loader<D> a(boolean z3) {
            if (LoaderManagerImpl.f6341d) {
                StringBuilder sb = new StringBuilder();
                sb.append("  Destroying: ");
                sb.append(this);
            }
            this.f6346c.cancelLoad();
            this.f6346c.abandon();
            LoaderObserver<D> loaderObserver = this.f6348e;
            if (loaderObserver != null) {
                removeObserver(loaderObserver);
                if (z3) {
                    loaderObserver.b();
                }
            }
            this.f6346c.unregisterListener(this);
            if ((loaderObserver != null && !loaderObserver.a()) || z3) {
                this.f6346c.reset();
                return this.f6349f;
            }
            return this.f6346c;
        }

        @NonNull
        Loader<D> b() {
            return this.f6346c;
        }

        boolean c() {
            LoaderObserver<D> loaderObserver;
            return (!hasActiveObservers() || (loaderObserver = this.f6348e) == null || loaderObserver.a()) ? false : true;
        }

        void d() {
            LifecycleOwner lifecycleOwner = this.f6347d;
            LoaderObserver<D> loaderObserver = this.f6348e;
            if (lifecycleOwner == null || loaderObserver == null) {
                return;
            }
            super.removeObserver(loaderObserver);
            observe(lifecycleOwner, loaderObserver);
        }

        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.f6344a);
            printWriter.print(" mArgs=");
            printWriter.println(this.f6345b);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.f6346c);
            Loader<D> loader = this.f6346c;
            loader.dump(str + "  ", fileDescriptor, printWriter, strArr);
            if (this.f6348e != null) {
                printWriter.print(str);
                printWriter.print("mCallbacks=");
                printWriter.println(this.f6348e);
                LoaderObserver<D> loaderObserver = this.f6348e;
                loaderObserver.dump(str + "  ", printWriter);
            }
            printWriter.print(str);
            printWriter.print("mData=");
            printWriter.println(b().dataToString(getValue()));
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.println(hasActiveObservers());
        }

        @NonNull
        @MainThread
        Loader<D> e(@NonNull LifecycleOwner lifecycleOwner, @NonNull LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
            LoaderObserver<D> loaderObserver = new LoaderObserver<>(this.f6346c, loaderCallbacks);
            observe(lifecycleOwner, loaderObserver);
            LoaderObserver<D> loaderObserver2 = this.f6348e;
            if (loaderObserver2 != null) {
                removeObserver(loaderObserver2);
            }
            this.f6347d = lifecycleOwner;
            this.f6348e = loaderObserver;
            return this.f6346c;
        }

        @Override // androidx.lifecycle.LiveData
        protected void onActive() {
            if (LoaderManagerImpl.f6341d) {
                StringBuilder sb = new StringBuilder();
                sb.append("  Starting: ");
                sb.append(this);
            }
            this.f6346c.startLoading();
        }

        @Override // androidx.lifecycle.LiveData
        protected void onInactive() {
            if (LoaderManagerImpl.f6341d) {
                StringBuilder sb = new StringBuilder();
                sb.append("  Stopping: ");
                sb.append(this);
            }
            this.f6346c.stopLoading();
        }

        @Override // androidx.loader.content.Loader.OnLoadCompleteListener
        public void onLoadComplete(@NonNull Loader<D> loader, @Nullable D d4) {
            if (LoaderManagerImpl.f6341d) {
                StringBuilder sb = new StringBuilder();
                sb.append("onLoadComplete: ");
                sb.append(this);
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                setValue(d4);
                return;
            }
            boolean z3 = LoaderManagerImpl.f6341d;
            postValue(d4);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        public void removeObserver(@NonNull Observer<? super D> observer) {
            super.removeObserver(observer);
            this.f6347d = null;
            this.f6348e = null;
        }

        @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
        public void setValue(D d4) {
            super.setValue(d4);
            Loader<D> loader = this.f6349f;
            if (loader != null) {
                loader.reset();
                this.f6349f = null;
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.f6344a);
            sb.append(" : ");
            DebugUtils.buildShortClassTag(this.f6346c, sb);
            sb.append("}}");
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class LoaderObserver<D> implements Observer<D> {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final Loader<D> f6350a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final LoaderManager.LoaderCallbacks<D> f6351b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f6352c = false;

        LoaderObserver(@NonNull Loader<D> loader, @NonNull LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
            this.f6350a = loader;
            this.f6351b = loaderCallbacks;
        }

        boolean a() {
            return this.f6352c;
        }

        @MainThread
        void b() {
            if (this.f6352c) {
                if (LoaderManagerImpl.f6341d) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("  Resetting: ");
                    sb.append(this.f6350a);
                }
                this.f6351b.onLoaderReset(this.f6350a);
            }
        }

        public void dump(String str, PrintWriter printWriter) {
            printWriter.print(str);
            printWriter.print("mDeliveredData=");
            printWriter.println(this.f6352c);
        }

        @Override // androidx.lifecycle.Observer
        public void onChanged(@Nullable D d4) {
            if (LoaderManagerImpl.f6341d) {
                StringBuilder sb = new StringBuilder();
                sb.append("  onLoadFinished in ");
                sb.append(this.f6350a);
                sb.append(": ");
                sb.append(this.f6350a.dataToString(d4));
            }
            this.f6351b.onLoadFinished(this.f6350a, d4);
            this.f6352c = true;
        }

        public String toString() {
            return this.f6351b.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class LoaderViewModel extends ViewModel {

        /* renamed from: c  reason: collision with root package name */
        private static final ViewModelProvider.Factory f6353c = new ViewModelProvider.Factory() { // from class: androidx.loader.app.LoaderManagerImpl.LoaderViewModel.1
            @Override // androidx.lifecycle.ViewModelProvider.Factory
            @NonNull
            public <T extends ViewModel> T create(@NonNull Class<T> cls) {
                return new LoaderViewModel();
            }
        };

        /* renamed from: a  reason: collision with root package name */
        private SparseArrayCompat<LoaderInfo> f6354a = new SparseArrayCompat<>();

        /* renamed from: b  reason: collision with root package name */
        private boolean f6355b = false;

        LoaderViewModel() {
        }

        @NonNull
        static LoaderViewModel b(ViewModelStore viewModelStore) {
            return (LoaderViewModel) new ViewModelProvider(viewModelStore, f6353c).get(LoaderViewModel.class);
        }

        void a() {
            this.f6355b = false;
        }

        <D> LoaderInfo<D> c(int i2) {
            return this.f6354a.get(i2);
        }

        boolean d() {
            int size = this.f6354a.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (this.f6354a.valueAt(i2).c()) {
                    return true;
                }
            }
            return false;
        }

        public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.f6354a.size() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + "    ";
                for (int i2 = 0; i2 < this.f6354a.size(); i2++) {
                    LoaderInfo valueAt = this.f6354a.valueAt(i2);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(this.f6354a.keyAt(i2));
                    printWriter.print(": ");
                    printWriter.println(valueAt.toString());
                    valueAt.dump(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }

        boolean e() {
            return this.f6355b;
        }

        void f() {
            int size = this.f6354a.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f6354a.valueAt(i2).d();
            }
        }

        void g(int i2, @NonNull LoaderInfo loaderInfo) {
            this.f6354a.put(i2, loaderInfo);
        }

        void h(int i2) {
            this.f6354a.remove(i2);
        }

        void i() {
            this.f6355b = true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.lifecycle.ViewModel
        public void onCleared() {
            super.onCleared();
            int size = this.f6354a.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f6354a.valueAt(i2).a(true);
            }
            this.f6354a.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LoaderManagerImpl(@NonNull LifecycleOwner lifecycleOwner, @NonNull ViewModelStore viewModelStore) {
        this.f6342a = lifecycleOwner;
        this.f6343b = LoaderViewModel.b(viewModelStore);
    }

    @NonNull
    @MainThread
    private <D> Loader<D> a(int i2, @Nullable Bundle bundle, @NonNull LoaderManager.LoaderCallbacks<D> loaderCallbacks, @Nullable Loader<D> loader) {
        try {
            this.f6343b.i();
            Loader<D> onCreateLoader = loaderCallbacks.onCreateLoader(i2, bundle);
            if (onCreateLoader != null) {
                if (onCreateLoader.getClass().isMemberClass() && !Modifier.isStatic(onCreateLoader.getClass().getModifiers())) {
                    throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + onCreateLoader);
                }
                LoaderInfo loaderInfo = new LoaderInfo(i2, bundle, onCreateLoader, loader);
                if (f6341d) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("  Created new loader ");
                    sb.append(loaderInfo);
                }
                this.f6343b.g(i2, loaderInfo);
                this.f6343b.a();
                return loaderInfo.e(this.f6342a, loaderCallbacks);
            }
            throw new IllegalArgumentException("Object returned from onCreateLoader must not be null");
        } catch (Throwable th) {
            this.f6343b.a();
            throw th;
        }
    }

    @Override // androidx.loader.app.LoaderManager
    @MainThread
    public void destroyLoader(int i2) {
        if (!this.f6343b.e()) {
            if (Looper.getMainLooper() == Looper.myLooper()) {
                if (f6341d) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("destroyLoader in ");
                    sb.append(this);
                    sb.append(" of ");
                    sb.append(i2);
                }
                LoaderInfo c4 = this.f6343b.c(i2);
                if (c4 != null) {
                    c4.a(true);
                    this.f6343b.h(i2);
                    return;
                }
                return;
            }
            throw new IllegalStateException("destroyLoader must be called on the main thread");
        }
        throw new IllegalStateException("Called while creating a loader");
    }

    @Override // androidx.loader.app.LoaderManager
    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f6343b.dump(str, fileDescriptor, printWriter, strArr);
    }

    @Override // androidx.loader.app.LoaderManager
    @Nullable
    public <D> Loader<D> getLoader(int i2) {
        if (!this.f6343b.e()) {
            LoaderInfo<D> c4 = this.f6343b.c(i2);
            if (c4 != null) {
                return c4.b();
            }
            return null;
        }
        throw new IllegalStateException("Called while creating a loader");
    }

    @Override // androidx.loader.app.LoaderManager
    public boolean hasRunningLoaders() {
        return this.f6343b.d();
    }

    @Override // androidx.loader.app.LoaderManager
    @NonNull
    @MainThread
    public <D> Loader<D> initLoader(int i2, @Nullable Bundle bundle, @NonNull LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
        if (!this.f6343b.e()) {
            if (Looper.getMainLooper() == Looper.myLooper()) {
                LoaderInfo<D> c4 = this.f6343b.c(i2);
                if (f6341d) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("initLoader in ");
                    sb.append(this);
                    sb.append(": args=");
                    sb.append(bundle);
                }
                if (c4 == null) {
                    return a(i2, bundle, loaderCallbacks, null);
                }
                if (f6341d) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("  Re-using existing loader ");
                    sb2.append(c4);
                }
                return c4.e(this.f6342a, loaderCallbacks);
            }
            throw new IllegalStateException("initLoader must be called on the main thread");
        }
        throw new IllegalStateException("Called while creating a loader");
    }

    @Override // androidx.loader.app.LoaderManager
    public void markForRedelivery() {
        this.f6343b.f();
    }

    @Override // androidx.loader.app.LoaderManager
    @NonNull
    @MainThread
    public <D> Loader<D> restartLoader(int i2, @Nullable Bundle bundle, @NonNull LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
        if (!this.f6343b.e()) {
            if (Looper.getMainLooper() == Looper.myLooper()) {
                if (f6341d) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("restartLoader in ");
                    sb.append(this);
                    sb.append(": args=");
                    sb.append(bundle);
                }
                LoaderInfo<D> c4 = this.f6343b.c(i2);
                return a(i2, bundle, loaderCallbacks, c4 != null ? c4.a(false) : null);
            }
            throw new IllegalStateException("restartLoader must be called on the main thread");
        }
        throw new IllegalStateException("Called while creating a loader");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        DebugUtils.buildShortClassTag(this.f6342a, sb);
        sb.append("}}");
        return sb.toString();
    }
}
