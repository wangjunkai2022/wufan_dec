package m.framework.ui.widget.pulltorefresh;

import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes5.dex */
public abstract class PullToRefreshBaseListAdapter extends PullToRefreshAdatper {
    public PullToRefreshBaseListAdapter(PullToRefreshView pullToRefreshView) {
        super(pullToRefreshView);
    }

    public abstract int getCount();

    public abstract Object getItem(int i2);

    public abstract long getItemId(int i2);

    public abstract View getView(int i2, View view, ViewGroup viewGroup);

    public abstract boolean isFling();

    public abstract void onScroll(Scrollable scrollable, int i2, int i4, int i5);
}
