package com.join.mgps.customview;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class BounceListView extends ListView implements AbsListView.OnScrollListener {

    /* renamed from: a  reason: collision with root package name */
    View f44941a;

    /* renamed from: b  reason: collision with root package name */
    View f44942b;

    /* renamed from: c  reason: collision with root package name */
    int f44943c;

    /* renamed from: d  reason: collision with root package name */
    int f44944d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            View view = BounceListView.this.f44941a;
            view.setPadding(view.getPaddingLeft(), ((Integer) valueAnimator.getAnimatedValue()).intValue(), BounceListView.this.f44941a.getPaddingRight(), BounceListView.this.f44941a.getPaddingBottom());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            View view = BounceListView.this.f44942b;
            view.setPadding(view.getPaddingLeft(), BounceListView.this.f44942b.getPaddingTop(), BounceListView.this.f44942b.getPaddingRight(), ((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    public BounceListView(Context context) {
        super(context);
        d(context);
    }

    private void d(Context context) {
        View inflate = LayoutInflater.from(context).inflate(R.layout.header_footer_bounce_listview, (ViewGroup) this, false);
        this.f44941a = inflate;
        addHeaderView(inflate);
        View inflate2 = LayoutInflater.from(context).inflate(R.layout.header_footer_bounce_listview, (ViewGroup) this, false);
        this.f44942b = inflate2;
        addFooterView(inflate2);
        super.setOnScrollListener(this);
    }

    protected void b(MotionEvent motionEvent) {
        int historySize = motionEvent.getHistorySize();
        for (int i2 = 0; i2 < historySize; i2++) {
            int i4 = this.f44944d;
            View view = this.f44942b;
            view.setPadding(view.getPaddingLeft(), this.f44942b.getPaddingTop(), this.f44942b.getPaddingRight(), (i4 - ((int) motionEvent.getHistoricalY(i2))) / 2);
        }
    }

    protected void c(MotionEvent motionEvent) {
        int historySize = motionEvent.getHistorySize();
        for (int i2 = 0; i2 < historySize; i2++) {
            View view = this.f44941a;
            view.setPadding(view.getPaddingLeft(), (((int) motionEvent.getHistoricalY(i2)) - this.f44944d) / 2, this.f44941a.getPaddingRight(), this.f44941a.getPaddingBottom());
        }
    }

    protected void e() {
        ValueAnimator ofInt = ValueAnimator.ofInt(this.f44942b.getPaddingBottom(), 0);
        ofInt.addUpdateListener(new b());
        ofInt.setDuration(200L);
        ofInt.start();
    }

    protected void f() {
        ValueAnimator ofInt = ValueAnimator.ofInt(this.f44941a.getPaddingTop(), 0);
        ofInt.addUpdateListener(new a());
        ofInt.setDuration(200L);
        ofInt.start();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i2, int i4, int i5) {
        if (this.f44943c == 1) {
            if (i2 == 0) {
                this.f44941a.setVisibility(0);
            } else {
                this.f44941a.setVisibility(8);
                f();
            }
            if (getLastVisiblePosition() == i5 - 1) {
                this.f44942b.setVisibility(0);
                return;
            }
            this.f44942b.setVisibility(8);
            e();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        this.f44943c = i2;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        int y3 = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f44944d = y3;
        } else if (action == 1) {
            if (getFirstVisiblePosition() == 0 && (this.f44941a.getBottom() < 0 || this.f44941a.getTop() <= 0)) {
                f();
            }
            ListAdapter adapter = getAdapter();
            if (adapter != null && getLastVisiblePosition() == adapter.getCount() - 1 && (this.f44942b.getTop() < getBottom() || this.f44942b.getBottom() <= getBottom())) {
                e();
            }
        } else if (action == 2) {
            c(motionEvent);
            b(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    public BounceListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        d(context);
    }

    public BounceListView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        d(context);
    }
}
