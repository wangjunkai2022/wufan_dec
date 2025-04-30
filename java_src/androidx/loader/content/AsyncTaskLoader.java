package androidx.loader.content;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.os.OperationCanceledException;
import androidx.core.util.TimeUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public abstract class AsyncTaskLoader<D> extends Loader<D> {

    /* renamed from: p  reason: collision with root package name */
    static final String f6356p = "AsyncTaskLoader";

    /* renamed from: q  reason: collision with root package name */
    static final boolean f6357q = false;

    /* renamed from: j  reason: collision with root package name */
    private final Executor f6358j;

    /* renamed from: k  reason: collision with root package name */
    volatile AsyncTaskLoader<D>.LoadTask f6359k;

    /* renamed from: l  reason: collision with root package name */
    volatile AsyncTaskLoader<D>.LoadTask f6360l;

    /* renamed from: m  reason: collision with root package name */
    long f6361m;

    /* renamed from: n  reason: collision with root package name */
    long f6362n;

    /* renamed from: o  reason: collision with root package name */
    Handler f6363o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class LoadTask extends ModernAsyncTask<Void, Void, D> implements Runnable {

        /* renamed from: p  reason: collision with root package name */
        private final CountDownLatch f6364p = new CountDownLatch(1);

        /* renamed from: q  reason: collision with root package name */
        boolean f6365q;

        LoadTask() {
        }

        @Override // androidx.loader.content.ModernAsyncTask
        protected void e(D d4) {
            try {
                AsyncTaskLoader.this.g(this, d4);
            } finally {
                this.f6364p.countDown();
            }
        }

        @Override // androidx.loader.content.ModernAsyncTask
        protected void f(D d4) {
            try {
                AsyncTaskLoader.this.h(this, d4);
            } finally {
                this.f6364p.countDown();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.loader.content.ModernAsyncTask
        /* renamed from: l */
        public D a(Void... voidArr) {
            try {
                return (D) AsyncTaskLoader.this.j();
            } catch (OperationCanceledException e4) {
                if (isCancelled()) {
                    return null;
                }
                throw e4;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f6365q = false;
            AsyncTaskLoader.this.i();
        }

        public void waitForLoader() {
            try {
                this.f6364p.await();
            } catch (InterruptedException unused) {
            }
        }
    }

    public AsyncTaskLoader(@NonNull Context context) {
        this(context, ModernAsyncTask.THREAD_POOL_EXECUTOR);
    }

    @Override // androidx.loader.content.Loader
    protected boolean b() {
        if (this.f6359k != null) {
            if (!this.f6379e) {
                this.f6382h = true;
            }
            if (this.f6360l != null) {
                if (this.f6359k.f6365q) {
                    this.f6359k.f6365q = false;
                    this.f6363o.removeCallbacks(this.f6359k);
                }
                this.f6359k = null;
                return false;
            } else if (this.f6359k.f6365q) {
                this.f6359k.f6365q = false;
                this.f6363o.removeCallbacks(this.f6359k);
                this.f6359k = null;
                return false;
            } else {
                boolean cancel = this.f6359k.cancel(false);
                if (cancel) {
                    this.f6360l = this.f6359k;
                    cancelLoadInBackground();
                }
                this.f6359k = null;
                return cancel;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.loader.content.Loader
    public void c() {
        super.c();
        cancelLoad();
        this.f6359k = new LoadTask();
        i();
    }

    public void cancelLoadInBackground() {
    }

    @Override // androidx.loader.content.Loader
    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (this.f6359k != null) {
            printWriter.print(str);
            printWriter.print("mTask=");
            printWriter.print(this.f6359k);
            printWriter.print(" waiting=");
            printWriter.println(this.f6359k.f6365q);
        }
        if (this.f6360l != null) {
            printWriter.print(str);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.f6360l);
            printWriter.print(" waiting=");
            printWriter.println(this.f6360l.f6365q);
        }
        if (this.f6361m != 0) {
            printWriter.print(str);
            printWriter.print("mUpdateThrottle=");
            TimeUtils.formatDuration(this.f6361m, printWriter);
            printWriter.print(" mLastLoadCompleteTime=");
            TimeUtils.formatDuration(this.f6362n, SystemClock.uptimeMillis(), printWriter);
            printWriter.println();
        }
    }

    void g(AsyncTaskLoader<D>.LoadTask loadTask, D d4) {
        onCanceled(d4);
        if (this.f6360l == loadTask) {
            rollbackContentChanged();
            this.f6362n = SystemClock.uptimeMillis();
            this.f6360l = null;
            deliverCancellation();
            i();
        }
    }

    void h(AsyncTaskLoader<D>.LoadTask loadTask, D d4) {
        if (this.f6359k != loadTask) {
            g(loadTask, d4);
        } else if (isAbandoned()) {
            onCanceled(d4);
        } else {
            commitContentChanged();
            this.f6362n = SystemClock.uptimeMillis();
            this.f6359k = null;
            deliverResult(d4);
        }
    }

    void i() {
        if (this.f6360l != null || this.f6359k == null) {
            return;
        }
        if (this.f6359k.f6365q) {
            this.f6359k.f6365q = false;
            this.f6363o.removeCallbacks(this.f6359k);
        }
        if (this.f6361m > 0 && SystemClock.uptimeMillis() < this.f6362n + this.f6361m) {
            this.f6359k.f6365q = true;
            this.f6363o.postAtTime(this.f6359k, this.f6362n + this.f6361m);
            return;
        }
        this.f6359k.executeOnExecutor(this.f6358j, null);
    }

    public boolean isLoadInBackgroundCanceled() {
        return this.f6360l != null;
    }

    @Nullable
    protected D j() {
        return loadInBackground();
    }

    @Nullable
    public abstract D loadInBackground();

    public void onCanceled(@Nullable D d4) {
    }

    public void setUpdateThrottle(long j4) {
        this.f6361m = j4;
        if (j4 != 0) {
            this.f6363o = new Handler();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void waitForLoader() {
        AsyncTaskLoader<D>.LoadTask loadTask = this.f6359k;
        if (loadTask != null) {
            loadTask.waitForLoader();
        }
    }

    private AsyncTaskLoader(@NonNull Context context, @NonNull Executor executor) {
        super(context);
        this.f6362n = -10000L;
        this.f6358j = executor;
    }
}
