package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.recyclerview.widget.DiffUtil;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* loaded from: classes2.dex */
public final class AsyncDifferConfig<T> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Executor f6714a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final Executor f6715b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final DiffUtil.ItemCallback<T> f6716c;

    /* loaded from: classes2.dex */
    public static final class Builder<T> {

        /* renamed from: d  reason: collision with root package name */
        private static final Object f6717d = new Object();

        /* renamed from: e  reason: collision with root package name */
        private static Executor f6718e;
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private Executor f6719a;

        /* renamed from: b  reason: collision with root package name */
        private Executor f6720b;

        /* renamed from: c  reason: collision with root package name */
        private final DiffUtil.ItemCallback<T> f6721c;

        public Builder(@NonNull DiffUtil.ItemCallback<T> itemCallback) {
            this.f6721c = itemCallback;
        }

        @NonNull
        public AsyncDifferConfig<T> build() {
            if (this.f6720b == null) {
                synchronized (f6717d) {
                    if (f6718e == null) {
                        f6718e = Executors.newFixedThreadPool(2);
                    }
                }
                this.f6720b = f6718e;
            }
            return new AsyncDifferConfig<>(this.f6719a, this.f6720b, this.f6721c);
        }

        @NonNull
        public Builder<T> setBackgroundThreadExecutor(Executor executor) {
            this.f6720b = executor;
            return this;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public Builder<T> setMainThreadExecutor(Executor executor) {
            this.f6719a = executor;
            return this;
        }
    }

    AsyncDifferConfig(@Nullable Executor executor, @NonNull Executor executor2, @NonNull DiffUtil.ItemCallback<T> itemCallback) {
        this.f6714a = executor;
        this.f6715b = executor2;
        this.f6716c = itemCallback;
    }

    @NonNull
    public Executor getBackgroundThreadExecutor() {
        return this.f6715b;
    }

    @NonNull
    public DiffUtil.ItemCallback<T> getDiffCallback() {
        return this.f6716c;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Executor getMainThreadExecutor() {
        return this.f6714a;
    }
}
