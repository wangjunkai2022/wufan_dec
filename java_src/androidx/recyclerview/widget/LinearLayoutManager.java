package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
/* loaded from: classes2.dex */
public class LinearLayoutManager extends RecyclerView.LayoutManager implements ItemTouchHelper.ViewDropHandler, RecyclerView.SmoothScroller.ScrollVectorProvider {
    static final boolean DEBUG = false;
    public static final int HORIZONTAL = 0;
    public static final int INVALID_OFFSET = Integer.MIN_VALUE;
    private static final float MAX_SCROLL_FACTOR = 0.33333334f;
    private static final String TAG = "LinearLayoutManager";
    public static final int VERTICAL = 1;
    final AnchorInfo mAnchorInfo;
    private int mInitialPrefetchItemCount;
    private boolean mLastStackFromEnd;
    private final LayoutChunkResult mLayoutChunkResult;
    private LayoutState mLayoutState;
    int mOrientation;
    OrientationHelper mOrientationHelper;
    SavedState mPendingSavedState;
    int mPendingScrollPosition;
    int mPendingScrollPositionOffset;
    private boolean mRecycleChildrenOnDetach;
    private int[] mReusableIntPair;
    private boolean mReverseLayout;
    boolean mShouldReverseLayout;
    private boolean mSmoothScrollbarEnabled;
    private boolean mStackFromEnd;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class AnchorInfo {

        /* renamed from: a  reason: collision with root package name */
        OrientationHelper f7001a;

        /* renamed from: b  reason: collision with root package name */
        int f7002b;

        /* renamed from: c  reason: collision with root package name */
        int f7003c;

        /* renamed from: d  reason: collision with root package name */
        boolean f7004d;

        /* renamed from: e  reason: collision with root package name */
        boolean f7005e;

        AnchorInfo() {
            c();
        }

        void a() {
            int startAfterPadding;
            if (this.f7004d) {
                startAfterPadding = this.f7001a.getEndAfterPadding();
            } else {
                startAfterPadding = this.f7001a.getStartAfterPadding();
            }
            this.f7003c = startAfterPadding;
        }

        public void assignFromView(View view, int i2) {
            if (this.f7004d) {
                this.f7003c = this.f7001a.getDecoratedEnd(view) + this.f7001a.getTotalSpaceChange();
            } else {
                this.f7003c = this.f7001a.getDecoratedStart(view);
            }
            this.f7002b = i2;
        }

        public void assignFromViewAndKeepVisibleRect(View view, int i2) {
            int totalSpaceChange = this.f7001a.getTotalSpaceChange();
            if (totalSpaceChange >= 0) {
                assignFromView(view, i2);
                return;
            }
            this.f7002b = i2;
            if (this.f7004d) {
                int endAfterPadding = (this.f7001a.getEndAfterPadding() - totalSpaceChange) - this.f7001a.getDecoratedEnd(view);
                this.f7003c = this.f7001a.getEndAfterPadding() - endAfterPadding;
                if (endAfterPadding > 0) {
                    int decoratedMeasurement = this.f7003c - this.f7001a.getDecoratedMeasurement(view);
                    int startAfterPadding = this.f7001a.getStartAfterPadding();
                    int min = decoratedMeasurement - (startAfterPadding + Math.min(this.f7001a.getDecoratedStart(view) - startAfterPadding, 0));
                    if (min < 0) {
                        this.f7003c += Math.min(endAfterPadding, -min);
                        return;
                    }
                    return;
                }
                return;
            }
            int decoratedStart = this.f7001a.getDecoratedStart(view);
            int startAfterPadding2 = decoratedStart - this.f7001a.getStartAfterPadding();
            this.f7003c = decoratedStart;
            if (startAfterPadding2 > 0) {
                int endAfterPadding2 = (this.f7001a.getEndAfterPadding() - Math.min(0, (this.f7001a.getEndAfterPadding() - totalSpaceChange) - this.f7001a.getDecoratedEnd(view))) - (decoratedStart + this.f7001a.getDecoratedMeasurement(view));
                if (endAfterPadding2 < 0) {
                    this.f7003c -= Math.min(startAfterPadding2, -endAfterPadding2);
                }
            }
        }

        boolean b(View view, RecyclerView.State state) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            return !layoutParams.isItemRemoved() && layoutParams.getViewLayoutPosition() >= 0 && layoutParams.getViewLayoutPosition() < state.getItemCount();
        }

        void c() {
            this.f7002b = -1;
            this.f7003c = Integer.MIN_VALUE;
            this.f7004d = false;
            this.f7005e = false;
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.f7002b + ", mCoordinate=" + this.f7003c + ", mLayoutFromEnd=" + this.f7004d + ", mValid=" + this.f7005e + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static class LayoutChunkResult {
        public int mConsumed;
        public boolean mFinished;
        public boolean mFocusable;
        public boolean mIgnoreConsumed;

        protected LayoutChunkResult() {
        }

        void a() {
            this.mConsumed = 0;
            this.mFinished = false;
            this.mIgnoreConsumed = false;
            this.mFocusable = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class LayoutState {

        /* renamed from: n  reason: collision with root package name */
        static final String f7006n = "LLM#LayoutState";

        /* renamed from: o  reason: collision with root package name */
        static final int f7007o = -1;

        /* renamed from: p  reason: collision with root package name */
        static final int f7008p = 1;

        /* renamed from: q  reason: collision with root package name */
        static final int f7009q = Integer.MIN_VALUE;

        /* renamed from: r  reason: collision with root package name */
        static final int f7010r = -1;

        /* renamed from: s  reason: collision with root package name */
        static final int f7011s = 1;

        /* renamed from: t  reason: collision with root package name */
        static final int f7012t = Integer.MIN_VALUE;

        /* renamed from: b  reason: collision with root package name */
        int f7014b;

        /* renamed from: c  reason: collision with root package name */
        int f7015c;

        /* renamed from: d  reason: collision with root package name */
        int f7016d;

        /* renamed from: e  reason: collision with root package name */
        int f7017e;

        /* renamed from: f  reason: collision with root package name */
        int f7018f;

        /* renamed from: g  reason: collision with root package name */
        int f7019g;

        /* renamed from: k  reason: collision with root package name */
        int f7023k;

        /* renamed from: m  reason: collision with root package name */
        boolean f7025m;

        /* renamed from: a  reason: collision with root package name */
        boolean f7013a = true;

        /* renamed from: h  reason: collision with root package name */
        int f7020h = 0;

        /* renamed from: i  reason: collision with root package name */
        int f7021i = 0;

        /* renamed from: j  reason: collision with root package name */
        boolean f7022j = false;

        /* renamed from: l  reason: collision with root package name */
        List<RecyclerView.ViewHolder> f7024l = null;

        LayoutState() {
        }

        private View d() {
            int size = this.f7024l.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = this.f7024l.get(i2).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                if (!layoutParams.isItemRemoved() && this.f7016d == layoutParams.getViewLayoutPosition()) {
                    assignPositionFromScrapList(view);
                    return view;
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean a(RecyclerView.State state) {
            int i2 = this.f7016d;
            return i2 >= 0 && i2 < state.getItemCount();
        }

        public void assignPositionFromScrapList() {
            assignPositionFromScrapList(null);
        }

        void b() {
            StringBuilder sb = new StringBuilder();
            sb.append("avail:");
            sb.append(this.f7015c);
            sb.append(", ind:");
            sb.append(this.f7016d);
            sb.append(", dir:");
            sb.append(this.f7017e);
            sb.append(", offset:");
            sb.append(this.f7014b);
            sb.append(", layoutDir:");
            sb.append(this.f7018f);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public View c(RecyclerView.Recycler recycler) {
            if (this.f7024l != null) {
                return d();
            }
            View viewForPosition = recycler.getViewForPosition(this.f7016d);
            this.f7016d += this.f7017e;
            return viewForPosition;
        }

        public View nextViewInLimitedList(View view) {
            int viewLayoutPosition;
            int size = this.f7024l.size();
            View view2 = null;
            int i2 = Integer.MAX_VALUE;
            for (int i4 = 0; i4 < size; i4++) {
                View view3 = this.f7024l.get(i4).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view3.getLayoutParams();
                if (view3 != view && !layoutParams.isItemRemoved() && (viewLayoutPosition = (layoutParams.getViewLayoutPosition() - this.f7016d) * this.f7017e) >= 0 && viewLayoutPosition < i2) {
                    view2 = view3;
                    if (viewLayoutPosition == 0) {
                        break;
                    }
                    i2 = viewLayoutPosition;
                }
            }
            return view2;
        }

        public void assignPositionFromScrapList(View view) {
            View nextViewInLimitedList = nextViewInLimitedList(view);
            if (nextViewInLimitedList == null) {
                this.f7016d = -1;
            } else {
                this.f7016d = ((RecyclerView.LayoutParams) nextViewInLimitedList.getLayoutParams()).getViewLayoutPosition();
            }
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes2.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.recyclerview.widget.LinearLayoutManager.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        int f7026a;

        /* renamed from: b  reason: collision with root package name */
        int f7027b;

        /* renamed from: c  reason: collision with root package name */
        boolean f7028c;

        public SavedState() {
        }

        boolean a() {
            return this.f7026a >= 0;
        }

        void b() {
            this.f7026a = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f7026a);
            parcel.writeInt(this.f7027b);
            parcel.writeInt(this.f7028c ? 1 : 0);
        }

        SavedState(Parcel parcel) {
            this.f7026a = parcel.readInt();
            this.f7027b = parcel.readInt();
            this.f7028c = parcel.readInt() == 1;
        }

        public SavedState(SavedState savedState) {
            this.f7026a = savedState.f7026a;
            this.f7027b = savedState.f7027b;
            this.f7028c = savedState.f7028c;
        }
    }

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    private int computeScrollExtent(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return ScrollbarHelper.a(state, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    private int computeScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return ScrollbarHelper.b(state, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    private int computeScrollRange(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return ScrollbarHelper.c(state, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    private View findFirstPartiallyOrCompletelyInvisibleChild() {
        return findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount());
    }

    private View findLastPartiallyOrCompletelyInvisibleChild() {
        return findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1);
    }

    private View findPartiallyOrCompletelyInvisibleChildClosestToEnd() {
        return this.mShouldReverseLayout ? findFirstPartiallyOrCompletelyInvisibleChild() : findLastPartiallyOrCompletelyInvisibleChild();
    }

    private View findPartiallyOrCompletelyInvisibleChildClosestToStart() {
        return this.mShouldReverseLayout ? findLastPartiallyOrCompletelyInvisibleChild() : findFirstPartiallyOrCompletelyInvisibleChild();
    }

    private int fixLayoutEndGap(int i2, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z3) {
        int endAfterPadding;
        int endAfterPadding2 = this.mOrientationHelper.getEndAfterPadding() - i2;
        if (endAfterPadding2 > 0) {
            int i4 = -scrollBy(-endAfterPadding2, recycler, state);
            int i5 = i2 + i4;
            if (!z3 || (endAfterPadding = this.mOrientationHelper.getEndAfterPadding() - i5) <= 0) {
                return i4;
            }
            this.mOrientationHelper.offsetChildren(endAfterPadding);
            return endAfterPadding + i4;
        }
        return 0;
    }

    private int fixLayoutStartGap(int i2, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z3) {
        int startAfterPadding;
        int startAfterPadding2 = i2 - this.mOrientationHelper.getStartAfterPadding();
        if (startAfterPadding2 > 0) {
            int i4 = -scrollBy(startAfterPadding2, recycler, state);
            int i5 = i2 + i4;
            if (!z3 || (startAfterPadding = i5 - this.mOrientationHelper.getStartAfterPadding()) <= 0) {
                return i4;
            }
            this.mOrientationHelper.offsetChildren(-startAfterPadding);
            return i4 - startAfterPadding;
        }
        return 0;
    }

    private View getChildClosestToEnd() {
        return getChildAt(this.mShouldReverseLayout ? 0 : getChildCount() - 1);
    }

    private View getChildClosestToStart() {
        return getChildAt(this.mShouldReverseLayout ? getChildCount() - 1 : 0);
    }

    private void layoutForPredictiveAnimations(RecyclerView.Recycler recycler, RecyclerView.State state, int i2, int i4) {
        if (!state.willRunPredictiveAnimations() || getChildCount() == 0 || state.isPreLayout() || !supportsPredictiveItemAnimations()) {
            return;
        }
        List<RecyclerView.ViewHolder> scrapList = recycler.getScrapList();
        int size = scrapList.size();
        int position = getPosition(getChildAt(0));
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            RecyclerView.ViewHolder viewHolder = scrapList.get(i7);
            if (!viewHolder.isRemoved()) {
                if (((viewHolder.getLayoutPosition() < position) != this.mShouldReverseLayout ? (char) 65535 : (char) 1) == 65535) {
                    i5 += this.mOrientationHelper.getDecoratedMeasurement(viewHolder.itemView);
                } else {
                    i6 += this.mOrientationHelper.getDecoratedMeasurement(viewHolder.itemView);
                }
            }
        }
        this.mLayoutState.f7024l = scrapList;
        if (i5 > 0) {
            updateLayoutStateToFillStart(getPosition(getChildClosestToStart()), i2);
            LayoutState layoutState = this.mLayoutState;
            layoutState.f7020h = i5;
            layoutState.f7015c = 0;
            layoutState.assignPositionFromScrapList();
            fill(recycler, this.mLayoutState, state, false);
        }
        if (i6 > 0) {
            updateLayoutStateToFillEnd(getPosition(getChildClosestToEnd()), i4);
            LayoutState layoutState2 = this.mLayoutState;
            layoutState2.f7020h = i6;
            layoutState2.f7015c = 0;
            layoutState2.assignPositionFromScrapList();
            fill(recycler, this.mLayoutState, state, false);
        }
        this.mLayoutState.f7024l = null;
    }

    private void logChildren() {
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            StringBuilder sb = new StringBuilder();
            sb.append("item ");
            sb.append(getPosition(childAt));
            sb.append(", coord:");
            sb.append(this.mOrientationHelper.getDecoratedStart(childAt));
        }
    }

    private void recycleByLayoutState(RecyclerView.Recycler recycler, LayoutState layoutState) {
        if (!layoutState.f7013a || layoutState.f7025m) {
            return;
        }
        int i2 = layoutState.f7019g;
        int i4 = layoutState.f7021i;
        if (layoutState.f7018f == -1) {
            recycleViewsFromEnd(recycler, i2, i4);
        } else {
            recycleViewsFromStart(recycler, i2, i4);
        }
    }

    private void recycleChildren(RecyclerView.Recycler recycler, int i2, int i4) {
        if (i2 == i4) {
            return;
        }
        if (i4 <= i2) {
            while (i2 > i4) {
                removeAndRecycleViewAt(i2, recycler);
                i2--;
            }
            return;
        }
        for (int i5 = i4 - 1; i5 >= i2; i5--) {
            removeAndRecycleViewAt(i5, recycler);
        }
    }

    private void recycleViewsFromEnd(RecyclerView.Recycler recycler, int i2, int i4) {
        int childCount = getChildCount();
        if (i2 < 0) {
            return;
        }
        int end = (this.mOrientationHelper.getEnd() - i2) + i4;
        if (this.mShouldReverseLayout) {
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (this.mOrientationHelper.getDecoratedStart(childAt) < end || this.mOrientationHelper.getTransformedStartWithDecoration(childAt) < end) {
                    recycleChildren(recycler, 0, i5);
                    return;
                }
            }
            return;
        }
        int i6 = childCount - 1;
        for (int i7 = i6; i7 >= 0; i7--) {
            View childAt2 = getChildAt(i7);
            if (this.mOrientationHelper.getDecoratedStart(childAt2) < end || this.mOrientationHelper.getTransformedStartWithDecoration(childAt2) < end) {
                recycleChildren(recycler, i6, i7);
                return;
            }
        }
    }

    private void recycleViewsFromStart(RecyclerView.Recycler recycler, int i2, int i4) {
        if (i2 < 0) {
            return;
        }
        int i5 = i2 - i4;
        int childCount = getChildCount();
        if (!this.mShouldReverseLayout) {
            for (int i6 = 0; i6 < childCount; i6++) {
                View childAt = getChildAt(i6);
                if (this.mOrientationHelper.getDecoratedEnd(childAt) > i5 || this.mOrientationHelper.getTransformedEndWithDecoration(childAt) > i5) {
                    recycleChildren(recycler, 0, i6);
                    return;
                }
            }
            return;
        }
        int i7 = childCount - 1;
        for (int i8 = i7; i8 >= 0; i8--) {
            View childAt2 = getChildAt(i8);
            if (this.mOrientationHelper.getDecoratedEnd(childAt2) > i5 || this.mOrientationHelper.getTransformedEndWithDecoration(childAt2) > i5) {
                recycleChildren(recycler, i7, i8);
                return;
            }
        }
    }

    private void resolveShouldLayoutReverse() {
        if (this.mOrientation != 1 && isLayoutRTL()) {
            this.mShouldReverseLayout = !this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = this.mReverseLayout;
        }
    }

    private boolean updateAnchorFromChildren(RecyclerView.Recycler recycler, RecyclerView.State state, AnchorInfo anchorInfo) {
        View findReferenceChild;
        boolean z3 = false;
        if (getChildCount() == 0) {
            return false;
        }
        View focusedChild = getFocusedChild();
        if (focusedChild != null && anchorInfo.b(focusedChild, state)) {
            anchorInfo.assignFromViewAndKeepVisibleRect(focusedChild, getPosition(focusedChild));
            return true;
        }
        boolean z4 = this.mLastStackFromEnd;
        boolean z5 = this.mStackFromEnd;
        if (z4 == z5 && (findReferenceChild = findReferenceChild(recycler, state, anchorInfo.f7004d, z5)) != null) {
            anchorInfo.assignFromView(findReferenceChild, getPosition(findReferenceChild));
            if (!state.isPreLayout() && supportsPredictiveItemAnimations()) {
                int decoratedStart = this.mOrientationHelper.getDecoratedStart(findReferenceChild);
                int decoratedEnd = this.mOrientationHelper.getDecoratedEnd(findReferenceChild);
                int startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
                int endAfterPadding = this.mOrientationHelper.getEndAfterPadding();
                boolean z6 = decoratedEnd <= startAfterPadding && decoratedStart < startAfterPadding;
                if (decoratedStart >= endAfterPadding && decoratedEnd > endAfterPadding) {
                    z3 = true;
                }
                if (z6 || z3) {
                    if (anchorInfo.f7004d) {
                        startAfterPadding = endAfterPadding;
                    }
                    anchorInfo.f7003c = startAfterPadding;
                }
            }
            return true;
        }
        return false;
    }

    private boolean updateAnchorFromPendingData(RecyclerView.State state, AnchorInfo anchorInfo) {
        int i2;
        int decoratedStart;
        if (!state.isPreLayout() && (i2 = this.mPendingScrollPosition) != -1) {
            if (i2 >= 0 && i2 < state.getItemCount()) {
                anchorInfo.f7002b = this.mPendingScrollPosition;
                SavedState savedState = this.mPendingSavedState;
                if (savedState != null && savedState.a()) {
                    boolean z3 = this.mPendingSavedState.f7028c;
                    anchorInfo.f7004d = z3;
                    if (z3) {
                        anchorInfo.f7003c = this.mOrientationHelper.getEndAfterPadding() - this.mPendingSavedState.f7027b;
                    } else {
                        anchorInfo.f7003c = this.mOrientationHelper.getStartAfterPadding() + this.mPendingSavedState.f7027b;
                    }
                    return true;
                } else if (this.mPendingScrollPositionOffset == Integer.MIN_VALUE) {
                    View findViewByPosition = findViewByPosition(this.mPendingScrollPosition);
                    if (findViewByPosition != null) {
                        if (this.mOrientationHelper.getDecoratedMeasurement(findViewByPosition) > this.mOrientationHelper.getTotalSpace()) {
                            anchorInfo.a();
                            return true;
                        } else if (this.mOrientationHelper.getDecoratedStart(findViewByPosition) - this.mOrientationHelper.getStartAfterPadding() < 0) {
                            anchorInfo.f7003c = this.mOrientationHelper.getStartAfterPadding();
                            anchorInfo.f7004d = false;
                            return true;
                        } else if (this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(findViewByPosition) < 0) {
                            anchorInfo.f7003c = this.mOrientationHelper.getEndAfterPadding();
                            anchorInfo.f7004d = true;
                            return true;
                        } else {
                            if (anchorInfo.f7004d) {
                                decoratedStart = this.mOrientationHelper.getDecoratedEnd(findViewByPosition) + this.mOrientationHelper.getTotalSpaceChange();
                            } else {
                                decoratedStart = this.mOrientationHelper.getDecoratedStart(findViewByPosition);
                            }
                            anchorInfo.f7003c = decoratedStart;
                        }
                    } else {
                        if (getChildCount() > 0) {
                            anchorInfo.f7004d = (this.mPendingScrollPosition < getPosition(getChildAt(0))) == this.mShouldReverseLayout;
                        }
                        anchorInfo.a();
                    }
                    return true;
                } else {
                    boolean z4 = this.mShouldReverseLayout;
                    anchorInfo.f7004d = z4;
                    if (z4) {
                        anchorInfo.f7003c = this.mOrientationHelper.getEndAfterPadding() - this.mPendingScrollPositionOffset;
                    } else {
                        anchorInfo.f7003c = this.mOrientationHelper.getStartAfterPadding() + this.mPendingScrollPositionOffset;
                    }
                    return true;
                }
            }
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        }
        return false;
    }

    private void updateAnchorInfoForLayout(RecyclerView.Recycler recycler, RecyclerView.State state, AnchorInfo anchorInfo) {
        if (updateAnchorFromPendingData(state, anchorInfo) || updateAnchorFromChildren(recycler, state, anchorInfo)) {
            return;
        }
        anchorInfo.a();
        anchorInfo.f7002b = this.mStackFromEnd ? state.getItemCount() - 1 : 0;
    }

    private void updateLayoutState(int i2, int i4, boolean z3, RecyclerView.State state) {
        int startAfterPadding;
        this.mLayoutState.f7025m = resolveIsInfinite();
        this.mLayoutState.f7018f = i2;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(state, iArr);
        int max = Math.max(0, this.mReusableIntPair[0]);
        int max2 = Math.max(0, this.mReusableIntPair[1]);
        boolean z4 = i2 == 1;
        LayoutState layoutState = this.mLayoutState;
        int i5 = z4 ? max2 : max;
        layoutState.f7020h = i5;
        if (!z4) {
            max = max2;
        }
        layoutState.f7021i = max;
        if (z4) {
            layoutState.f7020h = i5 + this.mOrientationHelper.getEndPadding();
            View childClosestToEnd = getChildClosestToEnd();
            LayoutState layoutState2 = this.mLayoutState;
            layoutState2.f7017e = this.mShouldReverseLayout ? -1 : 1;
            int position = getPosition(childClosestToEnd);
            LayoutState layoutState3 = this.mLayoutState;
            layoutState2.f7016d = position + layoutState3.f7017e;
            layoutState3.f7014b = this.mOrientationHelper.getDecoratedEnd(childClosestToEnd);
            startAfterPadding = this.mOrientationHelper.getDecoratedEnd(childClosestToEnd) - this.mOrientationHelper.getEndAfterPadding();
        } else {
            View childClosestToStart = getChildClosestToStart();
            this.mLayoutState.f7020h += this.mOrientationHelper.getStartAfterPadding();
            LayoutState layoutState4 = this.mLayoutState;
            layoutState4.f7017e = this.mShouldReverseLayout ? 1 : -1;
            int position2 = getPosition(childClosestToStart);
            LayoutState layoutState5 = this.mLayoutState;
            layoutState4.f7016d = position2 + layoutState5.f7017e;
            layoutState5.f7014b = this.mOrientationHelper.getDecoratedStart(childClosestToStart);
            startAfterPadding = (-this.mOrientationHelper.getDecoratedStart(childClosestToStart)) + this.mOrientationHelper.getStartAfterPadding();
        }
        LayoutState layoutState6 = this.mLayoutState;
        layoutState6.f7015c = i4;
        if (z3) {
            layoutState6.f7015c = i4 - startAfterPadding;
        }
        layoutState6.f7019g = startAfterPadding;
    }

    private void updateLayoutStateToFillEnd(AnchorInfo anchorInfo) {
        updateLayoutStateToFillEnd(anchorInfo.f7002b, anchorInfo.f7003c);
    }

    private void updateLayoutStateToFillStart(AnchorInfo anchorInfo) {
        updateLayoutStateToFillStart(anchorInfo.f7002b, anchorInfo.f7003c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void assertNotInLayoutOrScroll(String str) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void calculateExtraLayoutSpace(@NonNull RecyclerView.State state, @NonNull int[] iArr) {
        int i2;
        int extraLayoutSpace = getExtraLayoutSpace(state);
        if (this.mLayoutState.f7018f == -1) {
            i2 = 0;
        } else {
            i2 = extraLayoutSpace;
            extraLayoutSpace = 0;
        }
        iArr[0] = extraLayoutSpace;
        iArr[1] = i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void collectAdjacentPrefetchPositions(int i2, int i4, RecyclerView.State state, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        if (this.mOrientation != 0) {
            i2 = i4;
        }
        if (getChildCount() == 0 || i2 == 0) {
            return;
        }
        ensureLayoutState();
        updateLayoutState(i2 > 0 ? 1 : -1, Math.abs(i2), true, state);
        collectPrefetchPositionsForLayoutState(state, this.mLayoutState, layoutPrefetchRegistry);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void collectInitialPrefetchPositions(int i2, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        boolean z3;
        int i4;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null && savedState.a()) {
            SavedState savedState2 = this.mPendingSavedState;
            z3 = savedState2.f7028c;
            i4 = savedState2.f7026a;
        } else {
            resolveShouldLayoutReverse();
            z3 = this.mShouldReverseLayout;
            i4 = this.mPendingScrollPosition;
            if (i4 == -1) {
                i4 = z3 ? i2 - 1 : 0;
            }
        }
        int i5 = z3 ? -1 : 1;
        for (int i6 = 0; i6 < this.mInitialPrefetchItemCount && i4 >= 0 && i4 < i2; i6++) {
            layoutPrefetchRegistry.addPosition(i4, 0);
            i4 += i5;
        }
    }

    void collectPrefetchPositionsForLayoutState(RecyclerView.State state, LayoutState layoutState, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int i2 = layoutState.f7016d;
        if (i2 < 0 || i2 >= state.getItemCount()) {
            return;
        }
        layoutPrefetchRegistry.addPosition(i2, Math.max(0, layoutState.f7019g));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public PointF computeScrollVectorForPosition(int i2) {
        if (getChildCount() == 0) {
            return null;
        }
        int i4 = (i2 < getPosition(getChildAt(0))) != this.mShouldReverseLayout ? -1 : 1;
        if (this.mOrientation == 0) {
            return new PointF(i4, 0.0f);
        }
        return new PointF(0.0f, i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int convertFocusDirectionToLayoutDirection(int i2) {
        return i2 != 1 ? i2 != 2 ? i2 != 17 ? i2 != 33 ? i2 != 66 ? (i2 == 130 && this.mOrientation == 1) ? 1 : Integer.MIN_VALUE : this.mOrientation == 0 ? 1 : Integer.MIN_VALUE : this.mOrientation == 1 ? -1 : Integer.MIN_VALUE : this.mOrientation == 0 ? -1 : Integer.MIN_VALUE : (this.mOrientation != 1 && isLayoutRTL()) ? -1 : 1 : (this.mOrientation != 1 && isLayoutRTL()) ? 1 : -1;
    }

    LayoutState createLayoutState() {
        return new LayoutState();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ensureLayoutState() {
        if (this.mLayoutState == null) {
            this.mLayoutState = createLayoutState();
        }
    }

    int fill(RecyclerView.Recycler recycler, LayoutState layoutState, RecyclerView.State state, boolean z3) {
        int i2 = layoutState.f7015c;
        int i4 = layoutState.f7019g;
        if (i4 != Integer.MIN_VALUE) {
            if (i2 < 0) {
                layoutState.f7019g = i4 + i2;
            }
            recycleByLayoutState(recycler, layoutState);
        }
        int i5 = layoutState.f7015c + layoutState.f7020h;
        LayoutChunkResult layoutChunkResult = this.mLayoutChunkResult;
        while (true) {
            if ((!layoutState.f7025m && i5 <= 0) || !layoutState.a(state)) {
                break;
            }
            layoutChunkResult.a();
            layoutChunk(recycler, state, layoutState, layoutChunkResult);
            if (!layoutChunkResult.mFinished) {
                layoutState.f7014b += layoutChunkResult.mConsumed * layoutState.f7018f;
                if (!layoutChunkResult.mIgnoreConsumed || layoutState.f7024l != null || !state.isPreLayout()) {
                    int i6 = layoutState.f7015c;
                    int i7 = layoutChunkResult.mConsumed;
                    layoutState.f7015c = i6 - i7;
                    i5 -= i7;
                }
                int i8 = layoutState.f7019g;
                if (i8 != Integer.MIN_VALUE) {
                    int i9 = i8 + layoutChunkResult.mConsumed;
                    layoutState.f7019g = i9;
                    int i10 = layoutState.f7015c;
                    if (i10 < 0) {
                        layoutState.f7019g = i9 + i10;
                    }
                    recycleByLayoutState(recycler, layoutState);
                }
                if (z3 && layoutChunkResult.mFocusable) {
                    break;
                }
            } else {
                break;
            }
        }
        return i2 - layoutState.f7015c;
    }

    public int findFirstCompletelyVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(0, getChildCount(), true, false);
        if (findOneVisibleChild == null) {
            return -1;
        }
        return getPosition(findOneVisibleChild);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View findFirstVisibleChildClosestToEnd(boolean z3, boolean z4) {
        if (this.mShouldReverseLayout) {
            return findOneVisibleChild(0, getChildCount(), z3, z4);
        }
        return findOneVisibleChild(getChildCount() - 1, -1, z3, z4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View findFirstVisibleChildClosestToStart(boolean z3, boolean z4) {
        if (this.mShouldReverseLayout) {
            return findOneVisibleChild(getChildCount() - 1, -1, z3, z4);
        }
        return findOneVisibleChild(0, getChildCount(), z3, z4);
    }

    public int findFirstVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(0, getChildCount(), false, true);
        if (findOneVisibleChild == null) {
            return -1;
        }
        return getPosition(findOneVisibleChild);
    }

    public int findLastCompletelyVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, true, false);
        if (findOneVisibleChild == null) {
            return -1;
        }
        return getPosition(findOneVisibleChild);
    }

    public int findLastVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, false, true);
        if (findOneVisibleChild == null) {
            return -1;
        }
        return getPosition(findOneVisibleChild);
    }

    View findOnePartiallyOrCompletelyInvisibleChild(int i2, int i4) {
        int i5;
        int i6;
        ensureLayoutState();
        if ((i4 > i2 ? (char) 1 : i4 < i2 ? (char) 65535 : (char) 0) == 0) {
            return getChildAt(i2);
        }
        if (this.mOrientationHelper.getDecoratedStart(getChildAt(i2)) < this.mOrientationHelper.getStartAfterPadding()) {
            i5 = 16644;
            i6 = 16388;
        } else {
            i5 = 4161;
            i6 = 4097;
        }
        if (this.mOrientation == 0) {
            return this.mHorizontalBoundCheck.a(i2, i4, i5, i6);
        }
        return this.mVerticalBoundCheck.a(i2, i4, i5, i6);
    }

    View findOneVisibleChild(int i2, int i4, boolean z3, boolean z4) {
        ensureLayoutState();
        int i5 = z3 ? 24579 : 320;
        int i6 = z4 ? 320 : 0;
        if (this.mOrientation == 0) {
            return this.mHorizontalBoundCheck.a(i2, i4, i5, i6);
        }
        return this.mVerticalBoundCheck.a(i2, i4, i5, i6);
    }

    View findReferenceChild(RecyclerView.Recycler recycler, RecyclerView.State state, boolean z3, boolean z4) {
        int i2;
        int i4;
        ensureLayoutState();
        int childCount = getChildCount();
        int i5 = -1;
        if (z4) {
            i2 = getChildCount() - 1;
            i4 = -1;
        } else {
            i5 = childCount;
            i2 = 0;
            i4 = 1;
        }
        int itemCount = state.getItemCount();
        int startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
        int endAfterPadding = this.mOrientationHelper.getEndAfterPadding();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (i2 != i5) {
            View childAt = getChildAt(i2);
            int position = getPosition(childAt);
            int decoratedStart = this.mOrientationHelper.getDecoratedStart(childAt);
            int decoratedEnd = this.mOrientationHelper.getDecoratedEnd(childAt);
            if (position >= 0 && position < itemCount) {
                if (!((RecyclerView.LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    boolean z5 = decoratedEnd <= startAfterPadding && decoratedStart < startAfterPadding;
                    boolean z6 = decoratedStart >= endAfterPadding && decoratedEnd > endAfterPadding;
                    if (!z5 && !z6) {
                        return childAt;
                    }
                    if (z3) {
                        if (!z6) {
                            if (view != null) {
                            }
                            view = childAt;
                        }
                        view2 = childAt;
                    } else {
                        if (!z5) {
                            if (view != null) {
                            }
                            view = childAt;
                        }
                        view2 = childAt;
                    }
                } else if (view3 == null) {
                    view3 = childAt;
                }
            }
            i2 += i4;
        }
        return view != null ? view : view2 != null ? view2 : view3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public View findViewByPosition(int i2) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position = i2 - getPosition(getChildAt(0));
        if (position >= 0 && position < childCount) {
            View childAt = getChildAt(position);
            if (getPosition(childAt) == i2) {
                return childAt;
            }
        }
        return super.findViewByPosition(i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Deprecated
    protected int getExtraLayoutSpace(RecyclerView.State state) {
        if (state.hasTargetScrollPosition()) {
            return this.mOrientationHelper.getTotalSpace();
        }
        return 0;
    }

    public int getInitialPrefetchItemCount() {
        return this.mInitialPrefetchItemCount;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public boolean getRecycleChildrenOnDetach() {
        return this.mRecycleChildrenOnDetach;
    }

    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    public boolean getStackFromEnd() {
        return this.mStackFromEnd;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    public boolean isSmoothScrollbarEnabled() {
        return this.mSmoothScrollbarEnabled;
    }

    void layoutChunk(RecyclerView.Recycler recycler, RecyclerView.State state, LayoutState layoutState, LayoutChunkResult layoutChunkResult) {
        int i2;
        int i4;
        int i5;
        int i6;
        int decoratedMeasurementInOther;
        View c4 = layoutState.c(recycler);
        if (c4 == null) {
            layoutChunkResult.mFinished = true;
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) c4.getLayoutParams();
        if (layoutState.f7024l == null) {
            if (this.mShouldReverseLayout == (layoutState.f7018f == -1)) {
                addView(c4);
            } else {
                addView(c4, 0);
            }
        } else {
            if (this.mShouldReverseLayout == (layoutState.f7018f == -1)) {
                addDisappearingView(c4);
            } else {
                addDisappearingView(c4, 0);
            }
        }
        measureChildWithMargins(c4, 0, 0);
        layoutChunkResult.mConsumed = this.mOrientationHelper.getDecoratedMeasurement(c4);
        if (this.mOrientation == 1) {
            if (isLayoutRTL()) {
                decoratedMeasurementInOther = getWidth() - getPaddingRight();
                i6 = decoratedMeasurementInOther - this.mOrientationHelper.getDecoratedMeasurementInOther(c4);
            } else {
                i6 = getPaddingLeft();
                decoratedMeasurementInOther = this.mOrientationHelper.getDecoratedMeasurementInOther(c4) + i6;
            }
            if (layoutState.f7018f == -1) {
                int i7 = layoutState.f7014b;
                i5 = i7;
                i4 = decoratedMeasurementInOther;
                i2 = i7 - layoutChunkResult.mConsumed;
            } else {
                int i8 = layoutState.f7014b;
                i2 = i8;
                i4 = decoratedMeasurementInOther;
                i5 = layoutChunkResult.mConsumed + i8;
            }
        } else {
            int paddingTop = getPaddingTop();
            int decoratedMeasurementInOther2 = this.mOrientationHelper.getDecoratedMeasurementInOther(c4) + paddingTop;
            if (layoutState.f7018f == -1) {
                int i9 = layoutState.f7014b;
                i4 = i9;
                i2 = paddingTop;
                i5 = decoratedMeasurementInOther2;
                i6 = i9 - layoutChunkResult.mConsumed;
            } else {
                int i10 = layoutState.f7014b;
                i2 = paddingTop;
                i4 = layoutChunkResult.mConsumed + i10;
                i5 = decoratedMeasurementInOther2;
                i6 = i10;
            }
        }
        layoutDecoratedWithMargins(c4, i6, i2, i4, i5);
        if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
            layoutChunkResult.mIgnoreConsumed = true;
        }
        layoutChunkResult.mFocusable = c4.hasFocusable();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onAnchorReady(RecyclerView.Recycler recycler, RecyclerView.State state, AnchorInfo anchorInfo, int i2) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        if (this.mRecycleChildrenOnDetach) {
            removeAndRecycleAllViews(recycler);
            recycler.clear();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public View onFocusSearchFailed(View view, int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int convertFocusDirectionToLayoutDirection;
        View findPartiallyOrCompletelyInvisibleChildClosestToEnd;
        View childClosestToEnd;
        resolveShouldLayoutReverse();
        if (getChildCount() == 0 || (convertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i2)) == Integer.MIN_VALUE) {
            return null;
        }
        ensureLayoutState();
        updateLayoutState(convertFocusDirectionToLayoutDirection, (int) (this.mOrientationHelper.getTotalSpace() * MAX_SCROLL_FACTOR), false, state);
        LayoutState layoutState = this.mLayoutState;
        layoutState.f7019g = Integer.MIN_VALUE;
        layoutState.f7013a = false;
        fill(recycler, layoutState, state, true);
        if (convertFocusDirectionToLayoutDirection == -1) {
            findPartiallyOrCompletelyInvisibleChildClosestToEnd = findPartiallyOrCompletelyInvisibleChildClosestToStart();
        } else {
            findPartiallyOrCompletelyInvisibleChildClosestToEnd = findPartiallyOrCompletelyInvisibleChildClosestToEnd();
        }
        if (convertFocusDirectionToLayoutDirection == -1) {
            childClosestToEnd = getChildClosestToStart();
        } else {
            childClosestToEnd = getChildClosestToEnd();
        }
        if (childClosestToEnd.hasFocusable()) {
            if (findPartiallyOrCompletelyInvisibleChildClosestToEnd == null) {
                return null;
            }
            return childClosestToEnd;
        }
        return findPartiallyOrCompletelyInvisibleChildClosestToEnd;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(findFirstVisibleItemPosition());
            accessibilityEvent.setToIndex(findLastVisibleItemPosition());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i2;
        int i4;
        int i5;
        int i6;
        int fixLayoutEndGap;
        int i7;
        View findViewByPosition;
        int decoratedStart;
        int i8;
        int i9 = -1;
        if ((this.mPendingSavedState != null || this.mPendingScrollPosition != -1) && state.getItemCount() == 0) {
            removeAndRecycleAllViews(recycler);
            return;
        }
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null && savedState.a()) {
            this.mPendingScrollPosition = this.mPendingSavedState.f7026a;
        }
        ensureLayoutState();
        this.mLayoutState.f7013a = false;
        resolveShouldLayoutReverse();
        View focusedChild = getFocusedChild();
        AnchorInfo anchorInfo = this.mAnchorInfo;
        if (anchorInfo.f7005e && this.mPendingScrollPosition == -1 && this.mPendingSavedState == null) {
            if (focusedChild != null && (this.mOrientationHelper.getDecoratedStart(focusedChild) >= this.mOrientationHelper.getEndAfterPadding() || this.mOrientationHelper.getDecoratedEnd(focusedChild) <= this.mOrientationHelper.getStartAfterPadding())) {
                this.mAnchorInfo.assignFromViewAndKeepVisibleRect(focusedChild, getPosition(focusedChild));
            }
        } else {
            anchorInfo.c();
            AnchorInfo anchorInfo2 = this.mAnchorInfo;
            anchorInfo2.f7004d = this.mShouldReverseLayout ^ this.mStackFromEnd;
            updateAnchorInfoForLayout(recycler, state, anchorInfo2);
            this.mAnchorInfo.f7005e = true;
        }
        LayoutState layoutState = this.mLayoutState;
        layoutState.f7018f = layoutState.f7023k >= 0 ? 1 : -1;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(state, iArr);
        int max = Math.max(0, this.mReusableIntPair[0]) + this.mOrientationHelper.getStartAfterPadding();
        int max2 = Math.max(0, this.mReusableIntPair[1]) + this.mOrientationHelper.getEndPadding();
        if (state.isPreLayout() && (i7 = this.mPendingScrollPosition) != -1 && this.mPendingScrollPositionOffset != Integer.MIN_VALUE && (findViewByPosition = findViewByPosition(i7)) != null) {
            if (this.mShouldReverseLayout) {
                i8 = this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(findViewByPosition);
                decoratedStart = this.mPendingScrollPositionOffset;
            } else {
                decoratedStart = this.mOrientationHelper.getDecoratedStart(findViewByPosition) - this.mOrientationHelper.getStartAfterPadding();
                i8 = this.mPendingScrollPositionOffset;
            }
            int i10 = i8 - decoratedStart;
            if (i10 > 0) {
                max += i10;
            } else {
                max2 -= i10;
            }
        }
        AnchorInfo anchorInfo3 = this.mAnchorInfo;
        if (!anchorInfo3.f7004d ? !this.mShouldReverseLayout : this.mShouldReverseLayout) {
            i9 = 1;
        }
        onAnchorReady(recycler, state, anchorInfo3, i9);
        detachAndScrapAttachedViews(recycler);
        this.mLayoutState.f7025m = resolveIsInfinite();
        this.mLayoutState.f7022j = state.isPreLayout();
        this.mLayoutState.f7021i = 0;
        AnchorInfo anchorInfo4 = this.mAnchorInfo;
        if (anchorInfo4.f7004d) {
            updateLayoutStateToFillStart(anchorInfo4);
            LayoutState layoutState2 = this.mLayoutState;
            layoutState2.f7020h = max;
            fill(recycler, layoutState2, state, false);
            LayoutState layoutState3 = this.mLayoutState;
            i4 = layoutState3.f7014b;
            int i11 = layoutState3.f7016d;
            int i12 = layoutState3.f7015c;
            if (i12 > 0) {
                max2 += i12;
            }
            updateLayoutStateToFillEnd(this.mAnchorInfo);
            LayoutState layoutState4 = this.mLayoutState;
            layoutState4.f7020h = max2;
            layoutState4.f7016d += layoutState4.f7017e;
            fill(recycler, layoutState4, state, false);
            LayoutState layoutState5 = this.mLayoutState;
            i2 = layoutState5.f7014b;
            int i13 = layoutState5.f7015c;
            if (i13 > 0) {
                updateLayoutStateToFillStart(i11, i4);
                LayoutState layoutState6 = this.mLayoutState;
                layoutState6.f7020h = i13;
                fill(recycler, layoutState6, state, false);
                i4 = this.mLayoutState.f7014b;
            }
        } else {
            updateLayoutStateToFillEnd(anchorInfo4);
            LayoutState layoutState7 = this.mLayoutState;
            layoutState7.f7020h = max2;
            fill(recycler, layoutState7, state, false);
            LayoutState layoutState8 = this.mLayoutState;
            i2 = layoutState8.f7014b;
            int i14 = layoutState8.f7016d;
            int i15 = layoutState8.f7015c;
            if (i15 > 0) {
                max += i15;
            }
            updateLayoutStateToFillStart(this.mAnchorInfo);
            LayoutState layoutState9 = this.mLayoutState;
            layoutState9.f7020h = max;
            layoutState9.f7016d += layoutState9.f7017e;
            fill(recycler, layoutState9, state, false);
            LayoutState layoutState10 = this.mLayoutState;
            i4 = layoutState10.f7014b;
            int i16 = layoutState10.f7015c;
            if (i16 > 0) {
                updateLayoutStateToFillEnd(i14, i2);
                LayoutState layoutState11 = this.mLayoutState;
                layoutState11.f7020h = i16;
                fill(recycler, layoutState11, state, false);
                i2 = this.mLayoutState.f7014b;
            }
        }
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout ^ this.mStackFromEnd) {
                int fixLayoutEndGap2 = fixLayoutEndGap(i2, recycler, state, true);
                i5 = i4 + fixLayoutEndGap2;
                i6 = i2 + fixLayoutEndGap2;
                fixLayoutEndGap = fixLayoutStartGap(i5, recycler, state, false);
            } else {
                int fixLayoutStartGap = fixLayoutStartGap(i4, recycler, state, true);
                i5 = i4 + fixLayoutStartGap;
                i6 = i2 + fixLayoutStartGap;
                fixLayoutEndGap = fixLayoutEndGap(i6, recycler, state, false);
            }
            i4 = i5 + fixLayoutEndGap;
            i2 = i6 + fixLayoutEndGap;
        }
        layoutForPredictiveAnimations(recycler, state, i4, i2);
        if (!state.isPreLayout()) {
            this.mOrientationHelper.onLayoutComplete();
        } else {
            this.mAnchorInfo.c();
        }
        this.mLastStackFromEnd = this.mStackFromEnd;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mAnchorInfo.c();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.mPendingSavedState = savedState;
            if (this.mPendingScrollPosition != -1) {
                savedState.b();
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        if (this.mPendingSavedState != null) {
            return new SavedState(this.mPendingSavedState);
        }
        SavedState savedState = new SavedState();
        if (getChildCount() > 0) {
            ensureLayoutState();
            boolean z3 = this.mLastStackFromEnd ^ this.mShouldReverseLayout;
            savedState.f7028c = z3;
            if (z3) {
                View childClosestToEnd = getChildClosestToEnd();
                savedState.f7027b = this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(childClosestToEnd);
                savedState.f7026a = getPosition(childClosestToEnd);
            } else {
                View childClosestToStart = getChildClosestToStart();
                savedState.f7026a = getPosition(childClosestToStart);
                savedState.f7027b = this.mOrientationHelper.getDecoratedStart(childClosestToStart) - this.mOrientationHelper.getStartAfterPadding();
            }
        } else {
            savedState.b();
        }
        return savedState;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.ViewDropHandler
    public void prepareForDrop(@NonNull View view, @NonNull View view2, int i2, int i4) {
        assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
        ensureLayoutState();
        resolveShouldLayoutReverse();
        int position = getPosition(view);
        int position2 = getPosition(view2);
        char c4 = position < position2 ? (char) 1 : (char) 65535;
        if (this.mShouldReverseLayout) {
            if (c4 == 1) {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.getEndAfterPadding() - (this.mOrientationHelper.getDecoratedStart(view2) + this.mOrientationHelper.getDecoratedMeasurement(view)));
            } else {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(view2));
            }
        } else if (c4 == 65535) {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.getDecoratedStart(view2));
        } else {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.getDecoratedEnd(view2) - this.mOrientationHelper.getDecoratedMeasurement(view));
        }
    }

    boolean resolveIsInfinite() {
        return this.mOrientationHelper.getMode() == 0 && this.mOrientationHelper.getEnd() == 0;
    }

    int scrollBy(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() == 0 || i2 == 0) {
            return 0;
        }
        ensureLayoutState();
        this.mLayoutState.f7013a = true;
        int i4 = i2 > 0 ? 1 : -1;
        int abs = Math.abs(i2);
        updateLayoutState(i4, abs, true, state);
        LayoutState layoutState = this.mLayoutState;
        int fill = layoutState.f7019g + fill(recycler, layoutState, state, false);
        if (fill < 0) {
            return 0;
        }
        if (abs > fill) {
            i2 = i4 * fill;
        }
        this.mOrientationHelper.offsetChildren(-i2);
        this.mLayoutState.f7023k = i2;
        return i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy(i2, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i2) {
        this.mPendingScrollPosition = i2;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            savedState.b();
        }
        requestLayout();
    }

    public void scrollToPositionWithOffset(int i2, int i4) {
        this.mPendingScrollPosition = i2;
        this.mPendingScrollPositionOffset = i4;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            savedState.b();
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i2, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy(i2, recycler, state);
    }

    public void setInitialPrefetchItemCount(int i2) {
        this.mInitialPrefetchItemCount = i2;
    }

    public void setOrientation(int i2) {
        if (i2 != 0 && i2 != 1) {
            throw new IllegalArgumentException("invalid orientation:" + i2);
        }
        assertNotInLayoutOrScroll(null);
        if (i2 != this.mOrientation || this.mOrientationHelper == null) {
            OrientationHelper createOrientationHelper = OrientationHelper.createOrientationHelper(this, i2);
            this.mOrientationHelper = createOrientationHelper;
            this.mAnchorInfo.f7001a = createOrientationHelper;
            this.mOrientation = i2;
            requestLayout();
        }
    }

    public void setRecycleChildrenOnDetach(boolean z3) {
        this.mRecycleChildrenOnDetach = z3;
    }

    public void setReverseLayout(boolean z3) {
        assertNotInLayoutOrScroll(null);
        if (z3 == this.mReverseLayout) {
            return;
        }
        this.mReverseLayout = z3;
        requestLayout();
    }

    public void setSmoothScrollbarEnabled(boolean z3) {
        this.mSmoothScrollbarEnabled = z3;
    }

    public void setStackFromEnd(boolean z3) {
        assertNotInLayoutOrScroll(null);
        if (this.mStackFromEnd == z3) {
            return;
        }
        this.mStackFromEnd = z3;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    boolean shouldMeasureTwice() {
        return (getHeightMode() == 1073741824 || getWidthMode() == 1073741824 || !hasFlexibleChildInBothOrientations()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i2) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(i2);
        startSmoothScroll(linearSmoothScroller);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && this.mLastStackFromEnd == this.mStackFromEnd;
    }

    void validateChildOrder() {
        StringBuilder sb = new StringBuilder();
        sb.append("validating child count ");
        sb.append(getChildCount());
        if (getChildCount() < 1) {
            return;
        }
        int position = getPosition(getChildAt(0));
        int decoratedStart = this.mOrientationHelper.getDecoratedStart(getChildAt(0));
        if (this.mShouldReverseLayout) {
            for (int i2 = 1; i2 < getChildCount(); i2++) {
                View childAt = getChildAt(i2);
                int position2 = getPosition(childAt);
                int decoratedStart2 = this.mOrientationHelper.getDecoratedStart(childAt);
                if (position2 < position) {
                    logChildren();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("detected invalid position. loc invalid? ");
                    sb2.append(decoratedStart2 < decoratedStart);
                    throw new RuntimeException(sb2.toString());
                } else if (decoratedStart2 > decoratedStart) {
                    logChildren();
                    throw new RuntimeException("detected invalid location");
                }
            }
            return;
        }
        for (int i4 = 1; i4 < getChildCount(); i4++) {
            View childAt2 = getChildAt(i4);
            int position3 = getPosition(childAt2);
            int decoratedStart3 = this.mOrientationHelper.getDecoratedStart(childAt2);
            if (position3 < position) {
                logChildren();
                StringBuilder sb3 = new StringBuilder();
                sb3.append("detected invalid position. loc invalid? ");
                sb3.append(decoratedStart3 < decoratedStart);
                throw new RuntimeException(sb3.toString());
            } else if (decoratedStart3 < decoratedStart) {
                logChildren();
                throw new RuntimeException("detected invalid location");
            }
        }
    }

    public LinearLayoutManager(Context context, int i2, boolean z3) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new AnchorInfo();
        this.mLayoutChunkResult = new LayoutChunkResult();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        setOrientation(i2);
        setReverseLayout(z3);
    }

    private void updateLayoutStateToFillEnd(int i2, int i4) {
        this.mLayoutState.f7015c = this.mOrientationHelper.getEndAfterPadding() - i4;
        LayoutState layoutState = this.mLayoutState;
        layoutState.f7017e = this.mShouldReverseLayout ? -1 : 1;
        layoutState.f7016d = i2;
        layoutState.f7018f = 1;
        layoutState.f7014b = i4;
        layoutState.f7019g = Integer.MIN_VALUE;
    }

    private void updateLayoutStateToFillStart(int i2, int i4) {
        this.mLayoutState.f7015c = i4 - this.mOrientationHelper.getStartAfterPadding();
        LayoutState layoutState = this.mLayoutState;
        layoutState.f7016d = i2;
        layoutState.f7017e = this.mShouldReverseLayout ? 1 : -1;
        layoutState.f7018f = -1;
        layoutState.f7014b = i4;
        layoutState.f7019g = Integer.MIN_VALUE;
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i2, int i4) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new AnchorInfo();
        this.mLayoutChunkResult = new LayoutChunkResult();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        RecyclerView.LayoutManager.Properties properties = RecyclerView.LayoutManager.getProperties(context, attributeSet, i2, i4);
        setOrientation(properties.orientation);
        setReverseLayout(properties.reverseLayout);
        setStackFromEnd(properties.stackFromEnd);
    }
}
