package androidx.activity.result.contract;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public abstract class ActivityResultContract<I, O> {

    /* loaded from: classes.dex */
    public static final class SynchronousResult<T> {
        @SuppressLint({"UnknownNullness"})

        /* renamed from: a  reason: collision with root package name */
        private final T f99a;

        public SynchronousResult(@SuppressLint({"UnknownNullness"}) T t3) {
            this.f99a = t3;
        }

        @SuppressLint({"UnknownNullness"})
        public T getValue() {
            return this.f99a;
        }
    }

    @NonNull
    public abstract Intent createIntent(@NonNull Context context, @SuppressLint({"UnknownNullness"}) I i2);

    @Nullable
    public SynchronousResult<O> getSynchronousResult(@NonNull Context context, @SuppressLint({"UnknownNullness"}) I i2) {
        return null;
    }

    @SuppressLint({"UnknownNullness"})
    public abstract O parseResult(int i2, @Nullable Intent intent);
}
