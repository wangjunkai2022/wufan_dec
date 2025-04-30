package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class LoadMoreRecyclerView extends RecyclerView {
    public static final int H1 = 0;
    public static final int I1 = 999;
    public static final int J1 = 3;
    public static final int K1 = 4;
    private boolean A1;
    private boolean B1;
    private b C1;
    private boolean D1;
    private int E1;
    private c F1;
    private RecyclerView.OnScrollListener G1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends RecyclerView.OnScrollListener {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i2) {
            super.onScrollStateChanged(recyclerView, i2);
            if (LoadMoreRecyclerView.this.G1 != null) {
                LoadMoreRecyclerView.this.G1.onScrollStateChanged(recyclerView, i2);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i2, int i4) {
            super.onScrolled(recyclerView, i2, i4);
            if (LoadMoreRecyclerView.this.F1 != null && LoadMoreRecyclerView.this.A1 && !LoadMoreRecyclerView.this.D1 && i4 > 0) {
                int lastVisiblePosition = LoadMoreRecyclerView.this.getLastVisiblePosition();
                if (lastVisiblePosition + 1 == LoadMoreRecyclerView.this.C1.getItemCount()) {
                    LoadMoreRecyclerView.this.setLoadingMore(true);
                    LoadMoreRecyclerView.this.E1 = lastVisiblePosition;
                    LoadMoreRecyclerView.this.F1.onLoadMore();
                }
            }
            if (LoadMoreRecyclerView.this.G1 != null) {
                LoadMoreRecyclerView.this.G1.onScrolled(recyclerView, i2, i4);
            }
        }
    }

    /* loaded from: classes3.dex */
    public class b extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

        /* renamed from: a  reason: collision with root package name */
        private RecyclerView.Adapter f45749a;

        /* renamed from: b  reason: collision with root package name */
        private int f45750b;

        /* loaded from: classes3.dex */
        public class a extends RecyclerView.ViewHolder {

            /* renamed from: a  reason: collision with root package name */
            TextView f45752a;

            /* renamed from: b  reason: collision with root package name */
            View f45753b;

            public a(View view) {
                super(view);
                this.f45752a = (TextView) view.findViewById(R.id.xlistview_footer_hint_textview);
                this.f45753b = view.findViewById(R.id.xlistview_footer_progressbar);
            }
        }

        public b(RecyclerView.Adapter adapter) {
            this.f45749a = adapter;
        }

        public void a(int i2) {
            this.f45750b = i2;
        }

        public void b(boolean z3) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            int itemCount = this.f45749a.getItemCount();
            return LoadMoreRecyclerView.this.A1 ? itemCount + 1 : itemCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i2) {
            if (getItemCount() - 1 == i2 && LoadMoreRecyclerView.this.A1) {
                return 999;
            }
            if (LoadMoreRecyclerView.this.getLayoutManager() instanceof LinearLayoutManager) {
                return this.f45749a.getItemViewType(i2);
            }
            if (LoadMoreRecyclerView.this.getLayoutManager() instanceof StaggeredGridLayoutManager) {
                return this.f45749a.getItemViewType(i2);
            }
            return 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
            if (getItemViewType(i2) != 999) {
                this.f45749a.onBindViewHolder(viewHolder, i2);
            }
            try {
                if (a.class.isInstance(viewHolder)) {
                    a aVar = (a) viewHolder;
                    if (LoadMoreRecyclerView.this.B1) {
                        aVar.f45752a.setVisibility(8);
                        aVar.f45753b.setVisibility(0);
                        return;
                    }
                    aVar.f45752a.setVisibility(0);
                    aVar.f45753b.setVisibility(8);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
            if (i2 == 999) {
                return new a(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.xlistview_footer, viewGroup, false));
            }
            return this.f45749a.onCreateViewHolder(viewGroup, i2);
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void onLoadMore();
    }

    public LoadMoreRecyclerView(Context context) {
        super(context);
        this.A1 = true;
        this.B1 = false;
        b1();
    }

    private int a1(int[] iArr) {
        int i2 = Integer.MIN_VALUE;
        for (int i4 : iArr) {
            i2 = Math.max(i2, i4);
        }
        return i2;
    }

    private void b1() {
        super.addOnScrollListener(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLastVisiblePosition() {
        if (getLayoutManager() instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) getLayoutManager()).findLastVisibleItemPosition();
        }
        if (getLayoutManager() instanceof GridLayoutManager) {
            return ((GridLayoutManager) getLayoutManager()).findLastVisibleItemPosition();
        }
        if (getLayoutManager() instanceof StaggeredGridLayoutManager) {
            StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) getLayoutManager();
            return a1(staggeredGridLayoutManager.findLastVisibleItemPositions(new int[staggeredGridLayoutManager.getSpanCount()]));
        }
        return getLayoutManager().getItemCount() - 1;
    }

    public void R0(boolean z3) {
        this.B1 = z3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void addOnScrollListener(@NonNull RecyclerView.OnScrollListener onScrollListener) {
        this.G1 = onScrollListener;
    }

    public void c1(boolean z3) {
        setAutoLoadMoreEnable(z3);
        getAdapter().notifyDataSetChanged();
        getAdapter().notifyItemRemoved(this.E1);
        this.D1 = false;
        R0(z3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(RecyclerView.Adapter adapter) {
        if (adapter != null) {
            this.C1 = new b(adapter);
        }
        super.swapAdapter(this.C1, true);
    }

    public void setAutoLoadMoreEnable(boolean z3) {
        this.A1 = z3;
    }

    public void setLoadMoreListener(c cVar) {
        this.F1 = cVar;
    }

    public void setLoadingMore(boolean z3) {
        this.D1 = z3;
    }

    public LoadMoreRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.A1 = true;
        this.B1 = false;
        b1();
    }

    public LoadMoreRecyclerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.A1 = true;
        this.B1 = false;
        b1();
    }
}
