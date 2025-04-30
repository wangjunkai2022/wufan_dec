package x2;

import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
/* compiled from: SimpleQueue.java */
/* loaded from: classes5.dex */
public interface o<T> {
    void clear();

    boolean isEmpty();

    boolean offer(@NonNull T t3);

    boolean offer(@NonNull T t3, @NonNull T t4);

    @Nullable
    T poll() throws Exception;
}
