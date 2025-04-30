package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.arch.core.executor.ArchTaskExecutor;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public abstract class ComputableLiveData<T> {

    /* renamed from: a  reason: collision with root package name */
    final Executor f6193a;

    /* renamed from: b  reason: collision with root package name */
    final LiveData<T> f6194b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicBoolean f6195c;

    /* renamed from: d  reason: collision with root package name */
    final AtomicBoolean f6196d;
    @VisibleForTesting

    /* renamed from: e  reason: collision with root package name */
    final Runnable f6197e;
    @VisibleForTesting

    /* renamed from: f  reason: collision with root package name */
    final Runnable f6198f;

    public ComputableLiveData() {
        this(ArchTaskExecutor.getIOThreadExecutor());
    }

    @WorkerThread
    protected abstract T a();

    @NonNull
    public LiveData<T> getLiveData() {
        return this.f6194b;
    }

    public void invalidate() {
        ArchTaskExecutor.getInstance().executeOnMainThread(this.f6198f);
    }

    public ComputableLiveData(@NonNull Executor executor) {
        this.f6195c = new AtomicBoolean(true);
        this.f6196d = new AtomicBoolean(false);
        this.f6197e = new Runnable() { // from class: androidx.lifecycle.ComputableLiveData.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            @WorkerThread
            public void run() {
                do {
                    boolean z3 = false;
                    if (ComputableLiveData.this.f6196d.compareAndSet(false, true)) {
                        Object obj = null;
                        boolean z4 = false;
                        while (ComputableLiveData.this.f6195c.compareAndSet(true, false)) {
                            try {
                                obj = ComputableLiveData.this.a();
                                z4 = true;
                            } catch (Throwable th) {
                                ComputableLiveData.this.f6196d.set(false);
                                throw th;
                            }
                        }
                        if (z4) {
                            ComputableLiveData.this.f6194b.postValue(obj);
                        }
                        ComputableLiveData.this.f6196d.set(false);
                        z3 = z4;
                    }
                    if (!z3) {
                        return;
                    }
                } while (ComputableLiveData.this.f6195c.get());
            }
        };
        this.f6198f = new Runnable() { // from class: androidx.lifecycle.ComputableLiveData.3
            @Override // java.lang.Runnable
            @MainThread
            public void run() {
                boolean hasActiveObservers = ComputableLiveData.this.f6194b.hasActiveObservers();
                if (ComputableLiveData.this.f6195c.compareAndSet(false, true) && hasActiveObservers) {
                    ComputableLiveData computableLiveData = ComputableLiveData.this;
                    computableLiveData.f6193a.execute(computableLiveData.f6197e);
                }
            }
        };
        this.f6193a = executor;
        this.f6194b = new LiveData<T>() { // from class: androidx.lifecycle.ComputableLiveData.1
            @Override // androidx.lifecycle.LiveData
            protected void onActive() {
                ComputableLiveData computableLiveData = ComputableLiveData.this;
                computableLiveData.f6193a.execute(computableLiveData.f6197e);
            }
        };
    }
}
