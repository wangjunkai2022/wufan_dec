package androidx.lifecycle;

import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class SingleGeneratedAdapterObserver implements LifecycleEventObserver {

    /* renamed from: a  reason: collision with root package name */
    private final GeneratedAdapter f6324a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SingleGeneratedAdapterObserver(GeneratedAdapter generatedAdapter) {
        this.f6324a = generatedAdapter;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
        this.f6324a.callMethods(lifecycleOwner, event, false, null);
        this.f6324a.callMethods(lifecycleOwner, event, true, null);
    }
}
