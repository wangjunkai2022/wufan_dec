package androidx.databinding;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.lifecycle.LifecycleOwner;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class WeakListener<T> extends WeakReference<ViewDataBinding> {

    /* renamed from: a  reason: collision with root package name */
    private final ObservableReference<T> f5299a;

    /* renamed from: b  reason: collision with root package name */
    protected final int f5300b;

    /* renamed from: c  reason: collision with root package name */
    private T f5301c;

    public WeakListener(ViewDataBinding viewDataBinding, int i2, ObservableReference<T> observableReference, ReferenceQueue<ViewDataBinding> referenceQueue) {
        super(viewDataBinding, referenceQueue);
        this.f5300b = i2;
        this.f5299a = observableReference;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public ViewDataBinding a() {
        ViewDataBinding viewDataBinding = (ViewDataBinding) get();
        if (viewDataBinding == null) {
            unregister();
        }
        return viewDataBinding;
    }

    public T getTarget() {
        return this.f5301c;
    }

    public void setLifecycleOwner(LifecycleOwner lifecycleOwner) {
        this.f5299a.setLifecycleOwner(lifecycleOwner);
    }

    public void setTarget(T t3) {
        unregister();
        this.f5301c = t3;
        if (t3 != null) {
            this.f5299a.addListener(t3);
        }
    }

    public boolean unregister() {
        boolean z3;
        T t3 = this.f5301c;
        if (t3 != null) {
            this.f5299a.removeListener(t3);
            z3 = true;
        } else {
            z3 = false;
        }
        this.f5301c = null;
        return z3;
    }
}
