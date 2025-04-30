package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import androidx.viewpager.widget.ViewPager;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class CarouselViewPager2 extends ViewPager {

    /* renamed from: e  reason: collision with root package name */
    public static final int f44990e = 0;

    /* renamed from: f  reason: collision with root package name */
    public static final int f44991f = 1;

    /* renamed from: g  reason: collision with root package name */
    public static final int f44992g = 2;

    /* renamed from: a  reason: collision with root package name */
    private int f44993a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f44994b;

    /* renamed from: c  reason: collision with root package name */
    private ScheduledExecutorService f44995c;

    /* renamed from: d  reason: collision with root package name */
    boolean f44996d;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface LifeCycle {
    }

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: com.join.mgps.customview.CarouselViewPager2$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class RunnableC0191a implements Runnable {
            RunnableC0191a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (CarouselViewPager2.this.getCurrentItem() == CarouselViewPager2.this.getAdapter().getCount() - 1) {
                    CarouselViewPager2.this.setCurrentItem(2, false);
                } else if (CarouselViewPager2.this.getCurrentItem() >= CarouselViewPager2.this.getAdapter().getCount() - 2) {
                    CarouselViewPager2.this.setCurrentItem(1, false);
                } else {
                    CarouselViewPager2 carouselViewPager2 = CarouselViewPager2.this;
                    carouselViewPager2.setCurrentItem(carouselViewPager2.getCurrentItem() + 1);
                }
            }
        }

        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = CarouselViewPager2.this.f44993a;
            if (i2 != 0) {
                if (i2 != 2) {
                    return;
                }
                CarouselViewPager2.this.d();
                return;
            }
            CarouselViewPager2 carouselViewPager2 = CarouselViewPager2.this;
            if (!carouselViewPager2.f44996d) {
                if (carouselViewPager2.f44994b || CarouselViewPager2.this.getAdapter() == null || CarouselViewPager2.this.getAdapter().getCount() <= 1) {
                    return;
                }
                CarouselViewPager2.this.post(new RunnableC0191a());
                return;
            }
            carouselViewPager2.f44996d = false;
        }
    }

    public CarouselViewPager2(Context context) {
        super(context);
        this.f44993a = 0;
        this.f44994b = false;
        this.f44996d = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        ScheduledExecutorService scheduledExecutorService = this.f44995c;
        if (scheduledExecutorService != null && !scheduledExecutorService.isShutdown()) {
            this.f44995c.shutdown();
        }
        this.f44995c = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        d();
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.f44995c = newSingleThreadScheduledExecutor;
        newSingleThreadScheduledExecutor.scheduleAtFixedRate(new a(), 4000L, 4000L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        d();
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000d, code lost:
        if (r0 != 3) goto L8;
     */
    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r4) {
        /*
            r3 = this;
            int r0 = r4.getAction()
            r1 = 1
            if (r0 == 0) goto L14
            if (r0 == r1) goto L10
            r2 = 2
            if (r0 == r2) goto L14
            r1 = 3
            if (r0 == r1) goto L10
            goto L18
        L10:
            r0 = 0
            r3.f44994b = r0
            goto L18
        L14:
            r3.f44994b = r1
            r3.f44996d = r1
        L18:
            boolean r4 = super.onTouchEvent(r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.customview.CarouselViewPager2.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setLifeCycle(int i2) {
        this.f44993a = i2;
    }

    public CarouselViewPager2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f44993a = 0;
        this.f44994b = false;
        this.f44996d = false;
    }
}
