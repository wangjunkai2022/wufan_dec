package com.join.mgps.pulltorefresh.extras.viewpager;

import android.content.Context;
import android.util.AttributeSet;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pulltorefresh.library.PullToRefreshBase;
/* loaded from: classes4.dex */
public class PullToRefreshViewPager extends PullToRefreshBase<ViewPager> {
    public PullToRefreshViewPager(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.pulltorefresh.library.PullToRefreshBase
    /* renamed from: P */
    public ViewPager q(Context context, AttributeSet attributeSet) {
        ViewPager viewPager = new ViewPager(context, attributeSet);
        viewPager.setId(R.id.viewpager);
        return viewPager;
    }

    @Override // com.join.mgps.pulltorefresh.library.PullToRefreshBase
    public final PullToRefreshBase.Orientation getPullToRefreshScrollDirection() {
        return PullToRefreshBase.Orientation.HORIZONTAL;
    }

    @Override // com.join.mgps.pulltorefresh.library.PullToRefreshBase
    protected boolean w() {
        ViewPager refreshableView = getRefreshableView();
        PagerAdapter adapter = refreshableView.getAdapter();
        return adapter != null && refreshableView.getCurrentItem() == adapter.getCount() - 1;
    }

    @Override // com.join.mgps.pulltorefresh.library.PullToRefreshBase
    protected boolean x() {
        ViewPager refreshableView = getRefreshableView();
        return refreshableView.getAdapter() != null && refreshableView.getCurrentItem() == 0;
    }

    public PullToRefreshViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
