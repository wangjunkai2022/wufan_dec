package com.join.mgps.base.diff;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.ListUpdateCallback;
import com.join.mgps.base.BaseQuickAdapter;
/* compiled from: BaseQuickAdapterListUpdateCallback.java */
/* loaded from: classes3.dex */
public final class a implements ListUpdateCallback {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final BaseQuickAdapter f44754a;

    public a(@NonNull BaseQuickAdapter baseQuickAdapter) {
        this.f44754a = baseQuickAdapter;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onChanged(int i2, int i4, @Nullable Object obj) {
        BaseQuickAdapter baseQuickAdapter = this.f44754a;
        baseQuickAdapter.notifyItemRangeChanged(i2 + baseQuickAdapter.getHeaderLayoutCount(), i4, obj);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onInserted(int i2, int i4) {
        BaseQuickAdapter baseQuickAdapter = this.f44754a;
        baseQuickAdapter.notifyItemRangeInserted(i2 + baseQuickAdapter.getHeaderLayoutCount(), i4);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onMoved(int i2, int i4) {
        BaseQuickAdapter baseQuickAdapter = this.f44754a;
        baseQuickAdapter.notifyItemMoved(i2 + baseQuickAdapter.getHeaderLayoutCount(), i4 + this.f44754a.getHeaderLayoutCount());
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onRemoved(int i2, int i4) {
        BaseQuickAdapter baseQuickAdapter = this.f44754a;
        baseQuickAdapter.notifyItemRangeRemoved(i2 + baseQuickAdapter.getHeaderLayoutCount(), i4);
    }
}
