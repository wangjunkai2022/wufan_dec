package androidx.lifecycle;

import androidx.annotation.NonNull;
import androidx.lifecycle.ClassesInfoCache;
import androidx.lifecycle.Lifecycle;
/* JADX INFO: Access modifiers changed from: package-private */
@Deprecated
/* loaded from: classes.dex */
public class ReflectiveGenericLifecycleObserver implements LifecycleEventObserver {

    /* renamed from: a  reason: collision with root package name */
    private final Object f6291a;

    /* renamed from: b  reason: collision with root package name */
    private final ClassesInfoCache.CallbackInfo f6292b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.f6291a = obj;
        this.f6292b = ClassesInfoCache.f6182c.c(obj.getClass());
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
        this.f6292b.a(lifecycleOwner, event, this.f6291a);
    }
}
