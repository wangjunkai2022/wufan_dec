package me.relex.circleindicator;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SnapHelper;
import me.relex.circleindicator.BaseCircleIndicator;
/* loaded from: classes5.dex */
public class CircleIndicator2 extends BaseCircleIndicator {

    /* renamed from: m  reason: collision with root package name */
    private RecyclerView f72609m;

    /* renamed from: n  reason: collision with root package name */
    private SnapHelper f72610n;

    /* renamed from: o  reason: collision with root package name */
    private final RecyclerView.OnScrollListener f72611o;

    /* renamed from: p  reason: collision with root package name */
    private final RecyclerView.AdapterDataObserver f72612p;

    /* loaded from: classes5.dex */
    class a extends RecyclerView.OnScrollListener {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i2, int i4) {
            super.onScrolled(recyclerView, i2, i4);
            int m4 = CircleIndicator2.this.m(recyclerView.getLayoutManager());
            if (m4 == -1) {
                return;
            }
            CircleIndicator2.this.b(m4);
        }
    }

    public CircleIndicator2(Context context) {
        super(context);
        this.f72611o = new a();
        this.f72612p = new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        RecyclerView.Adapter adapter = this.f72609m.getAdapter();
        e(adapter == null ? 0 : adapter.getItemCount(), m(this.f72609m.getLayoutManager()));
    }

    @Override // me.relex.circleindicator.BaseCircleIndicator
    public /* bridge */ /* synthetic */ void b(int i2) {
        super.b(i2);
    }

    @Override // me.relex.circleindicator.BaseCircleIndicator
    public /* bridge */ /* synthetic */ void e(int i2, int i4) {
        super.e(i2, i4);
    }

    public RecyclerView.AdapterDataObserver getAdapterDataObserver() {
        return this.f72612p;
    }

    @Override // me.relex.circleindicator.BaseCircleIndicator
    public /* bridge */ /* synthetic */ void h(me.relex.circleindicator.b bVar) {
        super.h(bVar);
    }

    public void k(@NonNull RecyclerView recyclerView, @NonNull SnapHelper snapHelper) {
        this.f72609m = recyclerView;
        this.f72610n = snapHelper;
        this.f72601j = -1;
        l();
        recyclerView.removeOnScrollListener(this.f72611o);
        recyclerView.addOnScrollListener(this.f72611o);
    }

    public int m(@Nullable RecyclerView.LayoutManager layoutManager) {
        View findSnapView;
        if (layoutManager == null || (findSnapView = this.f72610n.findSnapView(layoutManager)) == null) {
            return -1;
        }
        return layoutManager.getPosition(findSnapView);
    }

    @Override // me.relex.circleindicator.BaseCircleIndicator
    public /* bridge */ /* synthetic */ void setIndicatorCreatedListener(@Nullable BaseCircleIndicator.a aVar) {
        super.setIndicatorCreatedListener(aVar);
    }

    /* loaded from: classes5.dex */
    class b extends RecyclerView.AdapterDataObserver {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            super.onChanged();
            if (CircleIndicator2.this.f72609m == null) {
                return;
            }
            RecyclerView.Adapter adapter = CircleIndicator2.this.f72609m.getAdapter();
            int itemCount = adapter != null ? adapter.getItemCount() : 0;
            if (itemCount == CircleIndicator2.this.getChildCount()) {
                return;
            }
            CircleIndicator2 circleIndicator2 = CircleIndicator2.this;
            if (circleIndicator2.f72601j < itemCount) {
                circleIndicator2.f72601j = circleIndicator2.m(circleIndicator2.f72609m.getLayoutManager());
            } else {
                circleIndicator2.f72601j = -1;
            }
            CircleIndicator2.this.l();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i2, int i4) {
            super.onItemRangeChanged(i2, i4);
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i2, int i4) {
            super.onItemRangeInserted(i2, i4);
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i2, int i4, int i5) {
            super.onItemRangeMoved(i2, i4, i5);
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i2, int i4) {
            super.onItemRangeRemoved(i2, i4);
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i2, int i4, @Nullable Object obj) {
            super.onItemRangeChanged(i2, i4, obj);
            onChanged();
        }
    }

    public CircleIndicator2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f72611o = new a();
        this.f72612p = new b();
    }

    public CircleIndicator2(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f72611o = new a();
        this.f72612p = new b();
    }

    @TargetApi(21)
    public CircleIndicator2(Context context, AttributeSet attributeSet, int i2, int i4) {
        super(context, attributeSet, i2, i4);
        this.f72611o = new a();
        this.f72612p = new b();
    }
}
