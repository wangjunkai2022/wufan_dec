package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ScrollView;
import androidx.core.view.MotionEventCompat;
import com.join.mgps.enums.ScrollState;
/* loaded from: classes3.dex */
public class ObservableScrollView extends ScrollView {

    /* renamed from: a  reason: collision with root package name */
    String f45891a;

    /* renamed from: b  reason: collision with root package name */
    private l1.j f45892b;

    /* renamed from: c  reason: collision with root package name */
    private int f45893c;

    /* renamed from: d  reason: collision with root package name */
    private int f45894d;

    /* renamed from: e  reason: collision with root package name */
    private ScrollState f45895e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f45896f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f45897g;

    /* renamed from: h  reason: collision with root package name */
    boolean f45898h;

    /* renamed from: i  reason: collision with root package name */
    float f45899i;

    /* renamed from: j  reason: collision with root package name */
    float f45900j;

    public ObservableScrollView(Context context) {
        super(context);
        this.f45891a = getClass().getSimpleName();
        this.f45898h = false;
    }

    public int getCurrentScrollY() {
        return this.f45894d;
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (MotionEventCompat.getActionMasked(motionEvent) == 0) {
            this.f45897g = false;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onScrollChanged(int i2, int i4, int i5, int i6) {
        super.onScrollChanged(i2, i4, i5, i6);
        l1.j jVar = this.f45892b;
        if (jVar != null) {
            jVar.a(i4, this.f45896f, this.f45897g);
        }
        if (this.f45896f) {
            this.f45896f = false;
        }
        int i7 = this.f45893c;
        if (i7 < i4) {
            this.f45895e = ScrollState.UP;
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (i4 < i7) {
            this.f45895e = ScrollState.DOWN;
            StringBuilder sb = new StringBuilder();
            sb.append("getScrollY()=");
            sb.append(getScrollY());
            if (getScrollY() == 0) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
        }
        this.f45893c = i4;
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f45898h = false;
            this.f45899i = motionEvent.getX();
            this.f45900j = motionEvent.getY();
            this.f45897g = true;
            this.f45896f = true;
            l1.j jVar = this.f45892b;
            if (jVar != null) {
                jVar.c();
            }
            getParent().requestDisallowInterceptTouchEvent(true);
        } else if (actionMasked == 1) {
            getParent().requestDisallowInterceptTouchEvent(false);
        } else if (actionMasked == 2) {
            if (Math.abs(motionEvent.getX() - this.f45899i) > Math.abs(motionEvent.getY() - this.f45900j)) {
                getParent().requestDisallowInterceptTouchEvent(false);
            } else {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            if (getScrollY() == 0) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
            this.f45898h = true;
        } else if (actionMasked == 3) {
            this.f45897g = false;
            l1.j jVar2 = this.f45892b;
            if (jVar2 != null) {
                jVar2.b(this.f45895e);
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setScrollViewCallbacks(l1.j jVar) {
        this.f45892b = jVar;
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45891a = getClass().getSimpleName();
        this.f45898h = false;
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45891a = getClass().getSimpleName();
        this.f45898h = false;
    }
}
