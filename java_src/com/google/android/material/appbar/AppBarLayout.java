package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R;
import com.google.android.material.animation.a;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.i;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class AppBarLayout extends LinearLayout implements CoordinatorLayout.AttachedBehavior {
    private static final int DEF_STYLE_RES = R.style.Widget_Design_AppBarLayout;
    private static final int INVALID_SCROLL_RANGE = -1;
    static final int PENDING_ACTION_ANIMATE_ENABLED = 4;
    static final int PENDING_ACTION_COLLAPSED = 2;
    static final int PENDING_ACTION_EXPANDED = 1;
    static final int PENDING_ACTION_FORCE = 8;
    static final int PENDING_ACTION_NONE = 0;
    private Behavior behavior;
    private int currentOffset;
    private int downPreScrollRange;
    private int downScrollRange;
    @Nullable
    private ValueAnimator elevationOverlayAnimator;
    private boolean haveChildWithInterpolator;
    @Nullable
    private WindowInsetsCompat lastInsets;
    private boolean liftOnScroll;
    private final List<LiftOnScrollListener> liftOnScrollListeners;
    @Nullable
    private WeakReference<View> liftOnScrollTargetView;
    @IdRes
    private int liftOnScrollTargetViewId;
    private boolean liftable;
    private boolean liftableOverride;
    private boolean lifted;
    private List<BaseOnOffsetChangedListener> listeners;
    private int pendingAction;
    @Nullable
    private Drawable statusBarForeground;
    private int[] tmpStatesArray;
    private int totalScrollRange;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static class BaseBehavior<T extends AppBarLayout> extends HeaderBehavior<T> {
        private static final int MAX_OFFSET_ANIMATION_DURATION = 600;
        private boolean coordinatorLayoutA11yScrollable;
        @Nullable
        private WeakReference<View> lastNestedScrollingChildRef;
        private int lastStartedType;
        private ValueAnimator offsetAnimator;
        private int offsetDelta;
        private BaseDragCallback onDragCallback;
        private SavedState savedState;

        /* loaded from: classes2.dex */
        public static abstract class BaseDragCallback<T extends AppBarLayout> {
            public abstract boolean canDrag(@NonNull T t3);
        }

        public BaseBehavior() {
        }

        private boolean addAccessibilityScrollActions(final CoordinatorLayout coordinatorLayout, @NonNull final T t3, @NonNull final View view) {
            boolean z3 = false;
            if (getTopBottomOffsetForScrollingSibling() != (-t3.getTotalScrollRange())) {
                addActionToExpand(coordinatorLayout, t3, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD, false);
                z3 = true;
            }
            if (getTopBottomOffsetForScrollingSibling() != 0) {
                if (view.canScrollVertically(-1)) {
                    final int i2 = -t3.getDownNestedPreScrollRange();
                    if (i2 != 0) {
                        ViewCompat.replaceAccessibilityAction(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD, null, new AccessibilityViewCommand() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.3
                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                            public boolean perform(@NonNull View view2, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
                                BaseBehavior.this.onNestedPreScroll(coordinatorLayout, (CoordinatorLayout) t3, view, 0, i2, new int[]{0, 0}, 1);
                                return true;
                            }
                        });
                        return true;
                    }
                } else {
                    addActionToExpand(coordinatorLayout, t3, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD, true);
                    return true;
                }
            }
            return z3;
        }

        private void addActionToExpand(CoordinatorLayout coordinatorLayout, @NonNull final T t3, @NonNull AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, final boolean z3) {
            ViewCompat.replaceAccessibilityAction(coordinatorLayout, accessibilityActionCompat, null, new AccessibilityViewCommand() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.4
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
                    t3.setExpanded(z3);
                    return true;
                }
            });
        }

        private void animateOffsetTo(CoordinatorLayout coordinatorLayout, @NonNull T t3, int i2, float f4) {
            int height;
            int abs = Math.abs(getTopBottomOffsetForScrollingSibling() - i2);
            float abs2 = Math.abs(f4);
            if (abs2 > 0.0f) {
                height = Math.round((abs / abs2) * 1000.0f) * 3;
            } else {
                height = (int) (((abs / t3.getHeight()) + 1.0f) * 150.0f);
            }
            animateOffsetWithDuration(coordinatorLayout, t3, i2, height);
        }

        private void animateOffsetWithDuration(final CoordinatorLayout coordinatorLayout, final T t3, int i2, int i4) {
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            if (topBottomOffsetForScrollingSibling == i2) {
                ValueAnimator valueAnimator = this.offsetAnimator;
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.offsetAnimator.cancel();
                return;
            }
            ValueAnimator valueAnimator2 = this.offsetAnimator;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.offsetAnimator = valueAnimator3;
                valueAnimator3.setInterpolator(a.f14008e);
                this.offsetAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator4) {
                        BaseBehavior.this.setHeaderTopBottomOffset(coordinatorLayout, t3, ((Integer) valueAnimator4.getAnimatedValue()).intValue());
                    }
                });
            } else {
                valueAnimator2.cancel();
            }
            this.offsetAnimator.setDuration(Math.min(i4, 600));
            this.offsetAnimator.setIntValues(topBottomOffsetForScrollingSibling, i2);
            this.offsetAnimator.start();
        }

        private int calculateSnapOffset(int i2, int i4, int i5) {
            return i2 < (i4 + i5) / 2 ? i4 : i5;
        }

        private boolean canScrollChildren(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t3, @NonNull View view) {
            return t3.hasScrollableChildren() && coordinatorLayout.getHeight() - view.getHeight() <= t3.getHeight();
        }

        private static boolean checkFlag(int i2, int i4) {
            return (i2 & i4) == i4;
        }

        private boolean childrenHaveScrollFlags(AppBarLayout appBarLayout) {
            int childCount = appBarLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                if (((LayoutParams) appBarLayout.getChildAt(i2).getLayoutParams()).scrollFlags != 0) {
                    return true;
                }
            }
            return false;
        }

        @Nullable
        private View findFirstScrollingChild(@NonNull CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = coordinatorLayout.getChildAt(i2);
                if ((childAt instanceof NestedScrollingChild) || (childAt instanceof ListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        @Nullable
        private static View getAppBarChildOnOffset(@NonNull AppBarLayout appBarLayout, int i2) {
            int abs = Math.abs(i2);
            int childCount = appBarLayout.getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = appBarLayout.getChildAt(i4);
                if (abs >= childAt.getTop() && abs <= childAt.getBottom()) {
                    return childAt;
                }
            }
            return null;
        }

        private int getChildIndexOnOffset(@NonNull T t3, int i2) {
            int childCount = t3.getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = t3.getChildAt(i4);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (checkFlag(layoutParams.getScrollFlags(), 32)) {
                    top -= ((LinearLayout.LayoutParams) layoutParams).topMargin;
                    bottom += ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                }
                int i5 = -i2;
                if (top <= i5 && bottom >= i5) {
                    return i4;
                }
            }
            return -1;
        }

        @Nullable
        private View getChildWithScrollingBehavior(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = coordinatorLayout.getChildAt(i2);
                if (((CoordinatorLayout.LayoutParams) childAt.getLayoutParams()).getBehavior() instanceof ScrollingViewBehavior) {
                    return childAt;
                }
            }
            return null;
        }

        private int interpolateOffset(@NonNull T t3, int i2) {
            int abs = Math.abs(i2);
            int childCount = t3.getChildCount();
            int i4 = 0;
            int i5 = 0;
            while (true) {
                if (i5 >= childCount) {
                    break;
                }
                View childAt = t3.getChildAt(i5);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                Interpolator scrollInterpolator = layoutParams.getScrollInterpolator();
                if (abs < childAt.getTop() || abs > childAt.getBottom()) {
                    i5++;
                } else if (scrollInterpolator != null) {
                    int scrollFlags = layoutParams.getScrollFlags();
                    if ((scrollFlags & 1) != 0) {
                        i4 = 0 + childAt.getHeight() + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                        if ((scrollFlags & 2) != 0) {
                            i4 -= ViewCompat.getMinimumHeight(childAt);
                        }
                    }
                    if (ViewCompat.getFitsSystemWindows(childAt)) {
                        i4 -= t3.getTopInset();
                    }
                    if (i4 > 0) {
                        float f4 = i4;
                        return Integer.signum(i2) * (childAt.getTop() + Math.round(f4 * scrollInterpolator.getInterpolation((abs - childAt.getTop()) / f4)));
                    }
                }
            }
            return i2;
        }

        private boolean shouldJumpElevationState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t3) {
            List<View> dependents = coordinatorLayout.getDependents(t3);
            int size = dependents.size();
            for (int i2 = 0; i2 < size; i2++) {
                CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) dependents.get(i2).getLayoutParams()).getBehavior();
                if (behavior instanceof ScrollingViewBehavior) {
                    return ((ScrollingViewBehavior) behavior).getOverlayTop() != 0;
                }
            }
            return false;
        }

        private void snapToChildIfNeeded(CoordinatorLayout coordinatorLayout, @NonNull T t3) {
            int topInset = t3.getTopInset() + t3.getPaddingTop();
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling() - topInset;
            int childIndexOnOffset = getChildIndexOnOffset(t3, topBottomOffsetForScrollingSibling);
            if (childIndexOnOffset >= 0) {
                View childAt = t3.getChildAt(childIndexOnOffset);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int scrollFlags = layoutParams.getScrollFlags();
                if ((scrollFlags & 17) == 17) {
                    int i2 = -childAt.getTop();
                    int i4 = -childAt.getBottom();
                    if (childIndexOnOffset == 0 && ViewCompat.getFitsSystemWindows(t3) && ViewCompat.getFitsSystemWindows(childAt)) {
                        i2 -= t3.getTopInset();
                    }
                    if (checkFlag(scrollFlags, 2)) {
                        i4 += ViewCompat.getMinimumHeight(childAt);
                    } else if (checkFlag(scrollFlags, 5)) {
                        int minimumHeight = ViewCompat.getMinimumHeight(childAt) + i4;
                        if (topBottomOffsetForScrollingSibling < minimumHeight) {
                            i2 = minimumHeight;
                        } else {
                            i4 = minimumHeight;
                        }
                    }
                    if (checkFlag(scrollFlags, 32)) {
                        i2 += ((LinearLayout.LayoutParams) layoutParams).topMargin;
                        i4 -= ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                    }
                    animateOffsetTo(coordinatorLayout, t3, MathUtils.clamp(calculateSnapOffset(topBottomOffsetForScrollingSibling, i4, i2) + topInset, -t3.getTotalScrollRange(), 0), 0.0f);
                }
            }
        }

        private void updateAccessibilityActions(CoordinatorLayout coordinatorLayout, @NonNull T t3) {
            View childWithScrollingBehavior;
            ViewCompat.removeAccessibilityAction(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD.getId());
            ViewCompat.removeAccessibilityAction(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD.getId());
            if (t3.getTotalScrollRange() == 0 || (childWithScrollingBehavior = getChildWithScrollingBehavior(coordinatorLayout)) == null || !childrenHaveScrollFlags(t3)) {
                return;
            }
            if (!ViewCompat.hasAccessibilityDelegate(coordinatorLayout)) {
                ViewCompat.setAccessibilityDelegate(coordinatorLayout, new AccessibilityDelegateCompat() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.2
                    @Override // androidx.core.view.AccessibilityDelegateCompat
                    public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                        accessibilityNodeInfoCompat.setScrollable(BaseBehavior.this.coordinatorLayoutA11yScrollable);
                        accessibilityNodeInfoCompat.setClassName(ScrollView.class.getName());
                    }
                });
            }
            this.coordinatorLayoutA11yScrollable = addAccessibilityScrollActions(coordinatorLayout, t3, childWithScrollingBehavior);
        }

        private void updateAppBarLayoutDrawableState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t3, int i2, int i4, boolean z3) {
            View appBarChildOnOffset = getAppBarChildOnOffset(t3, i2);
            boolean z4 = false;
            if (appBarChildOnOffset != null) {
                int scrollFlags = ((LayoutParams) appBarChildOnOffset.getLayoutParams()).getScrollFlags();
                if ((scrollFlags & 1) != 0) {
                    int minimumHeight = ViewCompat.getMinimumHeight(appBarChildOnOffset);
                    if (i4 <= 0 || (scrollFlags & 12) == 0 ? !((scrollFlags & 2) == 0 || (-i2) < (appBarChildOnOffset.getBottom() - minimumHeight) - t3.getTopInset()) : (-i2) >= (appBarChildOnOffset.getBottom() - minimumHeight) - t3.getTopInset()) {
                        z4 = true;
                    }
                }
            }
            if (t3.isLiftOnScroll()) {
                z4 = t3.shouldLift(findFirstScrollingChild(coordinatorLayout));
            }
            boolean liftedState = t3.setLiftedState(z4);
            if (z3 || (liftedState && shouldJumpElevationState(coordinatorLayout, t3))) {
                t3.jumpDrawablesToCurrentState();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* bridge */ /* synthetic */ boolean canDragView(View view) {
            return canDragView((BaseBehavior<T>) ((AppBarLayout) view));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* bridge */ /* synthetic */ int getMaxDragOffset(@NonNull View view) {
            return getMaxDragOffset((BaseBehavior<T>) ((AppBarLayout) view));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* bridge */ /* synthetic */ int getScrollRangeForDragFling(@NonNull View view) {
            return getScrollRangeForDragFling((BaseBehavior<T>) ((AppBarLayout) view));
        }

        @Override // com.google.android.material.appbar.HeaderBehavior
        int getTopBottomOffsetForScrollingSibling() {
            return getTopAndBottomOffset() + this.offsetDelta;
        }

        @VisibleForTesting
        boolean isOffsetAnimatorRunning() {
            ValueAnimator valueAnimator = this.offsetAnimator;
            return valueAnimator != null && valueAnimator.isRunning();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* bridge */ /* synthetic */ void onFlingFinished(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view) {
            onFlingFinished(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.ViewOffsetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i2) {
            return onLayoutChild(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), i2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i2, int i4, int i5, int i6) {
            return onMeasureChild(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), i2, i4, i5, i6);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ void onNestedPreScroll(CoordinatorLayout coordinatorLayout, @NonNull View view, View view2, int i2, int i4, int[] iArr, int i5) {
            onNestedPreScroll(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, i2, i4, iArr, i5);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull View view, View view2, int i2, int i4, int i5, int i6, int i7, int[] iArr) {
            onNestedScroll(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, i2, i4, i5, i6, i7, iArr);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, Parcelable parcelable) {
            onRestoreInstanceState(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), parcelable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view) {
            return onSaveInstanceState(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2, View view3, int i2, int i4) {
            return onStartNestedScroll(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, view3, i2, i4);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ void onStopNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull View view, View view2, int i2) {
            onStopNestedScroll(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, i2);
        }

        void restoreScrollState(@Nullable SavedState savedState, boolean z3) {
            if (this.savedState == null || z3) {
                this.savedState = savedState;
            }
        }

        @Nullable
        SavedState saveScrollState(@Nullable Parcelable parcelable, @NonNull T t3) {
            int topAndBottomOffset = getTopAndBottomOffset();
            int childCount = t3.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = t3.getChildAt(i2);
                int bottom = childAt.getBottom() + topAndBottomOffset;
                if (childAt.getTop() + topAndBottomOffset <= 0 && bottom >= 0) {
                    if (parcelable == null) {
                        parcelable = AbsSavedState.EMPTY_STATE;
                    }
                    SavedState savedState = new SavedState(parcelable);
                    boolean z3 = topAndBottomOffset == 0;
                    savedState.fullyExpanded = z3;
                    savedState.fullyScrolled = !z3 && (-topAndBottomOffset) >= t3.getTotalScrollRange();
                    savedState.firstVisibleChildIndex = i2;
                    savedState.firstVisibleChildAtMinimumHeight = bottom == ViewCompat.getMinimumHeight(childAt) + t3.getTopInset();
                    savedState.firstVisibleChildPercentageShown = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return null;
        }

        public void setDragCallback(@Nullable BaseDragCallback baseDragCallback) {
            this.onDragCallback = baseDragCallback;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* bridge */ /* synthetic */ int setHeaderTopBottomOffset(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i2, int i4, int i5) {
            return setHeaderTopBottomOffset(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), i2, i4, i5);
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        boolean canDragView(T t3) {
            BaseDragCallback baseDragCallback = this.onDragCallback;
            if (baseDragCallback != null) {
                return baseDragCallback.canDrag(t3);
            }
            WeakReference<View> weakReference = this.lastNestedScrollingChildRef;
            if (weakReference != null) {
                View view = weakReference.get();
                return (view == null || !view.isShown() || view.canScrollVertically(-1)) ? false : true;
            }
            return true;
        }

        int getMaxDragOffset(@NonNull T t3) {
            return -t3.getDownNestedScrollRange();
        }

        int getScrollRangeForDragFling(@NonNull T t3) {
            return t3.getTotalScrollRange();
        }

        void onFlingFinished(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t3) {
            snapToChildIfNeeded(coordinatorLayout, t3);
            if (t3.isLiftOnScroll()) {
                t3.setLiftedState(t3.shouldLift(findFirstScrollingChild(coordinatorLayout)));
            }
        }

        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t3, int i2) {
            int round;
            boolean onLayoutChild = super.onLayoutChild(coordinatorLayout, (CoordinatorLayout) t3, i2);
            int pendingAction = t3.getPendingAction();
            SavedState savedState = this.savedState;
            if (savedState == null || (pendingAction & 8) != 0) {
                if (pendingAction != 0) {
                    boolean z3 = (pendingAction & 4) != 0;
                    if ((pendingAction & 2) != 0) {
                        int i4 = -t3.getUpNestedPreScrollRange();
                        if (z3) {
                            animateOffsetTo(coordinatorLayout, t3, i4, 0.0f);
                        } else {
                            setHeaderTopBottomOffset(coordinatorLayout, t3, i4);
                        }
                    } else if ((pendingAction & 1) != 0) {
                        if (z3) {
                            animateOffsetTo(coordinatorLayout, t3, 0, 0.0f);
                        } else {
                            setHeaderTopBottomOffset(coordinatorLayout, t3, 0);
                        }
                    }
                }
            } else if (savedState.fullyScrolled) {
                setHeaderTopBottomOffset(coordinatorLayout, t3, -t3.getTotalScrollRange());
            } else if (savedState.fullyExpanded) {
                setHeaderTopBottomOffset(coordinatorLayout, t3, 0);
            } else {
                View childAt = t3.getChildAt(savedState.firstVisibleChildIndex);
                int i5 = -childAt.getBottom();
                if (this.savedState.firstVisibleChildAtMinimumHeight) {
                    round = ViewCompat.getMinimumHeight(childAt) + t3.getTopInset();
                } else {
                    round = Math.round(childAt.getHeight() * this.savedState.firstVisibleChildPercentageShown);
                }
                setHeaderTopBottomOffset(coordinatorLayout, t3, i5 + round);
            }
            t3.resetPendingAction();
            this.savedState = null;
            setTopAndBottomOffset(MathUtils.clamp(getTopAndBottomOffset(), -t3.getTotalScrollRange(), 0));
            updateAppBarLayoutDrawableState(coordinatorLayout, t3, getTopAndBottomOffset(), 0, true);
            t3.onOffsetChanged(getTopAndBottomOffset());
            updateAccessibilityActions(coordinatorLayout, t3);
            return onLayoutChild;
        }

        public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t3, int i2, int i4, int i5, int i6) {
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.LayoutParams) t3.getLayoutParams())).height == -2) {
                coordinatorLayout.onMeasureChild(t3, i2, i4, View.MeasureSpec.makeMeasureSpec(0, 0), i6);
                return true;
            }
            return super.onMeasureChild(coordinatorLayout, (CoordinatorLayout) t3, i2, i4, i5, i6);
        }

        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, @NonNull T t3, View view, int i2, int i4, int[] iArr, int i5) {
            int i6;
            int i7;
            if (i4 != 0) {
                if (i4 < 0) {
                    int i8 = -t3.getTotalScrollRange();
                    i6 = i8;
                    i7 = t3.getDownNestedPreScrollRange() + i8;
                } else {
                    i6 = -t3.getUpNestedPreScrollRange();
                    i7 = 0;
                }
                if (i6 != i7) {
                    iArr[1] = scroll(coordinatorLayout, t3, i4, i6, i7);
                }
            }
            if (t3.isLiftOnScroll()) {
                t3.setLiftedState(t3.shouldLift(view));
            }
        }

        public void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull T t3, View view, int i2, int i4, int i5, int i6, int i7, int[] iArr) {
            if (i6 < 0) {
                iArr[1] = scroll(coordinatorLayout, t3, i6, -t3.getDownNestedScrollRange(), 0);
            }
            if (i6 == 0) {
                updateAccessibilityActions(coordinatorLayout, t3);
            }
        }

        public void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t3, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                restoreScrollState((SavedState) parcelable, true);
                super.onRestoreInstanceState(coordinatorLayout, (CoordinatorLayout) t3, this.savedState.getSuperState());
                return;
            }
            super.onRestoreInstanceState(coordinatorLayout, (CoordinatorLayout) t3, parcelable);
            this.savedState = null;
        }

        public Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t3) {
            Parcelable onSaveInstanceState = super.onSaveInstanceState(coordinatorLayout, (CoordinatorLayout) t3);
            SavedState saveScrollState = saveScrollState(onSaveInstanceState, t3);
            return saveScrollState == null ? onSaveInstanceState : saveScrollState;
        }

        public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t3, @NonNull View view, View view2, int i2, int i4) {
            ValueAnimator valueAnimator;
            boolean z3 = (i2 & 2) != 0 && (t3.isLiftOnScroll() || canScrollChildren(coordinatorLayout, t3, view));
            if (z3 && (valueAnimator = this.offsetAnimator) != null) {
                valueAnimator.cancel();
            }
            this.lastNestedScrollingChildRef = null;
            this.lastStartedType = i4;
            return z3;
        }

        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull T t3, View view, int i2) {
            if (this.lastStartedType == 0 || i2 == 1) {
                snapToChildIfNeeded(coordinatorLayout, t3);
                if (t3.isLiftOnScroll()) {
                    t3.setLiftedState(t3.shouldLift(view));
                }
            }
            this.lastNestedScrollingChildRef = new WeakReference<>(view);
        }

        int setHeaderTopBottomOffset(@NonNull CoordinatorLayout coordinatorLayout, @NonNull T t3, int i2, int i4, int i5) {
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            int i6 = 0;
            if (i4 != 0 && topBottomOffsetForScrollingSibling >= i4 && topBottomOffsetForScrollingSibling <= i5) {
                int clamp = MathUtils.clamp(i2, i4, i5);
                if (topBottomOffsetForScrollingSibling != clamp) {
                    int interpolateOffset = t3.hasChildWithInterpolator() ? interpolateOffset(t3, clamp) : clamp;
                    boolean topAndBottomOffset = setTopAndBottomOffset(interpolateOffset);
                    int i7 = topBottomOffsetForScrollingSibling - clamp;
                    this.offsetDelta = clamp - interpolateOffset;
                    if (topAndBottomOffset) {
                        while (i6 < t3.getChildCount()) {
                            LayoutParams layoutParams = (LayoutParams) t3.getChildAt(i6).getLayoutParams();
                            ChildScrollEffect scrollEffect = layoutParams.getScrollEffect();
                            if (scrollEffect != null && (layoutParams.getScrollFlags() & 1) != 0) {
                                scrollEffect.onOffsetChanged(t3, t3.getChildAt(i6), getTopAndBottomOffset());
                            }
                            i6++;
                        }
                    }
                    if (!topAndBottomOffset && t3.hasChildWithInterpolator()) {
                        coordinatorLayout.dispatchDependentViewsChanged(t3);
                    }
                    t3.onOffsetChanged(getTopAndBottomOffset());
                    updateAppBarLayoutDrawableState(coordinatorLayout, t3, clamp, clamp < topBottomOffsetForScrollingSibling ? -1 : 1, false);
                    i6 = i7;
                }
            } else {
                this.offsetDelta = 0;
            }
            updateAccessibilityActions(coordinatorLayout, t3);
            return i6;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* loaded from: classes2.dex */
        public static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.appbar.AppBarLayout.BaseBehavior.SavedState.1
                @Override // android.os.Parcelable.Creator
                @NonNull
                public SavedState[] newArray(int i2) {
                    return new SavedState[i2];
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.ClassLoaderCreator
                @NonNull
                public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                    return new SavedState(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                @Nullable
                public SavedState createFromParcel(@NonNull Parcel parcel) {
                    return new SavedState(parcel, null);
                }
            };
            boolean firstVisibleChildAtMinimumHeight;
            int firstVisibleChildIndex;
            float firstVisibleChildPercentageShown;
            boolean fullyExpanded;
            boolean fullyScrolled;

            public SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.fullyScrolled = parcel.readByte() != 0;
                this.fullyExpanded = parcel.readByte() != 0;
                this.firstVisibleChildIndex = parcel.readInt();
                this.firstVisibleChildPercentageShown = parcel.readFloat();
                this.firstVisibleChildAtMinimumHeight = parcel.readByte() != 0;
            }

            @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
            public void writeToParcel(@NonNull Parcel parcel, int i2) {
                super.writeToParcel(parcel, i2);
                parcel.writeByte(this.fullyScrolled ? (byte) 1 : (byte) 0);
                parcel.writeByte(this.fullyExpanded ? (byte) 1 : (byte) 0);
                parcel.writeInt(this.firstVisibleChildIndex);
                parcel.writeFloat(this.firstVisibleChildPercentageShown);
                parcel.writeByte(this.firstVisibleChildAtMinimumHeight ? (byte) 1 : (byte) 0);
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface BaseOnOffsetChangedListener<T extends AppBarLayout> {
        void onOffsetChanged(T t3, int i2);
    }

    /* loaded from: classes2.dex */
    public static class Behavior extends BaseBehavior<AppBarLayout> {

        /* loaded from: classes2.dex */
        public static abstract class DragCallback extends BaseBehavior.BaseDragCallback<AppBarLayout> {
        }

        public Behavior() {
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ int getLeftAndRightOffset() {
            return super.getLeftAndRightOffset();
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ int getTopAndBottomOffset() {
            return super.getTopAndBottomOffset();
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean isHorizontalOffsetEnabled() {
            return super.isHorizontalOffsetEnabled();
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean isVerticalOffsetEnabled() {
            return super.isVerticalOffsetEnabled();
        }

        @Override // com.google.android.material.appbar.HeaderBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, int i2) {
            return super.onLayoutChild(coordinatorLayout, (CoordinatorLayout) appBarLayout, i2);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, int i2, int i4, int i5, int i6) {
            return super.onMeasureChild(coordinatorLayout, (CoordinatorLayout) appBarLayout, i2, i4, i5, i6);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onNestedPreScroll(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, View view, int i2, int i4, int[] iArr, int i5) {
            super.onNestedPreScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i2, i4, iArr, i5);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, View view, int i2, int i4, int i5, int i6, int i7, int[] iArr) {
            super.onNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i2, i4, i5, i6, i7, iArr);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, Parcelable parcelable) {
            super.onRestoreInstanceState(coordinatorLayout, (CoordinatorLayout) appBarLayout, parcelable);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout) {
            return super.onSaveInstanceState(coordinatorLayout, (CoordinatorLayout) appBarLayout);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, @NonNull View view, View view2, int i2, int i4) {
            return super.onStartNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, view2, i2, i4);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onStopNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull AppBarLayout appBarLayout, View view, int i2) {
            super.onStopNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i2);
        }

        @Override // com.google.android.material.appbar.HeaderBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
            return super.onTouchEvent(coordinatorLayout, view, motionEvent);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void setDragCallback(@Nullable BaseBehavior.BaseDragCallback baseDragCallback) {
            super.setDragCallback(baseDragCallback);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ void setHorizontalOffsetEnabled(boolean z3) {
            super.setHorizontalOffsetEnabled(z3);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean setLeftAndRightOffset(int i2) {
            return super.setLeftAndRightOffset(i2);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean setTopAndBottomOffset(int i2) {
            return super.setTopAndBottomOffset(i2);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ void setVerticalOffsetEnabled(boolean z3) {
            super.setVerticalOffsetEnabled(z3);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class ChildScrollEffect {
        public abstract void onOffsetChanged(@NonNull AppBarLayout appBarLayout, @NonNull View view, float f4);
    }

    /* loaded from: classes2.dex */
    public static class CompressChildScrollEffect extends ChildScrollEffect {
        private static final float COMPRESS_DISTANCE_FACTOR = 0.3f;
        private final Rect relativeRect = new Rect();
        private final Rect ghostRect = new Rect();

        private static void updateRelativeRect(Rect rect, AppBarLayout appBarLayout, View view) {
            view.getDrawingRect(rect);
            appBarLayout.offsetDescendantRectToMyCoords(view, rect);
            rect.offset(0, -appBarLayout.getTopInset());
        }

        @Override // com.google.android.material.appbar.AppBarLayout.ChildScrollEffect
        public void onOffsetChanged(@NonNull AppBarLayout appBarLayout, @NonNull View view, float f4) {
            updateRelativeRect(this.relativeRect, appBarLayout, view);
            float abs = this.relativeRect.top - Math.abs(f4);
            if (abs <= 0.0f) {
                float clamp = 1.0f - MathUtils.clamp(Math.abs(abs / this.relativeRect.height()), 0.0f, 1.0f);
                float height = (-abs) - ((this.relativeRect.height() * COMPRESS_DISTANCE_FACTOR) * (1.0f - (clamp * clamp)));
                view.setTranslationY(height);
                view.getDrawingRect(this.ghostRect);
                this.ghostRect.offset(0, (int) (-height));
                ViewCompat.setClipBounds(view, this.ghostRect);
                return;
            }
            ViewCompat.setClipBounds(view, null);
            view.setTranslationY(0.0f);
        }
    }

    /* loaded from: classes2.dex */
    public interface LiftOnScrollListener {
        void onUpdate(@Dimension float f4, @ColorInt int i2);
    }

    /* loaded from: classes2.dex */
    public interface OnOffsetChangedListener extends BaseOnOffsetChangedListener<AppBarLayout> {
        @Override // com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        void onOffsetChanged(AppBarLayout appBarLayout, int i2);
    }

    /* loaded from: classes2.dex */
    public static class ScrollingViewBehavior extends HeaderScrollingViewBehavior {
        public ScrollingViewBehavior() {
        }

        private static int getAppBarLayoutOffset(@NonNull AppBarLayout appBarLayout) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) appBarLayout.getLayoutParams()).getBehavior();
            if (behavior instanceof BaseBehavior) {
                return ((BaseBehavior) behavior).getTopBottomOffsetForScrollingSibling();
            }
            return 0;
        }

        private void offsetChildAsNeeded(@NonNull View view, @NonNull View view2) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) view2.getLayoutParams()).getBehavior();
            if (behavior instanceof BaseBehavior) {
                ViewCompat.offsetTopAndBottom(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) behavior).offsetDelta) + getVerticalLayoutGap()) - getOverlapPixelsForOffset(view2));
            }
        }

        private void updateLiftedStateIfNeeded(View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.isLiftOnScroll()) {
                    appBarLayout.setLiftedState(appBarLayout.shouldLift(view));
                }
            }
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        @Nullable
        /* bridge */ /* synthetic */ View findFirstDependency(@NonNull List list) {
            return findFirstDependency((List<View>) list);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ int getLeftAndRightOffset() {
            return super.getLeftAndRightOffset();
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        float getOverlapRatioForOffset(View view) {
            int i2;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                int appBarLayoutOffset = getAppBarLayoutOffset(appBarLayout);
                if ((downNestedPreScrollRange == 0 || totalScrollRange + appBarLayoutOffset > downNestedPreScrollRange) && (i2 = totalScrollRange - downNestedPreScrollRange) != 0) {
                    return (appBarLayoutOffset / i2) + 1.0f;
                }
            }
            return 0.0f;
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        int getScrollRange(View view) {
            if (view instanceof AppBarLayout) {
                return ((AppBarLayout) view).getTotalScrollRange();
            }
            return super.getScrollRange(view);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ int getTopAndBottomOffset() {
            return super.getTopAndBottomOffset();
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean isHorizontalOffsetEnabled() {
            return super.isHorizontalOffsetEnabled();
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean isVerticalOffsetEnabled() {
            return super.isVerticalOffsetEnabled();
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onDependentViewChanged(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
            offsetChildAsNeeded(view, view2);
            updateLiftedStateIfNeeded(view, view2);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void onDependentViewRemoved(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
            if (view2 instanceof AppBarLayout) {
                ViewCompat.removeAccessibilityAction(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD.getId());
                ViewCompat.removeAccessibilityAction(coordinatorLayout, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD.getId());
                ViewCompat.setAccessibilityDelegate(coordinatorLayout, null);
            }
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i2) {
            return super.onLayoutChild(coordinatorLayout, view, i2);
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, int i2, int i4, int i5, int i6) {
            return super.onMeasureChild(coordinatorLayout, view, i2, i4, i5, i6);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onRequestChildRectangleOnScreen(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull Rect rect, boolean z3) {
            AppBarLayout findFirstDependency = findFirstDependency(coordinatorLayout.getDependencies(view));
            if (findFirstDependency != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.tempRect1;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect2.contains(rect)) {
                    findFirstDependency.setExpanded(false, !z3);
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ void setHorizontalOffsetEnabled(boolean z3) {
            super.setHorizontalOffsetEnabled(z3);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean setLeftAndRightOffset(int i2) {
            return super.setLeftAndRightOffset(i2);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean setTopAndBottomOffset(int i2) {
            return super.setTopAndBottomOffset(i2);
        }

        @Override // com.google.android.material.appbar.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ void setVerticalOffsetEnabled(boolean z3) {
            super.setVerticalOffsetEnabled(z3);
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ScrollingViewBehavior_Layout);
            setOverlayTop(obtainStyledAttributes.getDimensionPixelSize(R.styleable.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            obtainStyledAttributes.recycle();
        }

        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        @Nullable
        AppBarLayout findFirstDependency(@NonNull List<View> list) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = list.get(i2);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }
    }

    public AppBarLayout(@NonNull Context context) {
        this(context, null);
    }

    private void clearLiftOnScrollTargetView() {
        WeakReference<View> weakReference = this.liftOnScrollTargetView;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.liftOnScrollTargetView = null;
    }

    @Nullable
    private View findLiftOnScrollTargetView(@Nullable View view) {
        int i2;
        if (this.liftOnScrollTargetView == null && (i2 = this.liftOnScrollTargetViewId) != -1) {
            View findViewById = view != null ? view.findViewById(i2) : null;
            if (findViewById == null && (getParent() instanceof ViewGroup)) {
                findViewById = ((ViewGroup) getParent()).findViewById(this.liftOnScrollTargetViewId);
            }
            if (findViewById != null) {
                this.liftOnScrollTargetView = new WeakReference<>(findViewById);
            }
        }
        WeakReference<View> weakReference = this.liftOnScrollTargetView;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    private boolean hasCollapsibleChild() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (((LayoutParams) getChildAt(i2).getLayoutParams()).isCollapsible()) {
                return true;
            }
        }
        return false;
    }

    private void invalidateScrollRanges() {
        Behavior behavior = this.behavior;
        BaseBehavior.SavedState saveScrollState = (behavior == null || this.totalScrollRange == -1 || this.pendingAction != 0) ? null : behavior.saveScrollState(AbsSavedState.EMPTY_STATE, this);
        this.totalScrollRange = -1;
        this.downPreScrollRange = -1;
        this.downScrollRange = -1;
        if (saveScrollState != null) {
            this.behavior.restoreScrollState(saveScrollState, false);
        }
    }

    private boolean setLiftableState(boolean z3) {
        if (this.liftable != z3) {
            this.liftable = z3;
            refreshDrawableState();
            return true;
        }
        return false;
    }

    private boolean shouldDrawStatusBarForeground() {
        return this.statusBarForeground != null && getTopInset() > 0;
    }

    private boolean shouldOffsetFirstChild() {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            return (childAt.getVisibility() == 8 || ViewCompat.getFitsSystemWindows(childAt)) ? false : true;
        }
        return false;
    }

    private void startLiftOnScrollElevationOverlayAnimation(@NonNull final MaterialShapeDrawable materialShapeDrawable, boolean z3) {
        float dimension = getResources().getDimension(R.dimen.design_appbar_elevation);
        float f4 = z3 ? 0.0f : dimension;
        if (!z3) {
            dimension = 0.0f;
        }
        ValueAnimator valueAnimator = this.elevationOverlayAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f4, dimension);
        this.elevationOverlayAnimator = ofFloat;
        ofFloat.setDuration(getResources().getInteger(R.integer.app_bar_elevation_anim_duration));
        this.elevationOverlayAnimator.setInterpolator(a.f14004a);
        this.elevationOverlayAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.AppBarLayout.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator2) {
                float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                materialShapeDrawable.n0(floatValue);
                if (AppBarLayout.this.statusBarForeground instanceof MaterialShapeDrawable) {
                    ((MaterialShapeDrawable) AppBarLayout.this.statusBarForeground).n0(floatValue);
                }
                for (LiftOnScrollListener liftOnScrollListener : AppBarLayout.this.liftOnScrollListeners) {
                    liftOnScrollListener.onUpdate(floatValue, materialShapeDrawable.D());
                }
            }
        });
        this.elevationOverlayAnimator.start();
    }

    private void updateWillNotDraw() {
        setWillNotDraw(!shouldDrawStatusBarForeground());
    }

    public void addLiftOnScrollListener(@NonNull LiftOnScrollListener liftOnScrollListener) {
        this.liftOnScrollListeners.add(liftOnScrollListener);
    }

    public void addOnOffsetChangedListener(@Nullable BaseOnOffsetChangedListener baseOnOffsetChangedListener) {
        if (this.listeners == null) {
            this.listeners = new ArrayList();
        }
        if (baseOnOffsetChangedListener == null || this.listeners.contains(baseOnOffsetChangedListener)) {
            return;
        }
        this.listeners.add(baseOnOffsetChangedListener);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public void clearLiftOnScrollListener() {
        this.liftOnScrollListeners.clear();
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        if (shouldDrawStatusBarForeground()) {
            int save = canvas.save();
            canvas.translate(0.0f, -this.currentOffset);
            this.statusBarForeground.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.statusBarForeground;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<AppBarLayout> getBehavior() {
        Behavior behavior = new Behavior();
        this.behavior = behavior;
        return behavior;
    }

    int getDownNestedPreScrollRange() {
        int i2;
        int minimumHeight;
        int i4 = this.downPreScrollRange;
        if (i4 != -1) {
            return i4;
        }
        int i5 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i6 = layoutParams.scrollFlags;
            if ((i6 & 5) == 5) {
                int i7 = ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                if ((i6 & 8) != 0) {
                    minimumHeight = ViewCompat.getMinimumHeight(childAt);
                } else if ((i6 & 2) != 0) {
                    minimumHeight = measuredHeight - ViewCompat.getMinimumHeight(childAt);
                } else {
                    i2 = i7 + measuredHeight;
                    if (childCount == 0 && ViewCompat.getFitsSystemWindows(childAt)) {
                        i2 = Math.min(i2, measuredHeight - getTopInset());
                    }
                    i5 += i2;
                }
                i2 = i7 + minimumHeight;
                if (childCount == 0) {
                    i2 = Math.min(i2, measuredHeight - getTopInset());
                }
                i5 += i2;
            } else if (i5 > 0) {
                break;
            }
        }
        int max = Math.max(0, i5);
        this.downPreScrollRange = max;
        return max;
    }

    int getDownNestedScrollRange() {
        int i2 = this.downScrollRange;
        if (i2 != -1) {
            return i2;
        }
        int childCount = getChildCount();
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (i4 >= childCount) {
                break;
            }
            View childAt = getChildAt(i4);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight() + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
            int i6 = layoutParams.scrollFlags;
            if ((i6 & 1) == 0) {
                break;
            }
            i5 += measuredHeight;
            if ((i6 & 2) != 0) {
                i5 -= ViewCompat.getMinimumHeight(childAt);
                break;
            }
            i4++;
        }
        int max = Math.max(0, i5);
        this.downScrollRange = max;
        return max;
    }

    @IdRes
    public int getLiftOnScrollTargetViewId() {
        return this.liftOnScrollTargetViewId;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        if (minimumHeight == 0) {
            int childCount = getChildCount();
            minimumHeight = childCount >= 1 ? ViewCompat.getMinimumHeight(getChildAt(childCount - 1)) : 0;
            if (minimumHeight == 0) {
                return getHeight() / 3;
            }
        }
        return (minimumHeight * 2) + topInset;
    }

    int getPendingAction() {
        return this.pendingAction;
    }

    @Nullable
    public Drawable getStatusBarForeground() {
        return this.statusBarForeground;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    @VisibleForTesting
    final int getTopInset() {
        WindowInsetsCompat windowInsetsCompat = this.lastInsets;
        if (windowInsetsCompat != null) {
            return windowInsetsCompat.getSystemWindowInsetTop();
        }
        return 0;
    }

    public final int getTotalScrollRange() {
        int i2 = this.totalScrollRange;
        if (i2 != -1) {
            return i2;
        }
        int childCount = getChildCount();
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (i4 >= childCount) {
                break;
            }
            View childAt = getChildAt(i4);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i6 = layoutParams.scrollFlags;
            if ((i6 & 1) == 0) {
                break;
            }
            i5 += measuredHeight + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
            if (i4 == 0 && ViewCompat.getFitsSystemWindows(childAt)) {
                i5 -= getTopInset();
            }
            if ((i6 & 2) != 0) {
                i5 -= ViewCompat.getMinimumHeight(childAt);
                break;
            }
            i4++;
        }
        int max = Math.max(0, i5);
        this.totalScrollRange = max;
        return max;
    }

    int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    boolean hasChildWithInterpolator() {
        return this.haveChildWithInterpolator;
    }

    boolean hasScrollableChildren() {
        return getTotalScrollRange() != 0;
    }

    public boolean isLiftOnScroll() {
        return this.liftOnScroll;
    }

    public boolean isLifted() {
        return this.lifted;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        i.e(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i2) {
        if (this.tmpStatesArray == null) {
            this.tmpStatesArray = new int[4];
        }
        int[] iArr = this.tmpStatesArray;
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + iArr.length);
        boolean z3 = this.liftable;
        int i4 = R.attr.state_liftable;
        if (!z3) {
            i4 = -i4;
        }
        iArr[0] = i4;
        iArr[1] = (z3 && this.lifted) ? R.attr.state_lifted : -R.attr.state_lifted;
        int i5 = R.attr.state_collapsible;
        if (!z3) {
            i5 = -i5;
        }
        iArr[2] = i5;
        iArr[3] = (z3 && this.lifted) ? R.attr.state_collapsed : -R.attr.state_collapsed;
        return LinearLayout.mergeDrawableStates(onCreateDrawableState, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        clearLiftOnScrollTargetView();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
        boolean z4 = true;
        if (ViewCompat.getFitsSystemWindows(this) && shouldOffsetFirstChild()) {
            int topInset = getTopInset();
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                ViewCompat.offsetTopAndBottom(getChildAt(childCount), topInset);
            }
        }
        invalidateScrollRanges();
        this.haveChildWithInterpolator = false;
        int childCount2 = getChildCount();
        int i7 = 0;
        while (true) {
            if (i7 >= childCount2) {
                break;
            } else if (((LayoutParams) getChildAt(i7).getLayoutParams()).getScrollInterpolator() != null) {
                this.haveChildWithInterpolator = true;
                break;
            } else {
                i7++;
            }
        }
        Drawable drawable = this.statusBarForeground;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getTopInset());
        }
        if (this.liftableOverride) {
            return;
        }
        if (!this.liftOnScroll && !hasCollapsibleChild()) {
            z4 = false;
        }
        setLiftableState(z4);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        int mode = View.MeasureSpec.getMode(i4);
        if (mode != 1073741824 && ViewCompat.getFitsSystemWindows(this) && shouldOffsetFirstChild()) {
            int measuredHeight = getMeasuredHeight();
            if (mode == Integer.MIN_VALUE) {
                measuredHeight = MathUtils.clamp(getMeasuredHeight() + getTopInset(), 0, View.MeasureSpec.getSize(i4));
            } else if (mode == 0) {
                measuredHeight += getTopInset();
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
        invalidateScrollRanges();
    }

    void onOffsetChanged(int i2) {
        this.currentOffset = i2;
        if (!willNotDraw()) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
        List<BaseOnOffsetChangedListener> list = this.listeners;
        if (list != null) {
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                BaseOnOffsetChangedListener baseOnOffsetChangedListener = this.listeners.get(i4);
                if (baseOnOffsetChangedListener != null) {
                    baseOnOffsetChangedListener.onOffsetChanged(this, i2);
                }
            }
        }
    }

    WindowInsetsCompat onWindowInsetChanged(WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2 = ViewCompat.getFitsSystemWindows(this) ? windowInsetsCompat : null;
        if (!ObjectsCompat.equals(this.lastInsets, windowInsetsCompat2)) {
            this.lastInsets = windowInsetsCompat2;
            updateWillNotDraw();
            requestLayout();
        }
        return windowInsetsCompat;
    }

    public boolean removeLiftOnScrollListener(@NonNull LiftOnScrollListener liftOnScrollListener) {
        return this.liftOnScrollListeners.remove(liftOnScrollListener);
    }

    public void removeOnOffsetChangedListener(@Nullable BaseOnOffsetChangedListener baseOnOffsetChangedListener) {
        List<BaseOnOffsetChangedListener> list = this.listeners;
        if (list == null || baseOnOffsetChangedListener == null) {
            return;
        }
        list.remove(baseOnOffsetChangedListener);
    }

    void resetPendingAction() {
        this.pendingAction = 0;
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f4) {
        super.setElevation(f4);
        i.d(this, f4);
    }

    public void setExpanded(boolean z3) {
        setExpanded(z3, ViewCompat.isLaidOut(this));
    }

    public void setLiftOnScroll(boolean z3) {
        this.liftOnScroll = z3;
    }

    public void setLiftOnScrollTargetViewId(@IdRes int i2) {
        this.liftOnScrollTargetViewId = i2;
        clearLiftOnScrollTargetView();
    }

    public boolean setLiftable(boolean z3) {
        this.liftableOverride = true;
        return setLiftableState(z3);
    }

    public void setLiftableOverrideEnabled(boolean z3) {
        this.liftableOverride = z3;
    }

    public boolean setLifted(boolean z3) {
        return setLiftedState(z3, true);
    }

    boolean setLiftedState(boolean z3) {
        return setLiftedState(z3, !this.liftableOverride);
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i2) {
        if (i2 == 1) {
            super.setOrientation(i2);
            return;
        }
        throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
    }

    public void setStatusBarForeground(@Nullable Drawable drawable) {
        Drawable drawable2 = this.statusBarForeground;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable mutate = drawable != null ? drawable.mutate() : null;
            this.statusBarForeground = mutate;
            if (mutate != null) {
                if (mutate.isStateful()) {
                    this.statusBarForeground.setState(getDrawableState());
                }
                DrawableCompat.setLayoutDirection(this.statusBarForeground, ViewCompat.getLayoutDirection(this));
                this.statusBarForeground.setVisible(getVisibility() == 0, false);
                this.statusBarForeground.setCallback(this);
            }
            updateWillNotDraw();
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarForegroundColor(@ColorInt int i2) {
        setStatusBarForeground(new ColorDrawable(i2));
    }

    public void setStatusBarForegroundResource(@DrawableRes int i2) {
        setStatusBarForeground(AppCompatResources.getDrawable(getContext(), i2));
    }

    @Deprecated
    public void setTargetElevation(float f4) {
        if (Build.VERSION.SDK_INT >= 21) {
            ViewUtilsLollipop.setDefaultAppBarLayoutStateListAnimator(this, f4);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z3 = i2 == 0;
        Drawable drawable = this.statusBarForeground;
        if (drawable != null) {
            drawable.setVisible(z3, false);
        }
    }

    boolean shouldLift(@Nullable View view) {
        View findLiftOnScrollTargetView = findLiftOnScrollTargetView(view);
        if (findLiftOnScrollTargetView != null) {
            view = findLiftOnScrollTargetView;
        }
        return view != null && (view.canScrollVertically(-1) || view.getScrollY() > 0);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(@NonNull Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.statusBarForeground;
    }

    public AppBarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.appBarLayoutStyle);
    }

    public void setExpanded(boolean z3, boolean z4) {
        setExpanded(z3, z4, true);
    }

    boolean setLiftedState(boolean z3, boolean z4) {
        if (!z4 || this.lifted == z3) {
            return false;
        }
        this.lifted = z3;
        refreshDrawableState();
        if (this.liftOnScroll && (getBackground() instanceof MaterialShapeDrawable)) {
            startLiftOnScrollElevationOverlayAnimation((MaterialShapeDrawable) getBackground(), z3);
            return true;
        }
        return true;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppBarLayout(@androidx.annotation.NonNull android.content.Context r11, @androidx.annotation.Nullable android.util.AttributeSet r12, int r13) {
        /*
            r10 = this;
            int r4 = com.google.android.material.appbar.AppBarLayout.DEF_STYLE_RES
            android.content.Context r11 = com.google.android.material.theme.overlay.a.c(r11, r12, r13, r4)
            r10.<init>(r11, r12, r13)
            r11 = -1
            r10.totalScrollRange = r11
            r10.downPreScrollRange = r11
            r10.downScrollRange = r11
            r6 = 0
            r10.pendingAction = r6
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r10.liftOnScrollListeners = r0
            android.content.Context r7 = r10.getContext()
            r0 = 1
            r10.setOrientation(r0)
            int r8 = android.os.Build.VERSION.SDK_INT
            r9 = 21
            if (r8 < r9) goto L36
            android.view.ViewOutlineProvider r0 = r10.getOutlineProvider()
            android.view.ViewOutlineProvider r1 = android.view.ViewOutlineProvider.BACKGROUND
            if (r0 != r1) goto L33
            com.google.android.material.appbar.ViewUtilsLollipop.setBoundsViewOutlineProvider(r10)
        L33:
            com.google.android.material.appbar.ViewUtilsLollipop.setStateListAnimatorFromAttrs(r10, r12, r13, r4)
        L36:
            int[] r2 = com.google.android.material.R.styleable.AppBarLayout
            int[] r5 = new int[r6]
            r0 = r7
            r1 = r12
            r3 = r13
            android.content.res.TypedArray r12 = com.google.android.material.internal.o.j(r0, r1, r2, r3, r4, r5)
            int r13 = com.google.android.material.R.styleable.AppBarLayout_android_background
            android.graphics.drawable.Drawable r13 = r12.getDrawable(r13)
            androidx.core.view.ViewCompat.setBackground(r10, r13)
            android.graphics.drawable.Drawable r13 = r10.getBackground()
            boolean r13 = r13 instanceof android.graphics.drawable.ColorDrawable
            if (r13 == 0) goto L6e
            android.graphics.drawable.Drawable r13 = r10.getBackground()
            android.graphics.drawable.ColorDrawable r13 = (android.graphics.drawable.ColorDrawable) r13
            com.google.android.material.shape.MaterialShapeDrawable r0 = new com.google.android.material.shape.MaterialShapeDrawable
            r0.<init>()
            int r13 = r13.getColor()
            android.content.res.ColorStateList r13 = android.content.res.ColorStateList.valueOf(r13)
            r0.o0(r13)
            r0.Z(r7)
            androidx.core.view.ViewCompat.setBackground(r10, r0)
        L6e:
            int r13 = com.google.android.material.R.styleable.AppBarLayout_expanded
            boolean r0 = r12.hasValue(r13)
            if (r0 == 0) goto L7d
            boolean r13 = r12.getBoolean(r13, r6)
            r10.setExpanded(r13, r6, r6)
        L7d:
            if (r8 < r9) goto L8f
            int r13 = com.google.android.material.R.styleable.AppBarLayout_elevation
            boolean r0 = r12.hasValue(r13)
            if (r0 == 0) goto L8f
            int r13 = r12.getDimensionPixelSize(r13, r6)
            float r13 = (float) r13
            com.google.android.material.appbar.ViewUtilsLollipop.setDefaultAppBarLayoutStateListAnimator(r10, r13)
        L8f:
            r13 = 26
            if (r8 < r13) goto Lb1
            int r13 = com.google.android.material.R.styleable.AppBarLayout_android_keyboardNavigationCluster
            boolean r0 = r12.hasValue(r13)
            if (r0 == 0) goto La2
            boolean r13 = r12.getBoolean(r13, r6)
            r10.setKeyboardNavigationCluster(r13)
        La2:
            int r13 = com.google.android.material.R.styleable.AppBarLayout_android_touchscreenBlocksFocus
            boolean r0 = r12.hasValue(r13)
            if (r0 == 0) goto Lb1
            boolean r13 = r12.getBoolean(r13, r6)
            r10.setTouchscreenBlocksFocus(r13)
        Lb1:
            int r13 = com.google.android.material.R.styleable.AppBarLayout_liftOnScroll
            boolean r13 = r12.getBoolean(r13, r6)
            r10.liftOnScroll = r13
            int r13 = com.google.android.material.R.styleable.AppBarLayout_liftOnScrollTargetViewId
            int r11 = r12.getResourceId(r13, r11)
            r10.liftOnScrollTargetViewId = r11
            int r11 = com.google.android.material.R.styleable.AppBarLayout_statusBarForeground
            android.graphics.drawable.Drawable r11 = r12.getDrawable(r11)
            r10.setStatusBarForeground(r11)
            r12.recycle()
            com.google.android.material.appbar.AppBarLayout$1 r11 = new com.google.android.material.appbar.AppBarLayout$1
            r11.<init>()
            androidx.core.view.ViewCompat.setOnApplyWindowInsetsListener(r10, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    private void setExpanded(boolean z3, boolean z4, boolean z5) {
        this.pendingAction = (z3 ? 1 : 2) | (z4 ? 4 : 0) | (z5 ? 8 : 0);
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -2);
    }

    public void removeOnOffsetChangedListener(OnOffsetChangedListener onOffsetChangedListener) {
        removeOnOffsetChangedListener((BaseOnOffsetChangedListener) onOffsetChangedListener);
    }

    public void addOnOffsetChangedListener(OnOffsetChangedListener onOffsetChangedListener) {
        addOnOffsetChangedListener((BaseOnOffsetChangedListener) onOffsetChangedListener);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (Build.VERSION.SDK_INT >= 19 && (layoutParams instanceof LinearLayout.LayoutParams)) {
            return new LayoutParams((LinearLayout.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    /* loaded from: classes2.dex */
    public static class LayoutParams extends LinearLayout.LayoutParams {
        static final int COLLAPSIBLE_FLAGS = 10;
        static final int FLAG_QUICK_RETURN = 5;
        static final int FLAG_SNAP = 17;
        private static final int SCROLL_EFFECT_COMPRESS = 1;
        private static final int SCROLL_EFFECT_NONE = 0;
        public static final int SCROLL_FLAG_ENTER_ALWAYS = 4;
        public static final int SCROLL_FLAG_ENTER_ALWAYS_COLLAPSED = 8;
        public static final int SCROLL_FLAG_EXIT_UNTIL_COLLAPSED = 2;
        public static final int SCROLL_FLAG_NO_SCROLL = 0;
        public static final int SCROLL_FLAG_SCROLL = 1;
        public static final int SCROLL_FLAG_SNAP = 16;
        public static final int SCROLL_FLAG_SNAP_MARGINS = 32;
        private ChildScrollEffect scrollEffect;
        int scrollFlags;
        Interpolator scrollInterpolator;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        /* loaded from: classes.dex */
        public @interface ScrollFlags {
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.scrollFlags = 1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AppBarLayout_Layout);
            this.scrollFlags = obtainStyledAttributes.getInt(R.styleable.AppBarLayout_Layout_layout_scrollFlags, 0);
            setScrollEffect(createScrollEffectFromInt(obtainStyledAttributes.getInt(R.styleable.AppBarLayout_Layout_layout_scrollEffect, 0)));
            int i2 = R.styleable.AppBarLayout_Layout_layout_scrollInterpolator;
            if (obtainStyledAttributes.hasValue(i2)) {
                this.scrollInterpolator = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(i2, 0));
            }
            obtainStyledAttributes.recycle();
        }

        @Nullable
        private ChildScrollEffect createScrollEffectFromInt(int i2) {
            if (i2 != 1) {
                return null;
            }
            return new CompressChildScrollEffect();
        }

        @Nullable
        public ChildScrollEffect getScrollEffect() {
            return this.scrollEffect;
        }

        public int getScrollFlags() {
            return this.scrollFlags;
        }

        public Interpolator getScrollInterpolator() {
            return this.scrollInterpolator;
        }

        boolean isCollapsible() {
            int i2 = this.scrollFlags;
            return (i2 & 1) == 1 && (i2 & 10) != 0;
        }

        public void setScrollEffect(@Nullable ChildScrollEffect childScrollEffect) {
            this.scrollEffect = childScrollEffect;
        }

        public void setScrollFlags(int i2) {
            this.scrollFlags = i2;
        }

        public void setScrollInterpolator(Interpolator interpolator) {
            this.scrollInterpolator = interpolator;
        }

        public LayoutParams(int i2, int i4) {
            super(i2, i4);
            this.scrollFlags = 1;
        }

        public LayoutParams(int i2, int i4, float f4) {
            super(i2, i4, f4);
            this.scrollFlags = 1;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.scrollFlags = 1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.scrollFlags = 1;
        }

        @RequiresApi(19)
        public LayoutParams(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.scrollFlags = 1;
        }

        @RequiresApi(19)
        public LayoutParams(@NonNull LayoutParams layoutParams) {
            super((LinearLayout.LayoutParams) layoutParams);
            this.scrollFlags = 1;
            this.scrollFlags = layoutParams.scrollFlags;
            this.scrollInterpolator = layoutParams.scrollInterpolator;
        }
    }
}
