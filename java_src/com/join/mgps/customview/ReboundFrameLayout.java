package com.join.mgps.customview;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
/* loaded from: classes3.dex */
public class ReboundFrameLayout extends FrameLayout implements View.OnTouchListener, com.facebook.rebound.m {

    /* renamed from: a  reason: collision with root package name */
    private int f45963a;

    /* renamed from: b  reason: collision with root package name */
    private int f45964b;

    /* renamed from: c  reason: collision with root package name */
    private com.facebook.rebound.i f45965c;

    /* renamed from: d  reason: collision with root package name */
    private com.facebook.rebound.o f45966d;

    /* renamed from: e  reason: collision with root package name */
    private Handler f45967e;

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ReboundFrameLayout.this.performClick();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ReboundFrameLayout.this.performClick();
        }
    }

    public ReboundFrameLayout(Context context) {
        super(context);
        this.f45963a = 100;
        this.f45964b = 10;
        this.f45967e = new Handler();
        e();
    }

    private void e() {
        com.facebook.rebound.o m4 = com.facebook.rebound.o.m();
        this.f45966d = m4;
        com.facebook.rebound.i d4 = m4.d();
        this.f45965c = d4;
        d4.a(this);
        setOnTouchListener(this);
        this.f45965c.x(0.0d);
    }

    @Override // com.facebook.rebound.m
    public void a(com.facebook.rebound.i iVar) {
        float f4 = 1.0f - (((float) iVar.f()) * 0.3f);
        setScaleX(f4);
        setScaleY(f4);
    }

    @Override // com.facebook.rebound.m
    public void b(com.facebook.rebound.i iVar) {
    }

    @Override // com.facebook.rebound.m
    public void c(com.facebook.rebound.i iVar) {
    }

    @Override // com.facebook.rebound.m
    public void d(com.facebook.rebound.i iVar) {
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f45965c.x(1.0d);
            return true;
        } else if (action == 1) {
            this.f45965c.x(0.0d);
            this.f45967e.postDelayed(new a(), 200L);
            return true;
        } else if (action != 3) {
            return false;
        } else {
            this.f45965c.x(0.0d);
            this.f45967e.postDelayed(new b(), 200L);
            return true;
        }
    }

    public ReboundFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45963a = 100;
        this.f45964b = 10;
        this.f45967e = new Handler();
        e();
    }

    public ReboundFrameLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45963a = 100;
        this.f45964b = 10;
        this.f45967e = new Handler();
        e();
    }

    public ReboundFrameLayout(Context context, AttributeSet attributeSet, int i2, int i4) {
        super(context, attributeSet, i2, i4);
        this.f45963a = 100;
        this.f45964b = 10;
        this.f45967e = new Handler();
        e();
    }
}
