package androidx.loader.content;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContentResolverCompat;
import androidx.core.os.CancellationSignal;
import androidx.core.os.OperationCanceledException;
import androidx.loader.content.Loader;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;
/* loaded from: classes.dex */
public class CursorLoader extends AsyncTaskLoader<Cursor> {

    /* renamed from: r  reason: collision with root package name */
    final Loader<Cursor>.ForceLoadContentObserver f6367r;

    /* renamed from: s  reason: collision with root package name */
    Uri f6368s;

    /* renamed from: t  reason: collision with root package name */
    String[] f6369t;

    /* renamed from: u  reason: collision with root package name */
    String f6370u;

    /* renamed from: v  reason: collision with root package name */
    String[] f6371v;

    /* renamed from: w  reason: collision with root package name */
    String f6372w;

    /* renamed from: x  reason: collision with root package name */
    Cursor f6373x;

    /* renamed from: y  reason: collision with root package name */
    CancellationSignal f6374y;

    public CursorLoader(@NonNull Context context) {
        super(context);
        this.f6367r = new Loader.ForceLoadContentObserver();
    }

    @Override // androidx.loader.content.AsyncTaskLoader
    public void cancelLoadInBackground() {
        super.cancelLoadInBackground();
        synchronized (this) {
            CancellationSignal cancellationSignal = this.f6374y;
            if (cancellationSignal != null) {
                cancellationSignal.cancel();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.loader.content.Loader
    public void d() {
        super.d();
        f();
        Cursor cursor = this.f6373x;
        if (cursor != null && !cursor.isClosed()) {
            this.f6373x.close();
        }
        this.f6373x = null;
    }

    @Override // androidx.loader.content.AsyncTaskLoader, androidx.loader.content.Loader
    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("mUri=");
        printWriter.println(this.f6368s);
        printWriter.print(str);
        printWriter.print("mProjection=");
        printWriter.println(Arrays.toString(this.f6369t));
        printWriter.print(str);
        printWriter.print("mSelection=");
        printWriter.println(this.f6370u);
        printWriter.print(str);
        printWriter.print("mSelectionArgs=");
        printWriter.println(Arrays.toString(this.f6371v));
        printWriter.print(str);
        printWriter.print("mSortOrder=");
        printWriter.println(this.f6372w);
        printWriter.print(str);
        printWriter.print("mCursor=");
        printWriter.println(this.f6373x);
        printWriter.print(str);
        printWriter.print("mContentChanged=");
        printWriter.println(this.f6382h);
    }

    @Override // androidx.loader.content.Loader
    protected void e() {
        Cursor cursor = this.f6373x;
        if (cursor != null) {
            deliverResult(cursor);
        }
        if (takeContentChanged() || this.f6373x == null) {
            forceLoad();
        }
    }

    @Override // androidx.loader.content.Loader
    protected void f() {
        cancelLoad();
    }

    @Nullable
    public String[] getProjection() {
        return this.f6369t;
    }

    @Nullable
    public String getSelection() {
        return this.f6370u;
    }

    @Nullable
    public String[] getSelectionArgs() {
        return this.f6371v;
    }

    @Nullable
    public String getSortOrder() {
        return this.f6372w;
    }

    @NonNull
    public Uri getUri() {
        return this.f6368s;
    }

    public void setProjection(@Nullable String[] strArr) {
        this.f6369t = strArr;
    }

    public void setSelection(@Nullable String str) {
        this.f6370u = str;
    }

    public void setSelectionArgs(@Nullable String[] strArr) {
        this.f6371v = strArr;
    }

    public void setSortOrder(@Nullable String str) {
        this.f6372w = str;
    }

    public void setUri(@NonNull Uri uri) {
        this.f6368s = uri;
    }

    @Override // androidx.loader.content.Loader
    public void deliverResult(Cursor cursor) {
        if (isReset()) {
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        Cursor cursor2 = this.f6373x;
        this.f6373x = cursor;
        if (isStarted()) {
            super.deliverResult((CursorLoader) cursor);
        }
        if (cursor2 == null || cursor2 == cursor || cursor2.isClosed()) {
            return;
        }
        cursor2.close();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.loader.content.AsyncTaskLoader
    public Cursor loadInBackground() {
        synchronized (this) {
            if (!isLoadInBackgroundCanceled()) {
                this.f6374y = new CancellationSignal();
            } else {
                throw new OperationCanceledException();
            }
        }
        try {
            Cursor query = ContentResolverCompat.query(getContext().getContentResolver(), this.f6368s, this.f6369t, this.f6370u, this.f6371v, this.f6372w, this.f6374y);
            if (query != null) {
                try {
                    query.getCount();
                    query.registerContentObserver(this.f6367r);
                } catch (RuntimeException e4) {
                    query.close();
                    throw e4;
                }
            }
            synchronized (this) {
                this.f6374y = null;
            }
            return query;
        } catch (Throwable th) {
            synchronized (this) {
                this.f6374y = null;
                throw th;
            }
        }
    }

    @Override // androidx.loader.content.AsyncTaskLoader
    public void onCanceled(Cursor cursor) {
        if (cursor == null || cursor.isClosed()) {
            return;
        }
        cursor.close();
    }

    public CursorLoader(@NonNull Context context, @NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        super(context);
        this.f6367r = new Loader.ForceLoadContentObserver();
        this.f6368s = uri;
        this.f6369t = strArr;
        this.f6370u = str;
        this.f6371v = strArr2;
        this.f6372w = str2;
    }
}
