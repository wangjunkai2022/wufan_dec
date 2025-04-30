package androidx.databinding;

import androidx.annotation.RestrictTo;
import androidx.lifecycle.LifecycleOwner;
/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public interface ObservableReference<T> {
    void addListener(T t3);

    WeakListener<T> getListener();

    void removeListener(T t3);

    void setLifecycleOwner(LifecycleOwner lifecycleOwner);
}
