package com.join.mgps.customview;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ScrollView;
/* loaded from: classes3.dex */
public class PullableScrollView extends ScrollView {

    /* renamed from: a  reason: collision with root package name */
    public boolean f45956a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f45957b;

    /* renamed from: c  reason: collision with root package name */
    private a f45958c;

    /* renamed from: d  reason: collision with root package name */
    private float f45959d;

    /* renamed from: e  reason: collision with root package name */
    private float f45960e;

    /* renamed from: f  reason: collision with root package name */
    private float f45961f;

    /* renamed from: g  reason: collision with root package name */
    private float f45962g;

    /* loaded from: classes3.dex */
    public interface a {
        void a(ScrollView scrollView, int i2, int i4, int i5, int i6);
    }

    public PullableScrollView(Context context) {
        super(context);
        this.f45957b = true;
    }

    public boolean a() {
        return this.f45956a;
    }

    @Override // android.widget.ScrollView, android.view.View
    protected float getBottomFadingEdgeStrength() {
        if (!this.f45957b || Build.VERSION.SDK_INT >= 11) {
            return super.getBottomFadingEdgeStrength();
        }
        return 0.0f;
    }

    @Override // android.widget.ScrollView, android.view.View
    protected float getTopFadingEdgeStrength() {
        if (!this.f45957b || Build.VERSION.SDK_INT >= 11) {
            return super.getTopFadingEdgeStrength();
        }
        return 0.0f;
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f45960e = 0.0f;
            this.f45959d = 0.0f;
            this.f45961f = motionEvent.getX();
            this.f45962g = motionEvent.getY();
        } else if (action == 2) {
            float x3 = motionEvent.getX();
            float y3 = motionEvent.getY();
            this.f45959d += Math.abs(x3 - this.f45961f);
            float abs = this.f45960e + Math.abs(y3 - this.f45962g);
            this.f45960e = abs;
            this.f45961f = x3;
            this.f45962g = y3;
            if (this.f45959d > abs) {
                return false;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onScrollChanged(int i2, int i4, int i5, int i6) {
        super.onScrollChanged(i2, i4, i5, i6);
        a aVar = this.f45958c;
        if (aVar != null) {
            aVar.a(this, i2, i4, i5, i6);
        }
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    public void setIsInnerScroll(boolean z3) {
        this.f45956a = z3;
    }

    public void setOnScrollChangedListener(a aVar) {
        this.f45958c = aVar;
    }

    public PullableScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45957b = true;
    }

    public PullableScrollView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45957b = true;
    }
}
