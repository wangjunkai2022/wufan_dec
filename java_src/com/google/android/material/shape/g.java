package com.google.android.material.shape;

import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
/* compiled from: InterpolateOnScrollPositionChangeHelper.java */
/* loaded from: classes2.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private View f15621a;

    /* renamed from: b  reason: collision with root package name */
    private MaterialShapeDrawable f15622b;

    /* renamed from: c  reason: collision with root package name */
    private ScrollView f15623c;

    /* renamed from: d  reason: collision with root package name */
    private final int[] f15624d = new int[2];

    /* renamed from: e  reason: collision with root package name */
    private final int[] f15625e = new int[2];

    /* renamed from: f  reason: collision with root package name */
    private final ViewTreeObserver.OnScrollChangedListener f15626f = new a();

    /* compiled from: InterpolateOnScrollPositionChangeHelper.java */
    /* loaded from: classes2.dex */
    class a implements ViewTreeObserver.OnScrollChangedListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            g.this.e();
        }
    }

    public g(View view, MaterialShapeDrawable materialShapeDrawable, ScrollView scrollView) {
        this.f15621a = view;
        this.f15622b = materialShapeDrawable;
        this.f15623c = scrollView;
    }

    public void a(ScrollView scrollView) {
        this.f15623c = scrollView;
    }

    public void b(MaterialShapeDrawable materialShapeDrawable) {
        this.f15622b = materialShapeDrawable;
    }

    public void c(@NonNull ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnScrollChangedListener(this.f15626f);
    }

    public void d(@NonNull ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.removeOnScrollChangedListener(this.f15626f);
    }

    public void e() {
        ScrollView scrollView = this.f15623c;
        if (scrollView == null) {
            return;
        }
        if (scrollView.getChildCount() != 0) {
            this.f15623c.getLocationInWindow(this.f15624d);
            this.f15623c.getChildAt(0).getLocationInWindow(this.f15625e);
            int top = (this.f15621a.getTop() - this.f15624d[1]) + this.f15625e[1];
            int height = this.f15621a.getHeight();
            int height2 = this.f15623c.getHeight();
            if (top < 0) {
                this.f15622b.p0(Math.max(0.0f, Math.min(1.0f, (top / height) + 1.0f)));
                this.f15621a.invalidate();
                return;
            }
            int i2 = top + height;
            if (i2 > height2) {
                this.f15622b.p0(Math.max(0.0f, Math.min(1.0f, 1.0f - ((i2 - height2) / height))));
                this.f15621a.invalidate();
                return;
            } else if (this.f15622b.z() != 1.0f) {
                this.f15622b.p0(1.0f);
                this.f15621a.invalidate();
                return;
            } else {
                return;
            }
        }
        throw new IllegalStateException("Scroll bar must contain a child to calculate interpolation.");
    }
}
