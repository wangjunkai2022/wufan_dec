package com.join.mgps.customview;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
/* loaded from: classes3.dex */
public class InterceptEventViewPager extends ViewPager {

    /* renamed from: n  reason: collision with root package name */
    private static final String f45672n = "InterceptEventViewPager";

    /* renamed from: a  reason: collision with root package name */
    private int f45673a;

    /* renamed from: b  reason: collision with root package name */
    private int f45674b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f45675c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f45676d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f45677e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f45678f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f45679g;

    /* renamed from: h  reason: collision with root package name */
    private int f45680h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f45681i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f45682j;

    /* renamed from: k  reason: collision with root package name */
    private View.OnTouchListener f45683k;

    /* renamed from: l  reason: collision with root package name */
    private ViewPager.OnPageChangeListener f45684l;

    /* renamed from: m  reason: collision with root package name */
    private c f45685m;

    /* loaded from: classes3.dex */
    class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0 && (view instanceof ViewGroup) && !InterceptEventViewPager.this.o() && !InterceptEventViewPager.this.p()) {
                ((ViewGroup) view).requestDisallowInterceptTouchEvent(true);
            } else if (motionEvent.getAction() == 2) {
                if (InterceptEventViewPager.this.o() && InterceptEventViewPager.this.f45680h == 0) {
                    ((ViewGroup) view).requestDisallowInterceptTouchEvent(false);
                } else if (InterceptEventViewPager.this.p() && InterceptEventViewPager.this.f45680h == InterceptEventViewPager.this.f45673a - 1) {
                    ((ViewGroup) view).requestDisallowInterceptTouchEvent(false);
                } else {
                    ((ViewGroup) view).requestDisallowInterceptTouchEvent(true);
                }
            }
            return false;
        }
    }

    /* loaded from: classes3.dex */
    class b implements ViewPager.OnPageChangeListener {
        b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
            if (InterceptEventViewPager.this.f45685m != null) {
                InterceptEventViewPager.this.f45685m.onPageScrollStateChanged(i2);
            }
            InterceptEventViewPager.this.f45674b = i2;
            if (i2 == 1) {
                InterceptEventViewPager.this.f45675c = true;
                return;
            }
            InterceptEventViewPager.this.f45679g = false;
            InterceptEventViewPager.this.f45678f = false;
            InterceptEventViewPager.this.f45677e = false;
            InterceptEventViewPager.this.f45676d = false;
            InterceptEventViewPager.this.f45675c = false;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
            if (InterceptEventViewPager.this.f45685m != null) {
                InterceptEventViewPager.this.f45685m.onPageScrolled(i2, f4, i4);
            }
            if (i2 == InterceptEventViewPager.this.f45680h) {
                InterceptEventViewPager.this.f45679g = true;
            } else {
                InterceptEventViewPager.this.f45678f = true;
            }
            if (InterceptEventViewPager.this.f45675c) {
                if (i2 == 0) {
                    if (i4 == 0 && InterceptEventViewPager.this.f45674b == 1) {
                        InterceptEventViewPager.this.f45677e = true;
                    }
                } else if (i2 == InterceptEventViewPager.this.f45673a - 1 && i4 == 0 && InterceptEventViewPager.this.f45674b == 1) {
                    InterceptEventViewPager.this.f45676d = true;
                }
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            if (InterceptEventViewPager.this.f45685m != null) {
                InterceptEventViewPager.this.f45685m.onPageSelected(i2);
            }
            InterceptEventViewPager.this.f45680h = i2;
        }
    }

    /* loaded from: classes3.dex */
    public interface c {
        void onPageScrollStateChanged(int i2);

        void onPageScrolled(int i2, float f4, int i4);

        void onPageSelected(int i2);
    }

    public InterceptEventViewPager(Context context) {
        this(context, null);
    }

    private void m() {
        setOnPageChangeListener(this.f45684l);
        setOnTouchListener(this.f45683k);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.viewpager.widget.ViewPager
    public boolean canScroll(View view, boolean z3, int i2, int i4, int i5) {
        if (view != this) {
            try {
                if ((view instanceof ViewPager) && Build.VERSION.SDK_INT < 11 && this.f45682j) {
                    ViewPager viewPager = (ViewPager) view;
                    int currentItem = viewPager.getCurrentItem();
                    if (currentItem != viewPager.getAdapter().getCount() - 1 || i2 >= 0) {
                        return currentItem != 0 || i2 <= 0;
                    }
                    return false;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                return false;
            }
        }
        return super.canScroll(view, z3, i2, i4, i5);
    }

    public boolean n() {
        return this.f45681i;
    }

    public boolean o() {
        return this.f45677e;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f45681i) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f45681i) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    public boolean p() {
        return this.f45676d;
    }

    public boolean q() {
        return this.f45678f;
    }

    public boolean r() {
        return this.f45679g;
    }

    public boolean s() {
        return this.f45675c;
    }

    @Override // android.view.View
    public void scrollTo(int i2, int i4) {
        super.scrollTo(i2, i4);
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setAdapter(PagerAdapter pagerAdapter) {
        if (pagerAdapter != null) {
            super.setAdapter(pagerAdapter);
            this.f45673a = pagerAdapter.getCount();
        }
    }

    public void setCanScrollView(boolean z3) {
        this.f45681i = z3;
    }

    @Override // androidx.viewpager.widget.ViewPager
    public void setCurrentItem(int i2) {
        super.setCurrentItem(i2, false);
    }

    public void setIsAsParentViewPager(boolean z3) {
        this.f45682j = z3;
    }

    public void setViewPagerCallback(c cVar) {
        this.f45685m = cVar;
    }

    public InterceptEventViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45675c = false;
        this.f45676d = false;
        this.f45677e = false;
        this.f45678f = false;
        this.f45679g = false;
        this.f45681i = true;
        this.f45682j = false;
        this.f45683k = new a();
        this.f45684l = new b();
        m();
    }
}
