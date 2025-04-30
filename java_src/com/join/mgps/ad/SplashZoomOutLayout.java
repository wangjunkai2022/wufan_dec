package com.join.mgps.ad;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
/* loaded from: classes3.dex */
public class SplashZoomOutLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private float f38608a;

    /* renamed from: b  reason: collision with root package name */
    private float f38609b;

    /* renamed from: c  reason: collision with root package name */
    private int f38610c;

    /* renamed from: d  reason: collision with root package name */
    private int f38611d;

    /* renamed from: e  reason: collision with root package name */
    private int f38612e;

    /* renamed from: f  reason: collision with root package name */
    private float f38613f;

    /* renamed from: g  reason: collision with root package name */
    private float f38614g;

    /* renamed from: h  reason: collision with root package name */
    private final int f38615h;

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View view = (View) SplashZoomOutLayout.this.getParent();
            if (view == null) {
                return;
            }
            int width = view.getWidth();
            int height = view.getHeight();
            SplashZoomOutLayout splashZoomOutLayout = SplashZoomOutLayout.this;
            splashZoomOutLayout.f38612e = (height - splashZoomOutLayout.getHeight()) - SplashZoomOutLayout.this.f38610c;
            SplashZoomOutLayout splashZoomOutLayout2 = SplashZoomOutLayout.this;
            splashZoomOutLayout2.f38611d = (width - splashZoomOutLayout2.getWidth()) - SplashZoomOutLayout.this.f38610c;
        }
    }

    public SplashZoomOutLayout(Context context, int i2) {
        super(context);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(10.0f);
        setBackgroundDrawable(gradientDrawable);
        if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(true);
        }
        this.f38610c = i2;
        this.f38615h = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        post(new a());
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0059, code lost:
        if (r3 > r4) goto L12;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r8) {
        /*
            r7 = this;
            int r0 = r8.getAction()
            if (r0 == 0) goto La7
            r1 = 0
            r3 = 1
            if (r0 == r3) goto L70
            r3 = 2
            if (r0 == r3) goto L10
            goto Lc2
        L10:
            float r0 = r8.getRawX()
            float r3 = r7.f38608a
            float r0 = r0 + r3
            float r3 = r8.getRawY()
            float r4 = r7.f38609b
            float r3 = r3 + r4
            float r4 = r7.f38613f
            float r5 = r7.getX()
            float r5 = r0 - r5
            float r5 = java.lang.Math.abs(r5)
            float r4 = r4 + r5
            r7.f38613f = r4
            float r4 = r7.f38614g
            float r5 = r7.getY()
            float r5 = r3 - r5
            float r5 = java.lang.Math.abs(r5)
            float r4 = r4 + r5
            r7.f38614g = r4
            int r4 = r7.f38610c
            float r5 = (float) r4
            int r5 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r5 >= 0) goto L45
            float r0 = (float) r4
            goto L4d
        L45:
            int r5 = r7.f38611d
            float r6 = (float) r5
            int r6 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r6 <= 0) goto L4d
            float r0 = (float) r5
        L4d:
            float r5 = (float) r4
            int r5 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r5 >= 0) goto L54
        L52:
            float r3 = (float) r4
            goto L5c
        L54:
            int r4 = r7.f38612e
            float r5 = (float) r4
            int r5 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r5 <= 0) goto L5c
            goto L52
        L5c:
            android.view.ViewPropertyAnimator r4 = r7.animate()
            android.view.ViewPropertyAnimator r0 = r4.x(r0)
            android.view.ViewPropertyAnimator r0 = r0.y(r3)
            android.view.ViewPropertyAnimator r0 = r0.setDuration(r1)
            r0.start()
            goto Lc2
        L70:
            float r0 = r8.getRawX()
            float r4 = r7.f38608a
            float r0 = r0 + r4
            r4 = 1073741824(0x40000000, float:2.0)
            float r0 = r0 * r4
            int r4 = r7.f38611d
            float r5 = (float) r4
            int r0 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r0 <= 0) goto L84
            float r0 = (float) r4
            goto L87
        L84:
            int r0 = r7.f38610c
            float r0 = (float) r0
        L87:
            android.view.ViewPropertyAnimator r4 = r7.animate()
            android.view.ViewPropertyAnimator r0 = r4.x(r0)
            android.view.ViewPropertyAnimator r0 = r0.setDuration(r1)
            r0.start()
            float r0 = r7.f38613f
            int r1 = r7.f38615h
            float r2 = (float) r1
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 > 0) goto La6
            float r0 = r7.f38614g
            float r1 = (float) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto Lc2
        La6:
            return r3
        La7:
            float r0 = r7.getX()
            float r1 = r8.getRawX()
            float r0 = r0 - r1
            r7.f38608a = r0
            float r0 = r7.getY()
            float r1 = r8.getRawY()
            float r0 = r0 - r1
            r7.f38609b = r0
            r0 = 0
            r7.f38613f = r0
            r7.f38614g = r0
        Lc2:
            boolean r8 = super.onInterceptTouchEvent(r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.ad.SplashZoomOutLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }
}
