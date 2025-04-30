package androidx.loader.content;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.DebugUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public class Loader<D> {

    /* renamed from: a  reason: collision with root package name */
    int f6375a;

    /* renamed from: b  reason: collision with root package name */
    OnLoadCompleteListener<D> f6376b;

    /* renamed from: c  reason: collision with root package name */
    OnLoadCanceledListener<D> f6377c;

    /* renamed from: d  reason: collision with root package name */
    Context f6378d;

    /* renamed from: e  reason: collision with root package name */
    boolean f6379e = false;

    /* renamed from: f  reason: collision with root package name */
    boolean f6380f = false;

    /* renamed from: g  reason: collision with root package name */
    boolean f6381g = true;

    /* renamed from: h  reason: collision with root package name */
    boolean f6382h = false;

    /* renamed from: i  reason: collision with root package name */
    boolean f6383i = false;

    /* loaded from: classes.dex */
    public final class ForceLoadContentObserver extends ContentObserver {
        public ForceLoadContentObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z3) {
            Loader.this.onContentChanged();
        }
    }

    /* loaded from: classes.dex */
    public interface OnLoadCanceledListener<D> {
        void onLoadCanceled(@NonNull Loader<D> loader);
    }

    /* loaded from: classes.dex */
    public interface OnLoadCompleteListener<D> {
        void onLoadComplete(@NonNull Loader<D> loader, @Nullable D d4);
    }

    public Loader(@NonNull Context context) {
        this.f6378d = context.getApplicationContext();
    }

    @MainThread
    protected void a() {
    }

    @MainThread
    public void abandon() {
        this.f6380f = true;
        a();
    }

    @MainThread
    protected boolean b() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @MainThread
    public void c() {
    }

    @MainThread
    public boolean cancelLoad() {
        return b();
    }

    public void commitContentChanged() {
        this.f6383i = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @MainThread
    public void d() {
    }

    @NonNull
    public String dataToString(@Nullable D d4) {
        StringBuilder sb = new StringBuilder(64);
        DebugUtils.buildShortClassTag(d4, sb);
        sb.append("}");
        return sb.toString();
    }

    @MainThread
    public void deliverCancellation() {
        OnLoadCanceledListener<D> onLoadCanceledListener = this.f6377c;
        if (onLoadCanceledListener != null) {
            onLoadCanceledListener.onLoadCanceled(this);
        }
    }

    @MainThread
    public void deliverResult(@Nullable D d4) {
        OnLoadCompleteListener<D> onLoadCompleteListener = this.f6376b;
        if (onLoadCompleteListener != null) {
            onLoadCompleteListener.onLoadComplete(this, d4);
        }
    }

    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.f6375a);
        printWriter.print(" mListener=");
        printWriter.println(this.f6376b);
        if (this.f6379e || this.f6382h || this.f6383i) {
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.f6379e);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.f6382h);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.f6383i);
        }
        if (this.f6380f || this.f6381g) {
            printWriter.print(str);
            printWriter.print("mAbandoned=");
            printWriter.print(this.f6380f);
            printWriter.print(" mReset=");
            printWriter.println(this.f6381g);
        }
    }

    @MainThread
    protected void e() {
    }

    @MainThread
    protected void f() {
    }

    @MainThread
    public void forceLoad() {
        c();
    }

    @NonNull
    public Context getContext() {
        return this.f6378d;
    }

    public int getId() {
        return this.f6375a;
    }

    public boolean isAbandoned() {
        return this.f6380f;
    }

    public boolean isReset() {
        return this.f6381g;
    }

    public boolean isStarted() {
        return this.f6379e;
    }

    @MainThread
    public void onContentChanged() {
        if (this.f6379e) {
            forceLoad();
        } else {
            this.f6382h = true;
        }
    }

    @MainThread
    public void registerListener(int i2, @NonNull OnLoadCompleteListener<D> onLoadCompleteListener) {
        if (this.f6376b == null) {
            this.f6376b = onLoadCompleteListener;
            this.f6375a = i2;
            return;
        }
        throw new IllegalStateException("There is already a listener registered");
    }

    @MainThread
    public void registerOnLoadCanceledListener(@NonNull OnLoadCanceledListener<D> onLoadCanceledListener) {
        if (this.f6377c == null) {
            this.f6377c = onLoadCanceledListener;
            return;
        }
        throw new IllegalStateException("There is already a listener registered");
    }

    @MainThread
    public void reset() {
        d();
        this.f6381g = true;
        this.f6379e = false;
        this.f6380f = false;
        this.f6382h = false;
        this.f6383i = false;
    }

    public void rollbackContentChanged() {
        if (this.f6383i) {
            onContentChanged();
        }
    }

    @MainThread
    public final void startLoading() {
        this.f6379e = true;
        this.f6381g = false;
        this.f6380f = false;
        e();
    }

    @MainThread
    public void stopLoading() {
        this.f6379e = false;
        f();
    }

    public boolean takeContentChanged() {
        boolean z3 = this.f6382h;
        this.f6382h = false;
        this.f6383i |= z3;
        return z3;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        DebugUtils.buildShortClassTag(this, sb);
        sb.append(" id=");
        sb.append(this.f6375a);
        sb.append("}");
        return sb.toString();
    }

    @MainThread
    public void unregisterListener(@NonNull OnLoadCompleteListener<D> onLoadCompleteListener) {
        OnLoadCompleteListener<D> onLoadCompleteListener2 = this.f6376b;
        if (onLoadCompleteListener2 == null) {
            throw new IllegalStateException("No listener register");
        }
        if (onLoadCompleteListener2 == onLoadCompleteListener) {
            this.f6376b = null;
            return;
        }
        throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    }

    @MainThread
    public void unregisterOnLoadCanceledListener(@NonNull OnLoadCanceledListener<D> onLoadCanceledListener) {
        OnLoadCanceledListener<D> onLoadCanceledListener2 = this.f6377c;
        if (onLoadCanceledListener2 == null) {
            throw new IllegalStateException("No listener register");
        }
        if (onLoadCanceledListener2 == onLoadCanceledListener) {
            this.f6377c = null;
            return;
        }
        throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    }
}
