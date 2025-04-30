package com.yatoooon.screenadaptation;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
/* compiled from: LoadViewHelper.java */
/* loaded from: classes3.dex */
public class d extends a {
    public d(Context context, int i2, int i4, float f4, String str) {
        super(context, i2, i4, f4, str);
    }

    private float k(float f4) {
        if ("px".equals(this.f64805h)) {
            return f4 * (this.f64800c / this.f64802e);
        }
        if ("dp".equals(this.f64805h)) {
            return (this.f64803f / 160.0f) * u2.b.c(this.f64798a, f4) * (this.f64800c / this.f64802e);
        }
        return 0.0f;
    }

    private void l(View view) {
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            textView.setTextSize(0, m(textView));
        }
    }

    private float m(TextView textView) {
        return k(textView.getTextSize() * this.f64804g);
    }

    private int n(int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (i2 == 1) {
            return 1;
        }
        return (int) k(i2);
    }

    @Override // com.yatoooon.screenadaptation.a
    public int a(int i2) {
        return n(i2);
    }

    @Override // com.yatoooon.screenadaptation.a
    public void b(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.leftMargin = n(marginLayoutParams.leftMargin);
            marginLayoutParams.topMargin = n(marginLayoutParams.topMargin);
            marginLayoutParams.rightMargin = n(marginLayoutParams.rightMargin);
            marginLayoutParams.bottomMargin = n(marginLayoutParams.bottomMargin);
            view.setLayoutParams(marginLayoutParams);
        }
    }

    @Override // com.yatoooon.screenadaptation.a
    public void c(View view) {
        u2.a.g(view, n(u2.a.b(view)));
        u2.a.f(view, n(u2.a.a(view)));
    }

    @Override // com.yatoooon.screenadaptation.a
    public void d(View view) {
        u2.a.i(view, n(u2.a.d(view)));
        u2.a.h(view, n(u2.a.c(view)));
    }

    @Override // com.yatoooon.screenadaptation.a
    public void e(View view) {
        view.setPadding(n(view.getPaddingLeft()), n(view.getPaddingTop()), n(view.getPaddingRight()), n(view.getPaddingBottom()));
    }

    @Override // com.yatoooon.screenadaptation.a
    public void h(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int i2 = layoutParams.width;
        if (i2 > 0) {
            layoutParams.width = n(i2);
        }
        int i4 = layoutParams.height;
        if (i4 > 0) {
            layoutParams.height = n(i4);
        }
        l(view);
    }
}
