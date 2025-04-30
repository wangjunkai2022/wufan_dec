package com.join.mgps.adapter;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import org.androidannotations.annotations.EBean;
import org.androidannotations.annotations.UiThread;
/* compiled from: RecyclerViewBaseAdapter.java */
@EBean
/* loaded from: classes3.dex */
public abstract class a5<T, V extends View> extends RecyclerView.Adapter<a<V>> {

    /* renamed from: c  reason: collision with root package name */
    private static final String f41268c = "a5";

    /* renamed from: a  reason: collision with root package name */
    public SparseArray<T> f41269a;

    /* renamed from: b  reason: collision with root package name */
    int f41270b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RecyclerViewBaseAdapter.java */
    /* loaded from: classes3.dex */
    public static class a<V extends View> extends RecyclerView.ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        private V f41271a;

        public a(V v3) {
            super(v3);
            this.f41271a = v3;
        }

        public V a() {
            return this.f41271a;
        }
    }

    @UiThread(propagation = UiThread.Propagation.REUSE)
    public void a(SparseArray<T> sparseArray) {
        int size = this.f41269a.size();
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            this.f41269a.put(size + i2, sparseArray.get(sparseArray.keyAt(i2)));
        }
        notifyItemRangeInserted(size, sparseArray.size());
    }

    @UiThread(propagation = UiThread.Propagation.REUSE)
    public void b(int i2, T t3) {
        this.f41269a.put(i2, t3);
        notifyItemInserted(i2);
    }

    public SparseArray<T> c() {
        return this.f41269a;
    }

    @UiThread(propagation = UiThread.Propagation.REUSE)
    public void clear() {
        int size = this.f41269a.size();
        this.f41269a.clear();
        notifyItemRangeRemoved(0, size);
    }

    protected abstract V d(ViewGroup viewGroup, int i2);

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: e */
    public a<V> onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new a<>(d(viewGroup, i2));
    }

    @UiThread(propagation = UiThread.Propagation.REUSE)
    public void f(int i2) {
        if (i2 > this.f41269a.size()) {
            return;
        }
        if (i2 == this.f41269a.size() - 1) {
            this.f41269a.remove(i2);
            notifyItemRemoved(i2);
            return;
        }
        SparseArray<T> sparseArray = this.f41269a;
        while (i2 < sparseArray.size() - 1) {
            int i4 = i2 + 1;
            this.f41269a.put(i2, sparseArray.get(i4));
            i2 = i4;
        }
        this.f41269a.remove(getItemCount() - 1);
        notifyDataSetChanged();
    }

    @UiThread(propagation = UiThread.Propagation.REUSE)
    public void g(int i2) {
        if (i2 > this.f41269a.size()) {
            return;
        }
        this.f41269a.remove(i2);
        notifyItemRemoved(i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f41269a.size();
    }

    public void h(SparseArray<T> sparseArray) {
        this.f41269a = sparseArray;
    }

    public void i(int i2) {
        this.f41270b = i2;
    }
}
