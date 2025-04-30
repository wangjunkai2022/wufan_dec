package com.join.mgps.control;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.Scroller;
/* compiled from: ViewPagerScroller.java */
/* loaded from: classes3.dex */
public class c extends Scroller {

    /* renamed from: a  reason: collision with root package name */
    private int f44834a;

    public c(Context context) {
        super(context);
    }

    public void a(int i2) {
        this.f44834a = i2;
    }

    @Override // android.widget.Scroller
    public void startScroll(int i2, int i4, int i5, int i6) {
        super.startScroll(i2, i4, i5, i6, this.f44834a);
    }

    public c(Context context, Interpolator interpolator) {
        super(context, interpolator);
    }

    @Override // android.widget.Scroller
    public void startScroll(int i2, int i4, int i5, int i6, int i7) {
        super.startScroll(i2, i4, i5, i6, this.f44834a);
    }

    public c(Context context, Interpolator interpolator, boolean z3) {
        super(context, interpolator, z3);
    }
}
