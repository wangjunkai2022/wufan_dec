package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2.dex */
public class LinearSnapHelper extends SnapHelper {

    /* renamed from: g  reason: collision with root package name */
    private static final float f7029g = 1.0f;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private OrientationHelper f7030e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private OrientationHelper f7031f;

    private float g(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
        int childCount = layoutManager.getChildCount();
        if (childCount == 0) {
            return 1.0f;
        }
        View view = null;
        View view2 = null;
        int i2 = Integer.MAX_VALUE;
        int i4 = Integer.MIN_VALUE;
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = layoutManager.getChildAt(i5);
            int position = layoutManager.getPosition(childAt);
            if (position != -1) {
                if (position < i2) {
                    view = childAt;
                    i2 = position;
                }
                if (position > i4) {
                    view2 = childAt;
                    i4 = position;
                }
            }
        }
        if (view == null || view2 == null) {
            return 1.0f;
        }
        int max = Math.max(orientationHelper.getDecoratedEnd(view), orientationHelper.getDecoratedEnd(view2)) - Math.min(orientationHelper.getDecoratedStart(view), orientationHelper.getDecoratedStart(view2));
        if (max == 0) {
            return 1.0f;
        }
        return (max * 1.0f) / ((i4 - i2) + 1);
    }

    private int h(@NonNull View view, OrientationHelper orientationHelper) {
        return (orientationHelper.getDecoratedStart(view) + (orientationHelper.getDecoratedMeasurement(view) / 2)) - (orientationHelper.getStartAfterPadding() + (orientationHelper.getTotalSpace() / 2));
    }

    private int i(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper, int i2, int i4) {
        int[] calculateScrollDistance = calculateScrollDistance(i2, i4);
        float g4 = g(layoutManager, orientationHelper);
        if (g4 <= 0.0f) {
            return 0;
        }
        return Math.round((Math.abs(calculateScrollDistance[0]) > Math.abs(calculateScrollDistance[1]) ? calculateScrollDistance[0] : calculateScrollDistance[1]) / g4);
    }

    @Nullable
    private View j(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
        int childCount = layoutManager.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        int startAfterPadding = orientationHelper.getStartAfterPadding() + (orientationHelper.getTotalSpace() / 2);
        int i2 = Integer.MAX_VALUE;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = layoutManager.getChildAt(i4);
            int abs = Math.abs((orientationHelper.getDecoratedStart(childAt) + (orientationHelper.getDecoratedMeasurement(childAt) / 2)) - startAfterPadding);
            if (abs < i2) {
                view = childAt;
                i2 = abs;
            }
        }
        return view;
    }

    @NonNull
    private OrientationHelper k(@NonNull RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.f7031f;
        if (orientationHelper == null || orientationHelper.f7067a != layoutManager) {
            this.f7031f = OrientationHelper.createHorizontalHelper(layoutManager);
        }
        return this.f7031f;
    }

    @NonNull
    private OrientationHelper l(@NonNull RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.f7030e;
        if (orientationHelper == null || orientationHelper.f7067a != layoutManager) {
            this.f7030e = OrientationHelper.createVerticalHelper(layoutManager);
        }
        return this.f7030e;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public int[] calculateDistanceToFinalSnap(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view) {
        int[] iArr = new int[2];
        if (layoutManager.canScrollHorizontally()) {
            iArr[0] = h(view, k(layoutManager));
        } else {
            iArr[0] = 0;
        }
        if (layoutManager.canScrollVertically()) {
            iArr[1] = h(view, l(layoutManager));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public View findSnapView(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager.canScrollVertically()) {
            return j(layoutManager, l(layoutManager));
        }
        if (layoutManager.canScrollHorizontally()) {
            return j(layoutManager, k(layoutManager));
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int i2, int i4) {
        int itemCount;
        View findSnapView;
        int position;
        int i5;
        PointF computeScrollVectorForPosition;
        int i6;
        int i7;
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) || (itemCount = layoutManager.getItemCount()) == 0 || (findSnapView = findSnapView(layoutManager)) == null || (position = layoutManager.getPosition(findSnapView)) == -1 || (computeScrollVectorForPosition = ((RecyclerView.SmoothScroller.ScrollVectorProvider) layoutManager).computeScrollVectorForPosition(itemCount - 1)) == null) {
            return -1;
        }
        if (layoutManager.canScrollHorizontally()) {
            i6 = i(layoutManager, k(layoutManager), i2, 0);
            if (computeScrollVectorForPosition.x < 0.0f) {
                i6 = -i6;
            }
        } else {
            i6 = 0;
        }
        if (layoutManager.canScrollVertically()) {
            i7 = i(layoutManager, l(layoutManager), 0, i4);
            if (computeScrollVectorForPosition.y < 0.0f) {
                i7 = -i7;
            }
        } else {
            i7 = 0;
        }
        if (layoutManager.canScrollVertically()) {
            i6 = i7;
        }
        if (i6 == 0) {
            return -1;
        }
        int i8 = position + i6;
        int i9 = i8 >= 0 ? i8 : 0;
        return i9 >= itemCount ? i5 : i9;
    }
}
