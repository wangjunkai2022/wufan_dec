package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2.dex */
public class PagerSnapHelper extends SnapHelper {

    /* renamed from: g  reason: collision with root package name */
    private static final int f7070g = 100;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private OrientationHelper f7071e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private OrientationHelper f7072f;

    private int g(@NonNull View view, OrientationHelper orientationHelper) {
        return (orientationHelper.getDecoratedStart(view) + (orientationHelper.getDecoratedMeasurement(view) / 2)) - (orientationHelper.getStartAfterPadding() + (orientationHelper.getTotalSpace() / 2));
    }

    @Nullable
    private View h(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
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
    private OrientationHelper i(@NonNull RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.f7072f;
        if (orientationHelper == null || orientationHelper.f7067a != layoutManager) {
            this.f7072f = OrientationHelper.createHorizontalHelper(layoutManager);
        }
        return this.f7072f;
    }

    @Nullable
    private OrientationHelper j(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager.canScrollVertically()) {
            return k(layoutManager);
        }
        if (layoutManager.canScrollHorizontally()) {
            return i(layoutManager);
        }
        return null;
    }

    @NonNull
    private OrientationHelper k(@NonNull RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.f7071e;
        if (orientationHelper == null || orientationHelper.f7067a != layoutManager) {
            this.f7071e = OrientationHelper.createVerticalHelper(layoutManager);
        }
        return this.f7071e;
    }

    private boolean l(RecyclerView.LayoutManager layoutManager, int i2, int i4) {
        return layoutManager.canScrollHorizontally() ? i2 > 0 : i4 > 0;
    }

    private boolean m(RecyclerView.LayoutManager layoutManager) {
        PointF computeScrollVectorForPosition;
        int itemCount = layoutManager.getItemCount();
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) || (computeScrollVectorForPosition = ((RecyclerView.SmoothScroller.ScrollVectorProvider) layoutManager).computeScrollVectorForPosition(itemCount - 1)) == null) {
            return false;
        }
        return computeScrollVectorForPosition.x < 0.0f || computeScrollVectorForPosition.y < 0.0f;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    protected RecyclerView.SmoothScroller a(@NonNull RecyclerView.LayoutManager layoutManager) {
        if (layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) {
            return new LinearSmoothScroller(this.f7219a.getContext()) { // from class: androidx.recyclerview.widget.PagerSnapHelper.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // androidx.recyclerview.widget.LinearSmoothScroller
                public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
                    return 100.0f / displayMetrics.densityDpi;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // androidx.recyclerview.widget.LinearSmoothScroller
                public int calculateTimeForScrolling(int i2) {
                    return Math.min(100, super.calculateTimeForScrolling(i2));
                }

                @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
                protected void onTargetFound(View view, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
                    PagerSnapHelper pagerSnapHelper = PagerSnapHelper.this;
                    int[] calculateDistanceToFinalSnap = pagerSnapHelper.calculateDistanceToFinalSnap(pagerSnapHelper.f7219a.getLayoutManager(), view);
                    int i2 = calculateDistanceToFinalSnap[0];
                    int i4 = calculateDistanceToFinalSnap[1];
                    int calculateTimeForDeceleration = calculateTimeForDeceleration(Math.max(Math.abs(i2), Math.abs(i4)));
                    if (calculateTimeForDeceleration > 0) {
                        action.update(i2, i4, calculateTimeForDeceleration, this.mDecelerateInterpolator);
                    }
                }
            };
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    public int[] calculateDistanceToFinalSnap(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view) {
        int[] iArr = new int[2];
        if (layoutManager.canScrollHorizontally()) {
            iArr[0] = g(view, i(layoutManager));
        } else {
            iArr[0] = 0;
        }
        if (layoutManager.canScrollVertically()) {
            iArr[1] = g(view, k(layoutManager));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    @Nullable
    public View findSnapView(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager.canScrollVertically()) {
            return h(layoutManager, k(layoutManager));
        }
        if (layoutManager.canScrollHorizontally()) {
            return h(layoutManager, i(layoutManager));
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int i2, int i4) {
        OrientationHelper j4;
        int itemCount = layoutManager.getItemCount();
        if (itemCount == 0 || (j4 = j(layoutManager)) == null) {
            return -1;
        }
        int i5 = Integer.MIN_VALUE;
        int i6 = Integer.MAX_VALUE;
        int childCount = layoutManager.getChildCount();
        View view = null;
        View view2 = null;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = layoutManager.getChildAt(i7);
            if (childAt != null) {
                int g4 = g(childAt, j4);
                if (g4 <= 0 && g4 > i5) {
                    view2 = childAt;
                    i5 = g4;
                }
                if (g4 >= 0 && g4 < i6) {
                    view = childAt;
                    i6 = g4;
                }
            }
        }
        boolean l4 = l(layoutManager, i2, i4);
        if (!l4 || view == null) {
            if (l4 || view2 == null) {
                if (l4) {
                    view = view2;
                }
                if (view == null) {
                    return -1;
                }
                int position = layoutManager.getPosition(view) + (m(layoutManager) == l4 ? -1 : 1);
                if (position < 0 || position >= itemCount) {
                    return -1;
                }
                return position;
            }
            return layoutManager.getPosition(view2);
        }
        return layoutManager.getPosition(view);
    }
}
