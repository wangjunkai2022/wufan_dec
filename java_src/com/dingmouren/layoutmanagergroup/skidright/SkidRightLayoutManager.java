package com.dingmouren.layoutmanagergroup.skidright;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import y.a;
/* loaded from: classes2.dex */
public class SkidRightLayoutManager extends RecyclerView.LayoutManager {

    /* renamed from: b  reason: collision with root package name */
    private int f11209b;

    /* renamed from: c  reason: collision with root package name */
    private int f11210c;

    /* renamed from: e  reason: collision with root package name */
    private final float f11212e;

    /* renamed from: f  reason: collision with root package name */
    private final float f11213f;

    /* renamed from: g  reason: collision with root package name */
    private int f11214g;

    /* renamed from: a  reason: collision with root package name */
    private boolean f11208a = false;

    /* renamed from: d  reason: collision with root package name */
    private int f11211d = Integer.MAX_VALUE;

    /* renamed from: i  reason: collision with root package name */
    public boolean f11216i = false;

    /* renamed from: h  reason: collision with root package name */
    private final a f11215h = new a();

    public SkidRightLayoutManager(float f4, float f5) {
        this.f11212e = f4;
        this.f11213f = f5;
    }

    private void e(View view, x.a aVar) {
        addView(view);
        j(view);
        int c4 = (int) ((this.f11209b * (1.0f - aVar.c())) / 2.0f);
        int paddingTop = getPaddingTop();
        layoutDecoratedWithMargins(view, aVar.d() - c4, paddingTop, (aVar.d() + this.f11209b) - c4, paddingTop + this.f11210c);
        ViewCompat.setScaleX(view, aVar.c());
        ViewCompat.setScaleY(view, aVar.c());
    }

    private int i(int i2) {
        if (this.f11216i) {
            return Math.max(Math.min(0, i2), (-(this.f11214g - 1)) * this.f11209b);
        }
        return Math.min(Math.max(this.f11209b, i2), this.f11214g * this.f11209b);
    }

    private void j(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        view.measure(View.MeasureSpec.makeMeasureSpec((this.f11209b - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec((this.f11210c - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, 1073741824));
    }

    private float k() {
        float f4;
        float f5;
        int i2;
        if (this.f11216i) {
            int i4 = this.f11211d;
            int i5 = this.f11214g;
            f4 = (i4 + (i5 * i2)) * 1.0f;
            f5 = this.f11209b;
        } else {
            f4 = this.f11211d * 1.0f;
            f5 = this.f11209b;
        }
        return f4 / f5;
    }

    public int a(int i2) {
        if (this.f11216i) {
            return (this.f11209b * i2) + this.f11211d;
        }
        return (this.f11209b * (c(i2) + 1)) - this.f11211d;
    }

    public int b(int i2) {
        return (this.f11214g - 1) - i2;
    }

    public int c(int i2) {
        return (this.f11214g - 1) - i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return true;
    }

    public void d(RecyclerView.Recycler recycler) {
        int i2;
        int i4;
        int i5;
        int i6;
        int floor = (int) Math.floor(k());
        int g4 = g();
        boolean z3 = this.f11216i;
        if (z3) {
            int i7 = this.f11209b;
            i2 = (((this.f11214g - 1) * i7) + this.f11211d) % i7;
        } else {
            i2 = this.f11211d % this.f11209b;
        }
        int i8 = this.f11209b;
        float f4 = (i2 * 1.0f) / i8;
        int i9 = z3 ? 0 : g4 - i8;
        if (!z3) {
            i8 = g() - this.f11209b;
        }
        ArrayList arrayList = new ArrayList();
        int i10 = floor - 1;
        int i11 = 1;
        while (true) {
            if (i10 < 0) {
                i4 = floor;
                i5 = i2;
                break;
            }
            double d4 = i8 / 2;
            int i12 = i8;
            int i13 = i9;
            double pow = Math.pow(this.f11213f, i11);
            Double.isNaN(d4);
            double d5 = d4 * pow;
            double d6 = i13;
            double d7 = this.f11216i ? -f4 : f4;
            Double.isNaN(d7);
            Double.isNaN(d6);
            int i14 = (int) (d6 - (d7 * d5));
            i4 = floor;
            i5 = i2;
            int i15 = i10;
            double d8 = i11 - 1;
            double pow2 = Math.pow(this.f11213f, d8);
            double d9 = 1.0f - ((1.0f - this.f11213f) * f4);
            Double.isNaN(d9);
            x.a aVar = new x.a(i14, (float) (pow2 * d9), f4, (i14 * 1.0f) / g4);
            arrayList.add(0, aVar);
            boolean z4 = this.f11216i;
            if (!z4) {
                d5 = -d5;
            }
            Double.isNaN(d6);
            i9 = (int) (d6 + d5);
            if (!z4 ? i9 > 0 : i9 <= g()) {
                double d10 = i9;
                Double.isNaN(d10);
                aVar.i((int) (d10 - d5));
                aVar.g(0.0f);
                aVar.f(aVar.d() / g4);
                aVar.h((float) Math.pow(this.f11213f, d8));
                break;
            }
            i10 = i15 - 1;
            i11++;
            floor = i4;
            i8 = i12;
            i2 = i5;
        }
        if (i4 < this.f11214g) {
            int i16 = this.f11216i ? i5 - this.f11209b : g4 - i5;
            arrayList.add(new x.a(i16, 1.0f, f4, (i16 * 1.0f) / g4).e());
            i6 = i4;
        } else {
            i6 = i4 - 1;
        }
        int size = arrayList.size();
        int i17 = i6 - (size - 1);
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            int c4 = c(getPosition(childAt));
            if (c4 > i6 || c4 < i17) {
                removeAndRecycleView(childAt, recycler);
            }
        }
        detachAndScrapAttachedViews(recycler);
        for (int i18 = 0; i18 < size; i18++) {
            e(recycler.getViewForPosition(b(i17 + i18)), (x.a) arrayList.get(i18));
        }
    }

    public int f(int i2, float f4) {
        if (!this.f11208a || this.f11211d % this.f11209b == 0) {
            return -1;
        }
        float k4 = k();
        return b(((int) (i2 > 0 ? k4 + f4 : k4 + (1.0f - f4))) - 1);
    }

    public int g() {
        return (getWidth() - getPaddingLeft()) - getPaddingRight();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    public int h() {
        return (getHeight() - getPaddingTop()) - getPaddingBottom();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.f11215h.attachToRecyclerView(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (state.getItemCount() == 0 || state.isPreLayout()) {
            return;
        }
        removeAndRecycleAllViews(recycler);
        if (!this.f11208a) {
            int h4 = h();
            this.f11210c = h4;
            this.f11209b = (int) (h4 / this.f11212e);
            this.f11208a = true;
        }
        this.f11214g = getItemCount();
        this.f11211d = i(this.f11211d);
        d(recycler);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.f11216i) {
            i2 = -i2;
        }
        int i4 = this.f11211d + i2;
        this.f11211d = i(i4);
        d(recycler);
        return (this.f11211d - i4) + i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i2) {
        if (i2 <= 0 || i2 >= this.f11214g) {
            return;
        }
        this.f11211d = this.f11209b * (c(i2) + 1);
        requestLayout();
    }
}
