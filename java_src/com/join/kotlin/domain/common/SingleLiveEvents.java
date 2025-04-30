package com.join.kotlin.domain.common;

import androidx.annotation.MainThread;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.umeng.analytics.pro.ai;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SingleLiveEvents.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0005\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0002B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J&\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0014\u0010\u0007\u001a\u0010\u0012\f\b\u0000\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0006H\u0017J\u0018\u0010\u000b\u001a\u00020\b2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0003H\u0017R\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\"\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/join/kotlin/domain/common/SingleLiveEvents;", "T", "Landroidx/lifecycle/MutableLiveData;", "", "Landroidx/lifecycle/LifecycleOwner;", "owner", "Landroidx/lifecycle/Observer;", "observer", "", "observe", ai.aF, "setValue", "Ljava/util/concurrent/atomic/AtomicBoolean;", "pending", "Ljava/util/concurrent/atomic/AtomicBoolean;", "", "eventList", "Ljava/util/List;", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class SingleLiveEvents<T> extends MutableLiveData<List<? extends T>> {
    private final AtomicBoolean pending = new AtomicBoolean(false);
    private final List<List<T>> eventList = new ArrayList();

    @Override // androidx.lifecycle.LiveData
    @MainThread
    public void observe(@NotNull LifecycleOwner owner, @NotNull final Observer<? super List<? extends T>> observer) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(observer, "observer");
        super.observe(owner, new Observer<List<? extends T>>() { // from class: com.join.kotlin.domain.common.SingleLiveEvents$observe$1
            @Override // androidx.lifecycle.Observer
            public /* bridge */ /* synthetic */ void onChanged(Object obj) {
                onChanged((List) ((List) obj));
            }

            public final void onChanged(List<? extends T> list) {
                AtomicBoolean atomicBoolean;
                List list2;
                atomicBoolean = SingleLiveEvents.this.pending;
                if (atomicBoolean.compareAndSet(true, false)) {
                    list2 = SingleLiveEvents.this.eventList;
                    list2.clear();
                    observer.onChanged(list);
                }
            }
        });
    }

    @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
    public /* bridge */ /* synthetic */ void setValue(Object obj) {
        setValue((List) ((List) obj));
    }

    @MainThread
    public void setValue(@Nullable List<? extends T> list) {
        List flatten;
        this.pending.set(true);
        if (list != null) {
            this.eventList.add(list);
        }
        flatten = CollectionsKt__IterablesKt.flatten(this.eventList);
        super.setValue((SingleLiveEvents<T>) flatten);
    }
}
