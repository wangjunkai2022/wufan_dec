package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.webkit.WebView;
import com.join.mgps.enums.ScrollState;
/* loaded from: classes3.dex */
public class ObservableWebView extends WebView {

    /* renamed from: a  reason: collision with root package name */
    String f45901a;

    /* renamed from: b  reason: collision with root package name */
    private int f45902b;

    /* renamed from: c  reason: collision with root package name */
    private ScrollState f45903c;

    /* renamed from: d  reason: collision with root package name */
    float f45904d;

    /* renamed from: e  reason: collision with root package name */
    float f45905e;

    public ObservableWebView(Context context) {
        super(context);
        this.f45901a = getClass().getSimpleName();
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onScrollChanged(int i2, int i4, int i5, int i6) {
        super.onScrollChanged(i2, i4, i5, i6);
        int i7 = this.f45902b;
        if (i7 < i4) {
            this.f45903c = ScrollState.UP;
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (i4 < i7) {
            this.f45903c = ScrollState.DOWN;
            StringBuilder sb = new StringBuilder();
            sb.append("getScrollY()=");
            sb.append(getScrollY());
            if (getScrollY() == 0) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        }
        this.f45902b = i4;
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f45904d = motionEvent.getX();
            this.f45905e = motionEvent.getY();
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (actionMasked == 1) {
            getParent().requestDisallowInterceptTouchEvent(false);
        } else if (actionMasked == 2) {
            if (Math.abs(motionEvent.getX() - this.f45904d) > Math.abs(motionEvent.getY() - this.f45905e)) {
                getParent().requestDisallowInterceptTouchEvent(false);
            } else {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            if (getScrollY() == 0) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public ObservableWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45901a = getClass().getSimpleName();
    }

    public ObservableWebView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45901a = getClass().getSimpleName();
    }
}
