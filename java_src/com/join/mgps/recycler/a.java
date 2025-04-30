package com.join.mgps.recycler;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.ArrayList;
import kotlinx.coroutines.internal.v;
/* compiled from: HeaderAndFooterRecyclerViewAdapter.java */
/* loaded from: classes4.dex */
public class a extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* renamed from: e  reason: collision with root package name */
    private static final int f51479e = Integer.MIN_VALUE;

    /* renamed from: f  reason: collision with root package name */
    private static final int f51480f = -2147483647;

    /* renamed from: a  reason: collision with root package name */
    private RecyclerView.Adapter<RecyclerView.ViewHolder> f51481a;

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<View> f51482b = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private ArrayList<View> f51483c = new ArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    private RecyclerView.AdapterDataObserver f51484d = new C0220a();

    /* compiled from: HeaderAndFooterRecyclerViewAdapter.java */
    /* renamed from: com.join.mgps.recycler.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0220a extends RecyclerView.AdapterDataObserver {
        C0220a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            super.onChanged();
            a.this.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i2, int i4) {
            super.onItemRangeChanged(i2, i4);
            a aVar = a.this;
            aVar.notifyItemRangeChanged(i2 + aVar.getHeaderViewsCount(), i4);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i2, int i4) {
            super.onItemRangeInserted(i2, i4);
            a aVar = a.this;
            aVar.notifyItemRangeInserted(i2 + aVar.getHeaderViewsCount(), i4);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i2, int i4, int i5) {
            super.onItemRangeMoved(i2, i4, i5);
            int headerViewsCount = a.this.getHeaderViewsCount();
            a.this.notifyItemRangeChanged(i2 + headerViewsCount, i4 + headerViewsCount + i5);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i2, int i4) {
            super.onItemRangeRemoved(i2, i4);
            a aVar = a.this;
            aVar.notifyItemRangeRemoved(i2 + aVar.getHeaderViewsCount(), i4);
        }
    }

    /* compiled from: HeaderAndFooterRecyclerViewAdapter.java */
    /* loaded from: classes4.dex */
    public static class b extends RecyclerView.ViewHolder {
        public b(View view) {
            super(view);
        }
    }

    public a() {
    }

    public void a(View view) {
        if (view != null) {
            this.f51483c.add(view);
            notifyDataSetChanged();
            return;
        }
        throw new RuntimeException("footer is null");
    }

    public void b(View view) {
        if (view != null) {
            this.f51482b.add(view);
            notifyDataSetChanged();
            return;
        }
        throw new RuntimeException("header is null");
    }

    public View c() {
        if (getFooterViewsCount() > 0) {
            return this.f51483c.get(0);
        }
        return null;
    }

    public View d() {
        if (getHeaderViewsCount() > 0) {
            return this.f51482b.get(0);
        }
        return null;
    }

    public RecyclerView.Adapter e() {
        return this.f51481a;
    }

    public boolean f(int i2) {
        return getFooterViewsCount() > 0 && i2 == getItemCount() - 1;
    }

    public boolean g(int i2) {
        return getHeaderViewsCount() > 0 && i2 == 0;
    }

    public int getFooterViewsCount() {
        return this.f51483c.size();
    }

    public int getHeaderViewsCount() {
        return this.f51482b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return getHeaderViewsCount() + getFooterViewsCount() + this.f51481a.getItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i2) {
        int itemCount = this.f51481a.getItemCount();
        int headerViewsCount = getHeaderViewsCount();
        if (i2 < headerViewsCount) {
            return i2 - 2147483648;
        }
        if (headerViewsCount > i2 || i2 >= headerViewsCount + itemCount) {
            return ((i2 + f51480f) - headerViewsCount) - itemCount;
        }
        int itemViewType = this.f51481a.getItemViewType(i2 - headerViewsCount);
        if (itemViewType < 1073741823) {
            return itemViewType + v.f72230j;
        }
        throw new IllegalArgumentException("your adapter's return value of getViewTypeCount() must < Integer.MAX_VALUE / 2");
    }

    public void h(RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        if (this.f51481a != null) {
            notifyItemRangeRemoved(getHeaderViewsCount(), this.f51481a.getItemCount());
            this.f51481a.unregisterAdapterDataObserver(this.f51484d);
        }
        this.f51481a = adapter;
        adapter.registerAdapterDataObserver(this.f51484d);
        notifyItemRangeInserted(getHeaderViewsCount(), this.f51481a.getItemCount());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        int headerViewsCount = getHeaderViewsCount();
        if (i2 >= headerViewsCount && i2 < this.f51481a.getItemCount() + headerViewsCount) {
            this.f51481a.onBindViewHolder(viewHolder, i2 - headerViewsCount);
            return;
        }
        ViewGroup.LayoutParams layoutParams = viewHolder.itemView.getLayoutParams();
        if (layoutParams instanceof StaggeredGridLayoutManager.LayoutParams) {
            ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(true);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        if (i2 < getHeaderViewsCount() - 2147483648) {
            return new b(this.f51482b.get(i2 - Integer.MIN_VALUE));
        }
        if (i2 >= f51480f && i2 < 1073741823) {
            return new b(this.f51483c.get(i2 - f51480f));
        }
        return this.f51481a.onCreateViewHolder(viewGroup, i2 - v.f72230j);
    }

    public void removeFooterView(View view) {
        this.f51483c.remove(view);
        notifyDataSetChanged();
    }

    public void removeHeaderView(View view) {
        this.f51482b.remove(view);
        notifyDataSetChanged();
    }

    public a(RecyclerView.Adapter adapter) {
        h(adapter);
    }
}
