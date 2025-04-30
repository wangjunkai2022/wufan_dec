package com.join.kotlin.domain.common;

import androidx.annotation.MainThread;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.umeng.analytics.pro.ai;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SingleLiveEvent.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0007¢\u0006\u0004\b\u000f\u0010\u0010J \u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u000e\u0010\u0006\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u0005H\u0016J\u0019\u0010\n\u001a\u00020\u00072\b\u0010\t\u001a\u0004\u0018\u00018\u0000H\u0017¢\u0006\u0004\b\n\u0010\u000bR\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/join/kotlin/domain/common/SingleLiveEvent;", "T", "Landroidx/lifecycle/MutableLiveData;", "Landroidx/lifecycle/LifecycleOwner;", "owner", "Landroidx/lifecycle/Observer;", "observer", "", "observe", ai.aF, "setValue", "(Ljava/lang/Object;)V", "Ljava/util/concurrent/atomic/AtomicBoolean;", "pending", "Ljava/util/concurrent/atomic/AtomicBoolean;", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class SingleLiveEvent<T> extends MutableLiveData<T> {
    private final AtomicBoolean pending = new AtomicBoolean(false);

    @Override // androidx.lifecycle.LiveData
    public void observe(@NotNull LifecycleOwner owner, @NotNull final Observer<? super T> observer) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(observer, "observer");
        super.observe(owner, new Observer<T>() { // from class: com.join.kotlin.domain.common.SingleLiveEvent$observe$1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(T t3) {
                AtomicBoolean atomicBoolean;
                atomicBoolean = SingleLiveEvent.this.pending;
                if (atomicBoolean.compareAndSet(true, false)) {
                    observer.onChanged(t3);
                }
            }
        });
    }

    @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
    @MainThread
    public void setValue(@Nullable T t3) {
        this.pending.set(true);
        super.setValue(t3);
    }
}
