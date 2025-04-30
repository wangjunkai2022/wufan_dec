package androidx.databinding;

import androidx.annotation.RestrictTo;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.databinding.ViewDataBindingKtx;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import com.umeng.analytics.pro.ai;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.c2;
import kotlinx.coroutines.flow.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ViewDataBindingKtx.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001\u0010B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ&\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0006H\u0007R\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0011"}, d2 = {"Landroidx/databinding/ViewDataBindingKtx;", "", "Landroidx/databinding/ViewDataBinding;", "viewDataBinding", "", "localFieldId", "Lkotlinx/coroutines/flow/f;", "observable", "", "updateStateFlowRegistration", "Landroidx/databinding/CreateWeakListener;", "a", "Landroidx/databinding/CreateWeakListener;", "CREATE_STATE_FLOW_LISTENER", "<init>", "()V", "StateFlowListener", "databindingKtx_release"}, k = 1, mv = {1, 4, 2})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class ViewDataBindingKtx {
    @NotNull
    public static final ViewDataBindingKtx INSTANCE = new ViewDataBindingKtx();

    /* renamed from: a  reason: collision with root package name */
    private static final CreateWeakListener f5284a = new CreateWeakListener() { // from class: androidx.databinding.ViewDataBindingKtx$CREATE_STATE_FLOW_LISTENER$1
        @Override // androidx.databinding.CreateWeakListener
        public final WeakListener<Object> create(ViewDataBinding viewDataBinding, int i2, ReferenceQueue<ViewDataBinding> referenceQueue) {
            Intrinsics.checkNotNullExpressionValue(referenceQueue, "referenceQueue");
            return new ViewDataBindingKtx.StateFlowListener(viewDataBinding, i2, referenceQueue).getListener();
        }
    };

    /* compiled from: ViewDataBindingKtx.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001B'\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001a0\u001e¢\u0006\u0004\b \u0010!J \u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002H\u0002J\u0016\u0010\n\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\tH\u0016J\u001a\u0010\f\u001a\u00020\u00072\u0010\u0010\u000b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002H\u0016J\u001a\u0010\r\u001a\u00020\u00072\u0010\u0010\u000b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002H\u0016J\u0012\u0010\u000f\u001a\u00020\u00072\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004H\u0016R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R$\u0010\u0016\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\u0018¨\u0006\""}, d2 = {"Landroidx/databinding/ViewDataBindingKtx$StateFlowListener;", "Landroidx/databinding/ObservableReference;", "Lkotlinx/coroutines/flow/f;", "", "Landroidx/lifecycle/LifecycleOwner;", "owner", "flow", "", "a", "Landroidx/databinding/WeakListener;", "getListener", TypedValues.AttributesType.S_TARGET, "addListener", "removeListener", "lifecycleOwner", "setLifecycleOwner", "Lkotlinx/coroutines/c2;", "b", "Lkotlinx/coroutines/c2;", "observerJob", ai.aD, "Landroidx/databinding/WeakListener;", "listener", "Ljava/lang/ref/WeakReference;", "Ljava/lang/ref/WeakReference;", "_lifecycleOwnerRef", "Landroidx/databinding/ViewDataBinding;", "binder", "", "localFieldId", "Ljava/lang/ref/ReferenceQueue;", "referenceQueue", "<init>", "(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V", "databindingKtx_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes.dex */
    public static final class StateFlowListener implements ObservableReference<f<? extends Object>> {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<LifecycleOwner> f5286a;

        /* renamed from: b  reason: collision with root package name */
        private c2 f5287b;

        /* renamed from: c  reason: collision with root package name */
        private final WeakListener<f<Object>> f5288c;

        public StateFlowListener(@Nullable ViewDataBinding viewDataBinding, int i2, @NotNull ReferenceQueue<ViewDataBinding> referenceQueue) {
            Intrinsics.checkNotNullParameter(referenceQueue, "referenceQueue");
            this.f5288c = new WeakListener<>(viewDataBinding, i2, this, referenceQueue);
        }

        private final void a(LifecycleOwner lifecycleOwner, f<? extends Object> fVar) {
            c2 c2Var = this.f5287b;
            if (c2Var != null) {
                c2.a.b(c2Var, null, 1, null);
            }
            this.f5287b = LifecycleOwnerKt.getLifecycleScope(lifecycleOwner).launchWhenCreated(new ViewDataBindingKtx$StateFlowListener$startCollection$1(this, fVar, null));
        }

        @Override // androidx.databinding.ObservableReference
        @NotNull
        public WeakListener<f<? extends Object>> getListener() {
            return this.f5288c;
        }

        @Override // androidx.databinding.ObservableReference
        public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
            WeakReference<LifecycleOwner> weakReference = this.f5286a;
            if ((weakReference != null ? weakReference.get() : null) == lifecycleOwner) {
                return;
            }
            c2 c2Var = this.f5287b;
            if (c2Var != null) {
                c2.a.b(c2Var, null, 1, null);
            }
            if (lifecycleOwner == null) {
                this.f5286a = null;
                return;
            }
            this.f5286a = new WeakReference<>(lifecycleOwner);
            f<Object> target = this.f5288c.getTarget();
            if (target != null) {
                a(lifecycleOwner, target);
            }
        }

        @Override // androidx.databinding.ObservableReference
        public void addListener(@Nullable f<? extends Object> fVar) {
            LifecycleOwner lifecycleOwner;
            WeakReference<LifecycleOwner> weakReference = this.f5286a;
            if (weakReference == null || (lifecycleOwner = weakReference.get()) == null) {
                return;
            }
            Intrinsics.checkNotNullExpressionValue(lifecycleOwner, "_lifecycleOwnerRef?.get() ?: return");
            if (fVar != null) {
                a(lifecycleOwner, fVar);
            }
        }

        @Override // androidx.databinding.ObservableReference
        public void removeListener(@Nullable f<? extends Object> fVar) {
            c2 c2Var = this.f5287b;
            if (c2Var != null) {
                c2.a.b(c2Var, null, 1, null);
            }
            this.f5287b = null;
        }
    }

    private ViewDataBindingKtx() {
    }

    @JvmStatic
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final boolean updateStateFlowRegistration(@NotNull ViewDataBinding viewDataBinding, int i2, @Nullable f<?> fVar) {
        Intrinsics.checkNotNullParameter(viewDataBinding, "viewDataBinding");
        viewDataBinding.f5274q = true;
        try {
            return viewDataBinding.Y0(i2, fVar, f5284a);
        } finally {
            viewDataBinding.f5274q = false;
        }
    }
}
