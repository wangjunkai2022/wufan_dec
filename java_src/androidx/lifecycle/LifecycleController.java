package androidx.lifecycle;

import androidx.annotation.MainThread;
import androidx.lifecycle.Lifecycle;
import com.umeng.analytics.pro.ai;
import com.xinzhu.overmind.utils.helpers.d;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.c2;
import org.jetbrains.annotations.NotNull;
/* compiled from: LifecycleController.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0011\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0082\bJ\b\u0010\u0006\u001a\u00020\u0004H\u0007R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u0011\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, d2 = {"Landroidx/lifecycle/LifecycleController;", "", "Lkotlinx/coroutines/c2;", "parentJob", "", "a", "finish", "Landroidx/lifecycle/DispatchQueue;", d.f64708a, "Landroidx/lifecycle/DispatchQueue;", "dispatchQueue", "Landroidx/lifecycle/Lifecycle$State;", ai.aD, "Landroidx/lifecycle/Lifecycle$State;", "minState", "Landroidx/lifecycle/LifecycleEventObserver;", "Landroidx/lifecycle/LifecycleEventObserver;", "observer", "Landroidx/lifecycle/Lifecycle;", "b", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "<init>", "(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/DispatchQueue;Lkotlinx/coroutines/c2;)V", "lifecycle-runtime-ktx_release"}, k = 1, mv = {1, 4, 0})
@MainThread
/* loaded from: classes.dex */
public final class LifecycleController {

    /* renamed from: a  reason: collision with root package name */
    private final LifecycleEventObserver f6214a;

    /* renamed from: b  reason: collision with root package name */
    private final Lifecycle f6215b;

    /* renamed from: c  reason: collision with root package name */
    private final Lifecycle.State f6216c;

    /* renamed from: d  reason: collision with root package name */
    private final DispatchQueue f6217d;

    public LifecycleController(@NotNull Lifecycle lifecycle, @NotNull Lifecycle.State state, @NotNull DispatchQueue dispatchQueue, @NotNull final c2 c2Var) {
        this.f6215b = lifecycle;
        this.f6216c = state;
        this.f6217d = dispatchQueue;
        LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: androidx.lifecycle.LifecycleController$observer$1
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(@NotNull LifecycleOwner lifecycleOwner, @NotNull Lifecycle.Event event) {
                Lifecycle.State state2;
                DispatchQueue dispatchQueue2;
                DispatchQueue dispatchQueue3;
                Lifecycle lifecycle2 = lifecycleOwner.getLifecycle();
                Intrinsics.checkExpressionValueIsNotNull(lifecycle2, "source.lifecycle");
                if (lifecycle2.getCurrentState() == Lifecycle.State.DESTROYED) {
                    LifecycleController lifecycleController = LifecycleController.this;
                    c2.a.b(c2Var, null, 1, null);
                    lifecycleController.finish();
                    return;
                }
                Lifecycle lifecycle3 = lifecycleOwner.getLifecycle();
                Intrinsics.checkExpressionValueIsNotNull(lifecycle3, "source.lifecycle");
                Lifecycle.State currentState = lifecycle3.getCurrentState();
                state2 = LifecycleController.this.f6216c;
                if (currentState.compareTo(state2) < 0) {
                    dispatchQueue3 = LifecycleController.this.f6217d;
                    dispatchQueue3.pause();
                    return;
                }
                dispatchQueue2 = LifecycleController.this.f6217d;
                dispatchQueue2.resume();
            }
        };
        this.f6214a = lifecycleEventObserver;
        if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
            c2.a.b(c2Var, null, 1, null);
            finish();
            return;
        }
        lifecycle.addObserver(lifecycleEventObserver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(c2 c2Var) {
        c2.a.b(c2Var, null, 1, null);
        finish();
    }

    @MainThread
    public final void finish() {
        this.f6215b.removeObserver(this.f6214a);
        this.f6217d.finish();
    }
}
