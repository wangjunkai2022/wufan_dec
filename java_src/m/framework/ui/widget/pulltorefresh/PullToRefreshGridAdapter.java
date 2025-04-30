package m.framework.ui.widget.pulltorefresh;

import android.widget.AbsListView;
import android.widget.GridView;
import android.widget.ListAdapter;
/* loaded from: classes5.dex */
public abstract class PullToRefreshGridAdapter extends PullToRefreshBaseListAdapter {
    private ListInnerAdapter adapter;
    private boolean fling;
    private ScrollableGridView gridView;
    private OnListStopScrollListener osListener;

    public PullToRefreshGridAdapter(PullToRefreshView pullToRefreshView) {
        super(pullToRefreshView);
        ScrollableGridView scrollableGridView = new ScrollableGridView(getContext());
        this.gridView = scrollableGridView;
        scrollableGridView.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: m.framework.ui.widget.pulltorefresh.PullToRefreshGridAdapter.1
            private int firstVisibleItem;
            private int visibleItemCount;

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
                this.firstVisibleItem = i2;
                this.visibleItemCount = i4;
                PullToRefreshGridAdapter pullToRefreshGridAdapter = PullToRefreshGridAdapter.this;
                pullToRefreshGridAdapter.onScroll(pullToRefreshGridAdapter.gridView, i2, i4, i5);
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i2) {
                PullToRefreshGridAdapter.this.fling = i2 == 2;
                if (i2 == 0) {
                    if (PullToRefreshGridAdapter.this.osListener != null) {
                        PullToRefreshGridAdapter.this.osListener.onListStopScrolling(this.firstVisibleItem, this.visibleItemCount);
                    } else if (PullToRefreshGridAdapter.this.adapter != null) {
                        PullToRefreshGridAdapter.this.adapter.notifyDataSetChanged();
                    }
                }
            }
        });
        ListInnerAdapter listInnerAdapter = new ListInnerAdapter(this);
        this.adapter = listInnerAdapter;
        this.gridView.setAdapter((ListAdapter) listInnerAdapter);
    }

    @Override // m.framework.ui.widget.pulltorefresh.PullToRefreshAdatper
    public Scrollable getBodyView() {
        return this.gridView;
    }

    public GridView getGridView() {
        return this.gridView;
    }

    @Override // m.framework.ui.widget.pulltorefresh.PullToRefreshBaseListAdapter
    public boolean isFling() {
        return this.fling;
    }

    @Override // m.framework.ui.widget.pulltorefresh.PullToRefreshAdatper
    public boolean isPullReady() {
        return this.gridView.isReadyToPull();
    }

    @Override // m.framework.ui.widget.pulltorefresh.PullToRefreshAdatper
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        this.adapter.notifyDataSetChanged();
    }

    @Override // m.framework.ui.widget.pulltorefresh.PullToRefreshBaseListAdapter
    public void onScroll(Scrollable scrollable, int i2, int i4, int i5) {
    }
}
