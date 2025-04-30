package ru.noties.scrollable;

import android.animation.ValueAnimator;
/* compiled from: OverScrollListenerBase.java */
/* loaded from: classes5.dex */
public abstract class m implements l {

    /* renamed from: a  reason: collision with root package name */
    private int f74172a;

    /* renamed from: b  reason: collision with root package name */
    private float f74173b = -1.0f;

    /* renamed from: c  reason: collision with root package name */
    private ValueAnimator f74174c;

    /* compiled from: OverScrollListenerBase.java */
    /* loaded from: classes5.dex */
    class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ScrollableLayout f74175a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ float f74176b;

        a(ScrollableLayout scrollableLayout, float f4) {
            this.f74175a = scrollableLayout;
            this.f74176b = f4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float animatedFraction = valueAnimator.getAnimatedFraction();
            m.this.f74172a -= (int) (m.this.f74172a * animatedFraction);
            m mVar = m.this;
            ScrollableLayout scrollableLayout = this.f74175a;
            float f4 = this.f74176b;
            mVar.j(scrollableLayout, f4 - (animatedFraction * f4));
        }
    }

    @Override // ru.noties.scrollable.l
    public boolean a(ScrollableLayout scrollableLayout, int i2) {
        return this.f74172a > 0;
    }

    @Override // ru.noties.scrollable.l
    public void b(ScrollableLayout scrollableLayout) {
        f();
        float i2 = i(scrollableLayout);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f74174c = ofFloat;
        g(ofFloat);
        this.f74174c.addUpdateListener(new a(scrollableLayout, i2));
        this.f74174c.start();
    }

    @Override // ru.noties.scrollable.l
    public void c(ScrollableLayout scrollableLayout, int i2) {
        f();
        int h4 = h(scrollableLayout);
        int i4 = this.f74172a + (-i2);
        this.f74172a = i4;
        if (i4 > h4) {
            this.f74172a = h4;
        }
        float i5 = i(scrollableLayout);
        if (Float.compare(this.f74173b, i5) != 0) {
            j(scrollableLayout, i5);
            this.f74173b = i5;
        }
    }

    @Override // ru.noties.scrollable.l
    public void clear() {
        this.f74172a = 0;
    }

    public void f() {
        ValueAnimator valueAnimator = this.f74174c;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        this.f74174c.cancel();
    }

    protected void g(ValueAnimator valueAnimator) {
        valueAnimator.setDuration(250L);
    }

    protected int h(ScrollableLayout scrollableLayout) {
        return scrollableLayout.getMaxScrollY();
    }

    protected float i(ScrollableLayout scrollableLayout) {
        int i2 = this.f74172a;
        if (i2 < 0) {
            return 0.0f;
        }
        return i2 / h(scrollableLayout);
    }

    protected abstract void j(ScrollableLayout scrollableLayout, float f4);
}
