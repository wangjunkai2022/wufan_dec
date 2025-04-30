package com.youth.banner;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.Scroller;
/* compiled from: BannerScroller.java */
/* loaded from: classes3.dex */
public class b extends Scroller {

    /* renamed from: a  reason: collision with root package name */
    private int f64874a;

    public b(Context context) {
        super(context);
        this.f64874a = 800;
    }

    public void a(int i2) {
        this.f64874a = i2;
    }

    @Override // android.widget.Scroller
    public void startScroll(int i2, int i4, int i5, int i6, int i7) {
        super.startScroll(i2, i4, i5, i6, this.f64874a);
    }

    @Override // android.widget.Scroller
    public void startScroll(int i2, int i4, int i5, int i6) {
        super.startScroll(i2, i4, i5, i6, this.f64874a);
    }

    public b(Context context, Interpolator interpolator) {
        super(context, interpolator);
        this.f64874a = 800;
    }

    public b(Context context, Interpolator interpolator, boolean z3) {
        super(context, interpolator, z3);
        this.f64874a = 800;
    }
}
