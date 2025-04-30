package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ScrollView;
/* loaded from: classes3.dex */
public class MyInnerScrollView extends ScrollView {

    /* renamed from: a  reason: collision with root package name */
    public PullableScrollView f45807a;

    /* renamed from: b  reason: collision with root package name */
    private a f45808b;

    /* renamed from: c  reason: collision with root package name */
    private int f45809c;

    /* renamed from: d  reason: collision with root package name */
    int f45810d;

    /* renamed from: e  reason: collision with root package name */
    int f45811e;

    /* loaded from: classes3.dex */
    public interface a {
        void a();
    }

    public MyInnerScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45809c = 0;
        this.f45810d = 10;
    }

    private int getScrollRange() {
        if (getChildCount() > 0) {
            return Math.max(0, getChildAt(0).getHeight() - getHeight());
        }
        return 0;
    }

    private void setParentScrollAble(boolean z3) {
        if (this.f45807a.a()) {
            this.f45807a.requestDisallowInterceptTouchEvent(!z3);
        }
    }

    public void a() {
        overScrollBy(0, -this.f45809c, 0, getScrollY(), 0, getScrollRange(), 0, 0, true);
        this.f45809c = 0;
    }

    public void b(View view) {
        int top = (view.getTop() - this.f45810d) - getScrollY();
        this.f45809c = top;
        overScrollBy(0, top, 0, getScrollY(), 0, getScrollRange(), 0, 0, true);
    }

    public PullableScrollView getParentScrollView() {
        return this.f45807a;
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        StringBuilder sb = new StringBuilder();
        sb.append("method onInterceptTouchEvent() called.parentScrollView=");
        sb.append(this.f45807a);
        PullableScrollView pullableScrollView = this.f45807a;
        if (pullableScrollView == null) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        if (pullableScrollView.a()) {
            if (motionEvent.getAction() == 0) {
                this.f45811e = (int) motionEvent.getY();
                setParentScrollAble(false);
                return super.onInterceptTouchEvent(motionEvent);
            } else if (motionEvent.getAction() == 1) {
                setParentScrollAble(true);
            } else {
                motionEvent.getAction();
            }
        } else {
            setParentScrollAble(true);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onScrollChanged(int i2, int i4, int i5, int i6) {
        a aVar;
        try {
            if (i4 + getHeight() < computeVerticalScrollRange() - 300 || (aVar = this.f45808b) == null) {
                return;
            }
            aVar.a();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        View childAt = getChildAt(0);
        if (this.f45807a != null && motionEvent.getAction() == 2) {
            int measuredHeight = childAt.getMeasuredHeight() - getMeasuredHeight();
            int scrollY = getScrollY();
            int y3 = (int) motionEvent.getY();
            int i2 = this.f45811e;
            if (i2 < y3) {
                if (scrollY <= 0) {
                    setParentScrollAble(true);
                    return false;
                }
                setParentScrollAble(false);
            } else if (i2 > y3) {
                if (scrollY >= measuredHeight) {
                    setParentScrollAble(true);
                    return false;
                }
                setParentScrollAble(false);
            }
            this.f45811e = y3;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setParentScrollView(PullableScrollView pullableScrollView) {
        this.f45807a = pullableScrollView;
    }

    public void setScrollBottomListener(a aVar) {
        this.f45808b = aVar;
    }
}
