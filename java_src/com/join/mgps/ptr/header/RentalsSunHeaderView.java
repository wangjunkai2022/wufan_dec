package com.join.mgps.ptr.header;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.join.mgps.ptr.PtrFrameLayout;
import com.join.mgps.ptr.PtrUIHeader;
/* loaded from: classes4.dex */
public class RentalsSunHeaderView extends PtrUIHeader {

    /* renamed from: a  reason: collision with root package name */
    private b f51207a;

    /* renamed from: b  reason: collision with root package name */
    private PtrFrameLayout f51208b;

    /* renamed from: c  reason: collision with root package name */
    private com.join.mgps.ptr.indicator.b f51209c;

    public RentalsSunHeaderView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        f();
    }

    private void f() {
        this.f51207a = new b(getContext(), this);
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void a(PtrFrameLayout ptrFrameLayout) {
        float N = this.f51209c.N();
        this.f51207a.stop();
        this.f51207a.g(this.f51209c.d());
        this.f51207a.i(N);
        invalidate();
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void b(PtrFrameLayout ptrFrameLayout, boolean z3, byte b4, com.join.mgps.ptr.indicator.a aVar) {
        float N = this.f51209c.N();
        this.f51207a.g(this.f51209c.d());
        this.f51207a.i(N);
        invalidate();
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void c(PtrFrameLayout ptrFrameLayout) {
        this.f51207a.h();
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void d(PtrFrameLayout ptrFrameLayout) {
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void e(PtrFrameLayout ptrFrameLayout) {
        this.f51207a.start();
        float N = this.f51209c.N();
        this.f51207a.g(this.f51209c.d());
        this.f51207a.i(N);
        invalidate();
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        if (drawable == this.f51207a) {
            invalidate();
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.f51207a.draw(canvas);
        this.f51209c.N();
    }

    @Override // android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        this.f51207a.setBounds(paddingLeft, paddingTop, (i5 + paddingLeft) - i2, (i6 + paddingTop) - i4);
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(((this.f51207a.e() * 5) / 4) + getPaddingTop() + getPaddingBottom(), 1073741824));
    }

    public void setUp(PtrFrameLayout ptrFrameLayout) {
        this.f51208b = ptrFrameLayout;
        com.join.mgps.ptr.indicator.b bVar = new com.join.mgps.ptr.indicator.b();
        this.f51209c = bVar;
        this.f51208b.setPtrIndicator(bVar);
    }

    public RentalsSunHeaderView(Context context) {
        super(context);
        f();
    }

    public RentalsSunHeaderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        f();
    }
}
