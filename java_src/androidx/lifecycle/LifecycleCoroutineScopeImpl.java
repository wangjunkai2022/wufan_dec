package androidx.lifecycle;

import androidx.core.app.NotificationCompat;
import androidx.lifecycle.Lifecycle;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.f2;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: Lifecycle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0015\u001a\u00020\u0010\u0012\u0006\u0010\u000f\u001a\u00020\n¢\u0006\u0004\b\u0016\u0010\u0017J\u0006\u0010\u0004\u001a\u00020\u0003J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016R\u001c\u0010\u000f\u001a\u00020\n8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u0015\u001a\u00020\u00108\u0010@\u0010X\u0090\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, d2 = {"Landroidx/lifecycle/LifecycleCoroutineScopeImpl;", "Landroidx/lifecycle/LifecycleCoroutineScope;", "Landroidx/lifecycle/LifecycleEventObserver;", "", "register", "Landroidx/lifecycle/LifecycleOwner;", "source", "Landroidx/lifecycle/Lifecycle$Event;", NotificationCompat.CATEGORY_EVENT, "onStateChanged", "Lkotlin/coroutines/CoroutineContext;", "b", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "coroutineContext", "Landroidx/lifecycle/Lifecycle;", "a", "Landroidx/lifecycle/Lifecycle;", "getLifecycle$lifecycle_runtime_ktx_release", "()Landroidx/lifecycle/Lifecycle;", "lifecycle", "<init>", "(Landroidx/lifecycle/Lifecycle;Lkotlin/coroutines/CoroutineContext;)V", "lifecycle-runtime-ktx_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class LifecycleCoroutineScopeImpl extends LifecycleCoroutineScope implements LifecycleEventObserver {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Lifecycle f6235a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final CoroutineContext f6236b;

    public LifecycleCoroutineScopeImpl(@NotNull Lifecycle lifecycle, @NotNull CoroutineContext coroutineContext) {
        this.f6235a = lifecycle;
        this.f6236b = coroutineContext;
        if (getLifecycle$lifecycle_runtime_ktx_release().getCurrentState() == Lifecycle.State.DESTROYED) {
            f2.j(getCoroutineContext(), null, 1, null);
        }
    }

    @Override // kotlinx.coroutines.t0
    @NotNull
    public CoroutineContext getCoroutineContext() {
        return this.f6236b;
    }

    @Override // androidx.lifecycle.LifecycleCoroutineScope
    @NotNull
    public Lifecycle getLifecycle$lifecycle_runtime_ktx_release() {
        return this.f6235a;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NotNull LifecycleOwner lifecycleOwner, @NotNull Lifecycle.Event event) {
        if (getLifecycle$lifecycle_runtime_ktx_release().getCurrentState().compareTo(Lifecycle.State.DESTROYED) <= 0) {
            getLifecycle$lifecycle_runtime_ktx_release().removeObserver(this);
            f2.j(getCoroutineContext(), null, 1, null);
        }
    }

    public final void register() {
        i.e(this, g1.e().y(), null, new LifecycleCoroutineScopeImpl$register$1(this, null), 2, null);
    }
}
