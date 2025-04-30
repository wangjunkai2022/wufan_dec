package com.join.mgps.customview;

import android.content.Context;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes3.dex */
public class HorizontalRecyclerView extends RecyclerView {
    private LinearLayoutManager A1;
    private double B1;
    private boolean C1;
    private float D1;
    private float E1;
    private int F1;
    private int G1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a extends LinearLayoutManager {

        /* renamed from: a  reason: collision with root package name */
        public double f45649a;

        /* renamed from: com.join.mgps.customview.HorizontalRecyclerView$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class C0193a extends b {
            C0193a(Context context) {
                super(context);
            }

            @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller
            public PointF computeScrollVectorForPosition(int i2) {
                return super.computeScrollVectorForPosition(i2);
            }
        }

        a(Context context) {
            super(context);
            this.f45649a = 0.8199999928474426d;
        }

        public void a(double d4) {
            this.f45649a = d4;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public int scrollHorizontallyBy(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
            double d4 = this.f45649a;
            double d5 = i2;
            Double.isNaN(d5);
            int scrollHorizontallyBy = super.scrollHorizontallyBy((int) (d4 * d5), recycler, state);
            double d6 = this.f45649a;
            Double.isNaN(d5);
            return scrollHorizontallyBy == ((int) (d6 * d5)) ? i2 : scrollHorizontallyBy;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i2) {
            C0193a c0193a = new C0193a(recyclerView.getContext());
            c0193a.setTargetPosition(i2);
            startSmoothScroll(c0193a);
        }
    }

    /* loaded from: classes3.dex */
    public static class b extends LinearSmoothScroller {

        /* renamed from: a  reason: collision with root package name */
        private static final float f45652a = 400.0f;

        public b(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        public int calculateDtToFit(int i2, int i4, int i5, int i6, int i7) {
            if (i7 != -1 && i7 != 0) {
                if (i7 == 1) {
                    return i6 - i4;
                }
                throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
            }
            return i5 - i2;
        }

        @Override // androidx.recyclerview.widget.LinearSmoothScroller
        protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
            return f45652a / displayMetrics.densityDpi;
        }
    }

    public HorizontalRecyclerView(Context context) {
        super(context);
        this.B1 = 1.2d;
        this.C1 = false;
        R0(context);
    }

    private void R0(Context context) {
        a aVar = new a(context);
        this.A1 = aVar;
        aVar.setOrientation(0);
        setLayoutManager(this.A1);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.F1 = (int) motionEvent.getX();
            this.G1 = (int) motionEvent.getY();
        } else if (action == 2) {
            int x3 = (int) motionEvent.getX();
            int y3 = (int) motionEvent.getY();
            if (Math.abs(x3 - this.F1) > Math.abs(y3 - this.G1)) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            this.F1 = x3;
            this.G1 = y3;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public boolean fling(int i2, int i4) {
        double d4 = i2;
        double d5 = this.B1;
        Double.isNaN(d4);
        return super.fling((int) (d4 * d5), i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.D1 = motionEvent.getRawX();
            this.E1 = motionEvent.getRawY();
        } else if (action == 2) {
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            if (Math.abs(rawX - this.D1) > Math.abs(rawY - this.E1) && this.C1) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            this.D1 = motionEvent.getRawX();
            this.E1 = motionEvent.getRawY();
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void setRequestDisallowInterceptTouchEvent(boolean z3) {
        this.C1 = z3;
    }

    public HorizontalRecyclerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.B1 = 1.2d;
        this.C1 = false;
        R0(context);
    }

    public HorizontalRecyclerView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.B1 = 1.2d;
        this.C1 = false;
        R0(context);
    }
}
