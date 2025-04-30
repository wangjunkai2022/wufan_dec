package m.framework.ui.widget.pulltorefresh;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.widget.GridView;
/* loaded from: classes5.dex */
public class ScrollableGridView extends GridView implements Scrollable {
    private OnScrollListener osListener;
    private boolean pullEnable;

    public ScrollableGridView(Context context) {
        super(context);
        init(context);
    }

    private void init(Context context) {
        setCacheColorHint(0);
        setSelector(new ColorDrawable());
        this.osListener = new OnScrollListener() { // from class: m.framework.ui.widget.pulltorefresh.ScrollableGridView.1
            @Override // m.framework.ui.widget.pulltorefresh.OnScrollListener
            public void onScrollChanged(Scrollable scrollable, int i2, int i4, int i5, int i6) {
                ScrollableGridView.this.pullEnable = i4 <= 0 && i6 <= 0;
            }
        };
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected int computeVerticalScrollOffset() {
        int computeVerticalScrollOffset = super.computeVerticalScrollOffset();
        OnScrollListener onScrollListener = this.osListener;
        if (onScrollListener != null) {
            onScrollListener.onScrollChanged(this, 0, computeVerticalScrollOffset, 0, 0);
        }
        return computeVerticalScrollOffset;
    }

    public boolean isReadyToPull() {
        return this.pullEnable;
    }

    public ScrollableGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public ScrollableGridView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        init(context);
    }
}
