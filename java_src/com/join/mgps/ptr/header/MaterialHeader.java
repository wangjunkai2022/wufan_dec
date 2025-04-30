package com.join.mgps.ptr.header;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import com.join.mgps.ptr.PtrFrameLayout;
import com.join.mgps.ptr.PtrUIHeader;
import com.join.mgps.ptr.e;
/* loaded from: classes4.dex */
public class MaterialHeader extends PtrUIHeader {

    /* renamed from: a  reason: collision with root package name */
    private com.join.mgps.ptr.header.a f51199a;

    /* renamed from: b  reason: collision with root package name */
    private float f51200b;

    /* renamed from: c  reason: collision with root package name */
    private PtrFrameLayout f51201c;

    /* renamed from: d  reason: collision with root package name */
    private Animation f51202d;

    /* loaded from: classes4.dex */
    class a extends Animation {
        a() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f4, Transformation transformation) {
            MaterialHeader.this.f51200b = 1.0f - f4;
            MaterialHeader.this.f51199a.setAlpha((int) (MaterialHeader.this.f51200b * 255.0f));
            MaterialHeader.this.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class b extends e {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MaterialHeader materialHeader = MaterialHeader.this;
            materialHeader.startAnimation(materialHeader.f51202d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class c implements Animation.AnimationListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e f51205a;

        c(e eVar) {
            this.f51205a = eVar;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f51205a.b();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    public MaterialHeader(Context context) {
        super(context);
        this.f51200b = 1.0f;
        this.f51202d = new a();
        j();
    }

    private void j() {
        com.join.mgps.ptr.header.a aVar = new com.join.mgps.ptr.header.a(getContext(), this);
        this.f51199a = aVar;
        aVar.i(-1);
        this.f51199a.setCallback(this);
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void a(PtrFrameLayout ptrFrameLayout) {
        this.f51199a.stop();
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void b(PtrFrameLayout ptrFrameLayout, boolean z3, byte b4, com.join.mgps.ptr.indicator.a aVar) {
        float min = Math.min(1.0f, aVar.c());
        if (b4 == 2) {
            this.f51199a.setAlpha((int) (255.0f * min));
            this.f51199a.q(true);
            this.f51199a.n(0.0f, Math.min(0.8f, min * 0.8f));
            this.f51199a.h(Math.min(1.0f, min));
            this.f51199a.k((((0.4f * min) - 0.25f) + (min * 2.0f)) * 0.5f);
            invalidate();
        }
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void c(PtrFrameLayout ptrFrameLayout) {
        this.f51200b = 1.0f;
        this.f51199a.stop();
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void d(PtrFrameLayout ptrFrameLayout) {
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void e(PtrFrameLayout ptrFrameLayout) {
        this.f51199a.setAlpha(255);
        this.f51199a.start();
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        if (drawable == this.f51199a) {
            invalidate();
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int save = canvas.save();
        Rect bounds = this.f51199a.getBounds();
        canvas.translate(getPaddingLeft() + ((getMeasuredWidth() - this.f51199a.getIntrinsicWidth()) / 2), getPaddingTop());
        float f4 = this.f51200b;
        canvas.scale(f4, f4, bounds.exactCenterX(), bounds.exactCenterY());
        this.f51199a.draw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        int intrinsicHeight = this.f51199a.getIntrinsicHeight();
        this.f51199a.setBounds(0, 0, intrinsicHeight, intrinsicHeight);
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(this.f51199a.getIntrinsicHeight() + getPaddingTop() + getPaddingBottom(), 1073741824));
    }

    public void setColorSchemeColors(int[] iArr) {
        this.f51199a.j(iArr);
        invalidate();
    }

    public void setPtrFrameLayout(PtrFrameLayout ptrFrameLayout) {
        b bVar = new b();
        this.f51202d.setDuration(200L);
        this.f51202d.setAnimationListener(new c(bVar));
        this.f51201c = ptrFrameLayout;
        ptrFrameLayout.setRefreshCompleteHook(bVar);
    }

    public MaterialHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f51200b = 1.0f;
        this.f51202d = new a();
        j();
    }

    public MaterialHeader(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f51200b = 1.0f;
        this.f51202d = new a();
        j();
    }
}
