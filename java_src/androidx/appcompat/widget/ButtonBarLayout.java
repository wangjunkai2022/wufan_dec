package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ButtonBarLayout extends LinearLayout {

    /* renamed from: d  reason: collision with root package name */
    private static final int f1140d = 16;

    /* renamed from: a  reason: collision with root package name */
    private boolean f1141a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f1142b;

    /* renamed from: c  reason: collision with root package name */
    private int f1143c;

    public ButtonBarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1143c = -1;
        int[] iArr = R.styleable.ButtonBarLayout;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, obtainStyledAttributes, 0, 0);
        this.f1141a = obtainStyledAttributes.getBoolean(R.styleable.ButtonBarLayout_allowStacking, true);
        obtainStyledAttributes.recycle();
        if (getOrientation() == 1) {
            setStacked(this.f1141a);
        }
    }

    private int a(int i2) {
        int childCount = getChildCount();
        while (i2 < childCount) {
            if (getChildAt(i2).getVisibility() == 0) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    private boolean b() {
        return this.f1142b;
    }

    private void setStacked(boolean z3) {
        if (this.f1142b != z3) {
            if (!z3 || this.f1141a) {
                this.f1142b = z3;
                setOrientation(z3 ? 1 : 0);
                setGravity(z3 ? GravityCompat.END : 80);
                View findViewById = findViewById(R.id.spacer);
                if (findViewById != null) {
                    findViewById.setVisibility(z3 ? 8 : 4);
                }
                for (int childCount = getChildCount() - 2; childCount >= 0; childCount--) {
                    bringChildToFront(getChildAt(childCount));
                }
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i2, int i4) {
        int i5;
        boolean z3;
        int size = View.MeasureSpec.getSize(i2);
        int i6 = 0;
        if (this.f1141a) {
            if (size > this.f1143c && b()) {
                setStacked(false);
            }
            this.f1143c = size;
        }
        if (b() || View.MeasureSpec.getMode(i2) != 1073741824) {
            i5 = i2;
            z3 = false;
        } else {
            i5 = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
            z3 = true;
        }
        super.onMeasure(i5, i4);
        if (this.f1141a && !b()) {
            if ((getMeasuredWidthAndState() & (-16777216)) == 16777216) {
                setStacked(true);
                z3 = true;
            }
        }
        if (z3) {
            super.onMeasure(i2, i4);
        }
        int a4 = a(0);
        if (a4 >= 0) {
            View childAt = getChildAt(a4);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            int paddingTop = getPaddingTop() + childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin + 0;
            if (b()) {
                int a5 = a(a4 + 1);
                if (a5 >= 0) {
                    paddingTop += getChildAt(a5).getPaddingTop() + ((int) (getResources().getDisplayMetrics().density * 16.0f));
                }
                i6 = paddingTop;
            } else {
                i6 = paddingTop + getPaddingBottom();
            }
        }
        if (ViewCompat.getMinimumHeight(this) != i6) {
            setMinimumHeight(i6);
            if (i4 == 0) {
                super.onMeasure(i2, i4);
            }
        }
    }

    public void setAllowStacking(boolean z3) {
        if (this.f1141a != z3) {
            this.f1141a = z3;
            if (!z3 && b()) {
                setStacked(false);
            }
            requestLayout();
        }
    }
}
