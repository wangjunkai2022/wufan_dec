package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
/* loaded from: classes3.dex */
public class SlidingTabLayout6 extends SlidingTabLayout1 {
    protected int J;

    public SlidingTabLayout6(Context context) {
        super(context);
        this.J = 4;
        this.f46199t = 0;
        this.J = (int) TypedValue.applyDimension(1, 4.0f, getResources().getDisplayMetrics());
    }

    @Override // com.join.mgps.customview.SlidingTabLayout1
    protected void e(Canvas canvas) {
        View childAt;
        int i2;
        if (isInEditMode() || this.f46186g == 0) {
            return;
        }
        int height = getHeight();
        this.f46189j.setColor(this.f46191l);
        float left = childAt.getLeft() * 1.0f;
        float right = this.f46184e.getChildAt(this.f46187h).getRight();
        if (this.f46188i > 0.0f && (i2 = this.f46187h) < this.f46186g - 1) {
            View childAt2 = this.f46184e.getChildAt(i2 + 1);
            float f4 = this.f46188i;
            left = (childAt2.getLeft() * f4) + ((1.0f - f4) * left);
            right = (childAt2.getRight() * f4) + ((1.0f - f4) * right);
        }
        float f5 = (int) (((1.0f - this.f46198s) * (right - left)) / 2.0f);
        float f6 = height;
        RectF rectF = new RectF(left + f5, height - this.f46197r, right - f5, f6);
        int i4 = this.J;
        canvas.drawRoundRect(rectF, i4, i4, this.f46189j);
        this.f46189j.setColor(this.f46192m);
        canvas.drawRect(0.0f, height - this.f46199t, this.f46184e.getWidth(), f6, this.f46189j);
        this.f46190k.setColor(this.f46193n);
        for (int i5 = 0; i5 < this.f46186g - 1; i5++) {
            View childAt3 = this.f46184e.getChildAt(i5);
            canvas.drawLine(childAt3.getRight(), this.f46200u, childAt3.getRight(), height - this.f46200u, this.f46190k);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.mgps.customview.SlidingTabLayout1
    public void i() {
        for (int i2 = 0; i2 < this.f46186g; i2++) {
            View childAt = this.f46184e.getChildAt(i2);
            childAt.setBackgroundResource(this.E);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                textView.setTextSize(0, this.f46203x);
                textView.setTypeface(this.B, this.C);
                textView.setTextColor(this.f46205z);
                textView.setTypeface(Typeface.defaultFromStyle(0));
                ViewPager viewPager = this.f46185f;
                if (viewPager != null && i2 == viewPager.getCurrentItem()) {
                    textView.setTextColor(this.A);
                    if (this.f46205z < -13434880) {
                        textView.setTypeface(Typeface.defaultFromStyle(1));
                    }
                    textView.setTextSize(0, this.f46204y);
                }
                if (this.G != null && i2 == this.f46187h) {
                    textView.setTextColor(this.A);
                    if (this.f46205z < -13434880) {
                        textView.setTypeface(Typeface.defaultFromStyle(1));
                    }
                    textView.setTextSize(0, this.f46204y);
                }
                if (this.f46195p) {
                    if (Build.VERSION.SDK_INT >= 14) {
                        textView.setAllCaps(true);
                    } else {
                        textView.setText(textView.getText().toString().toUpperCase(this.F));
                    }
                }
            }
        }
    }

    public SlidingTabLayout6(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.J = 4;
        this.f46199t = 0;
        this.J = (int) TypedValue.applyDimension(1, 4.0f, getResources().getDisplayMetrics());
    }
}
