package com.join.mgps.base.diff;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.DiffUtil;
import java.util.ArrayList;
import java.util.List;
/* compiled from: BaseQuickDiffCallback.java */
/* loaded from: classes3.dex */
public abstract class b<T> extends DiffUtil.Callback {

    /* renamed from: a  reason: collision with root package name */
    private List<T> f44755a;

    /* renamed from: b  reason: collision with root package name */
    private List<T> f44756b;

    public b(@Nullable List<T> list) {
        this.f44755a = list == null ? new ArrayList<>() : list;
    }

    protected abstract boolean a(@NonNull T t3, @NonNull T t4);

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public boolean areContentsTheSame(int i2, int i4) {
        return a(this.f44756b.get(i2), this.f44755a.get(i4));
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public boolean areItemsTheSame(int i2, int i4) {
        return b(this.f44756b.get(i2), this.f44755a.get(i4));
    }

    protected abstract boolean b(@NonNull T t3, @NonNull T t4);

    @Nullable
    protected Object c(@NonNull T t3, @NonNull T t4) {
        return null;
    }

    public List<T> d() {
        return this.f44755a;
    }

    public List<T> e() {
        return this.f44756b;
    }

    public void f(@Nullable List<T> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.f44756b = list;
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    @Nullable
    public Object getChangePayload(int i2, int i4) {
        return c(this.f44756b.get(i2), this.f44755a.get(i4));
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public int getNewListSize() {
        return this.f44755a.size();
    }

    @Override // androidx.recyclerview.widget.DiffUtil.Callback
    public int getOldListSize() {
        return this.f44756b.size();
    }
}
