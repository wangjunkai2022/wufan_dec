package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;
/* loaded from: classes3.dex */
public class BannerViewPager extends ViewPager {

    /* renamed from: e  reason: collision with root package name */
    public static final int f44936e = 5;

    /* renamed from: a  reason: collision with root package name */
    protected ViewPager f44937a;

    /* renamed from: b  reason: collision with root package name */
    private int f44938b;

    /* renamed from: c  reason: collision with root package name */
    private float f44939c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f44940d;

    public BannerViewPager(Context context) {
        super(context);
        this.f44937a = null;
        this.f44939c = 0.0f;
        this.f44940d = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f44939c = 0.0f;
            this.f44940d = false;
        } else if (action == 1) {
            this.f44939c = 0.0f;
            this.f44940d = false;
        } else if (action == 2) {
            float f4 = this.f44939c;
            if (f4 != 0.0f) {
                this.f44939c = f4 - motionEvent.getX();
            }
            if (Math.abs(this.f44939c) > 5.0f) {
                this.f44940d = true;
            }
            getParent().requestDisallowInterceptTouchEvent(this.f44940d);
            this.f44939c = motionEvent.getX();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public int getTotalSize() {
        return this.f44938b;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
    }

    public void setTotalSize(int i2) {
        this.f44938b = i2;
    }

    public BannerViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f44937a = null;
        this.f44939c = 0.0f;
        this.f44940d = false;
    }
}
