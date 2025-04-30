package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
/* loaded from: classes3.dex */
public class LoopViewPager extends ViewPager {

    /* renamed from: g  reason: collision with root package name */
    public static final int f45768g = 5;

    /* renamed from: h  reason: collision with root package name */
    private static final boolean f45769h = false;

    /* renamed from: a  reason: collision with root package name */
    ViewPager.OnPageChangeListener f45770a;

    /* renamed from: b  reason: collision with root package name */
    private m f45771b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f45772c;

    /* renamed from: d  reason: collision with root package name */
    private ViewPager.OnPageChangeListener f45773d;

    /* renamed from: e  reason: collision with root package name */
    private float f45774e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f45775f;

    /* loaded from: classes3.dex */
    class a implements ViewPager.OnPageChangeListener {

        /* renamed from: a  reason: collision with root package name */
        private float f45776a = -1.0f;

        /* renamed from: b  reason: collision with root package name */
        private float f45777b = -1.0f;

        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
            if (LoopViewPager.this.f45771b != null) {
                int currentItem = LoopViewPager.super.getCurrentItem();
                int h4 = LoopViewPager.this.f45771b.h(currentItem);
                if (i2 == 0 && (currentItem == 0 || currentItem == LoopViewPager.this.f45771b.getCount() - 1)) {
                    LoopViewPager.this.setCurrentItem(h4, false);
                }
            }
            ViewPager.OnPageChangeListener onPageChangeListener = LoopViewPager.this.f45770a;
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageScrollStateChanged(i2);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
            if (LoopViewPager.this.f45771b != null) {
                int h4 = LoopViewPager.this.f45771b.h(i2);
                if (f4 == 0.0f && this.f45776a == 0.0f && (i2 == 0 || i2 == LoopViewPager.this.f45771b.getCount() - 1)) {
                    LoopViewPager.this.setCurrentItem(h4, false);
                }
                this.f45776a = f4;
                LoopViewPager loopViewPager = LoopViewPager.this;
                if (loopViewPager.f45770a != null) {
                    if (h4 != loopViewPager.f45771b.c() - 1) {
                        LoopViewPager.this.f45770a.onPageScrolled(h4, f4, i4);
                    } else if (f4 > 0.5d) {
                        LoopViewPager.this.f45770a.onPageScrolled(0, 0.0f, 0);
                    } else {
                        LoopViewPager.this.f45770a.onPageScrolled(h4, 0.0f, 0);
                    }
                }
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            int h4 = LoopViewPager.this.f45771b.h(i2);
            float f4 = h4;
            if (this.f45777b != f4) {
                this.f45777b = f4;
                ViewPager.OnPageChangeListener onPageChangeListener = LoopViewPager.this.f45770a;
                if (onPageChangeListener != null) {
                    onPageChangeListener.onPageSelected(h4);
                }
            }
        }
    }

    public LoopViewPager(Context context) {
        super(context);
        this.f45772c = false;
        this.f45773d = new a();
        this.f45774e = 0.0f;
        this.f45775f = false;
        c();
    }

    private void c() {
        super.setOnPageChangeListener(this.f45773d);
    }

    public static int d(int i2, int i4) {
        int i5 = i2 - 1;
        return i5 < 0 ? i5 + i4 : i5 % i4;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f45774e = 0.0f;
            this.f45775f = false;
        } else if (action == 1) {
            this.f45774e = 0.0f;
            this.f45775f = false;
        } else if (action == 2) {
            float f4 = this.f45774e;
            if (f4 != 0.0f) {
                this.f45774e = f4 - motionEvent.getX();
            }
            if (Math.abs(this.f45774e) > 5.0f) {
                this.f45775f = true;
            }
            getParent().requestDisallowInterceptTouchEvent(this.f45775f);
            this.f45774e = motionEvent.getX();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // androidx.viewpager.widget.ViewPager
    public PagerAdapter getAdapter() {
        return this.f45771b;
    }

    @Override // androidx.viewpager.widget.ViewPager
    public int getCurrentItem() {
        m mVar = this.f45771b;
        if (mVar != null) {
            return mVar.h(super.getCurrentItem());
        }
        return 0;
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setAdapter(PagerAdapter pagerAdapter) {
        m mVar = new m(pagerAdapter);
        this.f45771b = mVar;
        mVar.f(this.f45772c);
        super.setAdapter(this.f45771b);
        setCurrentItem(0, false);
    }

    public void setBoundaryCaching(boolean z3) {
        this.f45772c = z3;
        m mVar = this.f45771b;
        if (mVar != null) {
            mVar.f(z3);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setCurrentItem(int i2, boolean z3) {
        try {
            super.setCurrentItem(this.f45771b.g(i2), z3);
        } catch (Exception unused) {
        }
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.f45770a = onPageChangeListener;
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setCurrentItem(int i2) {
        if (getCurrentItem() != i2) {
            setCurrentItem(i2, true);
        }
    }

    public LoopViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45772c = false;
        this.f45773d = new a();
        this.f45774e = 0.0f;
        this.f45775f = false;
        c();
    }
}
