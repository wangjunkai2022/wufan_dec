package m.framework.ui.widget.pulltorefresh;

import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
/* loaded from: classes5.dex */
public abstract class PullToRefreshListAdapter extends PullToRefreshBaseListAdapter {
    private ListInnerAdapter adapter;
    private boolean fling;
    private ScrollableListView listView;
    private OnListStopScrollListener osListener;

    public PullToRefreshListAdapter(PullToRefreshView pullToRefreshView) {
        super(pullToRefreshView);
        ScrollableListView scrollableListView = new ScrollableListView(getContext());
        this.listView = scrollableListView;
        scrollableListView.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: m.framework.ui.widget.pulltorefresh.PullToRefreshListAdapter.1
            private int firstVisibleItem;
            private int visibleItemCount;

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
                this.firstVisibleItem = i2;
                this.visibleItemCount = i4;
                PullToRefreshListAdapter pullToRefreshListAdapter = PullToRefreshListAdapter.this;
                pullToRefreshListAdapter.onScroll(pullToRefreshListAdapter.listView, i2, i4, i5);
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i2) {
                PullToRefreshListAdapter.this.fling = i2 == 2;
                if (i2 == 0) {
                    if (PullToRefreshListAdapter.this.osListener != null) {
                        PullToRefreshListAdapter.this.osListener.onListStopScrolling(this.firstVisibleItem, this.visibleItemCount);
                    } else if (PullToRefreshListAdapter.this.adapter != null) {
                        PullToRefreshListAdapter.this.adapter.notifyDataSetChanged();
                    }
                }
            }
        });
        ListInnerAdapter listInnerAdapter = new ListInnerAdapter(this);
        this.adapter = listInnerAdapter;
        this.listView.setAdapter((ListAdapter) listInnerAdapter);
    }

    @Override // m.framework.ui.widget.pulltorefresh.PullToRefreshAdatper
    public Scrollable getBodyView() {
        return this.listView;
    }

    public ListView getListView() {
        return this.listView;
    }

    @Override // m.framework.ui.widget.pulltorefresh.PullToRefreshBaseListAdapter
    public boolean isFling() {
        return this.fling;
    }

    @Override // m.framework.ui.widget.pulltorefresh.PullToRefreshAdatper
    public boolean isPullReady() {
        return this.listView.isReadyToPull();
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
