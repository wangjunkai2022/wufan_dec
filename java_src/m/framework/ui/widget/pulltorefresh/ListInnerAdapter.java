package m.framework.ui.widget.pulltorefresh;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
/* loaded from: classes5.dex */
public class ListInnerAdapter extends BaseAdapter {
    private PullToRefreshBaseListAdapter adapter;

    public ListInnerAdapter(PullToRefreshBaseListAdapter pullToRefreshBaseListAdapter) {
        this.adapter = pullToRefreshBaseListAdapter;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.adapter.getCount();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        return this.adapter.getItem(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return this.adapter.getItemId(i2);
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        return this.adapter.getView(i2, view, viewGroup);
    }
}
