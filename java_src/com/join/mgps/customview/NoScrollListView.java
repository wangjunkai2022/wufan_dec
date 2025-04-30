package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
/* loaded from: classes3.dex */
public class NoScrollListView extends ListView {

    /* renamed from: a  reason: collision with root package name */
    private boolean f45866a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f45867b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements AbsListView.OnScrollListener {
        a() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
            if (i2 == 0) {
                View childAt = NoScrollListView.this.getChildAt(0);
                if (childAt == null || childAt.getTop() != 0) {
                    NoScrollListView.this.f45867b = false;
                } else {
                    NoScrollListView.this.f45867b = true;
                }
            }
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i2) {
        }
    }

    public NoScrollListView(Context context) {
        super(context);
        this.f45866a = false;
    }

    private void b() {
        setOnScrollListener(new a());
    }

    public boolean c() {
        return this.f45866a;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i2, int i4) {
        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
    }

    public void setListViewHeightBasedOnChildren(ListView listView) {
        ListAdapter adapter = listView.getAdapter();
        if (adapter == null) {
            return;
        }
        int i2 = 0;
        for (int i4 = 0; i4 < adapter.getCount(); i4++) {
            View view = adapter.getView(i4, null, listView);
            view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            StringBuilder sb = new StringBuilder();
            sb.append("height   ");
            sb.append(view.getMeasuredHeight());
            sb.append("  ");
            i2 += view.getMeasuredHeight();
        }
        ViewGroup.LayoutParams layoutParams = listView.getLayoutParams();
        layoutParams.height = i2 + (listView.getDividerHeight() * (adapter.getCount() - 1)) + (adapter.getCount() * 10);
        listView.setLayoutParams(layoutParams);
    }

    public void setmPullRequesting(boolean z3) {
        this.f45866a = z3;
    }

    public NoScrollListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45866a = false;
        b();
    }

    public NoScrollListView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45866a = false;
        b();
    }
}
