package com.xpleemoon.view;

import android.content.Context;
import android.util.AttributeSet;
import androidx.viewpager.widget.ViewPager;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3.dex */
public class CarouselViewPager extends ViewPager {

    /* renamed from: d  reason: collision with root package name */
    public static final int f64788d = 0;

    /* renamed from: e  reason: collision with root package name */
    public static final int f64789e = 1;

    /* renamed from: f  reason: collision with root package name */
    public static final int f64790f = 2;

    /* renamed from: a  reason: collision with root package name */
    private int f64791a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f64792b;

    /* renamed from: c  reason: collision with root package name */
    private ScheduledExecutorService f64793c;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface LifeCycle {
    }

    /* loaded from: classes3.dex */
    class a implements Runnable {

        /* renamed from: com.xpleemoon.view.CarouselViewPager$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class RunnableC0437a implements Runnable {
            RunnableC0437a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                CarouselViewPager carouselViewPager = CarouselViewPager.this;
                carouselViewPager.setCurrentItem(carouselViewPager.getCurrentItem() + 1);
            }
        }

        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = CarouselViewPager.this.f64791a;
            if (i2 != 0) {
                if (i2 != 2) {
                    return;
                }
                CarouselViewPager.this.d();
            } else if (CarouselViewPager.this.f64792b || CarouselViewPager.this.getAdapter() == null || CarouselViewPager.this.getAdapter().getCount() <= 1) {
            } else {
                CarouselViewPager.this.post(new RunnableC0437a());
            }
        }
    }

    public CarouselViewPager(Context context) {
        super(context);
        this.f64791a = 0;
        this.f64792b = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        ScheduledExecutorService scheduledExecutorService = this.f64793c;
        if (scheduledExecutorService != null && !scheduledExecutorService.isShutdown()) {
            this.f64793c.shutdown();
        }
        this.f64793c = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        d();
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.f64793c = newSingleThreadScheduledExecutor;
        newSingleThreadScheduledExecutor.scheduleAtFixedRate(new a(), 2000L, 2000L, TimeUnit.MILLISECONDS);
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
            goto L16
        L10:
            r0 = 0
            r3.f64792b = r0
            goto L16
        L14:
            r3.f64792b = r1
        L16:
            boolean r4 = super.onTouchEvent(r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xpleemoon.view.CarouselViewPager.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setLifeCycle(int i2) {
        this.f64791a = i2;
    }

    public CarouselViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f64791a = 0;
        this.f64792b = false;
    }
}
