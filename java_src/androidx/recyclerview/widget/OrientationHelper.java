package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2.dex */
public abstract class OrientationHelper {
    public static final int HORIZONTAL = 0;
    public static final int VERTICAL = 1;

    /* renamed from: d  reason: collision with root package name */
    private static final int f7066d = Integer.MIN_VALUE;

    /* renamed from: a  reason: collision with root package name */
    protected final RecyclerView.LayoutManager f7067a;

    /* renamed from: b  reason: collision with root package name */
    private int f7068b;

    /* renamed from: c  reason: collision with root package name */
    final Rect f7069c;

    public static OrientationHelper createHorizontalHelper(RecyclerView.LayoutManager layoutManager) {
        return new OrientationHelper(layoutManager) { // from class: androidx.recyclerview.widget.OrientationHelper.1
            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getDecoratedEnd(View view) {
                return this.f7067a.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).rightMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getDecoratedMeasurement(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return this.f7067a.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getDecoratedMeasurementInOther(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return this.f7067a.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getDecoratedStart(View view) {
                return this.f7067a.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).leftMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getEnd() {
                return this.f7067a.getWidth();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getEndAfterPadding() {
                return this.f7067a.getWidth() - this.f7067a.getPaddingRight();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getEndPadding() {
                return this.f7067a.getPaddingRight();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getMode() {
                return this.f7067a.getWidthMode();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getModeInOther() {
                return this.f7067a.getHeightMode();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getStartAfterPadding() {
                return this.f7067a.getPaddingLeft();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getTotalSpace() {
                return (this.f7067a.getWidth() - this.f7067a.getPaddingLeft()) - this.f7067a.getPaddingRight();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getTransformedEndWithDecoration(View view) {
                this.f7067a.getTransformedBoundingBox(view, true, this.f7069c);
                return this.f7069c.right;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getTransformedStartWithDecoration(View view) {
                this.f7067a.getTransformedBoundingBox(view, true, this.f7069c);
                return this.f7069c.left;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public void offsetChild(View view, int i2) {
                view.offsetLeftAndRight(i2);
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public void offsetChildren(int i2) {
                this.f7067a.offsetChildrenHorizontal(i2);
            }
        };
    }

    public static OrientationHelper createOrientationHelper(RecyclerView.LayoutManager layoutManager, int i2) {
        if (i2 != 0) {
            if (i2 == 1) {
                return createVerticalHelper(layoutManager);
            }
            throw new IllegalArgumentException("invalid orientation");
        }
        return createHorizontalHelper(layoutManager);
    }

    public static OrientationHelper createVerticalHelper(RecyclerView.LayoutManager layoutManager) {
        return new OrientationHelper(layoutManager) { // from class: androidx.recyclerview.widget.OrientationHelper.2
            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getDecoratedEnd(View view) {
                return this.f7067a.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).bottomMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getDecoratedMeasurement(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return this.f7067a.getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getDecoratedMeasurementInOther(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return this.f7067a.getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getDecoratedStart(View view) {
                return this.f7067a.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).topMargin;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getEnd() {
                return this.f7067a.getHeight();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getEndAfterPadding() {
                return this.f7067a.getHeight() - this.f7067a.getPaddingBottom();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getEndPadding() {
                return this.f7067a.getPaddingBottom();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getMode() {
                return this.f7067a.getHeightMode();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getModeInOther() {
                return this.f7067a.getWidthMode();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getStartAfterPadding() {
                return this.f7067a.getPaddingTop();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getTotalSpace() {
                return (this.f7067a.getHeight() - this.f7067a.getPaddingTop()) - this.f7067a.getPaddingBottom();
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getTransformedEndWithDecoration(View view) {
                this.f7067a.getTransformedBoundingBox(view, true, this.f7069c);
                return this.f7069c.bottom;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public int getTransformedStartWithDecoration(View view) {
                this.f7067a.getTransformedBoundingBox(view, true, this.f7069c);
                return this.f7069c.top;
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public void offsetChild(View view, int i2) {
                view.offsetTopAndBottom(i2);
            }

            @Override // androidx.recyclerview.widget.OrientationHelper
            public void offsetChildren(int i2) {
                this.f7067a.offsetChildrenVertical(i2);
            }
        };
    }

    public abstract int getDecoratedEnd(View view);

    public abstract int getDecoratedMeasurement(View view);

    public abstract int getDecoratedMeasurementInOther(View view);

    public abstract int getDecoratedStart(View view);

    public abstract int getEnd();

    public abstract int getEndAfterPadding();

    public abstract int getEndPadding();

    public RecyclerView.LayoutManager getLayoutManager() {
        return this.f7067a;
    }

    public abstract int getMode();

    public abstract int getModeInOther();

    public abstract int getStartAfterPadding();

    public abstract int getTotalSpace();

    public int getTotalSpaceChange() {
        if (Integer.MIN_VALUE == this.f7068b) {
            return 0;
        }
        return getTotalSpace() - this.f7068b;
    }

    public abstract int getTransformedEndWithDecoration(View view);

    public abstract int getTransformedStartWithDecoration(View view);

    public abstract void offsetChild(View view, int i2);

    public abstract void offsetChildren(int i2);

    public void onLayoutComplete() {
        this.f7068b = getTotalSpace();
    }

    private OrientationHelper(RecyclerView.LayoutManager layoutManager) {
        this.f7068b = Integer.MIN_VALUE;
        this.f7069c = new Rect();
        this.f7067a = layoutManager;
    }
}
