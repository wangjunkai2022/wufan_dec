package androidx.recyclerview.widget;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2.dex */
public abstract class SnapHelper extends RecyclerView.OnFlingListener {

    /* renamed from: d  reason: collision with root package name */
    static final float f7218d = 100.0f;

    /* renamed from: a  reason: collision with root package name */
    RecyclerView f7219a;

    /* renamed from: b  reason: collision with root package name */
    private Scroller f7220b;

    /* renamed from: c  reason: collision with root package name */
    private final RecyclerView.OnScrollListener f7221c = new RecyclerView.OnScrollListener() { // from class: androidx.recyclerview.widget.SnapHelper.1

        /* renamed from: a  reason: collision with root package name */
        boolean f7222a = false;

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i2) {
            super.onScrollStateChanged(recyclerView, i2);
            if (i2 == 0 && this.f7222a) {
                this.f7222a = false;
                SnapHelper.this.f();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i2, int i4) {
            if (i2 == 0 && i4 == 0) {
                return;
            }
            this.f7222a = true;
        }
    };

    private void c() {
        this.f7219a.removeOnScrollListener(this.f7221c);
        this.f7219a.setOnFlingListener(null);
    }

    private void d() throws IllegalStateException {
        if (this.f7219a.getOnFlingListener() == null) {
            this.f7219a.addOnScrollListener(this.f7221c);
            this.f7219a.setOnFlingListener(this);
            return;
        }
        throw new IllegalStateException("An instance of OnFlingListener already set.");
    }

    private boolean e(@NonNull RecyclerView.LayoutManager layoutManager, int i2, int i4) {
        RecyclerView.SmoothScroller a4;
        int findTargetSnapPosition;
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) || (a4 = a(layoutManager)) == null || (findTargetSnapPosition = findTargetSnapPosition(layoutManager, i2, i4)) == -1) {
            return false;
        }
        a4.setTargetPosition(findTargetSnapPosition);
        layoutManager.startSmoothScroll(a4);
        return true;
    }

    @Nullable
    protected RecyclerView.SmoothScroller a(@NonNull RecyclerView.LayoutManager layoutManager) {
        return b(layoutManager);
    }

    public void attachToRecyclerView(@Nullable RecyclerView recyclerView) throws IllegalStateException {
        RecyclerView recyclerView2 = this.f7219a;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            c();
        }
        this.f7219a = recyclerView;
        if (recyclerView != null) {
            d();
            this.f7220b = new Scroller(this.f7219a.getContext(), new DecelerateInterpolator());
            f();
        }
    }

    @Nullable
    @Deprecated
    protected LinearSmoothScroller b(@NonNull RecyclerView.LayoutManager layoutManager) {
        if (layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) {
            return new LinearSmoothScroller(this.f7219a.getContext()) { // from class: androidx.recyclerview.widget.SnapHelper.2
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // androidx.recyclerview.widget.LinearSmoothScroller
                public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
                    return 100.0f / displayMetrics.densityDpi;
                }

                @Override // androidx.recyclerview.widget.LinearSmoothScroller, androidx.recyclerview.widget.RecyclerView.SmoothScroller
                protected void onTargetFound(View view, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
                    SnapHelper snapHelper = SnapHelper.this;
                    RecyclerView recyclerView = snapHelper.f7219a;
                    if (recyclerView == null) {
                        return;
                    }
                    int[] calculateDistanceToFinalSnap = snapHelper.calculateDistanceToFinalSnap(recyclerView.getLayoutManager(), view);
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

    @Nullable
    public abstract int[] calculateDistanceToFinalSnap(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view);

    public int[] calculateScrollDistance(int i2, int i4) {
        this.f7220b.fling(0, 0, i2, i4, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return new int[]{this.f7220b.getFinalX(), this.f7220b.getFinalY()};
    }

    void f() {
        RecyclerView.LayoutManager layoutManager;
        View findSnapView;
        RecyclerView recyclerView = this.f7219a;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null || (findSnapView = findSnapView(layoutManager)) == null) {
            return;
        }
        int[] calculateDistanceToFinalSnap = calculateDistanceToFinalSnap(layoutManager, findSnapView);
        if (calculateDistanceToFinalSnap[0] == 0 && calculateDistanceToFinalSnap[1] == 0) {
            return;
        }
        this.f7219a.smoothScrollBy(calculateDistanceToFinalSnap[0], calculateDistanceToFinalSnap[1]);
    }

    @Nullable
    public abstract View findSnapView(RecyclerView.LayoutManager layoutManager);

    public abstract int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int i2, int i4);

    @Override // androidx.recyclerview.widget.RecyclerView.OnFlingListener
    public boolean onFling(int i2, int i4) {
        RecyclerView.LayoutManager layoutManager = this.f7219a.getLayoutManager();
        if (layoutManager == null || this.f7219a.getAdapter() == null) {
            return false;
        }
        int minFlingVelocity = this.f7219a.getMinFlingVelocity();
        return (Math.abs(i4) > minFlingVelocity || Math.abs(i2) > minFlingVelocity) && e(layoutManager, i2, i4);
    }
}
