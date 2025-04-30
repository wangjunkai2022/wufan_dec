package androidx.loader.app;

import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.loader.content.Loader;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public abstract class LoaderManager {

    /* loaded from: classes.dex */
    public interface LoaderCallbacks<D> {
        @NonNull
        @MainThread
        Loader<D> onCreateLoader(int i2, @Nullable Bundle bundle);

        @MainThread
        void onLoadFinished(@NonNull Loader<D> loader, D d4);

        @MainThread
        void onLoaderReset(@NonNull Loader<D> loader);
    }

    public static void enableDebugLogging(boolean z3) {
        LoaderManagerImpl.f6341d = z3;
    }

    @NonNull
    public static <T extends LifecycleOwner & ViewModelStoreOwner> LoaderManager getInstance(@NonNull T t3) {
        return new LoaderManagerImpl(t3, t3.getViewModelStore());
    }

    @MainThread
    public abstract void destroyLoader(int i2);

    @Deprecated
    public abstract void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    @Nullable
    public abstract <D> Loader<D> getLoader(int i2);

    public boolean hasRunningLoaders() {
        return false;
    }

    @NonNull
    @MainThread
    public abstract <D> Loader<D> initLoader(int i2, @Nullable Bundle bundle, @NonNull LoaderCallbacks<D> loaderCallbacks);

    public abstract void markForRedelivery();

    @NonNull
    @MainThread
    public abstract <D> Loader<D> restartLoader(int i2, @Nullable Bundle bundle, @NonNull LoaderCallbacks<D> loaderCallbacks);
}
