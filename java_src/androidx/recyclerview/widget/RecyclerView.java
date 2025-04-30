package androidx.recyclerview.widget;

import android.animation.LayoutTransition;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.os.TraceCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.NestedScrollingChild2;
import androidx.core.view.NestedScrollingChild3;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.ScrollingView;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import androidx.recyclerview.R;
import androidx.recyclerview.widget.AdapterHelper;
import androidx.recyclerview.widget.ChildHelper;
import androidx.recyclerview.widget.GapWorker;
import androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate;
import androidx.recyclerview.widget.ViewBoundsCheck;
import androidx.recyclerview.widget.ViewInfoStore;
import com.join.mgps.Util.g0;
import external.org.apache.commons.lang3.d;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class RecyclerView extends ViewGroup implements ScrollingView, NestedScrollingChild2, NestedScrollingChild3 {
    public static final int HORIZONTAL = 0;
    public static final int INVALID_TYPE = -1;
    public static final long NO_ID = -1;
    public static final int NO_POSITION = -1;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    public static final int TOUCH_SLOP_DEFAULT = 0;
    public static final int TOUCH_SLOP_PAGING = 1;
    public static final int UNDEFINED_DURATION = Integer.MIN_VALUE;
    public static final int VERTICAL = 1;

    /* renamed from: b1  reason: collision with root package name */
    static final String f7074b1 = "RecyclerView";

    /* renamed from: c1  reason: collision with root package name */
    static final boolean f7075c1 = false;

    /* renamed from: d1  reason: collision with root package name */
    static final boolean f7076d1 = false;

    /* renamed from: e1  reason: collision with root package name */
    private static final int[] f7077e1 = {16843830};

    /* renamed from: f1  reason: collision with root package name */
    static final boolean f7078f1;

    /* renamed from: g1  reason: collision with root package name */
    static final boolean f7079g1;

    /* renamed from: h1  reason: collision with root package name */
    static final boolean f7080h1;

    /* renamed from: i1  reason: collision with root package name */
    static final boolean f7081i1;

    /* renamed from: j1  reason: collision with root package name */
    private static final boolean f7082j1;

    /* renamed from: k1  reason: collision with root package name */
    private static final boolean f7083k1;

    /* renamed from: l1  reason: collision with root package name */
    static final boolean f7084l1 = false;

    /* renamed from: m1  reason: collision with root package name */
    static final int f7085m1 = 1;

    /* renamed from: n1  reason: collision with root package name */
    static final int f7086n1 = 2000;

    /* renamed from: o1  reason: collision with root package name */
    static final String f7087o1 = "RV Scroll";

    /* renamed from: p1  reason: collision with root package name */
    private static final String f7088p1 = "RV OnLayout";

    /* renamed from: q1  reason: collision with root package name */
    private static final String f7089q1 = "RV FullInvalidate";

    /* renamed from: r1  reason: collision with root package name */
    private static final String f7090r1 = "RV PartialInvalidate";

    /* renamed from: s1  reason: collision with root package name */
    static final String f7091s1 = "RV OnBindView";

    /* renamed from: t1  reason: collision with root package name */
    static final String f7092t1 = "RV Prefetch";

    /* renamed from: u1  reason: collision with root package name */
    static final String f7093u1 = "RV Nested Prefetch";

    /* renamed from: v1  reason: collision with root package name */
    static final String f7094v1 = "RV CreateView";

    /* renamed from: w1  reason: collision with root package name */
    private static final Class<?>[] f7095w1;

    /* renamed from: x1  reason: collision with root package name */
    private static final int f7096x1 = -1;

    /* renamed from: y1  reason: collision with root package name */
    static final long f7097y1 = Long.MAX_VALUE;

    /* renamed from: z1  reason: collision with root package name */
    static final Interpolator f7098z1;
    private int A;
    private final int A0;
    boolean B;
    private float B0;
    private final AccessibilityManager C;
    private float C0;
    private List<OnChildAttachStateChangeListener> D;
    private boolean D0;
    boolean E;
    final ViewFlinger E0;
    boolean F;
    GapWorker F0;
    private int G;
    GapWorker.LayoutPrefetchRegistryImpl G0;
    private int H;
    final State H0;
    @NonNull
    private EdgeEffectFactory I;
    private OnScrollListener I0;
    private EdgeEffect J;
    private List<OnScrollListener> J0;
    private EdgeEffect K;
    boolean K0;
    boolean L0;
    private ItemAnimator.ItemAnimatorListener M0;
    boolean N0;
    RecyclerViewAccessibilityDelegate O0;
    private ChildDrawingOrderCallback P0;
    private final int[] Q0;
    private NestedScrollingChildHelper R0;
    private final int[] S0;
    private final int[] T0;
    final int[] U0;
    @VisibleForTesting
    final List<ViewHolder> V0;
    private Runnable W0;
    private boolean X0;
    private int Y0;
    private int Z0;

    /* renamed from: a  reason: collision with root package name */
    private final RecyclerViewDataObserver f7099a;

    /* renamed from: a1  reason: collision with root package name */
    private final ViewInfoStore.ProcessCallback f7100a1;

    /* renamed from: b  reason: collision with root package name */
    final Recycler f7101b;

    /* renamed from: c  reason: collision with root package name */
    SavedState f7102c;

    /* renamed from: d  reason: collision with root package name */
    AdapterHelper f7103d;

    /* renamed from: e  reason: collision with root package name */
    ChildHelper f7104e;

    /* renamed from: f  reason: collision with root package name */
    final ViewInfoStore f7105f;

    /* renamed from: g  reason: collision with root package name */
    boolean f7106g;

    /* renamed from: h  reason: collision with root package name */
    final Runnable f7107h;

    /* renamed from: i  reason: collision with root package name */
    final Rect f7108i;

    /* renamed from: j  reason: collision with root package name */
    private final Rect f7109j;

    /* renamed from: k  reason: collision with root package name */
    final RectF f7110k;

    /* renamed from: l  reason: collision with root package name */
    Adapter f7111l;
    @VisibleForTesting

    /* renamed from: m  reason: collision with root package name */
    LayoutManager f7112m;

    /* renamed from: n  reason: collision with root package name */
    RecyclerListener f7113n;

    /* renamed from: n0  reason: collision with root package name */
    private EdgeEffect f7114n0;

    /* renamed from: o  reason: collision with root package name */
    final List<RecyclerListener> f7115o;

    /* renamed from: o0  reason: collision with root package name */
    private EdgeEffect f7116o0;

    /* renamed from: p  reason: collision with root package name */
    final ArrayList<ItemDecoration> f7117p;

    /* renamed from: p0  reason: collision with root package name */
    ItemAnimator f7118p0;

    /* renamed from: q  reason: collision with root package name */
    private final ArrayList<OnItemTouchListener> f7119q;

    /* renamed from: q0  reason: collision with root package name */
    private int f7120q0;

    /* renamed from: r  reason: collision with root package name */
    private OnItemTouchListener f7121r;

    /* renamed from: r0  reason: collision with root package name */
    private int f7122r0;

    /* renamed from: s  reason: collision with root package name */
    boolean f7123s;

    /* renamed from: s0  reason: collision with root package name */
    private VelocityTracker f7124s0;

    /* renamed from: t  reason: collision with root package name */
    boolean f7125t;

    /* renamed from: t0  reason: collision with root package name */
    private int f7126t0;

    /* renamed from: u  reason: collision with root package name */
    boolean f7127u;

    /* renamed from: u0  reason: collision with root package name */
    private int f7128u0;
    @VisibleForTesting

    /* renamed from: v  reason: collision with root package name */
    boolean f7129v;

    /* renamed from: v0  reason: collision with root package name */
    private int f7130v0;

    /* renamed from: w  reason: collision with root package name */
    private int f7131w;

    /* renamed from: w0  reason: collision with root package name */
    private int f7132w0;

    /* renamed from: x  reason: collision with root package name */
    boolean f7133x;

    /* renamed from: x0  reason: collision with root package name */
    private int f7134x0;

    /* renamed from: y  reason: collision with root package name */
    boolean f7135y;

    /* renamed from: y0  reason: collision with root package name */
    private OnFlingListener f7136y0;

    /* renamed from: z  reason: collision with root package name */
    private boolean f7137z;

    /* renamed from: z0  reason: collision with root package name */
    private final int f7138z0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.RecyclerView$7  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass7 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f7144a;

        static {
            int[] iArr = new int[Adapter.StateRestorationPolicy.values().length];
            f7144a = iArr;
            try {
                iArr[Adapter.StateRestorationPolicy.PREVENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7144a[Adapter.StateRestorationPolicy.PREVENT_WHEN_EMPTY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class Adapter<VH extends ViewHolder> {
        private final AdapterDataObservable mObservable = new AdapterDataObservable();
        private boolean mHasStableIds = false;
        private StateRestorationPolicy mStateRestorationPolicy = StateRestorationPolicy.ALLOW;

        /* loaded from: classes2.dex */
        public enum StateRestorationPolicy {
            ALLOW,
            PREVENT_WHEN_EMPTY,
            PREVENT
        }

        public final void bindViewHolder(@NonNull VH vh, int i2) {
            boolean z3 = vh.mBindingAdapter == null;
            if (z3) {
                vh.mPosition = i2;
                if (hasStableIds()) {
                    vh.mItemId = getItemId(i2);
                }
                vh.setFlags(1, 519);
                TraceCompat.beginSection(RecyclerView.f7091s1);
            }
            vh.mBindingAdapter = this;
            onBindViewHolder(vh, i2, vh.getUnmodifiedPayloads());
            if (z3) {
                vh.clearPayload();
                ViewGroup.LayoutParams layoutParams = vh.itemView.getLayoutParams();
                if (layoutParams instanceof LayoutParams) {
                    ((LayoutParams) layoutParams).f7156c = true;
                }
                TraceCompat.endSection();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean canRestoreState() {
            int i2 = AnonymousClass7.f7144a[this.mStateRestorationPolicy.ordinal()];
            if (i2 != 1) {
                return i2 != 2 || getItemCount() > 0;
            }
            return false;
        }

        @NonNull
        public final VH createViewHolder(@NonNull ViewGroup viewGroup, int i2) {
            try {
                TraceCompat.beginSection(RecyclerView.f7094v1);
                VH onCreateViewHolder = onCreateViewHolder(viewGroup, i2);
                if (onCreateViewHolder.itemView.getParent() == null) {
                    onCreateViewHolder.mItemViewType = i2;
                    return onCreateViewHolder;
                }
                throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
            } finally {
                TraceCompat.endSection();
            }
        }

        public int findRelativeAdapterPositionIn(@NonNull Adapter<? extends ViewHolder> adapter, @NonNull ViewHolder viewHolder, int i2) {
            if (adapter == this) {
                return i2;
            }
            return -1;
        }

        public abstract int getItemCount();

        public long getItemId(int i2) {
            return -1L;
        }

        public int getItemViewType(int i2) {
            return 0;
        }

        @NonNull
        public final StateRestorationPolicy getStateRestorationPolicy() {
            return this.mStateRestorationPolicy;
        }

        public final boolean hasObservers() {
            return this.mObservable.hasObservers();
        }

        public final boolean hasStableIds() {
            return this.mHasStableIds;
        }

        public final void notifyDataSetChanged() {
            this.mObservable.notifyChanged();
        }

        public final void notifyItemChanged(int i2) {
            this.mObservable.notifyItemRangeChanged(i2, 1);
        }

        public final void notifyItemInserted(int i2) {
            this.mObservable.notifyItemRangeInserted(i2, 1);
        }

        public final void notifyItemMoved(int i2, int i4) {
            this.mObservable.notifyItemMoved(i2, i4);
        }

        public final void notifyItemRangeChanged(int i2, int i4) {
            this.mObservable.notifyItemRangeChanged(i2, i4);
        }

        public final void notifyItemRangeInserted(int i2, int i4) {
            this.mObservable.notifyItemRangeInserted(i2, i4);
        }

        public final void notifyItemRangeRemoved(int i2, int i4) {
            this.mObservable.notifyItemRangeRemoved(i2, i4);
        }

        public final void notifyItemRemoved(int i2) {
            this.mObservable.notifyItemRangeRemoved(i2, 1);
        }

        public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
        }

        public abstract void onBindViewHolder(@NonNull VH vh, int i2);

        public void onBindViewHolder(@NonNull VH vh, int i2, @NonNull List<Object> list) {
            onBindViewHolder(vh, i2);
        }

        @NonNull
        public abstract VH onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2);

        public void onDetachedFromRecyclerView(@NonNull RecyclerView recyclerView) {
        }

        public boolean onFailedToRecycleView(@NonNull VH vh) {
            return false;
        }

        public void onViewAttachedToWindow(@NonNull VH vh) {
        }

        public void onViewDetachedFromWindow(@NonNull VH vh) {
        }

        public void onViewRecycled(@NonNull VH vh) {
        }

        public void registerAdapterDataObserver(@NonNull AdapterDataObserver adapterDataObserver) {
            this.mObservable.registerObserver(adapterDataObserver);
        }

        public void setHasStableIds(boolean z3) {
            if (!hasObservers()) {
                this.mHasStableIds = z3;
                return;
            }
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }

        public void setStateRestorationPolicy(@NonNull StateRestorationPolicy stateRestorationPolicy) {
            this.mStateRestorationPolicy = stateRestorationPolicy;
            this.mObservable.notifyStateRestorationPolicyChanged();
        }

        public void unregisterAdapterDataObserver(@NonNull AdapterDataObserver adapterDataObserver) {
            this.mObservable.unregisterObserver(adapterDataObserver);
        }

        public final void notifyItemChanged(int i2, @Nullable Object obj) {
            this.mObservable.notifyItemRangeChanged(i2, 1, obj);
        }

        public final void notifyItemRangeChanged(int i2, int i4, @Nullable Object obj) {
            this.mObservable.notifyItemRangeChanged(i2, i4, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class AdapterDataObservable extends Observable<AdapterDataObserver> {
        AdapterDataObservable() {
        }

        public boolean hasObservers() {
            return !((Observable) this).mObservers.isEmpty();
        }

        public void notifyChanged() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onChanged();
            }
        }

        public void notifyItemMoved(int i2, int i4) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onItemRangeMoved(i2, i4, 1);
            }
        }

        public void notifyItemRangeChanged(int i2, int i4) {
            notifyItemRangeChanged(i2, i4, null);
        }

        public void notifyItemRangeInserted(int i2, int i4) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onItemRangeInserted(i2, i4);
            }
        }

        public void notifyItemRangeRemoved(int i2, int i4) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onItemRangeRemoved(i2, i4);
            }
        }

        public void notifyStateRestorationPolicyChanged() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onStateRestorationPolicyChanged();
            }
        }

        public void notifyItemRangeChanged(int i2, int i4, @Nullable Object obj) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onItemRangeChanged(i2, i4, obj);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class AdapterDataObserver {
        public void onChanged() {
        }

        public void onItemRangeChanged(int i2, int i4) {
        }

        public void onItemRangeChanged(int i2, int i4, @Nullable Object obj) {
            onItemRangeChanged(i2, i4);
        }

        public void onItemRangeInserted(int i2, int i4) {
        }

        public void onItemRangeMoved(int i2, int i4, int i5) {
        }

        public void onItemRangeRemoved(int i2, int i4) {
        }

        public void onStateRestorationPolicyChanged() {
        }
    }

    /* loaded from: classes2.dex */
    public interface ChildDrawingOrderCallback {
        int onGetChildDrawingOrder(int i2, int i4);
    }

    /* loaded from: classes2.dex */
    public static class EdgeEffectFactory {
        public static final int DIRECTION_BOTTOM = 3;
        public static final int DIRECTION_LEFT = 0;
        public static final int DIRECTION_RIGHT = 2;
        public static final int DIRECTION_TOP = 1;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes.dex */
        public @interface EdgeDirection {
        }

        @NonNull
        protected EdgeEffect a(@NonNull RecyclerView recyclerView, int i2) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class ItemAnimator {
        public static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
        public static final int FLAG_CHANGED = 2;
        public static final int FLAG_INVALIDATED = 4;
        public static final int FLAG_MOVED = 2048;
        public static final int FLAG_REMOVED = 8;

        /* renamed from: a  reason: collision with root package name */
        private ItemAnimatorListener f7145a = null;

        /* renamed from: b  reason: collision with root package name */
        private ArrayList<ItemAnimatorFinishedListener> f7146b = new ArrayList<>();

        /* renamed from: c  reason: collision with root package name */
        private long f7147c = 120;

        /* renamed from: d  reason: collision with root package name */
        private long f7148d = 120;

        /* renamed from: e  reason: collision with root package name */
        private long f7149e = 250;

        /* renamed from: f  reason: collision with root package name */
        private long f7150f = 250;

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes.dex */
        public @interface AdapterChanges {
        }

        /* loaded from: classes2.dex */
        public interface ItemAnimatorFinishedListener {
            void onAnimationsFinished();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public interface ItemAnimatorListener {
            void onAnimationFinished(@NonNull ViewHolder viewHolder);
        }

        /* loaded from: classes2.dex */
        public static class ItemHolderInfo {
            public int bottom;
            public int changeFlags;
            public int left;
            public int right;
            public int top;

            @NonNull
            public ItemHolderInfo setFrom(@NonNull ViewHolder viewHolder) {
                return setFrom(viewHolder, 0);
            }

            @NonNull
            public ItemHolderInfo setFrom(@NonNull ViewHolder viewHolder, int i2) {
                View view = viewHolder.itemView;
                this.left = view.getLeft();
                this.top = view.getTop();
                this.right = view.getRight();
                this.bottom = view.getBottom();
                return this;
            }
        }

        static int a(ViewHolder viewHolder) {
            int i2 = viewHolder.mFlags & 14;
            if (viewHolder.isInvalid()) {
                return 4;
            }
            if ((i2 & 4) == 0) {
                int oldPosition = viewHolder.getOldPosition();
                int absoluteAdapterPosition = viewHolder.getAbsoluteAdapterPosition();
                return (oldPosition == -1 || absoluteAdapterPosition == -1 || oldPosition == absoluteAdapterPosition) ? i2 : i2 | 2048;
            }
            return i2;
        }

        public abstract boolean animateAppearance(@NonNull ViewHolder viewHolder, @Nullable ItemHolderInfo itemHolderInfo, @NonNull ItemHolderInfo itemHolderInfo2);

        public abstract boolean animateChange(@NonNull ViewHolder viewHolder, @NonNull ViewHolder viewHolder2, @NonNull ItemHolderInfo itemHolderInfo, @NonNull ItemHolderInfo itemHolderInfo2);

        public abstract boolean animateDisappearance(@NonNull ViewHolder viewHolder, @NonNull ItemHolderInfo itemHolderInfo, @Nullable ItemHolderInfo itemHolderInfo2);

        public abstract boolean animatePersistence(@NonNull ViewHolder viewHolder, @NonNull ItemHolderInfo itemHolderInfo, @NonNull ItemHolderInfo itemHolderInfo2);

        void b(ItemAnimatorListener itemAnimatorListener) {
            this.f7145a = itemAnimatorListener;
        }

        public boolean canReuseUpdatedViewHolder(@NonNull ViewHolder viewHolder) {
            return true;
        }

        public boolean canReuseUpdatedViewHolder(@NonNull ViewHolder viewHolder, @NonNull List<Object> list) {
            return canReuseUpdatedViewHolder(viewHolder);
        }

        public final void dispatchAnimationFinished(@NonNull ViewHolder viewHolder) {
            onAnimationFinished(viewHolder);
            ItemAnimatorListener itemAnimatorListener = this.f7145a;
            if (itemAnimatorListener != null) {
                itemAnimatorListener.onAnimationFinished(viewHolder);
            }
        }

        public final void dispatchAnimationStarted(@NonNull ViewHolder viewHolder) {
            onAnimationStarted(viewHolder);
        }

        public final void dispatchAnimationsFinished() {
            int size = this.f7146b.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f7146b.get(i2).onAnimationsFinished();
            }
            this.f7146b.clear();
        }

        public abstract void endAnimation(@NonNull ViewHolder viewHolder);

        public abstract void endAnimations();

        public long getAddDuration() {
            return this.f7147c;
        }

        public long getChangeDuration() {
            return this.f7150f;
        }

        public long getMoveDuration() {
            return this.f7149e;
        }

        public long getRemoveDuration() {
            return this.f7148d;
        }

        public abstract boolean isRunning();

        public final boolean isRunning(@Nullable ItemAnimatorFinishedListener itemAnimatorFinishedListener) {
            boolean isRunning = isRunning();
            if (itemAnimatorFinishedListener != null) {
                if (!isRunning) {
                    itemAnimatorFinishedListener.onAnimationsFinished();
                } else {
                    this.f7146b.add(itemAnimatorFinishedListener);
                }
            }
            return isRunning;
        }

        @NonNull
        public ItemHolderInfo obtainHolderInfo() {
            return new ItemHolderInfo();
        }

        public void onAnimationFinished(@NonNull ViewHolder viewHolder) {
        }

        public void onAnimationStarted(@NonNull ViewHolder viewHolder) {
        }

        @NonNull
        public ItemHolderInfo recordPostLayoutInformation(@NonNull State state, @NonNull ViewHolder viewHolder) {
            return obtainHolderInfo().setFrom(viewHolder);
        }

        @NonNull
        public ItemHolderInfo recordPreLayoutInformation(@NonNull State state, @NonNull ViewHolder viewHolder, int i2, @NonNull List<Object> list) {
            return obtainHolderInfo().setFrom(viewHolder);
        }

        public abstract void runPendingAnimations();

        public void setAddDuration(long j4) {
            this.f7147c = j4;
        }

        public void setChangeDuration(long j4) {
            this.f7150f = j4;
        }

        public void setMoveDuration(long j4) {
            this.f7149e = j4;
        }

        public void setRemoveDuration(long j4) {
            this.f7148d = j4;
        }
    }

    /* loaded from: classes2.dex */
    private class ItemAnimatorRestoreListener implements ItemAnimator.ItemAnimatorListener {
        ItemAnimatorRestoreListener() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator.ItemAnimatorListener
        public void onAnimationFinished(ViewHolder viewHolder) {
            viewHolder.setIsRecyclable(true);
            if (viewHolder.mShadowedHolder != null && viewHolder.mShadowingHolder == null) {
                viewHolder.mShadowedHolder = null;
            }
            viewHolder.mShadowingHolder = null;
            if (viewHolder.shouldBeKeptAsChild() || RecyclerView.this.A0(viewHolder.itemView) || !viewHolder.isTmpDetached()) {
                return;
            }
            RecyclerView.this.removeDetachedView(viewHolder.itemView, false);
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class ItemDecoration {
        @Deprecated
        public void getItemOffsets(@NonNull Rect rect, int i2, @NonNull RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        @Deprecated
        public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView) {
        }

        public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull State state) {
            onDraw(canvas, recyclerView);
        }

        @Deprecated
        public void onDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView) {
        }

        public void onDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull State state) {
            onDrawOver(canvas, recyclerView);
        }

        public void getItemOffsets(@NonNull Rect rect, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull State state) {
            getItemOffsets(rect, ((LayoutParams) view.getLayoutParams()).getViewLayoutPosition(), recyclerView);
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class LayoutManager {
        boolean mAutoMeasure;
        ChildHelper mChildHelper;
        private int mHeight;
        private int mHeightMode;
        ViewBoundsCheck mHorizontalBoundCheck;
        private final ViewBoundsCheck.Callback mHorizontalBoundCheckCallback;
        boolean mIsAttachedToWindow;
        private boolean mItemPrefetchEnabled;
        private boolean mMeasurementCacheEnabled;
        int mPrefetchMaxCountObserved;
        boolean mPrefetchMaxObservedInInitialPrefetch;
        RecyclerView mRecyclerView;
        boolean mRequestedSimpleAnimations;
        @Nullable
        SmoothScroller mSmoothScroller;
        ViewBoundsCheck mVerticalBoundCheck;
        private final ViewBoundsCheck.Callback mVerticalBoundCheckCallback;
        private int mWidth;
        private int mWidthMode;

        /* loaded from: classes2.dex */
        public interface LayoutPrefetchRegistry {
            void addPosition(int i2, int i4);
        }

        /* loaded from: classes2.dex */
        public static class Properties {
            public int orientation;
            public boolean reverseLayout;
            public int spanCount;
            public boolean stackFromEnd;
        }

        public LayoutManager() {
            ViewBoundsCheck.Callback callback = new ViewBoundsCheck.Callback() { // from class: androidx.recyclerview.widget.RecyclerView.LayoutManager.1
                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public View getChildAt(int i2) {
                    return LayoutManager.this.getChildAt(i2);
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public int getChildEnd(View view) {
                    return LayoutManager.this.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).rightMargin;
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public int getChildStart(View view) {
                    return LayoutManager.this.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).leftMargin;
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public int getParentEnd() {
                    return LayoutManager.this.getWidth() - LayoutManager.this.getPaddingRight();
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public int getParentStart() {
                    return LayoutManager.this.getPaddingLeft();
                }
            };
            this.mHorizontalBoundCheckCallback = callback;
            ViewBoundsCheck.Callback callback2 = new ViewBoundsCheck.Callback() { // from class: androidx.recyclerview.widget.RecyclerView.LayoutManager.2
                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public View getChildAt(int i2) {
                    return LayoutManager.this.getChildAt(i2);
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public int getChildEnd(View view) {
                    return LayoutManager.this.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).bottomMargin;
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public int getChildStart(View view) {
                    return LayoutManager.this.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).topMargin;
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public int getParentEnd() {
                    return LayoutManager.this.getHeight() - LayoutManager.this.getPaddingBottom();
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public int getParentStart() {
                    return LayoutManager.this.getPaddingTop();
                }
            };
            this.mVerticalBoundCheckCallback = callback2;
            this.mHorizontalBoundCheck = new ViewBoundsCheck(callback);
            this.mVerticalBoundCheck = new ViewBoundsCheck(callback2);
            this.mRequestedSimpleAnimations = false;
            this.mIsAttachedToWindow = false;
            this.mAutoMeasure = false;
            this.mMeasurementCacheEnabled = true;
            this.mItemPrefetchEnabled = true;
        }

        private void addViewInt(View view, int i2, boolean z3) {
            ViewHolder S = RecyclerView.S(view);
            if (!z3 && !S.isRemoved()) {
                this.mRecyclerView.f7105f.o(S);
            } else {
                this.mRecyclerView.f7105f.b(S);
            }
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (!S.wasReturnedFromScrap() && !S.isScrap()) {
                if (view.getParent() == this.mRecyclerView) {
                    int m4 = this.mChildHelper.m(view);
                    if (i2 == -1) {
                        i2 = this.mChildHelper.g();
                    }
                    if (m4 == -1) {
                        throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.mRecyclerView.indexOfChild(view) + this.mRecyclerView.J());
                    } else if (m4 != i2) {
                        this.mRecyclerView.f7112m.moveView(m4, i2);
                    }
                } else {
                    this.mChildHelper.a(view, i2, false);
                    layoutParams.f7156c = true;
                    SmoothScroller smoothScroller = this.mSmoothScroller;
                    if (smoothScroller != null && smoothScroller.isRunning()) {
                        this.mSmoothScroller.onChildAttachedToWindow(view);
                    }
                }
            } else {
                if (S.isScrap()) {
                    S.unScrap();
                } else {
                    S.clearReturnedFromScrapFlag();
                }
                this.mChildHelper.c(view, i2, view.getLayoutParams(), false);
            }
            if (layoutParams.f7157d) {
                S.itemView.invalidate();
                layoutParams.f7157d = false;
            }
        }

        public static int chooseSize(int i2, int i4, int i5) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (mode != Integer.MIN_VALUE) {
                return mode != 1073741824 ? Math.max(i4, i5) : size;
            }
            return Math.min(size, Math.max(i4, i5));
        }

        private void detachViewInternal(int i2, @NonNull View view) {
            this.mChildHelper.d(i2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:4:0x000a, code lost:
            if (r3 >= 0) goto L8;
         */
        @java.lang.Deprecated
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int getChildMeasureSpec(int r1, int r2, int r3, boolean r4) {
            /*
                int r1 = r1 - r2
                r2 = 0
                int r1 = java.lang.Math.max(r2, r1)
                r0 = 1073741824(0x40000000, float:2.0)
                if (r4 == 0) goto Lf
                if (r3 < 0) goto Ld
                goto L11
            Ld:
                r3 = 0
                goto L21
            Lf:
                if (r3 < 0) goto L14
            L11:
                r2 = 1073741824(0x40000000, float:2.0)
                goto L21
            L14:
                r4 = -1
                if (r3 != r4) goto L1b
                r2 = 1073741824(0x40000000, float:2.0)
            L19:
                r3 = r1
                goto L21
            L1b:
                r4 = -2
                if (r3 != r4) goto Ld
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                goto L19
            L21:
                int r1 = android.view.View.MeasureSpec.makeMeasureSpec(r3, r2)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.LayoutManager.getChildMeasureSpec(int, int, int, boolean):int");
        }

        private int[] getChildRectangleOnScreenScrollAmount(View view, Rect rect) {
            int[] iArr = new int[2];
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth() - getPaddingRight();
            int height = getHeight() - getPaddingBottom();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int width2 = rect.width() + left;
            int height2 = rect.height() + top;
            int i2 = left - paddingLeft;
            int min = Math.min(0, i2);
            int i4 = top - paddingTop;
            int min2 = Math.min(0, i4);
            int i5 = width2 - width;
            int max = Math.max(0, i5);
            int max2 = Math.max(0, height2 - height);
            if (getLayoutDirection() != 1) {
                if (min == 0) {
                    min = Math.min(i2, max);
                }
                max = min;
            } else if (max == 0) {
                max = Math.max(min, i5);
            }
            if (min2 == 0) {
                min2 = Math.min(i4, max2);
            }
            iArr[0] = max;
            iArr[1] = min2;
            return iArr;
        }

        public static Properties getProperties(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2, int i4) {
            Properties properties = new Properties();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RecyclerView, i2, i4);
            properties.orientation = obtainStyledAttributes.getInt(R.styleable.RecyclerView_android_orientation, 1);
            properties.spanCount = obtainStyledAttributes.getInt(R.styleable.RecyclerView_spanCount, 1);
            properties.reverseLayout = obtainStyledAttributes.getBoolean(R.styleable.RecyclerView_reverseLayout, false);
            properties.stackFromEnd = obtainStyledAttributes.getBoolean(R.styleable.RecyclerView_stackFromEnd, false);
            obtainStyledAttributes.recycle();
            return properties;
        }

        private boolean isFocusedChildVisibleAfterScrolling(RecyclerView recyclerView, int i2, int i4) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                return false;
            }
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth() - getPaddingRight();
            int height = getHeight() - getPaddingBottom();
            Rect rect = this.mRecyclerView.f7108i;
            getDecoratedBoundsWithMargins(focusedChild, rect);
            return rect.left - i2 < width && rect.right - i2 > paddingLeft && rect.top - i4 < height && rect.bottom - i4 > paddingTop;
        }

        private static boolean isMeasurementUpToDate(int i2, int i4, int i5) {
            int mode = View.MeasureSpec.getMode(i4);
            int size = View.MeasureSpec.getSize(i4);
            if (i5 <= 0 || i2 == i5) {
                if (mode == Integer.MIN_VALUE) {
                    return size >= i2;
                } else if (mode != 0) {
                    return mode == 1073741824 && size == i2;
                } else {
                    return true;
                }
            }
            return false;
        }

        private void scrapOrRecycleView(Recycler recycler, int i2, View view) {
            ViewHolder S = RecyclerView.S(view);
            if (S.shouldIgnore()) {
                return;
            }
            if (S.isInvalid() && !S.isRemoved() && !this.mRecyclerView.f7111l.hasStableIds()) {
                removeViewAt(i2);
                recycler.x(S);
                return;
            }
            detachViewAt(i2);
            recycler.y(view);
            this.mRecyclerView.f7105f.onViewDetached(S);
        }

        public void addDisappearingView(View view) {
            addDisappearingView(view, -1);
        }

        public void addView(View view) {
            addView(view, -1);
        }

        public void assertInLayoutOrScroll(String str) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.j(str);
            }
        }

        public void assertNotInLayoutOrScroll(String str) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.k(str);
            }
        }

        public void attachView(@NonNull View view, int i2, LayoutParams layoutParams) {
            ViewHolder S = RecyclerView.S(view);
            if (S.isRemoved()) {
                this.mRecyclerView.f7105f.b(S);
            } else {
                this.mRecyclerView.f7105f.o(S);
            }
            this.mChildHelper.c(view, i2, layoutParams, S.isRemoved());
        }

        public void calculateItemDecorationsForChild(@NonNull View view, @NonNull Rect rect) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.W(view));
            }
        }

        public boolean canScrollHorizontally() {
            return false;
        }

        public boolean canScrollVertically() {
            return false;
        }

        public boolean checkLayoutParams(LayoutParams layoutParams) {
            return layoutParams != null;
        }

        public void collectAdjacentPrefetchPositions(int i2, int i4, State state, LayoutPrefetchRegistry layoutPrefetchRegistry) {
        }

        public void collectInitialPrefetchPositions(int i2, LayoutPrefetchRegistry layoutPrefetchRegistry) {
        }

        public int computeHorizontalScrollExtent(@NonNull State state) {
            return 0;
        }

        public int computeHorizontalScrollOffset(@NonNull State state) {
            return 0;
        }

        public int computeHorizontalScrollRange(@NonNull State state) {
            return 0;
        }

        public int computeVerticalScrollExtent(@NonNull State state) {
            return 0;
        }

        public int computeVerticalScrollOffset(@NonNull State state) {
            return 0;
        }

        public int computeVerticalScrollRange(@NonNull State state) {
            return 0;
        }

        public void detachAndScrapAttachedViews(@NonNull Recycler recycler) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                scrapOrRecycleView(recycler, childCount, getChildAt(childCount));
            }
        }

        public void detachAndScrapView(@NonNull View view, @NonNull Recycler recycler) {
            scrapOrRecycleView(recycler, this.mChildHelper.m(view), view);
        }

        public void detachAndScrapViewAt(int i2, @NonNull Recycler recycler) {
            scrapOrRecycleView(recycler, i2, getChildAt(i2));
        }

        public void detachView(@NonNull View view) {
            int m4 = this.mChildHelper.m(view);
            if (m4 >= 0) {
                detachViewInternal(m4, view);
            }
        }

        public void detachViewAt(int i2) {
            detachViewInternal(i2, getChildAt(i2));
        }

        void dispatchAttachedToWindow(RecyclerView recyclerView) {
            this.mIsAttachedToWindow = true;
            onAttachedToWindow(recyclerView);
        }

        void dispatchDetachedFromWindow(RecyclerView recyclerView, Recycler recycler) {
            this.mIsAttachedToWindow = false;
            onDetachedFromWindow(recyclerView, recycler);
        }

        public void endAnimation(View view) {
            ItemAnimator itemAnimator = this.mRecyclerView.f7118p0;
            if (itemAnimator != null) {
                itemAnimator.endAnimation(RecyclerView.S(view));
            }
        }

        @Nullable
        public View findContainingItemView(@NonNull View view) {
            View findContainingItemView;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null || (findContainingItemView = recyclerView.findContainingItemView(view)) == null || this.mChildHelper.n(findContainingItemView)) {
                return null;
            }
            return findContainingItemView;
        }

        @Nullable
        public View findViewByPosition(int i2) {
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                ViewHolder S = RecyclerView.S(childAt);
                if (S != null && S.getLayoutPosition() == i2 && !S.shouldIgnore() && (this.mRecyclerView.H0.isPreLayout() || !S.isRemoved())) {
                    return childAt;
                }
            }
            return null;
        }

        public abstract LayoutParams generateDefaultLayoutParams();

        public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
            if (layoutParams instanceof LayoutParams) {
                return new LayoutParams((LayoutParams) layoutParams);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
            }
            return new LayoutParams(layoutParams);
        }

        public int getBaseline() {
            return -1;
        }

        public int getBottomDecorationHeight(@NonNull View view) {
            return ((LayoutParams) view.getLayoutParams()).f7155b.bottom;
        }

        @Nullable
        public View getChildAt(int i2) {
            ChildHelper childHelper = this.mChildHelper;
            if (childHelper != null) {
                return childHelper.f(i2);
            }
            return null;
        }

        public int getChildCount() {
            ChildHelper childHelper = this.mChildHelper;
            if (childHelper != null) {
                return childHelper.g();
            }
            return 0;
        }

        public boolean getClipToPadding() {
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null && recyclerView.f7106g;
        }

        public int getColumnCountForAccessibility(@NonNull Recycler recycler, @NonNull State state) {
            return -1;
        }

        public int getDecoratedBottom(@NonNull View view) {
            return view.getBottom() + getBottomDecorationHeight(view);
        }

        public void getDecoratedBoundsWithMargins(@NonNull View view, @NonNull Rect rect) {
            RecyclerView.T(view, rect);
        }

        public int getDecoratedLeft(@NonNull View view) {
            return view.getLeft() - getLeftDecorationWidth(view);
        }

        public int getDecoratedMeasuredHeight(@NonNull View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).f7155b;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public int getDecoratedMeasuredWidth(@NonNull View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).f7155b;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        public int getDecoratedRight(@NonNull View view) {
            return view.getRight() + getRightDecorationWidth(view);
        }

        public int getDecoratedTop(@NonNull View view) {
            return view.getTop() - getTopDecorationHeight(view);
        }

        @Nullable
        public View getFocusedChild() {
            View focusedChild;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.mChildHelper.n(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        @Px
        public int getHeight() {
            return this.mHeight;
        }

        public int getHeightMode() {
            return this.mHeightMode;
        }

        public int getItemCount() {
            RecyclerView recyclerView = this.mRecyclerView;
            Adapter adapter = recyclerView != null ? recyclerView.getAdapter() : null;
            if (adapter != null) {
                return adapter.getItemCount();
            }
            return 0;
        }

        public int getItemViewType(@NonNull View view) {
            return RecyclerView.S(view).getItemViewType();
        }

        public int getLayoutDirection() {
            return ViewCompat.getLayoutDirection(this.mRecyclerView);
        }

        public int getLeftDecorationWidth(@NonNull View view) {
            return ((LayoutParams) view.getLayoutParams()).f7155b.left;
        }

        @Px
        public int getMinimumHeight() {
            return ViewCompat.getMinimumHeight(this.mRecyclerView);
        }

        @Px
        public int getMinimumWidth() {
            return ViewCompat.getMinimumWidth(this.mRecyclerView);
        }

        @Px
        public int getPaddingBottom() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        @Px
        public int getPaddingEnd() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return ViewCompat.getPaddingEnd(recyclerView);
            }
            return 0;
        }

        @Px
        public int getPaddingLeft() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        @Px
        public int getPaddingRight() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        @Px
        public int getPaddingStart() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return ViewCompat.getPaddingStart(recyclerView);
            }
            return 0;
        }

        @Px
        public int getPaddingTop() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        public int getPosition(@NonNull View view) {
            return ((LayoutParams) view.getLayoutParams()).getViewLayoutPosition();
        }

        public int getRightDecorationWidth(@NonNull View view) {
            return ((LayoutParams) view.getLayoutParams()).f7155b.right;
        }

        public int getRowCountForAccessibility(@NonNull Recycler recycler, @NonNull State state) {
            return -1;
        }

        public int getSelectionModeForAccessibility(@NonNull Recycler recycler, @NonNull State state) {
            return 0;
        }

        public int getTopDecorationHeight(@NonNull View view) {
            return ((LayoutParams) view.getLayoutParams()).f7155b.top;
        }

        public void getTransformedBoundingBox(@NonNull View view, boolean z3, @NonNull Rect rect) {
            Matrix matrix;
            if (z3) {
                Rect rect2 = ((LayoutParams) view.getLayoutParams()).f7155b;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.mRecyclerView != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.mRecyclerView.f7110k;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        @Px
        public int getWidth() {
            return this.mWidth;
        }

        public int getWidthMode() {
            return this.mWidthMode;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean hasFlexibleChildInBothOrientations() {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                ViewGroup.LayoutParams layoutParams = getChildAt(i2).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
            return false;
        }

        public boolean hasFocus() {
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null && recyclerView.hasFocus();
        }

        public void ignoreView(@NonNull View view) {
            ViewParent parent = view.getParent();
            RecyclerView recyclerView = this.mRecyclerView;
            if (parent == recyclerView && recyclerView.indexOfChild(view) != -1) {
                ViewHolder S = RecyclerView.S(view);
                S.addFlags(128);
                this.mRecyclerView.f7105f.p(S);
                return;
            }
            throw new IllegalArgumentException("View should be fully attached to be ignored" + this.mRecyclerView.J());
        }

        public boolean isAttachedToWindow() {
            return this.mIsAttachedToWindow;
        }

        public boolean isAutoMeasureEnabled() {
            return this.mAutoMeasure;
        }

        public boolean isFocused() {
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null && recyclerView.isFocused();
        }

        public final boolean isItemPrefetchEnabled() {
            return this.mItemPrefetchEnabled;
        }

        public boolean isLayoutHierarchical(@NonNull Recycler recycler, @NonNull State state) {
            return false;
        }

        public boolean isMeasurementCacheEnabled() {
            return this.mMeasurementCacheEnabled;
        }

        public boolean isSmoothScrolling() {
            SmoothScroller smoothScroller = this.mSmoothScroller;
            return smoothScroller != null && smoothScroller.isRunning();
        }

        public boolean isViewPartiallyVisible(@NonNull View view, boolean z3, boolean z4) {
            boolean z5 = this.mHorizontalBoundCheck.b(view, 24579) && this.mVerticalBoundCheck.b(view, 24579);
            return z3 ? z5 : !z5;
        }

        public void layoutDecorated(@NonNull View view, int i2, int i4, int i5, int i6) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).f7155b;
            view.layout(i2 + rect.left, i4 + rect.top, i5 - rect.right, i6 - rect.bottom);
        }

        public void layoutDecoratedWithMargins(@NonNull View view, int i2, int i4, int i5, int i6) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect rect = layoutParams.f7155b;
            view.layout(i2 + rect.left + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i4 + rect.top + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (i5 - rect.right) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, (i6 - rect.bottom) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        }

        public void measureChild(@NonNull View view, int i2, int i4) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect W = this.mRecyclerView.W(view);
            int i5 = i2 + W.left + W.right;
            int i6 = i4 + W.top + W.bottom;
            int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + i5, ((ViewGroup.MarginLayoutParams) layoutParams).width, canScrollHorizontally());
            int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + i6, ((ViewGroup.MarginLayoutParams) layoutParams).height, canScrollVertically());
            if (shouldMeasureChild(view, childMeasureSpec, childMeasureSpec2, layoutParams)) {
                view.measure(childMeasureSpec, childMeasureSpec2);
            }
        }

        public void measureChildWithMargins(@NonNull View view, int i2, int i4) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect W = this.mRecyclerView.W(view);
            int i5 = i2 + W.left + W.right;
            int i6 = i4 + W.top + W.bottom;
            int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingLeft() + getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + i5, ((ViewGroup.MarginLayoutParams) layoutParams).width, canScrollHorizontally());
            int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingTop() + getPaddingBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + i6, ((ViewGroup.MarginLayoutParams) layoutParams).height, canScrollVertically());
            if (shouldMeasureChild(view, childMeasureSpec, childMeasureSpec2, layoutParams)) {
                view.measure(childMeasureSpec, childMeasureSpec2);
            }
        }

        public void moveView(int i2, int i4) {
            View childAt = getChildAt(i2);
            if (childAt != null) {
                detachViewAt(i2);
                attachView(childAt, i4);
                return;
            }
            throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i2 + this.mRecyclerView.toString());
        }

        public void offsetChildrenHorizontal(@Px int i2) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.offsetChildrenHorizontal(i2);
            }
        }

        public void offsetChildrenVertical(@Px int i2) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.offsetChildrenVertical(i2);
            }
        }

        public void onAdapterChanged(@Nullable Adapter adapter, @Nullable Adapter adapter2) {
        }

        public boolean onAddFocusables(@NonNull RecyclerView recyclerView, @NonNull ArrayList<View> arrayList, int i2, int i4) {
            return false;
        }

        @CallSuper
        public void onAttachedToWindow(RecyclerView recyclerView) {
        }

        @Deprecated
        public void onDetachedFromWindow(RecyclerView recyclerView) {
        }

        @CallSuper
        public void onDetachedFromWindow(RecyclerView recyclerView, Recycler recycler) {
            onDetachedFromWindow(recyclerView);
        }

        @Nullable
        public View onFocusSearchFailed(@NonNull View view, int i2, @NonNull Recycler recycler, @NonNull State state) {
            return null;
        }

        public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.mRecyclerView;
            onInitializeAccessibilityEvent(recyclerView.f7101b, recyclerView.H0, accessibilityEvent);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            RecyclerView recyclerView = this.mRecyclerView;
            onInitializeAccessibilityNodeInfo(recyclerView.f7101b, recyclerView.H0, accessibilityNodeInfoCompat);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void onInitializeAccessibilityNodeInfoForItem(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            ViewHolder S = RecyclerView.S(view);
            if (S == null || S.isRemoved() || this.mChildHelper.n(S.itemView)) {
                return;
            }
            RecyclerView recyclerView = this.mRecyclerView;
            onInitializeAccessibilityNodeInfoForItem(recyclerView.f7101b, recyclerView.H0, view, accessibilityNodeInfoCompat);
        }

        public void onInitializeAccessibilityNodeInfoForItem(@NonNull Recycler recycler, @NonNull State state, @NonNull View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        }

        @Nullable
        public View onInterceptFocusSearch(@NonNull View view, int i2) {
            return null;
        }

        public void onItemsAdded(@NonNull RecyclerView recyclerView, int i2, int i4) {
        }

        public void onItemsChanged(@NonNull RecyclerView recyclerView) {
        }

        public void onItemsMoved(@NonNull RecyclerView recyclerView, int i2, int i4, int i5) {
        }

        public void onItemsRemoved(@NonNull RecyclerView recyclerView, int i2, int i4) {
        }

        public void onItemsUpdated(@NonNull RecyclerView recyclerView, int i2, int i4) {
        }

        public void onItemsUpdated(@NonNull RecyclerView recyclerView, int i2, int i4, @Nullable Object obj) {
            onItemsUpdated(recyclerView, i2, i4);
        }

        public void onLayoutChildren(Recycler recycler, State state) {
        }

        public void onLayoutCompleted(State state) {
        }

        public void onMeasure(@NonNull Recycler recycler, @NonNull State state, int i2, int i4) {
            this.mRecyclerView.s(i2, i4);
        }

        @Deprecated
        public boolean onRequestChildFocus(@NonNull RecyclerView recyclerView, @NonNull View view, @Nullable View view2) {
            return isSmoothScrolling() || recyclerView.isComputingLayout();
        }

        public void onRestoreInstanceState(Parcelable parcelable) {
        }

        @Nullable
        public Parcelable onSaveInstanceState() {
            return null;
        }

        public void onScrollStateChanged(int i2) {
        }

        void onSmoothScrollerStopped(SmoothScroller smoothScroller) {
            if (this.mSmoothScroller == smoothScroller) {
                this.mSmoothScroller = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean performAccessibilityAction(int i2, @Nullable Bundle bundle) {
            RecyclerView recyclerView = this.mRecyclerView;
            return performAccessibilityAction(recyclerView.f7101b, recyclerView.H0, i2, bundle);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean performAccessibilityActionForItem(@NonNull View view, int i2, @Nullable Bundle bundle) {
            RecyclerView recyclerView = this.mRecyclerView;
            return performAccessibilityActionForItem(recyclerView.f7101b, recyclerView.H0, view, i2, bundle);
        }

        public boolean performAccessibilityActionForItem(@NonNull Recycler recycler, @NonNull State state, @NonNull View view, int i2, @Nullable Bundle bundle) {
            return false;
        }

        public void postOnAnimation(Runnable runnable) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                ViewCompat.postOnAnimation(recyclerView, runnable);
            }
        }

        public void removeAllViews() {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                this.mChildHelper.q(childCount);
            }
        }

        public void removeAndRecycleAllViews(@NonNull Recycler recycler) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                if (!RecyclerView.S(getChildAt(childCount)).shouldIgnore()) {
                    removeAndRecycleViewAt(childCount, recycler);
                }
            }
        }

        void removeAndRecycleScrapInt(Recycler recycler) {
            int h4 = recycler.h();
            for (int i2 = h4 - 1; i2 >= 0; i2--) {
                View k4 = recycler.k(i2);
                ViewHolder S = RecyclerView.S(k4);
                if (!S.shouldIgnore()) {
                    S.setIsRecyclable(false);
                    if (S.isTmpDetached()) {
                        this.mRecyclerView.removeDetachedView(k4, false);
                    }
                    ItemAnimator itemAnimator = this.mRecyclerView.f7118p0;
                    if (itemAnimator != null) {
                        itemAnimator.endAnimation(S);
                    }
                    S.setIsRecyclable(true);
                    recycler.u(k4);
                }
            }
            recycler.d();
            if (h4 > 0) {
                this.mRecyclerView.invalidate();
            }
        }

        public void removeAndRecycleView(@NonNull View view, @NonNull Recycler recycler) {
            removeView(view);
            recycler.recycleView(view);
        }

        public void removeAndRecycleViewAt(int i2, @NonNull Recycler recycler) {
            View childAt = getChildAt(i2);
            removeViewAt(i2);
            recycler.recycleView(childAt);
        }

        public boolean removeCallbacks(Runnable runnable) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.removeCallbacks(runnable);
            }
            return false;
        }

        public void removeDetachedView(@NonNull View view) {
            this.mRecyclerView.removeDetachedView(view, false);
        }

        public void removeView(View view) {
            this.mChildHelper.p(view);
        }

        public void removeViewAt(int i2) {
            if (getChildAt(i2) != null) {
                this.mChildHelper.q(i2);
            }
        }

        public boolean requestChildRectangleOnScreen(@NonNull RecyclerView recyclerView, @NonNull View view, @NonNull Rect rect, boolean z3) {
            return requestChildRectangleOnScreen(recyclerView, view, rect, z3, false);
        }

        public void requestLayout() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public void requestSimpleAnimationsInNextLayout() {
            this.mRequestedSimpleAnimations = true;
        }

        public int scrollHorizontallyBy(int i2, Recycler recycler, State state) {
            return 0;
        }

        public void scrollToPosition(int i2) {
        }

        public int scrollVerticallyBy(int i2, Recycler recycler, State state) {
            return 0;
        }

        @Deprecated
        public void setAutoMeasureEnabled(boolean z3) {
            this.mAutoMeasure = z3;
        }

        void setExactMeasureSpecsFrom(RecyclerView recyclerView) {
            setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        public final void setItemPrefetchEnabled(boolean z3) {
            if (z3 != this.mItemPrefetchEnabled) {
                this.mItemPrefetchEnabled = z3;
                this.mPrefetchMaxCountObserved = 0;
                RecyclerView recyclerView = this.mRecyclerView;
                if (recyclerView != null) {
                    recyclerView.f7101b.E();
                }
            }
        }

        void setMeasureSpecs(int i2, int i4) {
            this.mWidth = View.MeasureSpec.getSize(i2);
            int mode = View.MeasureSpec.getMode(i2);
            this.mWidthMode = mode;
            if (mode == 0 && !RecyclerView.f7079g1) {
                this.mWidth = 0;
            }
            this.mHeight = View.MeasureSpec.getSize(i4);
            int mode2 = View.MeasureSpec.getMode(i4);
            this.mHeightMode = mode2;
            if (mode2 != 0 || RecyclerView.f7079g1) {
                return;
            }
            this.mHeight = 0;
        }

        public void setMeasuredDimension(Rect rect, int i2, int i4) {
            setMeasuredDimension(chooseSize(i2, rect.width() + getPaddingLeft() + getPaddingRight(), getMinimumWidth()), chooseSize(i4, rect.height() + getPaddingTop() + getPaddingBottom(), getMinimumHeight()));
        }

        void setMeasuredDimensionFromChildren(int i2, int i4) {
            int childCount = getChildCount();
            if (childCount == 0) {
                this.mRecyclerView.s(i2, i4);
                return;
            }
            int i5 = Integer.MIN_VALUE;
            int i6 = Integer.MIN_VALUE;
            int i7 = Integer.MAX_VALUE;
            int i8 = Integer.MAX_VALUE;
            for (int i9 = 0; i9 < childCount; i9++) {
                View childAt = getChildAt(i9);
                Rect rect = this.mRecyclerView.f7108i;
                getDecoratedBoundsWithMargins(childAt, rect);
                int i10 = rect.left;
                if (i10 < i7) {
                    i7 = i10;
                }
                int i11 = rect.right;
                if (i11 > i5) {
                    i5 = i11;
                }
                int i12 = rect.top;
                if (i12 < i8) {
                    i8 = i12;
                }
                int i13 = rect.bottom;
                if (i13 > i6) {
                    i6 = i13;
                }
            }
            this.mRecyclerView.f7108i.set(i7, i8, i5, i6);
            setMeasuredDimension(this.mRecyclerView.f7108i, i2, i4);
        }

        public void setMeasurementCacheEnabled(boolean z3) {
            this.mMeasurementCacheEnabled = z3;
        }

        void setRecyclerView(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.mRecyclerView = null;
                this.mChildHelper = null;
                this.mWidth = 0;
                this.mHeight = 0;
            } else {
                this.mRecyclerView = recyclerView;
                this.mChildHelper = recyclerView.f7104e;
                this.mWidth = recyclerView.getWidth();
                this.mHeight = recyclerView.getHeight();
            }
            this.mWidthMode = 1073741824;
            this.mHeightMode = 1073741824;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean shouldMeasureChild(View view, int i2, int i4, LayoutParams layoutParams) {
            return (!view.isLayoutRequested() && this.mMeasurementCacheEnabled && isMeasurementUpToDate(view.getWidth(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).width) && isMeasurementUpToDate(view.getHeight(), i4, ((ViewGroup.MarginLayoutParams) layoutParams).height)) ? false : true;
        }

        boolean shouldMeasureTwice() {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean shouldReMeasureChild(View view, int i2, int i4, LayoutParams layoutParams) {
            return (this.mMeasurementCacheEnabled && isMeasurementUpToDate(view.getMeasuredWidth(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).width) && isMeasurementUpToDate(view.getMeasuredHeight(), i4, ((ViewGroup.MarginLayoutParams) layoutParams).height)) ? false : true;
        }

        public void smoothScrollToPosition(RecyclerView recyclerView, State state, int i2) {
        }

        public void startSmoothScroll(SmoothScroller smoothScroller) {
            SmoothScroller smoothScroller2 = this.mSmoothScroller;
            if (smoothScroller2 != null && smoothScroller != smoothScroller2 && smoothScroller2.isRunning()) {
                this.mSmoothScroller.stop();
            }
            this.mSmoothScroller = smoothScroller;
            smoothScroller.start(this.mRecyclerView, this);
        }

        public void stopIgnoringView(@NonNull View view) {
            ViewHolder S = RecyclerView.S(view);
            S.stopIgnoring();
            S.resetInternal();
            S.addFlags(4);
        }

        void stopSmoothScroller() {
            SmoothScroller smoothScroller = this.mSmoothScroller;
            if (smoothScroller != null) {
                smoothScroller.stop();
            }
        }

        public boolean supportsPredictiveItemAnimations() {
            return false;
        }

        public void addDisappearingView(View view, int i2) {
            addViewInt(view, i2, true);
        }

        public void addView(View view, int i2) {
            addViewInt(view, i2, false);
        }

        public void onInitializeAccessibilityEvent(@NonNull Recycler recycler, @NonNull State state, @NonNull AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null || accessibilityEvent == null) {
                return;
            }
            boolean z3 = true;
            if (!recyclerView.canScrollVertically(1) && !this.mRecyclerView.canScrollVertically(-1) && !this.mRecyclerView.canScrollHorizontally(-1) && !this.mRecyclerView.canScrollHorizontally(1)) {
                z3 = false;
            }
            accessibilityEvent.setScrollable(z3);
            Adapter adapter = this.mRecyclerView.f7111l;
            if (adapter != null) {
                accessibilityEvent.setItemCount(adapter.getItemCount());
            }
        }

        public void onInitializeAccessibilityNodeInfo(@NonNull Recycler recycler, @NonNull State state, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (this.mRecyclerView.canScrollVertically(-1) || this.mRecyclerView.canScrollHorizontally(-1)) {
                accessibilityNodeInfoCompat.addAction(8192);
                accessibilityNodeInfoCompat.setScrollable(true);
            }
            if (this.mRecyclerView.canScrollVertically(1) || this.mRecyclerView.canScrollHorizontally(1)) {
                accessibilityNodeInfoCompat.addAction(4096);
                accessibilityNodeInfoCompat.setScrollable(true);
            }
            accessibilityNodeInfoCompat.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(getRowCountForAccessibility(recycler, state), getColumnCountForAccessibility(recycler, state), isLayoutHierarchical(recycler, state), getSelectionModeForAccessibility(recycler, state)));
        }

        public boolean onRequestChildFocus(@NonNull RecyclerView recyclerView, @NonNull State state, @NonNull View view, @Nullable View view2) {
            return onRequestChildFocus(recyclerView, view, view2);
        }

        public boolean performAccessibilityAction(@NonNull Recycler recycler, @NonNull State state, int i2, @Nullable Bundle bundle) {
            int height;
            int width;
            int i4;
            int i5;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null) {
                return false;
            }
            if (i2 == 4096) {
                height = recyclerView.canScrollVertically(1) ? (getHeight() - getPaddingTop()) - getPaddingBottom() : 0;
                if (this.mRecyclerView.canScrollHorizontally(1)) {
                    width = (getWidth() - getPaddingLeft()) - getPaddingRight();
                    i4 = height;
                    i5 = width;
                }
                i4 = height;
                i5 = 0;
            } else if (i2 != 8192) {
                i5 = 0;
                i4 = 0;
            } else {
                height = recyclerView.canScrollVertically(-1) ? -((getHeight() - getPaddingTop()) - getPaddingBottom()) : 0;
                if (this.mRecyclerView.canScrollHorizontally(-1)) {
                    width = -((getWidth() - getPaddingLeft()) - getPaddingRight());
                    i4 = height;
                    i5 = width;
                }
                i4 = height;
                i5 = 0;
            }
            if (i4 == 0 && i5 == 0) {
                return false;
            }
            this.mRecyclerView.M0(i5, i4, null, Integer.MIN_VALUE, true);
            return true;
        }

        public boolean requestChildRectangleOnScreen(@NonNull RecyclerView recyclerView, @NonNull View view, @NonNull Rect rect, boolean z3, boolean z4) {
            int[] childRectangleOnScreenScrollAmount = getChildRectangleOnScreenScrollAmount(view, rect);
            int i2 = childRectangleOnScreenScrollAmount[0];
            int i4 = childRectangleOnScreenScrollAmount[1];
            if ((!z4 || isFocusedChildVisibleAfterScrolling(recyclerView, i2, i4)) && !(i2 == 0 && i4 == 0)) {
                if (z3) {
                    recyclerView.scrollBy(i2, i4);
                } else {
                    recyclerView.smoothScrollBy(i2, i4);
                }
                return true;
            }
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x0017, code lost:
            if (r5 == 1073741824) goto L8;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int getChildMeasureSpec(int r4, int r5, int r6, int r7, boolean r8) {
            /*
                int r4 = r4 - r6
                r6 = 0
                int r4 = java.lang.Math.max(r6, r4)
                r0 = -2
                r1 = -1
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = 1073741824(0x40000000, float:2.0)
                if (r8 == 0) goto L1a
                if (r7 < 0) goto L11
                goto L1c
            L11:
                if (r7 != r1) goto L2f
                if (r5 == r2) goto L21
                if (r5 == 0) goto L2f
                if (r5 == r3) goto L21
                goto L2f
            L1a:
                if (r7 < 0) goto L1f
            L1c:
                r5 = 1073741824(0x40000000, float:2.0)
                goto L31
            L1f:
                if (r7 != r1) goto L23
            L21:
                r7 = r4
                goto L31
            L23:
                if (r7 != r0) goto L2f
                if (r5 == r2) goto L2c
                if (r5 != r3) goto L2a
                goto L2c
            L2a:
                r5 = 0
                goto L21
            L2c:
                r5 = -2147483648(0xffffffff80000000, float:-0.0)
                goto L21
            L2f:
                r5 = 0
                r7 = 0
            L31:
                int r4 = android.view.View.MeasureSpec.makeMeasureSpec(r7, r5)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.LayoutManager.getChildMeasureSpec(int, int, int, int, boolean):int");
        }

        public void attachView(@NonNull View view, int i2) {
            attachView(view, i2, (LayoutParams) view.getLayoutParams());
        }

        public LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
            return new LayoutParams(context, attributeSet);
        }

        public void setMeasuredDimension(int i2, int i4) {
            this.mRecyclerView.setMeasuredDimension(i2, i4);
        }

        public void attachView(@NonNull View view) {
            attachView(view, -1);
        }
    }

    /* loaded from: classes2.dex */
    public interface OnChildAttachStateChangeListener {
        void onChildViewAttachedToWindow(@NonNull View view);

        void onChildViewDetachedFromWindow(@NonNull View view);
    }

    /* loaded from: classes2.dex */
    public static abstract class OnFlingListener {
        public abstract boolean onFling(int i2, int i4);
    }

    /* loaded from: classes2.dex */
    public interface OnItemTouchListener {
        boolean onInterceptTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent);

        void onRequestDisallowInterceptTouchEvent(boolean z3);

        void onTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent);
    }

    /* loaded from: classes2.dex */
    public static abstract class OnScrollListener {
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i2) {
        }

        public void onScrolled(@NonNull RecyclerView recyclerView, int i2, int i4) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface Orientation {
    }

    /* loaded from: classes2.dex */
    public static class RecycledViewPool {

        /* renamed from: c  reason: collision with root package name */
        private static final int f7158c = 5;

        /* renamed from: a  reason: collision with root package name */
        SparseArray<ScrapData> f7159a = new SparseArray<>();

        /* renamed from: b  reason: collision with root package name */
        private int f7160b = 0;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public static class ScrapData {

            /* renamed from: a  reason: collision with root package name */
            final ArrayList<ViewHolder> f7161a = new ArrayList<>();

            /* renamed from: b  reason: collision with root package name */
            int f7162b = 5;

            /* renamed from: c  reason: collision with root package name */
            long f7163c = 0;

            /* renamed from: d  reason: collision with root package name */
            long f7164d = 0;

            ScrapData() {
            }
        }

        private ScrapData e(int i2) {
            ScrapData scrapData = this.f7159a.get(i2);
            if (scrapData == null) {
                ScrapData scrapData2 = new ScrapData();
                this.f7159a.put(i2, scrapData2);
                return scrapData2;
            }
            return scrapData;
        }

        void a() {
            this.f7160b++;
        }

        void b() {
            this.f7160b--;
        }

        void c(int i2, long j4) {
            ScrapData e4 = e(i2);
            e4.f7164d = g(e4.f7164d, j4);
        }

        public void clear() {
            for (int i2 = 0; i2 < this.f7159a.size(); i2++) {
                this.f7159a.valueAt(i2).f7161a.clear();
            }
        }

        void d(int i2, long j4) {
            ScrapData e4 = e(i2);
            e4.f7163c = g(e4.f7163c, j4);
        }

        void f(Adapter adapter, Adapter adapter2, boolean z3) {
            if (adapter != null) {
                b();
            }
            if (!z3 && this.f7160b == 0) {
                clear();
            }
            if (adapter2 != null) {
                a();
            }
        }

        long g(long j4, long j5) {
            return j4 == 0 ? j5 : ((j4 / 4) * 3) + (j5 / 4);
        }

        @Nullable
        public ViewHolder getRecycledView(int i2) {
            ScrapData scrapData = this.f7159a.get(i2);
            if (scrapData == null || scrapData.f7161a.isEmpty()) {
                return null;
            }
            ArrayList<ViewHolder> arrayList = scrapData.f7161a;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (!arrayList.get(size).isAttachedToTransitionOverlay()) {
                    return arrayList.remove(size);
                }
            }
            return null;
        }

        public int getRecycledViewCount(int i2) {
            return e(i2).f7161a.size();
        }

        int h() {
            int i2 = 0;
            for (int i4 = 0; i4 < this.f7159a.size(); i4++) {
                ArrayList<ViewHolder> arrayList = this.f7159a.valueAt(i4).f7161a;
                if (arrayList != null) {
                    i2 += arrayList.size();
                }
            }
            return i2;
        }

        boolean i(int i2, long j4, long j5) {
            long j6 = e(i2).f7164d;
            return j6 == 0 || j4 + j6 < j5;
        }

        boolean j(int i2, long j4, long j5) {
            long j6 = e(i2).f7163c;
            return j6 == 0 || j4 + j6 < j5;
        }

        public void putRecycledView(ViewHolder viewHolder) {
            int itemViewType = viewHolder.getItemViewType();
            ArrayList<ViewHolder> arrayList = e(itemViewType).f7161a;
            if (this.f7159a.get(itemViewType).f7162b <= arrayList.size()) {
                return;
            }
            viewHolder.resetInternal();
            arrayList.add(viewHolder);
        }

        public void setMaxRecycledViews(int i2, int i4) {
            ScrapData e4 = e(i2);
            e4.f7162b = i4;
            ArrayList<ViewHolder> arrayList = e4.f7161a;
            while (arrayList.size() > i4) {
                arrayList.remove(arrayList.size() - 1);
            }
        }
    }

    /* loaded from: classes2.dex */
    public final class Recycler {

        /* renamed from: j  reason: collision with root package name */
        static final int f7165j = 2;

        /* renamed from: a  reason: collision with root package name */
        final ArrayList<ViewHolder> f7166a;

        /* renamed from: b  reason: collision with root package name */
        ArrayList<ViewHolder> f7167b;

        /* renamed from: c  reason: collision with root package name */
        final ArrayList<ViewHolder> f7168c;

        /* renamed from: d  reason: collision with root package name */
        private final List<ViewHolder> f7169d;

        /* renamed from: e  reason: collision with root package name */
        private int f7170e;

        /* renamed from: f  reason: collision with root package name */
        int f7171f;

        /* renamed from: g  reason: collision with root package name */
        RecycledViewPool f7172g;

        /* renamed from: h  reason: collision with root package name */
        private ViewCacheExtension f7173h;

        public Recycler() {
            ArrayList<ViewHolder> arrayList = new ArrayList<>();
            this.f7166a = arrayList;
            this.f7167b = null;
            this.f7168c = new ArrayList<>();
            this.f7169d = Collections.unmodifiableList(arrayList);
            this.f7170e = 2;
            this.f7171f = 2;
        }

        private boolean B(@NonNull ViewHolder viewHolder, int i2, int i4, long j4) {
            viewHolder.mBindingAdapter = null;
            viewHolder.mOwnerRecyclerView = RecyclerView.this;
            int itemViewType = viewHolder.getItemViewType();
            long nanoTime = RecyclerView.this.getNanoTime();
            if (j4 == Long.MAX_VALUE || this.f7172g.i(itemViewType, nanoTime, j4)) {
                RecyclerView.this.f7111l.bindViewHolder(viewHolder, i2);
                this.f7172g.c(viewHolder.getItemViewType(), RecyclerView.this.getNanoTime() - nanoTime);
                b(viewHolder);
                if (RecyclerView.this.H0.isPreLayout()) {
                    viewHolder.mPreLayoutPosition = i4;
                    return true;
                }
                return true;
            }
            return false;
        }

        private void b(ViewHolder viewHolder) {
            if (RecyclerView.this.e0()) {
                View view = viewHolder.itemView;
                if (ViewCompat.getImportantForAccessibility(view) == 0) {
                    ViewCompat.setImportantForAccessibility(view, 1);
                }
                RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate = RecyclerView.this.O0;
                if (recyclerViewAccessibilityDelegate == null) {
                    return;
                }
                AccessibilityDelegateCompat itemDelegate = recyclerViewAccessibilityDelegate.getItemDelegate();
                if (itemDelegate instanceof RecyclerViewAccessibilityDelegate.ItemDelegate) {
                    ((RecyclerViewAccessibilityDelegate.ItemDelegate) itemDelegate).b(view);
                }
                ViewCompat.setAccessibilityDelegate(view, itemDelegate);
            }
        }

        private void m(ViewGroup viewGroup, boolean z3) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    m((ViewGroup) childAt, true);
                }
            }
            if (z3) {
                if (viewGroup.getVisibility() == 4) {
                    viewGroup.setVisibility(0);
                    viewGroup.setVisibility(4);
                    return;
                }
                int visibility = viewGroup.getVisibility();
                viewGroup.setVisibility(4);
                viewGroup.setVisibility(visibility);
            }
        }

        private void n(ViewHolder viewHolder) {
            View view = viewHolder.itemView;
            if (view instanceof ViewGroup) {
                m((ViewGroup) view, false);
            }
        }

        void A(ViewCacheExtension viewCacheExtension) {
            this.f7173h = viewCacheExtension;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Removed duplicated region for block: B:100:0x020c  */
        /* JADX WARN: Removed duplicated region for block: B:106:0x0228 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x005f  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0185  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x01a2  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x01c5  */
        /* JADX WARN: Removed duplicated region for block: B:90:0x01d4  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x01fe  */
        @androidx.annotation.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public androidx.recyclerview.widget.RecyclerView.ViewHolder C(int r17, boolean r18, long r19) {
            /*
                Method dump skipped, instructions count: 615
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.Recycler.C(int, boolean, long):androidx.recyclerview.widget.RecyclerView$ViewHolder");
        }

        void D(ViewHolder viewHolder) {
            if (viewHolder.mInChangeScrap) {
                this.f7167b.remove(viewHolder);
            } else {
                this.f7166a.remove(viewHolder);
            }
            viewHolder.mScrapContainer = null;
            viewHolder.mInChangeScrap = false;
            viewHolder.clearReturnedFromScrapFlag();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void E() {
            LayoutManager layoutManager = RecyclerView.this.f7112m;
            this.f7171f = this.f7170e + (layoutManager != null ? layoutManager.mPrefetchMaxCountObserved : 0);
            for (int size = this.f7168c.size() - 1; size >= 0 && this.f7168c.size() > this.f7171f; size--) {
                w(size);
            }
        }

        boolean F(ViewHolder viewHolder) {
            if (viewHolder.isRemoved()) {
                return RecyclerView.this.H0.isPreLayout();
            }
            int i2 = viewHolder.mPosition;
            if (i2 >= 0 && i2 < RecyclerView.this.f7111l.getItemCount()) {
                if (RecyclerView.this.H0.isPreLayout() || RecyclerView.this.f7111l.getItemViewType(viewHolder.mPosition) == viewHolder.getItemViewType()) {
                    return !RecyclerView.this.f7111l.hasStableIds() || viewHolder.getItemId() == RecyclerView.this.f7111l.getItemId(viewHolder.mPosition);
                }
                return false;
            }
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + viewHolder + RecyclerView.this.J());
        }

        void G(int i2, int i4) {
            int i5;
            int i6 = i4 + i2;
            for (int size = this.f7168c.size() - 1; size >= 0; size--) {
                ViewHolder viewHolder = this.f7168c.get(size);
                if (viewHolder != null && (i5 = viewHolder.mPosition) >= i2 && i5 < i6) {
                    viewHolder.addFlags(2);
                    w(size);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(@NonNull ViewHolder viewHolder, boolean z3) {
            RecyclerView.n(viewHolder);
            View view = viewHolder.itemView;
            RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate = RecyclerView.this.O0;
            if (recyclerViewAccessibilityDelegate != null) {
                AccessibilityDelegateCompat itemDelegate = recyclerViewAccessibilityDelegate.getItemDelegate();
                ViewCompat.setAccessibilityDelegate(view, itemDelegate instanceof RecyclerViewAccessibilityDelegate.ItemDelegate ? ((RecyclerViewAccessibilityDelegate.ItemDelegate) itemDelegate).a(view) : null);
            }
            if (z3) {
                e(viewHolder);
            }
            viewHolder.mBindingAdapter = null;
            viewHolder.mOwnerRecyclerView = null;
            g().putRecycledView(viewHolder);
        }

        public void bindViewToPosition(@NonNull View view, int i2) {
            LayoutParams layoutParams;
            ViewHolder S = RecyclerView.S(view);
            if (S != null) {
                int k4 = RecyclerView.this.f7103d.k(i2);
                if (k4 >= 0 && k4 < RecyclerView.this.f7111l.getItemCount()) {
                    B(S, k4, i2, Long.MAX_VALUE);
                    ViewGroup.LayoutParams layoutParams2 = S.itemView.getLayoutParams();
                    if (layoutParams2 == null) {
                        layoutParams = (LayoutParams) RecyclerView.this.generateDefaultLayoutParams();
                        S.itemView.setLayoutParams(layoutParams);
                    } else if (!RecyclerView.this.checkLayoutParams(layoutParams2)) {
                        layoutParams = (LayoutParams) RecyclerView.this.generateLayoutParams(layoutParams2);
                        S.itemView.setLayoutParams(layoutParams);
                    } else {
                        layoutParams = (LayoutParams) layoutParams2;
                    }
                    layoutParams.f7156c = true;
                    layoutParams.f7154a = S;
                    layoutParams.f7157d = S.itemView.getParent() == null;
                    return;
                }
                throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + i2 + "(offset:" + k4 + ").state:" + RecyclerView.this.H0.getItemCount() + RecyclerView.this.J());
            }
            throw new IllegalArgumentException("The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter" + RecyclerView.this.J());
        }

        void c() {
            int size = this.f7168c.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f7168c.get(i2).clearOldPosition();
            }
            int size2 = this.f7166a.size();
            for (int i4 = 0; i4 < size2; i4++) {
                this.f7166a.get(i4).clearOldPosition();
            }
            ArrayList<ViewHolder> arrayList = this.f7167b;
            if (arrayList != null) {
                int size3 = arrayList.size();
                for (int i5 = 0; i5 < size3; i5++) {
                    this.f7167b.get(i5).clearOldPosition();
                }
            }
        }

        public void clear() {
            this.f7166a.clear();
            v();
        }

        public int convertPreLayoutPositionToPostLayout(int i2) {
            if (i2 >= 0 && i2 < RecyclerView.this.H0.getItemCount()) {
                return !RecyclerView.this.H0.isPreLayout() ? i2 : RecyclerView.this.f7103d.k(i2);
            }
            throw new IndexOutOfBoundsException("invalid position " + i2 + ". State item count is " + RecyclerView.this.H0.getItemCount() + RecyclerView.this.J());
        }

        void d() {
            this.f7166a.clear();
            ArrayList<ViewHolder> arrayList = this.f7167b;
            if (arrayList != null) {
                arrayList.clear();
            }
        }

        void e(@NonNull ViewHolder viewHolder) {
            RecyclerListener recyclerListener = RecyclerView.this.f7113n;
            if (recyclerListener != null) {
                recyclerListener.onViewRecycled(viewHolder);
            }
            int size = RecyclerView.this.f7115o.size();
            for (int i2 = 0; i2 < size; i2++) {
                RecyclerView.this.f7115o.get(i2).onViewRecycled(viewHolder);
            }
            Adapter adapter = RecyclerView.this.f7111l;
            if (adapter != null) {
                adapter.onViewRecycled(viewHolder);
            }
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.H0 != null) {
                recyclerView.f7105f.p(viewHolder);
            }
        }

        ViewHolder f(int i2) {
            int size;
            int k4;
            ArrayList<ViewHolder> arrayList = this.f7167b;
            if (arrayList != null && (size = arrayList.size()) != 0) {
                for (int i4 = 0; i4 < size; i4++) {
                    ViewHolder viewHolder = this.f7167b.get(i4);
                    if (!viewHolder.wasReturnedFromScrap() && viewHolder.getLayoutPosition() == i2) {
                        viewHolder.addFlags(32);
                        return viewHolder;
                    }
                }
                if (RecyclerView.this.f7111l.hasStableIds() && (k4 = RecyclerView.this.f7103d.k(i2)) > 0 && k4 < RecyclerView.this.f7111l.getItemCount()) {
                    long itemId = RecyclerView.this.f7111l.getItemId(k4);
                    for (int i5 = 0; i5 < size; i5++) {
                        ViewHolder viewHolder2 = this.f7167b.get(i5);
                        if (!viewHolder2.wasReturnedFromScrap() && viewHolder2.getItemId() == itemId) {
                            viewHolder2.addFlags(32);
                            return viewHolder2;
                        }
                    }
                }
            }
            return null;
        }

        RecycledViewPool g() {
            if (this.f7172g == null) {
                this.f7172g = new RecycledViewPool();
            }
            return this.f7172g;
        }

        @NonNull
        public List<ViewHolder> getScrapList() {
            return this.f7169d;
        }

        @NonNull
        public View getViewForPosition(int i2) {
            return l(i2, false);
        }

        int h() {
            return this.f7166a.size();
        }

        ViewHolder i(long j4, int i2, boolean z3) {
            for (int size = this.f7166a.size() - 1; size >= 0; size--) {
                ViewHolder viewHolder = this.f7166a.get(size);
                if (viewHolder.getItemId() == j4 && !viewHolder.wasReturnedFromScrap()) {
                    if (i2 == viewHolder.getItemViewType()) {
                        viewHolder.addFlags(32);
                        if (viewHolder.isRemoved() && !RecyclerView.this.H0.isPreLayout()) {
                            viewHolder.setFlags(2, 14);
                        }
                        return viewHolder;
                    } else if (!z3) {
                        this.f7166a.remove(size);
                        RecyclerView.this.removeDetachedView(viewHolder.itemView, false);
                        u(viewHolder.itemView);
                    }
                }
            }
            int size2 = this.f7168c.size();
            while (true) {
                size2--;
                if (size2 < 0) {
                    return null;
                }
                ViewHolder viewHolder2 = this.f7168c.get(size2);
                if (viewHolder2.getItemId() == j4 && !viewHolder2.isAttachedToTransitionOverlay()) {
                    if (i2 == viewHolder2.getItemViewType()) {
                        if (!z3) {
                            this.f7168c.remove(size2);
                        }
                        return viewHolder2;
                    } else if (!z3) {
                        w(size2);
                        return null;
                    }
                }
            }
        }

        ViewHolder j(int i2, boolean z3) {
            View e4;
            int size = this.f7166a.size();
            for (int i4 = 0; i4 < size; i4++) {
                ViewHolder viewHolder = this.f7166a.get(i4);
                if (!viewHolder.wasReturnedFromScrap() && viewHolder.getLayoutPosition() == i2 && !viewHolder.isInvalid() && (RecyclerView.this.H0.f7194h || !viewHolder.isRemoved())) {
                    viewHolder.addFlags(32);
                    return viewHolder;
                }
            }
            if (!z3 && (e4 = RecyclerView.this.f7104e.e(i2)) != null) {
                ViewHolder S = RecyclerView.S(e4);
                RecyclerView.this.f7104e.s(e4);
                int m4 = RecyclerView.this.f7104e.m(e4);
                if (m4 != -1) {
                    RecyclerView.this.f7104e.d(m4);
                    y(e4);
                    S.addFlags(8224);
                    return S;
                }
                throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + S + RecyclerView.this.J());
            }
            int size2 = this.f7168c.size();
            for (int i5 = 0; i5 < size2; i5++) {
                ViewHolder viewHolder2 = this.f7168c.get(i5);
                if (!viewHolder2.isInvalid() && viewHolder2.getLayoutPosition() == i2 && !viewHolder2.isAttachedToTransitionOverlay()) {
                    if (!z3) {
                        this.f7168c.remove(i5);
                    }
                    return viewHolder2;
                }
            }
            return null;
        }

        View k(int i2) {
            return this.f7166a.get(i2).itemView;
        }

        View l(int i2, boolean z3) {
            return C(i2, z3, Long.MAX_VALUE).itemView;
        }

        void o() {
            int size = this.f7168c.size();
            for (int i2 = 0; i2 < size; i2++) {
                LayoutParams layoutParams = (LayoutParams) this.f7168c.get(i2).itemView.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.f7156c = true;
                }
            }
        }

        void p() {
            int size = this.f7168c.size();
            for (int i2 = 0; i2 < size; i2++) {
                ViewHolder viewHolder = this.f7168c.get(i2);
                if (viewHolder != null) {
                    viewHolder.addFlags(6);
                    viewHolder.addChangePayload(null);
                }
            }
            Adapter adapter = RecyclerView.this.f7111l;
            if (adapter == null || !adapter.hasStableIds()) {
                v();
            }
        }

        void q(int i2, int i4) {
            int size = this.f7168c.size();
            for (int i5 = 0; i5 < size; i5++) {
                ViewHolder viewHolder = this.f7168c.get(i5);
                if (viewHolder != null && viewHolder.mPosition >= i2) {
                    viewHolder.offsetPosition(i4, false);
                }
            }
        }

        void r(int i2, int i4) {
            int i5;
            int i6;
            int i7;
            int i8;
            if (i2 < i4) {
                i5 = -1;
                i7 = i2;
                i6 = i4;
            } else {
                i5 = 1;
                i6 = i2;
                i7 = i4;
            }
            int size = this.f7168c.size();
            for (int i9 = 0; i9 < size; i9++) {
                ViewHolder viewHolder = this.f7168c.get(i9);
                if (viewHolder != null && (i8 = viewHolder.mPosition) >= i7 && i8 <= i6) {
                    if (i8 == i2) {
                        viewHolder.offsetPosition(i4 - i2, false);
                    } else {
                        viewHolder.offsetPosition(i5, false);
                    }
                }
            }
        }

        public void recycleView(@NonNull View view) {
            ViewHolder S = RecyclerView.S(view);
            if (S.isTmpDetached()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (S.isScrap()) {
                S.unScrap();
            } else if (S.wasReturnedFromScrap()) {
                S.clearReturnedFromScrapFlag();
            }
            x(S);
            if (RecyclerView.this.f7118p0 == null || S.isRecyclable()) {
                return;
            }
            RecyclerView.this.f7118p0.endAnimation(S);
        }

        void s(int i2, int i4, boolean z3) {
            int i5 = i2 + i4;
            for (int size = this.f7168c.size() - 1; size >= 0; size--) {
                ViewHolder viewHolder = this.f7168c.get(size);
                if (viewHolder != null) {
                    int i6 = viewHolder.mPosition;
                    if (i6 >= i5) {
                        viewHolder.offsetPosition(-i4, z3);
                    } else if (i6 >= i2) {
                        viewHolder.addFlags(8);
                        w(size);
                    }
                }
            }
        }

        public void setViewCacheSize(int i2) {
            this.f7170e = i2;
            E();
        }

        void t(Adapter adapter, Adapter adapter2, boolean z3) {
            clear();
            g().f(adapter, adapter2, z3);
        }

        void u(View view) {
            ViewHolder S = RecyclerView.S(view);
            S.mScrapContainer = null;
            S.mInChangeScrap = false;
            S.clearReturnedFromScrapFlag();
            x(S);
        }

        void v() {
            for (int size = this.f7168c.size() - 1; size >= 0; size--) {
                w(size);
            }
            this.f7168c.clear();
            if (RecyclerView.f7081i1) {
                RecyclerView.this.G0.a();
            }
        }

        void w(int i2) {
            a(this.f7168c.get(i2), true);
            this.f7168c.remove(i2);
        }

        void x(ViewHolder viewHolder) {
            boolean z3;
            boolean z4 = true;
            if (!viewHolder.isScrap() && viewHolder.itemView.getParent() == null) {
                if (!viewHolder.isTmpDetached()) {
                    if (!viewHolder.shouldIgnore()) {
                        boolean doesTransientStatePreventRecycling = viewHolder.doesTransientStatePreventRecycling();
                        Adapter adapter = RecyclerView.this.f7111l;
                        if ((adapter != null && doesTransientStatePreventRecycling && adapter.onFailedToRecycleView(viewHolder)) || viewHolder.isRecyclable()) {
                            if (this.f7171f <= 0 || viewHolder.hasAnyOfTheFlags(526)) {
                                z3 = false;
                            } else {
                                int size = this.f7168c.size();
                                if (size >= this.f7171f && size > 0) {
                                    w(0);
                                    size--;
                                }
                                if (RecyclerView.f7081i1 && size > 0 && !RecyclerView.this.G0.c(viewHolder.mPosition)) {
                                    int i2 = size - 1;
                                    while (i2 >= 0) {
                                        if (!RecyclerView.this.G0.c(this.f7168c.get(i2).mPosition)) {
                                            break;
                                        }
                                        i2--;
                                    }
                                    size = i2 + 1;
                                }
                                this.f7168c.add(size, viewHolder);
                                z3 = true;
                            }
                            if (!z3) {
                                a(viewHolder, true);
                                r1 = z3;
                                RecyclerView.this.f7105f.p(viewHolder);
                                if (r1 && !z4 && doesTransientStatePreventRecycling) {
                                    viewHolder.mBindingAdapter = null;
                                    viewHolder.mOwnerRecyclerView = null;
                                    return;
                                }
                                return;
                            }
                            r1 = z3;
                        }
                        z4 = false;
                        RecyclerView.this.f7105f.p(viewHolder);
                        if (r1) {
                            return;
                        }
                        return;
                    }
                    throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + RecyclerView.this.J());
                }
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + viewHolder + RecyclerView.this.J());
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Scrapped or attached views may not be recycled. isScrap:");
            sb.append(viewHolder.isScrap());
            sb.append(" isAttached:");
            sb.append(viewHolder.itemView.getParent() != null);
            sb.append(RecyclerView.this.J());
            throw new IllegalArgumentException(sb.toString());
        }

        void y(View view) {
            ViewHolder S = RecyclerView.S(view);
            if (!S.hasAnyOfTheFlags(12) && S.isUpdated() && !RecyclerView.this.l(S)) {
                if (this.f7167b == null) {
                    this.f7167b = new ArrayList<>();
                }
                S.setScrapContainer(this, true);
                this.f7167b.add(S);
            } else if (S.isInvalid() && !S.isRemoved() && !RecyclerView.this.f7111l.hasStableIds()) {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + RecyclerView.this.J());
            } else {
                S.setScrapContainer(this, false);
                this.f7166a.add(S);
            }
        }

        void z(RecycledViewPool recycledViewPool) {
            RecycledViewPool recycledViewPool2 = this.f7172g;
            if (recycledViewPool2 != null) {
                recycledViewPool2.b();
            }
            this.f7172g = recycledViewPool;
            if (recycledViewPool == null || RecyclerView.this.getAdapter() == null) {
                return;
            }
            this.f7172g.a();
        }
    }

    /* loaded from: classes2.dex */
    public interface RecyclerListener {
        void onViewRecycled(@NonNull ViewHolder viewHolder);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class RecyclerViewDataObserver extends AdapterDataObserver {
        RecyclerViewDataObserver() {
        }

        void a() {
            if (RecyclerView.f7080h1) {
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.f7125t && recyclerView.f7123s) {
                    ViewCompat.postOnAnimation(recyclerView, recyclerView.f7107h);
                    return;
                }
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            recyclerView2.B = true;
            recyclerView2.requestLayout();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            RecyclerView.this.k(null);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.H0.f7193g = true;
            recyclerView.u0(true);
            if (RecyclerView.this.f7103d.n()) {
                return;
            }
            RecyclerView.this.requestLayout();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i2, int i4, Object obj) {
            RecyclerView.this.k(null);
            if (RecyclerView.this.f7103d.p(i2, i4, obj)) {
                a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i2, int i4) {
            RecyclerView.this.k(null);
            if (RecyclerView.this.f7103d.q(i2, i4)) {
                a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i2, int i4, int i5) {
            RecyclerView.this.k(null);
            if (RecyclerView.this.f7103d.r(i2, i4, i5)) {
                a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i2, int i4) {
            RecyclerView.this.k(null);
            if (RecyclerView.this.f7103d.s(i2, i4)) {
                a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onStateRestorationPolicyChanged() {
            Adapter adapter;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.f7102c == null || (adapter = recyclerView.f7111l) == null || !adapter.canRestoreState()) {
                return;
            }
            RecyclerView.this.requestLayout();
        }
    }

    /* loaded from: classes2.dex */
    public static class SimpleOnItemTouchListener implements OnItemTouchListener {
        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public boolean onInterceptTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public void onRequestDisallowInterceptTouchEvent(boolean z3) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public void onTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class SmoothScroller {
        private LayoutManager mLayoutManager;
        private boolean mPendingInitialRun;
        private RecyclerView mRecyclerView;
        private boolean mRunning;
        private boolean mStarted;
        private View mTargetView;
        private int mTargetPosition = -1;
        private final Action mRecyclingAction = new Action(0, 0);

        /* loaded from: classes2.dex */
        public static class Action {
            public static final int UNDEFINED_DURATION = Integer.MIN_VALUE;

            /* renamed from: a  reason: collision with root package name */
            private int f7177a;

            /* renamed from: b  reason: collision with root package name */
            private int f7178b;

            /* renamed from: c  reason: collision with root package name */
            private int f7179c;

            /* renamed from: d  reason: collision with root package name */
            private int f7180d;

            /* renamed from: e  reason: collision with root package name */
            private Interpolator f7181e;

            /* renamed from: f  reason: collision with root package name */
            private boolean f7182f;

            /* renamed from: g  reason: collision with root package name */
            private int f7183g;

            public Action(@Px int i2, @Px int i4) {
                this(i2, i4, Integer.MIN_VALUE, null);
            }

            private void c() {
                if (this.f7181e != null && this.f7179c < 1) {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                }
                if (this.f7179c < 1) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
            }

            boolean a() {
                return this.f7180d >= 0;
            }

            void b(RecyclerView recyclerView) {
                int i2 = this.f7180d;
                if (i2 >= 0) {
                    this.f7180d = -1;
                    recyclerView.g0(i2);
                    this.f7182f = false;
                } else if (this.f7182f) {
                    c();
                    recyclerView.E0.smoothScrollBy(this.f7177a, this.f7178b, this.f7179c, this.f7181e);
                    this.f7183g++;
                    this.f7182f = false;
                } else {
                    this.f7183g = 0;
                }
            }

            public int getDuration() {
                return this.f7179c;
            }

            @Px
            public int getDx() {
                return this.f7177a;
            }

            @Px
            public int getDy() {
                return this.f7178b;
            }

            @Nullable
            public Interpolator getInterpolator() {
                return this.f7181e;
            }

            public void jumpTo(int i2) {
                this.f7180d = i2;
            }

            public void setDuration(int i2) {
                this.f7182f = true;
                this.f7179c = i2;
            }

            public void setDx(@Px int i2) {
                this.f7182f = true;
                this.f7177a = i2;
            }

            public void setDy(@Px int i2) {
                this.f7182f = true;
                this.f7178b = i2;
            }

            public void setInterpolator(@Nullable Interpolator interpolator) {
                this.f7182f = true;
                this.f7181e = interpolator;
            }

            public void update(@Px int i2, @Px int i4, int i5, @Nullable Interpolator interpolator) {
                this.f7177a = i2;
                this.f7178b = i4;
                this.f7179c = i5;
                this.f7181e = interpolator;
                this.f7182f = true;
            }

            public Action(@Px int i2, @Px int i4, int i5) {
                this(i2, i4, i5, null);
            }

            public Action(@Px int i2, @Px int i4, int i5, @Nullable Interpolator interpolator) {
                this.f7180d = -1;
                this.f7182f = false;
                this.f7183g = 0;
                this.f7177a = i2;
                this.f7178b = i4;
                this.f7179c = i5;
                this.f7181e = interpolator;
            }
        }

        /* loaded from: classes2.dex */
        public interface ScrollVectorProvider {
            @Nullable
            PointF computeScrollVectorForPosition(int i2);
        }

        @Nullable
        public PointF computeScrollVectorForPosition(int i2) {
            LayoutManager layoutManager = getLayoutManager();
            if (layoutManager instanceof ScrollVectorProvider) {
                return ((ScrollVectorProvider) layoutManager).computeScrollVectorForPosition(i2);
            }
            StringBuilder sb = new StringBuilder();
            sb.append("You should override computeScrollVectorForPosition when the LayoutManager does not implement ");
            sb.append(ScrollVectorProvider.class.getCanonicalName());
            return null;
        }

        public View findViewByPosition(int i2) {
            return this.mRecyclerView.f7112m.findViewByPosition(i2);
        }

        public int getChildCount() {
            return this.mRecyclerView.f7112m.getChildCount();
        }

        public int getChildPosition(View view) {
            return this.mRecyclerView.getChildLayoutPosition(view);
        }

        @Nullable
        public LayoutManager getLayoutManager() {
            return this.mLayoutManager;
        }

        public int getTargetPosition() {
            return this.mTargetPosition;
        }

        @Deprecated
        public void instantScrollToPosition(int i2) {
            this.mRecyclerView.scrollToPosition(i2);
        }

        public boolean isPendingInitialRun() {
            return this.mPendingInitialRun;
        }

        public boolean isRunning() {
            return this.mRunning;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void normalize(@NonNull PointF pointF) {
            float f4 = pointF.x;
            float f5 = pointF.y;
            float sqrt = (float) Math.sqrt((f4 * f4) + (f5 * f5));
            pointF.x /= sqrt;
            pointF.y /= sqrt;
        }

        void onAnimation(int i2, int i4) {
            PointF computeScrollVectorForPosition;
            RecyclerView recyclerView = this.mRecyclerView;
            if (this.mTargetPosition == -1 || recyclerView == null) {
                stop();
            }
            if (this.mPendingInitialRun && this.mTargetView == null && this.mLayoutManager != null && (computeScrollVectorForPosition = computeScrollVectorForPosition(this.mTargetPosition)) != null) {
                float f4 = computeScrollVectorForPosition.x;
                if (f4 != 0.0f || computeScrollVectorForPosition.y != 0.0f) {
                    recyclerView.I0((int) Math.signum(f4), (int) Math.signum(computeScrollVectorForPosition.y), null);
                }
            }
            this.mPendingInitialRun = false;
            View view = this.mTargetView;
            if (view != null) {
                if (getChildPosition(view) == this.mTargetPosition) {
                    onTargetFound(this.mTargetView, recyclerView.H0, this.mRecyclingAction);
                    this.mRecyclingAction.b(recyclerView);
                    stop();
                } else {
                    this.mTargetView = null;
                }
            }
            if (this.mRunning) {
                onSeekTargetStep(i2, i4, recyclerView.H0, this.mRecyclingAction);
                boolean a4 = this.mRecyclingAction.a();
                this.mRecyclingAction.b(recyclerView);
                if (a4 && this.mRunning) {
                    this.mPendingInitialRun = true;
                    recyclerView.E0.c();
                }
            }
        }

        protected void onChildAttachedToWindow(View view) {
            if (getChildPosition(view) == getTargetPosition()) {
                this.mTargetView = view;
            }
        }

        protected abstract void onSeekTargetStep(@Px int i2, @Px int i4, @NonNull State state, @NonNull Action action);

        protected abstract void onStart();

        protected abstract void onStop();

        protected abstract void onTargetFound(@NonNull View view, @NonNull State state, @NonNull Action action);

        public void setTargetPosition(int i2) {
            this.mTargetPosition = i2;
        }

        void start(RecyclerView recyclerView, LayoutManager layoutManager) {
            recyclerView.E0.stop();
            if (this.mStarted) {
                StringBuilder sb = new StringBuilder();
                sb.append("An instance of ");
                sb.append(getClass().getSimpleName());
                sb.append(" was started more than once. Each instance of");
                sb.append(getClass().getSimpleName());
                sb.append(" is intended to only be used once. You should create a new instance for each use.");
            }
            this.mRecyclerView = recyclerView;
            this.mLayoutManager = layoutManager;
            int i2 = this.mTargetPosition;
            if (i2 != -1) {
                recyclerView.H0.f7187a = i2;
                this.mRunning = true;
                this.mPendingInitialRun = true;
                this.mTargetView = findViewByPosition(getTargetPosition());
                onStart();
                this.mRecyclerView.E0.c();
                this.mStarted = true;
                return;
            }
            throw new IllegalArgumentException("Invalid target position");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void stop() {
            if (this.mRunning) {
                this.mRunning = false;
                onStop();
                this.mRecyclerView.H0.f7187a = -1;
                this.mTargetView = null;
                this.mTargetPosition = -1;
                this.mPendingInitialRun = false;
                this.mLayoutManager.onSmoothScrollerStopped(this);
                this.mLayoutManager = null;
                this.mRecyclerView = null;
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class State {

        /* renamed from: r  reason: collision with root package name */
        static final int f7184r = 1;

        /* renamed from: s  reason: collision with root package name */
        static final int f7185s = 2;

        /* renamed from: t  reason: collision with root package name */
        static final int f7186t = 4;

        /* renamed from: b  reason: collision with root package name */
        private SparseArray<Object> f7188b;

        /* renamed from: m  reason: collision with root package name */
        int f7199m;

        /* renamed from: n  reason: collision with root package name */
        long f7200n;

        /* renamed from: o  reason: collision with root package name */
        int f7201o;

        /* renamed from: p  reason: collision with root package name */
        int f7202p;

        /* renamed from: q  reason: collision with root package name */
        int f7203q;

        /* renamed from: a  reason: collision with root package name */
        int f7187a = -1;

        /* renamed from: c  reason: collision with root package name */
        int f7189c = 0;

        /* renamed from: d  reason: collision with root package name */
        int f7190d = 0;

        /* renamed from: e  reason: collision with root package name */
        int f7191e = 1;

        /* renamed from: f  reason: collision with root package name */
        int f7192f = 0;

        /* renamed from: g  reason: collision with root package name */
        boolean f7193g = false;

        /* renamed from: h  reason: collision with root package name */
        boolean f7194h = false;

        /* renamed from: i  reason: collision with root package name */
        boolean f7195i = false;

        /* renamed from: j  reason: collision with root package name */
        boolean f7196j = false;

        /* renamed from: k  reason: collision with root package name */
        boolean f7197k = false;

        /* renamed from: l  reason: collision with root package name */
        boolean f7198l = false;

        void a(int i2) {
            if ((this.f7191e & i2) != 0) {
                return;
            }
            throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i2) + " but it is " + Integer.toBinaryString(this.f7191e));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void b(Adapter adapter) {
            this.f7191e = 1;
            this.f7192f = adapter.getItemCount();
            this.f7194h = false;
            this.f7195i = false;
            this.f7196j = false;
        }

        public boolean didStructureChange() {
            return this.f7193g;
        }

        public <T> T get(int i2) {
            SparseArray<Object> sparseArray = this.f7188b;
            if (sparseArray == null) {
                return null;
            }
            return (T) sparseArray.get(i2);
        }

        public int getItemCount() {
            if (this.f7194h) {
                return this.f7189c - this.f7190d;
            }
            return this.f7192f;
        }

        public int getRemainingScrollHorizontal() {
            return this.f7202p;
        }

        public int getRemainingScrollVertical() {
            return this.f7203q;
        }

        public int getTargetScrollPosition() {
            return this.f7187a;
        }

        public boolean hasTargetScrollPosition() {
            return this.f7187a != -1;
        }

        public boolean isMeasuring() {
            return this.f7196j;
        }

        public boolean isPreLayout() {
            return this.f7194h;
        }

        public void put(int i2, Object obj) {
            if (this.f7188b == null) {
                this.f7188b = new SparseArray<>();
            }
            this.f7188b.put(i2, obj);
        }

        public void remove(int i2) {
            SparseArray<Object> sparseArray = this.f7188b;
            if (sparseArray == null) {
                return;
            }
            sparseArray.remove(i2);
        }

        public String toString() {
            return "State{mTargetPosition=" + this.f7187a + ", mData=" + this.f7188b + ", mItemCount=" + this.f7192f + ", mIsMeasuring=" + this.f7196j + ", mPreviousLayoutItemCount=" + this.f7189c + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f7190d + ", mStructureChanged=" + this.f7193g + ", mInPreLayout=" + this.f7194h + ", mRunSimpleAnimations=" + this.f7197k + ", mRunPredictiveAnimations=" + this.f7198l + '}';
        }

        public boolean willRunPredictiveAnimations() {
            return this.f7198l;
        }

        public boolean willRunSimpleAnimations() {
            return this.f7197k;
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class ViewCacheExtension {
        @Nullable
        public abstract View getViewForPositionAndType(@NonNull Recycler recycler, int i2, int i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class ViewFlinger implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private int f7204a;

        /* renamed from: b  reason: collision with root package name */
        private int f7205b;

        /* renamed from: c  reason: collision with root package name */
        OverScroller f7206c;

        /* renamed from: d  reason: collision with root package name */
        Interpolator f7207d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f7208e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f7209f;

        ViewFlinger() {
            Interpolator interpolator = RecyclerView.f7098z1;
            this.f7207d = interpolator;
            this.f7208e = false;
            this.f7209f = false;
            this.f7206c = new OverScroller(RecyclerView.this.getContext(), interpolator);
        }

        private int a(int i2, int i4) {
            int abs = Math.abs(i2);
            int abs2 = Math.abs(i4);
            boolean z3 = abs > abs2;
            RecyclerView recyclerView = RecyclerView.this;
            int width = z3 ? recyclerView.getWidth() : recyclerView.getHeight();
            if (!z3) {
                abs = abs2;
            }
            return Math.min((int) (((abs / width) + 1.0f) * 300.0f), 2000);
        }

        private void b() {
            RecyclerView.this.removeCallbacks(this);
            ViewCompat.postOnAnimation(RecyclerView.this, this);
        }

        void c() {
            if (this.f7208e) {
                this.f7209f = true;
            } else {
                b();
            }
        }

        public void fling(int i2, int i4) {
            RecyclerView.this.setScrollState(2);
            this.f7205b = 0;
            this.f7204a = 0;
            Interpolator interpolator = this.f7207d;
            Interpolator interpolator2 = RecyclerView.f7098z1;
            if (interpolator != interpolator2) {
                this.f7207d = interpolator2;
                this.f7206c = new OverScroller(RecyclerView.this.getContext(), interpolator2);
            }
            this.f7206c.fling(0, 0, i2, i4, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
            c();
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i4;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.f7112m == null) {
                stop();
                return;
            }
            this.f7209f = false;
            this.f7208e = true;
            recyclerView.q();
            OverScroller overScroller = this.f7206c;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i5 = currX - this.f7204a;
                int i6 = currY - this.f7205b;
                this.f7204a = currX;
                this.f7205b = currY;
                RecyclerView recyclerView2 = RecyclerView.this;
                int[] iArr = recyclerView2.U0;
                iArr[0] = 0;
                iArr[1] = 0;
                if (recyclerView2.dispatchNestedPreScroll(i5, i6, iArr, null, 1)) {
                    int[] iArr2 = RecyclerView.this.U0;
                    i5 -= iArr2[0];
                    i6 -= iArr2[1];
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                    RecyclerView.this.p(i5, i6);
                }
                RecyclerView recyclerView3 = RecyclerView.this;
                if (recyclerView3.f7111l != null) {
                    int[] iArr3 = recyclerView3.U0;
                    iArr3[0] = 0;
                    iArr3[1] = 0;
                    recyclerView3.I0(i5, i6, iArr3);
                    RecyclerView recyclerView4 = RecyclerView.this;
                    int[] iArr4 = recyclerView4.U0;
                    i4 = iArr4[0];
                    i2 = iArr4[1];
                    i5 -= i4;
                    i6 -= i2;
                    SmoothScroller smoothScroller = recyclerView4.f7112m.mSmoothScroller;
                    if (smoothScroller != null && !smoothScroller.isPendingInitialRun() && smoothScroller.isRunning()) {
                        int itemCount = RecyclerView.this.H0.getItemCount();
                        if (itemCount == 0) {
                            smoothScroller.stop();
                        } else if (smoothScroller.getTargetPosition() >= itemCount) {
                            smoothScroller.setTargetPosition(itemCount - 1);
                            smoothScroller.onAnimation(i4, i2);
                        } else {
                            smoothScroller.onAnimation(i4, i2);
                        }
                    }
                } else {
                    i2 = 0;
                    i4 = 0;
                }
                if (!RecyclerView.this.f7117p.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                RecyclerView recyclerView5 = RecyclerView.this;
                int[] iArr5 = recyclerView5.U0;
                iArr5[0] = 0;
                iArr5[1] = 0;
                recyclerView5.dispatchNestedScroll(i4, i2, i5, i6, null, 1, iArr5);
                RecyclerView recyclerView6 = RecyclerView.this;
                int[] iArr6 = recyclerView6.U0;
                int i7 = i5 - iArr6[0];
                int i8 = i6 - iArr6[1];
                if (i4 != 0 || i2 != 0) {
                    recyclerView6.C(i4, i2);
                }
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                boolean z3 = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i7 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i8 != 0));
                SmoothScroller smoothScroller2 = RecyclerView.this.f7112m.mSmoothScroller;
                if (!(smoothScroller2 != null && smoothScroller2.isPendingInitialRun()) && z3) {
                    if (RecyclerView.this.getOverScrollMode() != 2) {
                        int currVelocity = (int) overScroller.getCurrVelocity();
                        int i9 = i7 < 0 ? -currVelocity : i7 > 0 ? currVelocity : 0;
                        if (i8 < 0) {
                            currVelocity = -currVelocity;
                        } else if (i8 <= 0) {
                            currVelocity = 0;
                        }
                        RecyclerView.this.a(i9, currVelocity);
                    }
                    if (RecyclerView.f7081i1) {
                        RecyclerView.this.G0.a();
                    }
                } else {
                    c();
                    RecyclerView recyclerView7 = RecyclerView.this;
                    GapWorker gapWorker = recyclerView7.F0;
                    if (gapWorker != null) {
                        gapWorker.e(recyclerView7, i4, i2);
                    }
                }
            }
            SmoothScroller smoothScroller3 = RecyclerView.this.f7112m.mSmoothScroller;
            if (smoothScroller3 != null && smoothScroller3.isPendingInitialRun()) {
                smoothScroller3.onAnimation(0, 0);
            }
            this.f7208e = false;
            if (this.f7209f) {
                b();
                return;
            }
            RecyclerView.this.setScrollState(0);
            RecyclerView.this.stopNestedScroll(1);
        }

        public void smoothScrollBy(int i2, int i4, int i5, @Nullable Interpolator interpolator) {
            if (i5 == Integer.MIN_VALUE) {
                i5 = a(i2, i4);
            }
            int i6 = i5;
            if (interpolator == null) {
                interpolator = RecyclerView.f7098z1;
            }
            if (this.f7207d != interpolator) {
                this.f7207d = interpolator;
                this.f7206c = new OverScroller(RecyclerView.this.getContext(), interpolator);
            }
            this.f7205b = 0;
            this.f7204a = 0;
            RecyclerView.this.setScrollState(2);
            this.f7206c.startScroll(0, 0, i2, i4, i6);
            if (Build.VERSION.SDK_INT < 23) {
                this.f7206c.computeScrollOffset();
            }
            c();
        }

        public void stop() {
            RecyclerView.this.removeCallbacks(this);
            this.f7206c.abortAnimation();
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class ViewHolder {
        static final int FLAG_ADAPTER_FULLUPDATE = 1024;
        static final int FLAG_ADAPTER_POSITION_UNKNOWN = 512;
        static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
        static final int FLAG_BOUNCED_FROM_HIDDEN_LIST = 8192;
        static final int FLAG_BOUND = 1;
        static final int FLAG_IGNORE = 128;
        static final int FLAG_INVALID = 4;
        static final int FLAG_MOVED = 2048;
        static final int FLAG_NOT_RECYCLABLE = 16;
        static final int FLAG_REMOVED = 8;
        static final int FLAG_RETURNED_FROM_SCRAP = 32;
        static final int FLAG_TMP_DETACHED = 256;
        static final int FLAG_UPDATE = 2;
        private static final List<Object> FULLUPDATE_PAYLOADS = Collections.emptyList();
        static final int PENDING_ACCESSIBILITY_STATE_NOT_SET = -1;
        @NonNull
        public final View itemView;
        Adapter<? extends ViewHolder> mBindingAdapter;
        int mFlags;
        WeakReference<RecyclerView> mNestedRecyclerView;
        RecyclerView mOwnerRecyclerView;
        int mPosition = -1;
        int mOldPosition = -1;
        long mItemId = -1;
        int mItemViewType = -1;
        int mPreLayoutPosition = -1;
        ViewHolder mShadowedHolder = null;
        ViewHolder mShadowingHolder = null;
        List<Object> mPayloads = null;
        List<Object> mUnmodifiedPayloads = null;
        private int mIsRecyclableCount = 0;
        Recycler mScrapContainer = null;
        boolean mInChangeScrap = false;
        private int mWasImportantForAccessibilityBeforeHidden = 0;
        @VisibleForTesting
        int mPendingAccessibilityState = -1;

        public ViewHolder(@NonNull View view) {
            if (view != null) {
                this.itemView = view;
                return;
            }
            throw new IllegalArgumentException("itemView may not be null");
        }

        private void createPayloadsIfNeeded() {
            if (this.mPayloads == null) {
                ArrayList arrayList = new ArrayList();
                this.mPayloads = arrayList;
                this.mUnmodifiedPayloads = Collections.unmodifiableList(arrayList);
            }
        }

        void addChangePayload(Object obj) {
            if (obj == null) {
                addFlags(1024);
            } else if ((1024 & this.mFlags) == 0) {
                createPayloadsIfNeeded();
                this.mPayloads.add(obj);
            }
        }

        void addFlags(int i2) {
            this.mFlags = i2 | this.mFlags;
        }

        void clearOldPosition() {
            this.mOldPosition = -1;
            this.mPreLayoutPosition = -1;
        }

        void clearPayload() {
            List<Object> list = this.mPayloads;
            if (list != null) {
                list.clear();
            }
            this.mFlags &= -1025;
        }

        void clearReturnedFromScrapFlag() {
            this.mFlags &= -33;
        }

        void clearTmpDetachFlag() {
            this.mFlags &= -257;
        }

        boolean doesTransientStatePreventRecycling() {
            return (this.mFlags & 16) == 0 && ViewCompat.hasTransientState(this.itemView);
        }

        void flagRemovedAndOffsetPosition(int i2, int i4, boolean z3) {
            addFlags(8);
            offsetPosition(i4, z3);
            this.mPosition = i2;
        }

        public final int getAbsoluteAdapterPosition() {
            RecyclerView recyclerView = this.mOwnerRecyclerView;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.Q(this);
        }

        @Deprecated
        public final int getAdapterPosition() {
            return getBindingAdapterPosition();
        }

        @Nullable
        public final Adapter<? extends ViewHolder> getBindingAdapter() {
            return this.mBindingAdapter;
        }

        public final int getBindingAdapterPosition() {
            RecyclerView recyclerView;
            Adapter adapter;
            int Q;
            if (this.mBindingAdapter == null || (recyclerView = this.mOwnerRecyclerView) == null || (adapter = recyclerView.getAdapter()) == null || (Q = this.mOwnerRecyclerView.Q(this)) == -1) {
                return -1;
            }
            return adapter.findRelativeAdapterPositionIn(this.mBindingAdapter, this, Q);
        }

        public final long getItemId() {
            return this.mItemId;
        }

        public final int getItemViewType() {
            return this.mItemViewType;
        }

        public final int getLayoutPosition() {
            int i2 = this.mPreLayoutPosition;
            return i2 == -1 ? this.mPosition : i2;
        }

        public final int getOldPosition() {
            return this.mOldPosition;
        }

        @Deprecated
        public final int getPosition() {
            int i2 = this.mPreLayoutPosition;
            return i2 == -1 ? this.mPosition : i2;
        }

        List<Object> getUnmodifiedPayloads() {
            if ((this.mFlags & 1024) == 0) {
                List<Object> list = this.mPayloads;
                if (list != null && list.size() != 0) {
                    return this.mUnmodifiedPayloads;
                }
                return FULLUPDATE_PAYLOADS;
            }
            return FULLUPDATE_PAYLOADS;
        }

        boolean hasAnyOfTheFlags(int i2) {
            return (i2 & this.mFlags) != 0;
        }

        boolean isAdapterPositionUnknown() {
            return (this.mFlags & 512) != 0 || isInvalid();
        }

        boolean isAttachedToTransitionOverlay() {
            return (this.itemView.getParent() == null || this.itemView.getParent() == this.mOwnerRecyclerView) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isBound() {
            return (this.mFlags & 1) != 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isInvalid() {
            return (this.mFlags & 4) != 0;
        }

        public final boolean isRecyclable() {
            return (this.mFlags & 16) == 0 && !ViewCompat.hasTransientState(this.itemView);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isRemoved() {
            return (this.mFlags & 8) != 0;
        }

        boolean isScrap() {
            return this.mScrapContainer != null;
        }

        boolean isTmpDetached() {
            return (this.mFlags & 256) != 0;
        }

        boolean isUpdated() {
            return (this.mFlags & 2) != 0;
        }

        boolean needsUpdate() {
            return (this.mFlags & 2) != 0;
        }

        void offsetPosition(int i2, boolean z3) {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
            if (this.mPreLayoutPosition == -1) {
                this.mPreLayoutPosition = this.mPosition;
            }
            if (z3) {
                this.mPreLayoutPosition += i2;
            }
            this.mPosition += i2;
            if (this.itemView.getLayoutParams() != null) {
                ((LayoutParams) this.itemView.getLayoutParams()).f7156c = true;
            }
        }

        void onEnteredHiddenState(RecyclerView recyclerView) {
            int i2 = this.mPendingAccessibilityState;
            if (i2 != -1) {
                this.mWasImportantForAccessibilityBeforeHidden = i2;
            } else {
                this.mWasImportantForAccessibilityBeforeHidden = ViewCompat.getImportantForAccessibility(this.itemView);
            }
            recyclerView.K0(this, 4);
        }

        void onLeftHiddenState(RecyclerView recyclerView) {
            recyclerView.K0(this, this.mWasImportantForAccessibilityBeforeHidden);
            this.mWasImportantForAccessibilityBeforeHidden = 0;
        }

        void resetInternal() {
            this.mFlags = 0;
            this.mPosition = -1;
            this.mOldPosition = -1;
            this.mItemId = -1L;
            this.mPreLayoutPosition = -1;
            this.mIsRecyclableCount = 0;
            this.mShadowedHolder = null;
            this.mShadowingHolder = null;
            clearPayload();
            this.mWasImportantForAccessibilityBeforeHidden = 0;
            this.mPendingAccessibilityState = -1;
            RecyclerView.n(this);
        }

        void saveOldPosition() {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
        }

        void setFlags(int i2, int i4) {
            this.mFlags = (i2 & i4) | (this.mFlags & (i4 ^ (-1)));
        }

        public final void setIsRecyclable(boolean z3) {
            int i2 = this.mIsRecyclableCount;
            int i4 = z3 ? i2 - 1 : i2 + 1;
            this.mIsRecyclableCount = i4;
            if (i4 < 0) {
                this.mIsRecyclableCount = 0;
                StringBuilder sb = new StringBuilder();
                sb.append("isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for ");
                sb.append(this);
            } else if (!z3 && i4 == 1) {
                this.mFlags |= 16;
            } else if (z3 && i4 == 0) {
                this.mFlags &= -17;
            }
        }

        void setScrapContainer(Recycler recycler, boolean z3) {
            this.mScrapContainer = recycler;
            this.mInChangeScrap = z3;
        }

        boolean shouldBeKeptAsChild() {
            return (this.mFlags & 16) != 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean shouldIgnore() {
            return (this.mFlags & 128) != 0;
        }

        void stopIgnoring() {
            this.mFlags &= -129;
        }

        public String toString() {
            String simpleName = getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName();
            StringBuilder sb = new StringBuilder(simpleName + "{" + Integer.toHexString(hashCode()) + " position=" + this.mPosition + " id=" + this.mItemId + ", oldPos=" + this.mOldPosition + ", pLpos:" + this.mPreLayoutPosition);
            if (isScrap()) {
                sb.append(" scrap ");
                sb.append(this.mInChangeScrap ? "[changeScrap]" : "[attachedScrap]");
            }
            if (isInvalid()) {
                sb.append(" invalid");
            }
            if (!isBound()) {
                sb.append(" unbound");
            }
            if (needsUpdate()) {
                sb.append(" update");
            }
            if (isRemoved()) {
                sb.append(" removed");
            }
            if (shouldIgnore()) {
                sb.append(" ignored");
            }
            if (isTmpDetached()) {
                sb.append(" tmpDetached");
            }
            if (!isRecyclable()) {
                sb.append(" not recyclable(" + this.mIsRecyclableCount + ")");
            }
            if (isAdapterPositionUnknown()) {
                sb.append(" undefined adapter position");
            }
            if (this.itemView.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        void unScrap() {
            this.mScrapContainer.D(this);
        }

        boolean wasReturnedFromScrap() {
            return (this.mFlags & 32) != 0;
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        f7078f1 = i2 == 18 || i2 == 19 || i2 == 20;
        f7079g1 = i2 >= 23;
        f7080h1 = i2 >= 16;
        f7081i1 = i2 >= 21;
        f7082j1 = i2 <= 15;
        f7083k1 = i2 <= 15;
        Class<?> cls = Integer.TYPE;
        f7095w1 = new Class[]{Context.class, AttributeSet.class, cls, cls};
        f7098z1 = new Interpolator() { // from class: androidx.recyclerview.widget.RecyclerView.3
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f4) {
                float f5 = f4 - 1.0f;
                return (f5 * f5 * f5 * f5 * f5) + 1.0f;
            }
        };
    }

    public RecyclerView(@NonNull Context context) {
        this(context, null);
    }

    private void A() {
        this.H0.a(4);
        N0();
        n0();
        State state = this.H0;
        state.f7191e = 1;
        if (state.f7197k) {
            for (int g4 = this.f7104e.g() - 1; g4 >= 0; g4--) {
                ViewHolder S = S(this.f7104e.f(g4));
                if (!S.shouldIgnore()) {
                    long R = R(S);
                    ItemAnimator.ItemHolderInfo recordPostLayoutInformation = this.f7118p0.recordPostLayoutInformation(this.H0, S);
                    ViewHolder g5 = this.f7105f.g(R);
                    if (g5 != null && !g5.shouldIgnore()) {
                        boolean h4 = this.f7105f.h(g5);
                        boolean h5 = this.f7105f.h(S);
                        if (h4 && g5 == S) {
                            this.f7105f.d(S, recordPostLayoutInformation);
                        } else {
                            ItemAnimator.ItemHolderInfo m4 = this.f7105f.m(g5);
                            this.f7105f.d(S, recordPostLayoutInformation);
                            ItemAnimator.ItemHolderInfo l4 = this.f7105f.l(S);
                            if (m4 == null) {
                                X(R, S, g5);
                            } else {
                                h(g5, S, m4, l4, h4, h5);
                            }
                        }
                    } else {
                        this.f7105f.d(S, recordPostLayoutInformation);
                    }
                }
            }
            this.f7105f.n(this.f7100a1);
        }
        this.f7112m.removeAndRecycleScrapInt(this.f7101b);
        State state2 = this.H0;
        state2.f7189c = state2.f7192f;
        this.E = false;
        this.F = false;
        state2.f7197k = false;
        state2.f7198l = false;
        this.f7112m.mRequestedSimpleAnimations = false;
        ArrayList<ViewHolder> arrayList = this.f7101b.f7167b;
        if (arrayList != null) {
            arrayList.clear();
        }
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager.mPrefetchMaxObservedInInitialPrefetch) {
            layoutManager.mPrefetchMaxCountObserved = 0;
            layoutManager.mPrefetchMaxObservedInInitialPrefetch = false;
            this.f7101b.E();
        }
        this.f7112m.onLayoutCompleted(this.H0);
        o0();
        O0(false);
        this.f7105f.f();
        int[] iArr = this.Q0;
        if (t(iArr[0], iArr[1])) {
            C(0, 0);
        }
        x0();
        D0();
    }

    private void C0(@NonNull View view, @Nullable View view2) {
        View view3 = view2 != null ? view2 : view;
        this.f7108i.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            if (!layoutParams2.f7156c) {
                Rect rect = layoutParams2.f7155b;
                Rect rect2 = this.f7108i;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.f7108i);
            offsetRectIntoDescendantCoords(view, this.f7108i);
        }
        this.f7112m.requestChildRectangleOnScreen(this, view, this.f7108i, !this.f7129v, view2 == null);
    }

    private void D0() {
        State state = this.H0;
        state.f7200n = -1L;
        state.f7199m = -1;
        state.f7201o = -1;
    }

    private boolean E(MotionEvent motionEvent) {
        OnItemTouchListener onItemTouchListener = this.f7121r;
        if (onItemTouchListener == null) {
            if (motionEvent.getAction() == 0) {
                return false;
            }
            return L(motionEvent);
        }
        onItemTouchListener.onTouchEvent(this, motionEvent);
        int action = motionEvent.getAction();
        if (action == 3 || action == 1) {
            this.f7121r = null;
        }
        return true;
    }

    private void E0() {
        VelocityTracker velocityTracker = this.f7124s0;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        stopNestedScroll(0);
        y0();
    }

    private void F0() {
        int absoluteAdapterPosition;
        View focusedChild = (this.D0 && hasFocus() && this.f7111l != null) ? getFocusedChild() : null;
        ViewHolder findContainingViewHolder = focusedChild != null ? findContainingViewHolder(focusedChild) : null;
        if (findContainingViewHolder == null) {
            D0();
            return;
        }
        this.H0.f7200n = this.f7111l.hasStableIds() ? findContainingViewHolder.getItemId() : -1L;
        State state = this.H0;
        if (this.E) {
            absoluteAdapterPosition = -1;
        } else {
            absoluteAdapterPosition = findContainingViewHolder.isRemoved() ? findContainingViewHolder.mOldPosition : findContainingViewHolder.getAbsoluteAdapterPosition();
        }
        state.f7199m = absoluteAdapterPosition;
        this.H0.f7201o = U(findContainingViewHolder.itemView);
    }

    private void J0(@Nullable Adapter adapter, boolean z3, boolean z4) {
        Adapter adapter2 = this.f7111l;
        if (adapter2 != null) {
            adapter2.unregisterAdapterDataObserver(this.f7099a);
            this.f7111l.onDetachedFromRecyclerView(this);
        }
        if (!z3 || z4) {
            z0();
        }
        this.f7103d.w();
        Adapter adapter3 = this.f7111l;
        this.f7111l = adapter;
        if (adapter != null) {
            adapter.registerAdapterDataObserver(this.f7099a);
            adapter.onAttachedToRecyclerView(this);
        }
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager != null) {
            layoutManager.onAdapterChanged(adapter3, this.f7111l);
        }
        this.f7101b.t(adapter3, this.f7111l, z3);
        this.H0.f7193g = true;
    }

    private boolean L(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.f7119q.size();
        for (int i2 = 0; i2 < size; i2++) {
            OnItemTouchListener onItemTouchListener = this.f7119q.get(i2);
            if (onItemTouchListener.onInterceptTouchEvent(this, motionEvent) && action != 3) {
                this.f7121r = onItemTouchListener;
                return true;
            }
        }
        return false;
    }

    private void M(int[] iArr) {
        int g4 = this.f7104e.g();
        if (g4 == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i2 = Integer.MAX_VALUE;
        int i4 = Integer.MIN_VALUE;
        for (int i5 = 0; i5 < g4; i5++) {
            ViewHolder S = S(this.f7104e.f(i5));
            if (!S.shouldIgnore()) {
                int layoutPosition = S.getLayoutPosition();
                if (layoutPosition < i2) {
                    i2 = layoutPosition;
                }
                if (layoutPosition > i4) {
                    i4 = layoutPosition;
                }
            }
        }
        iArr[0] = i2;
        iArr[1] = i4;
    }

    @Nullable
    static RecyclerView N(@NonNull View view) {
        if (view instanceof ViewGroup) {
            if (view instanceof RecyclerView) {
                return (RecyclerView) view;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                RecyclerView N = N(viewGroup.getChildAt(i2));
                if (N != null) {
                    return N;
                }
            }
            return null;
        }
        return null;
    }

    @Nullable
    private View O() {
        ViewHolder findViewHolderForAdapterPosition;
        State state = this.H0;
        int i2 = state.f7199m;
        if (i2 == -1) {
            i2 = 0;
        }
        int itemCount = state.getItemCount();
        for (int i4 = i2; i4 < itemCount; i4++) {
            ViewHolder findViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i4);
            if (findViewHolderForAdapterPosition2 == null) {
                break;
            } else if (findViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                return findViewHolderForAdapterPosition2.itemView;
            }
        }
        int min = Math.min(itemCount, i2);
        while (true) {
            min--;
            if (min < 0 || (findViewHolderForAdapterPosition = findViewHolderForAdapterPosition(min)) == null) {
                return null;
            }
            if (findViewHolderForAdapterPosition.itemView.hasFocusable()) {
                return findViewHolderForAdapterPosition.itemView;
            }
        }
    }

    private void P0() {
        this.E0.stop();
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager != null) {
            layoutManager.stopSmoothScroller();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ViewHolder S(View view) {
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).f7154a;
    }

    static void T(View view, Rect rect) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect2 = layoutParams.f7155b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
    }

    private int U(View view) {
        int id = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            view = ((ViewGroup) view).getFocusedChild();
            if (view.getId() != -1) {
                id = view.getId();
            }
        }
        return id;
    }

    private String V(Context context, String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        } else if (str.contains(g0.f27568a)) {
            return str;
        } else {
            return RecyclerView.class.getPackage().getName() + d.f65364a + str;
        }
    }

    private void X(long j4, ViewHolder viewHolder, ViewHolder viewHolder2) {
        int g4 = this.f7104e.g();
        for (int i2 = 0; i2 < g4; i2++) {
            ViewHolder S = S(this.f7104e.f(i2));
            if (S != viewHolder && R(S) == j4) {
                Adapter adapter = this.f7111l;
                if (adapter != null && adapter.hasStableIds()) {
                    throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + S + " \n View Holder 2:" + viewHolder + J());
                }
                throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + S + " \n View Holder 2:" + viewHolder + J());
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Problem while matching changed view holders with the newones. The pre-layout information for the change holder ");
        sb.append(viewHolder2);
        sb.append(" cannot be found but it is necessary for ");
        sb.append(viewHolder);
        sb.append(J());
    }

    private boolean Y() {
        int g4 = this.f7104e.g();
        for (int i2 = 0; i2 < g4; i2++) {
            ViewHolder S = S(this.f7104e.f(i2));
            if (S != null && !S.shouldIgnore() && S.isUpdated()) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"InlinedApi"})
    private void a0() {
        if (ViewCompat.getImportantForAutofill(this) == 0) {
            ViewCompat.setImportantForAutofill(this, 8);
        }
    }

    private void b0() {
        this.f7104e = new ChildHelper(new ChildHelper.Callback() { // from class: androidx.recyclerview.widget.RecyclerView.5
            @Override // androidx.recyclerview.widget.ChildHelper.Callback
            public void addView(View view, int i2) {
                RecyclerView.this.addView(view, i2);
                RecyclerView.this.u(view);
            }

            @Override // androidx.recyclerview.widget.ChildHelper.Callback
            public void attachViewToParent(View view, int i2, ViewGroup.LayoutParams layoutParams) {
                ViewHolder S = RecyclerView.S(view);
                if (S != null) {
                    if (!S.isTmpDetached() && !S.shouldIgnore()) {
                        throw new IllegalArgumentException("Called attach on a child which is not detached: " + S + RecyclerView.this.J());
                    }
                    S.clearTmpDetachFlag();
                }
                RecyclerView.this.attachViewToParent(view, i2, layoutParams);
            }

            @Override // androidx.recyclerview.widget.ChildHelper.Callback
            public void detachViewFromParent(int i2) {
                ViewHolder S;
                View childAt = getChildAt(i2);
                if (childAt != null && (S = RecyclerView.S(childAt)) != null) {
                    if (S.isTmpDetached() && !S.shouldIgnore()) {
                        throw new IllegalArgumentException("called detach on an already detached child " + S + RecyclerView.this.J());
                    }
                    S.addFlags(256);
                }
                RecyclerView.this.detachViewFromParent(i2);
            }

            @Override // androidx.recyclerview.widget.ChildHelper.Callback
            public View getChildAt(int i2) {
                return RecyclerView.this.getChildAt(i2);
            }

            @Override // androidx.recyclerview.widget.ChildHelper.Callback
            public int getChildCount() {
                return RecyclerView.this.getChildCount();
            }

            @Override // androidx.recyclerview.widget.ChildHelper.Callback
            public ViewHolder getChildViewHolder(View view) {
                return RecyclerView.S(view);
            }

            @Override // androidx.recyclerview.widget.ChildHelper.Callback
            public int indexOfChild(View view) {
                return RecyclerView.this.indexOfChild(view);
            }

            @Override // androidx.recyclerview.widget.ChildHelper.Callback
            public void onEnteredHiddenState(View view) {
                ViewHolder S = RecyclerView.S(view);
                if (S != null) {
                    S.onEnteredHiddenState(RecyclerView.this);
                }
            }

            @Override // androidx.recyclerview.widget.ChildHelper.Callback
            public void onLeftHiddenState(View view) {
                ViewHolder S = RecyclerView.S(view);
                if (S != null) {
                    S.onLeftHiddenState(RecyclerView.this);
                }
            }

            @Override // androidx.recyclerview.widget.ChildHelper.Callback
            public void removeAllViews() {
                int childCount = getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = getChildAt(i2);
                    RecyclerView.this.v(childAt);
                    childAt.clearAnimation();
                }
                RecyclerView.this.removeAllViews();
            }

            @Override // androidx.recyclerview.widget.ChildHelper.Callback
            public void removeViewAt(int i2) {
                View childAt = RecyclerView.this.getChildAt(i2);
                if (childAt != null) {
                    RecyclerView.this.v(childAt);
                    childAt.clearAnimation();
                }
                RecyclerView.this.removeViewAt(i2);
            }
        });
    }

    private void f(ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        boolean z3 = view.getParent() == this;
        this.f7101b.D(getChildViewHolder(view));
        if (viewHolder.isTmpDetached()) {
            this.f7104e.c(view, -1, view.getLayoutParams(), true);
        } else if (!z3) {
            this.f7104e.b(view, true);
        } else {
            this.f7104e.k(view);
        }
    }

    private boolean f0(View view, View view2, int i2) {
        int i4;
        if (view2 == null || view2 == this || view2 == view || findContainingItemView(view2) == null) {
            return false;
        }
        if (view == null || findContainingItemView(view) == null) {
            return true;
        }
        this.f7108i.set(0, 0, view.getWidth(), view.getHeight());
        this.f7109j.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.f7108i);
        offsetDescendantRectToMyCoords(view2, this.f7109j);
        char c4 = 65535;
        int i5 = this.f7112m.getLayoutDirection() == 1 ? -1 : 1;
        Rect rect = this.f7108i;
        int i6 = rect.left;
        Rect rect2 = this.f7109j;
        int i7 = rect2.left;
        if ((i6 < i7 || rect.right <= i7) && rect.right < rect2.right) {
            i4 = 1;
        } else {
            int i8 = rect.right;
            int i9 = rect2.right;
            i4 = ((i8 > i9 || i6 >= i9) && i6 > i7) ? -1 : 0;
        }
        int i10 = rect.top;
        int i11 = rect2.top;
        if ((i10 < i11 || rect.bottom <= i11) && rect.bottom < rect2.bottom) {
            c4 = 1;
        } else {
            int i12 = rect.bottom;
            int i13 = rect2.bottom;
            if ((i12 <= i13 && i10 < i13) || i10 <= i11) {
                c4 = 0;
            }
        }
        if (i2 == 1) {
            return c4 < 0 || (c4 == 0 && i4 * i5 < 0);
        } else if (i2 == 2) {
            return c4 > 0 || (c4 == 0 && i4 * i5 > 0);
        } else if (i2 == 17) {
            return i4 < 0;
        } else if (i2 == 33) {
            return c4 < 0;
        } else if (i2 == 66) {
            return i4 > 0;
        } else if (i2 == 130) {
            return c4 > 0;
        } else {
            throw new IllegalArgumentException("Invalid direction: " + i2 + J());
        }
    }

    private NestedScrollingChildHelper getScrollingChildHelper() {
        if (this.R0 == null) {
            this.R0 = new NestedScrollingChildHelper(this);
        }
        return this.R0;
    }

    private void h(@NonNull ViewHolder viewHolder, @NonNull ViewHolder viewHolder2, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo2, boolean z3, boolean z4) {
        viewHolder.setIsRecyclable(false);
        if (z3) {
            f(viewHolder);
        }
        if (viewHolder != viewHolder2) {
            if (z4) {
                f(viewHolder2);
            }
            viewHolder.mShadowedHolder = viewHolder2;
            f(viewHolder);
            this.f7101b.D(viewHolder);
            viewHolder2.setIsRecyclable(false);
            viewHolder2.mShadowingHolder = viewHolder;
        }
        if (this.f7118p0.animateChange(viewHolder, viewHolder2, itemHolderInfo, itemHolderInfo2)) {
            r0();
        }
    }

    private void j0(int i2, int i4, @Nullable MotionEvent motionEvent, int i5) {
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager == null || this.f7135y) {
            return;
        }
        int[] iArr = this.U0;
        iArr[0] = 0;
        iArr[1] = 0;
        boolean canScrollHorizontally = layoutManager.canScrollHorizontally();
        boolean canScrollVertically = this.f7112m.canScrollVertically();
        startNestedScroll(canScrollVertically ? canScrollHorizontally | 2 : canScrollHorizontally, i5);
        if (dispatchNestedPreScroll(canScrollHorizontally != 0 ? i2 : 0, canScrollVertically ? i4 : 0, this.U0, this.S0, i5)) {
            int[] iArr2 = this.U0;
            i2 -= iArr2[0];
            i4 -= iArr2[1];
        }
        H0(canScrollHorizontally != 0 ? i2 : 0, canScrollVertically ? i4 : 0, motionEvent, i5);
        GapWorker gapWorker = this.F0;
        if (gapWorker != null && (i2 != 0 || i4 != 0)) {
            gapWorker.e(this, i2, i4);
        }
        stopNestedScroll(i5);
    }

    private void m() {
        E0();
        setScrollState(0);
    }

    static void n(@NonNull ViewHolder viewHolder) {
        WeakReference<RecyclerView> weakReference = viewHolder.mNestedRecyclerView;
        if (weakReference != null) {
            RecyclerView recyclerView = weakReference.get();
            while (recyclerView != null) {
                if (recyclerView == viewHolder.itemView) {
                    return;
                }
                ViewParent parent = recyclerView.getParent();
                recyclerView = parent instanceof View ? (View) parent : null;
            }
            viewHolder.mNestedRecyclerView = null;
        }
    }

    private void q0(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f7122r0) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.f7122r0 = motionEvent.getPointerId(i2);
            int x3 = (int) (motionEvent.getX(i2) + 0.5f);
            this.f7130v0 = x3;
            this.f7126t0 = x3;
            int y3 = (int) (motionEvent.getY(i2) + 0.5f);
            this.f7132w0 = y3;
            this.f7128u0 = y3;
        }
    }

    private void r(Context context, String str, AttributeSet attributeSet, int i2, int i4) {
        ClassLoader classLoader;
        Constructor constructor;
        if (str != null) {
            String trim = str.trim();
            if (trim.isEmpty()) {
                return;
            }
            String V = V(context, trim);
            try {
                if (isInEditMode()) {
                    classLoader = getClass().getClassLoader();
                } else {
                    classLoader = context.getClassLoader();
                }
                Class<? extends U> asSubclass = Class.forName(V, false, classLoader).asSubclass(LayoutManager.class);
                Object[] objArr = null;
                try {
                    constructor = asSubclass.getConstructor(f7095w1);
                    objArr = new Object[]{context, attributeSet, Integer.valueOf(i2), Integer.valueOf(i4)};
                } catch (NoSuchMethodException e4) {
                    try {
                        constructor = asSubclass.getConstructor(new Class[0]);
                    } catch (NoSuchMethodException e5) {
                        e5.initCause(e4);
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + V, e5);
                    }
                }
                constructor.setAccessible(true);
                setLayoutManager((LayoutManager) constructor.newInstance(objArr));
            } catch (ClassCastException e6) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + V, e6);
            } catch (ClassNotFoundException e7) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + V, e7);
            } catch (IllegalAccessException e8) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + V, e8);
            } catch (InstantiationException e9) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + V, e9);
            } catch (InvocationTargetException e10) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + V, e10);
            }
        }
    }

    private boolean s0() {
        return this.f7118p0 != null && this.f7112m.supportsPredictiveItemAnimations();
    }

    private boolean t(int i2, int i4) {
        M(this.Q0);
        int[] iArr = this.Q0;
        return (iArr[0] == i2 && iArr[1] == i4) ? false : true;
    }

    private void t0() {
        boolean z3;
        if (this.E) {
            this.f7103d.w();
            if (this.F) {
                this.f7112m.onItemsChanged(this);
            }
        }
        if (s0()) {
            this.f7103d.u();
        } else {
            this.f7103d.h();
        }
        boolean z4 = false;
        boolean z5 = this.K0 || this.L0;
        this.H0.f7197k = this.f7129v && this.f7118p0 != null && ((z3 = this.E) || z5 || this.f7112m.mRequestedSimpleAnimations) && (!z3 || this.f7111l.hasStableIds());
        State state = this.H0;
        if (state.f7197k && z5 && !this.E && s0()) {
            z4 = true;
        }
        state.f7198l = z4;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void v0(float r7, float r8, float r9, float r10) {
        /*
            r6 = this;
            r0 = 1065353216(0x3f800000, float:1.0)
            r1 = 1
            r2 = 0
            int r3 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r3 >= 0) goto L21
            r6.G()
            android.widget.EdgeEffect r3 = r6.J
            float r4 = -r8
            int r5 = r6.getWidth()
            float r5 = (float) r5
            float r4 = r4 / r5
            int r5 = r6.getHeight()
            float r5 = (float) r5
            float r9 = r9 / r5
            float r9 = r0 - r9
            androidx.core.widget.EdgeEffectCompat.onPull(r3, r4, r9)
        L1f:
            r9 = 1
            goto L3c
        L21:
            int r3 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r3 <= 0) goto L3b
            r6.H()
            android.widget.EdgeEffect r3 = r6.f7114n0
            int r4 = r6.getWidth()
            float r4 = (float) r4
            float r4 = r8 / r4
            int r5 = r6.getHeight()
            float r5 = (float) r5
            float r9 = r9 / r5
            androidx.core.widget.EdgeEffectCompat.onPull(r3, r4, r9)
            goto L1f
        L3b:
            r9 = 0
        L3c:
            int r3 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r3 >= 0) goto L56
            r6.I()
            android.widget.EdgeEffect r9 = r6.K
            float r0 = -r10
            int r3 = r6.getHeight()
            float r3 = (float) r3
            float r0 = r0 / r3
            int r3 = r6.getWidth()
            float r3 = (float) r3
            float r7 = r7 / r3
            androidx.core.widget.EdgeEffectCompat.onPull(r9, r0, r7)
            goto L72
        L56:
            int r3 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r3 <= 0) goto L71
            r6.F()
            android.widget.EdgeEffect r9 = r6.f7116o0
            int r3 = r6.getHeight()
            float r3 = (float) r3
            float r3 = r10 / r3
            int r4 = r6.getWidth()
            float r4 = (float) r4
            float r7 = r7 / r4
            float r0 = r0 - r7
            androidx.core.widget.EdgeEffectCompat.onPull(r9, r3, r0)
            goto L72
        L71:
            r1 = r9
        L72:
            if (r1 != 0) goto L7c
            int r7 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r7 != 0) goto L7c
            int r7 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r7 == 0) goto L7f
        L7c:
            androidx.core.view.ViewCompat.postInvalidateOnAnimation(r6)
        L7f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.v0(float, float, float, float):void");
    }

    private void w() {
        int i2 = this.A;
        this.A = 0;
        if (i2 == 0 || !e0()) {
            return;
        }
        AccessibilityEvent obtain = AccessibilityEvent.obtain();
        obtain.setEventType(2048);
        AccessibilityEventCompat.setContentChangeTypes(obtain, i2);
        sendAccessibilityEventUnchecked(obtain);
    }

    private void x0() {
        View findViewById;
        if (!this.D0 || this.f7111l == null || !hasFocus() || getDescendantFocusability() == 393216) {
            return;
        }
        if (getDescendantFocusability() == 131072 && isFocused()) {
            return;
        }
        if (!isFocused()) {
            View focusedChild = getFocusedChild();
            if (f7083k1 && (focusedChild.getParent() == null || !focusedChild.hasFocus())) {
                if (this.f7104e.g() == 0) {
                    requestFocus();
                    return;
                }
            } else if (!this.f7104e.n(focusedChild)) {
                return;
            }
        }
        View view = null;
        ViewHolder findViewHolderForItemId = (this.H0.f7200n == -1 || !this.f7111l.hasStableIds()) ? null : findViewHolderForItemId(this.H0.f7200n);
        if (findViewHolderForItemId != null && !this.f7104e.n(findViewHolderForItemId.itemView) && findViewHolderForItemId.itemView.hasFocusable()) {
            view = findViewHolderForItemId.itemView;
        } else if (this.f7104e.g() > 0) {
            view = O();
        }
        if (view != null) {
            int i2 = this.H0.f7201o;
            if (i2 != -1 && (findViewById = view.findViewById(i2)) != null && findViewById.isFocusable()) {
                view = findViewById;
            }
            view.requestFocus();
        }
    }

    private void y() {
        boolean z3 = true;
        this.H0.a(1);
        K(this.H0);
        this.H0.f7196j = false;
        N0();
        this.f7105f.f();
        n0();
        t0();
        F0();
        State state = this.H0;
        state.f7195i = (state.f7197k && this.L0) ? false : false;
        this.L0 = false;
        this.K0 = false;
        state.f7194h = state.f7198l;
        state.f7192f = this.f7111l.getItemCount();
        M(this.Q0);
        if (this.H0.f7197k) {
            int g4 = this.f7104e.g();
            for (int i2 = 0; i2 < g4; i2++) {
                ViewHolder S = S(this.f7104e.f(i2));
                if (!S.shouldIgnore() && (!S.isInvalid() || this.f7111l.hasStableIds())) {
                    this.f7105f.e(S, this.f7118p0.recordPreLayoutInformation(this.H0, S, ItemAnimator.a(S), S.getUnmodifiedPayloads()));
                    if (this.H0.f7195i && S.isUpdated() && !S.isRemoved() && !S.shouldIgnore() && !S.isInvalid()) {
                        this.f7105f.c(R(S), S);
                    }
                }
            }
        }
        if (this.H0.f7198l) {
            G0();
            State state2 = this.H0;
            boolean z4 = state2.f7193g;
            state2.f7193g = false;
            this.f7112m.onLayoutChildren(this.f7101b, state2);
            this.H0.f7193g = z4;
            for (int i4 = 0; i4 < this.f7104e.g(); i4++) {
                ViewHolder S2 = S(this.f7104e.f(i4));
                if (!S2.shouldIgnore() && !this.f7105f.i(S2)) {
                    int a4 = ItemAnimator.a(S2);
                    boolean hasAnyOfTheFlags = S2.hasAnyOfTheFlags(8192);
                    if (!hasAnyOfTheFlags) {
                        a4 |= 4096;
                    }
                    ItemAnimator.ItemHolderInfo recordPreLayoutInformation = this.f7118p0.recordPreLayoutInformation(this.H0, S2, a4, S2.getUnmodifiedPayloads());
                    if (hasAnyOfTheFlags) {
                        w0(S2, recordPreLayoutInformation);
                    } else {
                        this.f7105f.a(S2, recordPreLayoutInformation);
                    }
                }
            }
            o();
        } else {
            o();
        }
        o0();
        O0(false);
        this.H0.f7191e = 2;
    }

    private void y0() {
        boolean z3;
        EdgeEffect edgeEffect = this.J;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z3 = this.J.isFinished();
        } else {
            z3 = false;
        }
        EdgeEffect edgeEffect2 = this.K;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z3 |= this.K.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f7114n0;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z3 |= this.f7114n0.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f7116o0;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z3 |= this.f7116o0.isFinished();
        }
        if (z3) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    private void z() {
        N0();
        n0();
        this.H0.a(6);
        this.f7103d.h();
        this.H0.f7192f = this.f7111l.getItemCount();
        this.H0.f7190d = 0;
        if (this.f7102c != null && this.f7111l.canRestoreState()) {
            Parcelable parcelable = this.f7102c.f7176a;
            if (parcelable != null) {
                this.f7112m.onRestoreInstanceState(parcelable);
            }
            this.f7102c = null;
        }
        State state = this.H0;
        state.f7194h = false;
        this.f7112m.onLayoutChildren(this.f7101b, state);
        State state2 = this.H0;
        state2.f7193g = false;
        state2.f7197k = state2.f7197k && this.f7118p0 != null;
        state2.f7191e = 4;
        o0();
        O0(false);
    }

    boolean A0(View view) {
        N0();
        boolean r3 = this.f7104e.r(view);
        if (r3) {
            ViewHolder S = S(view);
            this.f7101b.D(S);
            this.f7101b.x(S);
        }
        O0(!r3);
        return r3;
    }

    void B(int i2) {
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager != null) {
            layoutManager.onScrollStateChanged(i2);
        }
        onScrollStateChanged(i2);
        OnScrollListener onScrollListener = this.I0;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(this, i2);
        }
        List<OnScrollListener> list = this.J0;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.J0.get(size).onScrollStateChanged(this, i2);
            }
        }
    }

    void B0() {
        ViewHolder viewHolder;
        int g4 = this.f7104e.g();
        for (int i2 = 0; i2 < g4; i2++) {
            View f4 = this.f7104e.f(i2);
            ViewHolder childViewHolder = getChildViewHolder(f4);
            if (childViewHolder != null && (viewHolder = childViewHolder.mShadowingHolder) != null) {
                View view = viewHolder.itemView;
                int left = f4.getLeft();
                int top = f4.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    void C(int i2, int i4) {
        this.H++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i2, scrollY - i4);
        onScrolled(i2, i4);
        OnScrollListener onScrollListener = this.I0;
        if (onScrollListener != null) {
            onScrollListener.onScrolled(this, i2, i4);
        }
        List<OnScrollListener> list = this.J0;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.J0.get(size).onScrolled(this, i2, i4);
            }
        }
        this.H--;
    }

    void D() {
        int i2;
        for (int size = this.V0.size() - 1; size >= 0; size--) {
            ViewHolder viewHolder = this.V0.get(size);
            if (viewHolder.itemView.getParent() == this && !viewHolder.shouldIgnore() && (i2 = viewHolder.mPendingAccessibilityState) != -1) {
                ViewCompat.setImportantForAccessibility(viewHolder.itemView, i2);
                viewHolder.mPendingAccessibilityState = -1;
            }
        }
        this.V0.clear();
    }

    void F() {
        if (this.f7116o0 != null) {
            return;
        }
        EdgeEffect a4 = this.I.a(this, 3);
        this.f7116o0 = a4;
        if (this.f7106g) {
            a4.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            a4.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    void G() {
        if (this.J != null) {
            return;
        }
        EdgeEffect a4 = this.I.a(this, 0);
        this.J = a4;
        if (this.f7106g) {
            a4.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            a4.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    void G0() {
        int j4 = this.f7104e.j();
        for (int i2 = 0; i2 < j4; i2++) {
            ViewHolder S = S(this.f7104e.i(i2));
            if (!S.shouldIgnore()) {
                S.saveOldPosition();
            }
        }
    }

    void H() {
        if (this.f7114n0 != null) {
            return;
        }
        EdgeEffect a4 = this.I.a(this, 2);
        this.f7114n0 = a4;
        if (this.f7106g) {
            a4.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            a4.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    boolean H0(int i2, int i4, MotionEvent motionEvent, int i5) {
        int i6;
        int i7;
        int i8;
        int i9;
        q();
        if (this.f7111l != null) {
            int[] iArr = this.U0;
            iArr[0] = 0;
            iArr[1] = 0;
            I0(i2, i4, iArr);
            int[] iArr2 = this.U0;
            int i10 = iArr2[0];
            int i11 = iArr2[1];
            i6 = i11;
            i7 = i10;
            i8 = i2 - i10;
            i9 = i4 - i11;
        } else {
            i6 = 0;
            i7 = 0;
            i8 = 0;
            i9 = 0;
        }
        if (!this.f7117p.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.U0;
        iArr3[0] = 0;
        iArr3[1] = 0;
        dispatchNestedScroll(i7, i6, i8, i9, this.S0, i5, iArr3);
        int[] iArr4 = this.U0;
        int i12 = i8 - iArr4[0];
        int i13 = i9 - iArr4[1];
        boolean z3 = (iArr4[0] == 0 && iArr4[1] == 0) ? false : true;
        int i14 = this.f7130v0;
        int[] iArr5 = this.S0;
        this.f7130v0 = i14 - iArr5[0];
        this.f7132w0 -= iArr5[1];
        int[] iArr6 = this.T0;
        iArr6[0] = iArr6[0] + iArr5[0];
        iArr6[1] = iArr6[1] + iArr5[1];
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && !MotionEventCompat.isFromSource(motionEvent, 8194)) {
                v0(motionEvent.getX(), i12, motionEvent.getY(), i13);
            }
            p(i2, i4);
        }
        if (i7 != 0 || i6 != 0) {
            C(i7, i6);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z3 && i7 == 0 && i6 == 0) ? false : true;
    }

    void I() {
        if (this.K != null) {
            return;
        }
        EdgeEffect a4 = this.I.a(this, 1);
        this.K = a4;
        if (this.f7106g) {
            a4.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            a4.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    void I0(int i2, int i4, @Nullable int[] iArr) {
        N0();
        n0();
        TraceCompat.beginSection(f7087o1);
        K(this.H0);
        int scrollHorizontallyBy = i2 != 0 ? this.f7112m.scrollHorizontallyBy(i2, this.f7101b, this.H0) : 0;
        int scrollVerticallyBy = i4 != 0 ? this.f7112m.scrollVerticallyBy(i4, this.f7101b, this.H0) : 0;
        TraceCompat.endSection();
        B0();
        o0();
        O0(false);
        if (iArr != null) {
            iArr[0] = scrollHorizontallyBy;
            iArr[1] = scrollVerticallyBy;
        }
    }

    String J() {
        return " " + super.toString() + ", adapter:" + this.f7111l + ", layout:" + this.f7112m + ", context:" + getContext();
    }

    final void K(State state) {
        if (getScrollState() == 2) {
            OverScroller overScroller = this.E0.f7206c;
            state.f7202p = overScroller.getFinalX() - overScroller.getCurrX();
            state.f7203q = overScroller.getFinalY() - overScroller.getCurrY();
            return;
        }
        state.f7202p = 0;
        state.f7203q = 0;
    }

    @VisibleForTesting
    boolean K0(ViewHolder viewHolder, int i2) {
        if (isComputingLayout()) {
            viewHolder.mPendingAccessibilityState = i2;
            this.V0.add(viewHolder);
            return false;
        }
        ViewCompat.setImportantForAccessibility(viewHolder.itemView, i2);
        return true;
    }

    boolean L0(AccessibilityEvent accessibilityEvent) {
        if (isComputingLayout()) {
            int contentChangeTypes = accessibilityEvent != null ? AccessibilityEventCompat.getContentChangeTypes(accessibilityEvent) : 0;
            this.A |= contentChangeTypes != 0 ? contentChangeTypes : 0;
            return true;
        }
        return false;
    }

    void M0(@Px int i2, @Px int i4, @Nullable Interpolator interpolator, int i5, boolean z3) {
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager == null || this.f7135y) {
            return;
        }
        if (!layoutManager.canScrollHorizontally()) {
            i2 = 0;
        }
        if (!this.f7112m.canScrollVertically()) {
            i4 = 0;
        }
        if (i2 == 0 && i4 == 0) {
            return;
        }
        if (i5 == Integer.MIN_VALUE || i5 > 0) {
            if (z3) {
                int i6 = i2 != 0 ? 1 : 0;
                if (i4 != 0) {
                    i6 |= 2;
                }
                startNestedScroll(i6, 1);
            }
            this.E0.smoothScrollBy(i2, i4, i5, interpolator);
            return;
        }
        scrollBy(i2, i4);
    }

    void N0() {
        int i2 = this.f7131w + 1;
        this.f7131w = i2;
        if (i2 != 1 || this.f7135y) {
            return;
        }
        this.f7133x = false;
    }

    void O0(boolean z3) {
        if (this.f7131w < 1) {
            this.f7131w = 1;
        }
        if (!z3 && !this.f7135y) {
            this.f7133x = false;
        }
        if (this.f7131w == 1) {
            if (z3 && this.f7133x && !this.f7135y && this.f7112m != null && this.f7111l != null) {
                x();
            }
            if (!this.f7135y) {
                this.f7133x = false;
            }
        }
        this.f7131w--;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0036 A[SYNTHETIC] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    androidx.recyclerview.widget.RecyclerView.ViewHolder P(int r6, boolean r7) {
        /*
            r5 = this;
            androidx.recyclerview.widget.ChildHelper r0 = r5.f7104e
            int r0 = r0.j()
            r1 = 0
            r2 = 0
        L8:
            if (r2 >= r0) goto L3a
            androidx.recyclerview.widget.ChildHelper r3 = r5.f7104e
            android.view.View r3 = r3.i(r2)
            androidx.recyclerview.widget.RecyclerView$ViewHolder r3 = S(r3)
            if (r3 == 0) goto L37
            boolean r4 = r3.isRemoved()
            if (r4 != 0) goto L37
            if (r7 == 0) goto L23
            int r4 = r3.mPosition
            if (r4 == r6) goto L2a
            goto L37
        L23:
            int r4 = r3.getLayoutPosition()
            if (r4 == r6) goto L2a
            goto L37
        L2a:
            androidx.recyclerview.widget.ChildHelper r1 = r5.f7104e
            android.view.View r4 = r3.itemView
            boolean r1 = r1.n(r4)
            if (r1 == 0) goto L36
            r1 = r3
            goto L37
        L36:
            return r3
        L37:
            int r2 = r2 + 1
            goto L8
        L3a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.P(int, boolean):androidx.recyclerview.widget.RecyclerView$ViewHolder");
    }

    int Q(ViewHolder viewHolder) {
        if (viewHolder.hasAnyOfTheFlags(524) || !viewHolder.isBound()) {
            return -1;
        }
        return this.f7103d.applyPendingUpdatesToPosition(viewHolder.mPosition);
    }

    void Q0(int i2, int i4, Object obj) {
        int i5;
        int j4 = this.f7104e.j();
        int i6 = i2 + i4;
        for (int i7 = 0; i7 < j4; i7++) {
            View i8 = this.f7104e.i(i7);
            ViewHolder S = S(i8);
            if (S != null && !S.shouldIgnore() && (i5 = S.mPosition) >= i2 && i5 < i6) {
                S.addFlags(2);
                S.addChangePayload(obj);
                ((LayoutParams) i8.getLayoutParams()).f7156c = true;
            }
        }
        this.f7101b.G(i2, i4);
    }

    long R(ViewHolder viewHolder) {
        return this.f7111l.hasStableIds() ? viewHolder.getItemId() : viewHolder.mPosition;
    }

    Rect W(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.f7156c) {
            return layoutParams.f7155b;
        }
        if (this.H0.isPreLayout() && (layoutParams.isItemChanged() || layoutParams.isViewInvalid())) {
            return layoutParams.f7155b;
        }
        Rect rect = layoutParams.f7155b;
        rect.set(0, 0, 0, 0);
        int size = this.f7117p.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f7108i.set(0, 0, 0, 0);
            this.f7117p.get(i2).getItemOffsets(this.f7108i, view, this, this.H0);
            int i4 = rect.left;
            Rect rect2 = this.f7108i;
            rect.left = i4 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        layoutParams.f7156c = false;
        return rect;
    }

    void Z() {
        this.f7103d = new AdapterHelper(new AdapterHelper.Callback() { // from class: androidx.recyclerview.widget.RecyclerView.6
            void a(AdapterHelper.UpdateOp updateOp) {
                int i2 = updateOp.f6709a;
                if (i2 == 1) {
                    RecyclerView recyclerView = RecyclerView.this;
                    recyclerView.f7112m.onItemsAdded(recyclerView, updateOp.f6710b, updateOp.f6712d);
                } else if (i2 == 2) {
                    RecyclerView recyclerView2 = RecyclerView.this;
                    recyclerView2.f7112m.onItemsRemoved(recyclerView2, updateOp.f6710b, updateOp.f6712d);
                } else if (i2 == 4) {
                    RecyclerView recyclerView3 = RecyclerView.this;
                    recyclerView3.f7112m.onItemsUpdated(recyclerView3, updateOp.f6710b, updateOp.f6712d, updateOp.f6711c);
                } else if (i2 != 8) {
                } else {
                    RecyclerView recyclerView4 = RecyclerView.this;
                    recyclerView4.f7112m.onItemsMoved(recyclerView4, updateOp.f6710b, updateOp.f6712d, 1);
                }
            }

            @Override // androidx.recyclerview.widget.AdapterHelper.Callback
            public ViewHolder findViewHolder(int i2) {
                ViewHolder P = RecyclerView.this.P(i2, true);
                if (P == null || RecyclerView.this.f7104e.n(P.itemView)) {
                    return null;
                }
                return P;
            }

            @Override // androidx.recyclerview.widget.AdapterHelper.Callback
            public void markViewHoldersUpdated(int i2, int i4, Object obj) {
                RecyclerView.this.Q0(i2, i4, obj);
                RecyclerView.this.L0 = true;
            }

            @Override // androidx.recyclerview.widget.AdapterHelper.Callback
            public void offsetPositionsForAdd(int i2, int i4) {
                RecyclerView.this.k0(i2, i4);
                RecyclerView.this.K0 = true;
            }

            @Override // androidx.recyclerview.widget.AdapterHelper.Callback
            public void offsetPositionsForMove(int i2, int i4) {
                RecyclerView.this.l0(i2, i4);
                RecyclerView.this.K0 = true;
            }

            @Override // androidx.recyclerview.widget.AdapterHelper.Callback
            public void offsetPositionsForRemovingInvisible(int i2, int i4) {
                RecyclerView.this.m0(i2, i4, true);
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.K0 = true;
                recyclerView.H0.f7190d += i4;
            }

            @Override // androidx.recyclerview.widget.AdapterHelper.Callback
            public void offsetPositionsForRemovingLaidOutOrNewView(int i2, int i4) {
                RecyclerView.this.m0(i2, i4, false);
                RecyclerView.this.K0 = true;
            }

            @Override // androidx.recyclerview.widget.AdapterHelper.Callback
            public void onDispatchFirstPass(AdapterHelper.UpdateOp updateOp) {
                a(updateOp);
            }

            @Override // androidx.recyclerview.widget.AdapterHelper.Callback
            public void onDispatchSecondPass(AdapterHelper.UpdateOp updateOp) {
                a(updateOp);
            }
        });
    }

    void a(int i2, int i4) {
        if (i2 < 0) {
            G();
            if (this.J.isFinished()) {
                this.J.onAbsorb(-i2);
            }
        } else if (i2 > 0) {
            H();
            if (this.f7114n0.isFinished()) {
                this.f7114n0.onAbsorb(i2);
            }
        }
        if (i4 < 0) {
            I();
            if (this.K.isFinished()) {
                this.K.onAbsorb(-i4);
            }
        } else if (i4 > 0) {
            F();
            if (this.f7116o0.isFinished()) {
                this.f7116o0.onAbsorb(i4);
            }
        }
        if (i2 == 0 && i4 == 0) {
            return;
        }
        ViewCompat.postInvalidateOnAnimation(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i4) {
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager == null || !layoutManager.onAddFocusables(this, arrayList, i2, i4)) {
            super.addFocusables(arrayList, i2, i4);
        }
    }

    public void addItemDecoration(@NonNull ItemDecoration itemDecoration, int i2) {
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager != null) {
            layoutManager.assertNotInLayoutOrScroll("Cannot add item decoration during a scroll  or layout");
        }
        if (this.f7117p.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i2 < 0) {
            this.f7117p.add(itemDecoration);
        } else {
            this.f7117p.add(i2, itemDecoration);
        }
        h0();
        requestLayout();
    }

    public void addOnChildAttachStateChangeListener(@NonNull OnChildAttachStateChangeListener onChildAttachStateChangeListener) {
        if (this.D == null) {
            this.D = new ArrayList();
        }
        this.D.add(onChildAttachStateChangeListener);
    }

    public void addOnItemTouchListener(@NonNull OnItemTouchListener onItemTouchListener) {
        this.f7119q.add(onItemTouchListener);
    }

    public void addOnScrollListener(@NonNull OnScrollListener onScrollListener) {
        if (this.J0 == null) {
            this.J0 = new ArrayList();
        }
        this.J0.add(onScrollListener);
    }

    public void addRecyclerListener(@NonNull RecyclerListener recyclerListener) {
        Preconditions.checkArgument(recyclerListener != null, "'listener' arg cannot be null.");
        this.f7115o.add(recyclerListener);
    }

    @VisibleForTesting
    void c0(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable != null && drawable != null && stateListDrawable2 != null && drawable2 != null) {
            Resources resources = getContext().getResources();
            new FastScroller(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(R.dimen.fastscroll_margin));
            return;
        }
        throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + J());
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && this.f7112m.checkLayoutParams((LayoutParams) layoutParams);
    }

    public void clearOnChildAttachStateChangeListeners() {
        List<OnChildAttachStateChangeListener> list = this.D;
        if (list != null) {
            list.clear();
        }
    }

    public void clearOnScrollListeners() {
        List<OnScrollListener> list = this.J0;
        if (list != null) {
            list.clear();
        }
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollExtent() {
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager != null && layoutManager.canScrollHorizontally()) {
            return this.f7112m.computeHorizontalScrollExtent(this.H0);
        }
        return 0;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollOffset() {
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager != null && layoutManager.canScrollHorizontally()) {
            return this.f7112m.computeHorizontalScrollOffset(this.H0);
        }
        return 0;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeHorizontalScrollRange() {
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager != null && layoutManager.canScrollHorizontally()) {
            return this.f7112m.computeHorizontalScrollRange(this.H0);
        }
        return 0;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollExtent() {
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager != null && layoutManager.canScrollVertically()) {
            return this.f7112m.computeVerticalScrollExtent(this.H0);
        }
        return 0;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollOffset() {
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager != null && layoutManager.canScrollVertically()) {
            return this.f7112m.computeVerticalScrollOffset(this.H0);
        }
        return 0;
    }

    @Override // android.view.View, androidx.core.view.ScrollingView
    public int computeVerticalScrollRange() {
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager != null && layoutManager.canScrollVertically()) {
            return this.f7112m.computeVerticalScrollRange(this.H0);
        }
        return 0;
    }

    void d0() {
        this.f7116o0 = null;
        this.K = null;
        this.f7114n0 = null;
        this.J = null;
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedFling(float f4, float f5, boolean z3) {
        return getScrollingChildHelper().dispatchNestedFling(f4, f5, z3);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float f4, float f5) {
        return getScrollingChildHelper().dispatchNestedPreFling(f4, f5);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int i2, int i4, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().dispatchNestedPreScroll(i2, i4, iArr, iArr2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int i2, int i4, int i5, int i6, int[] iArr) {
        return getScrollingChildHelper().dispatchNestedScroll(i2, i4, i5, i6, iArr);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z3;
        super.draw(canvas);
        int size = this.f7117p.size();
        boolean z4 = false;
        for (int i2 = 0; i2 < size; i2++) {
            this.f7117p.get(i2).onDrawOver(canvas, this, this.H0);
        }
        EdgeEffect edgeEffect = this.J;
        boolean z5 = true;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z3 = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.f7106g ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.J;
            z3 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect3 = this.K;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int save2 = canvas.save();
            if (this.f7106g) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.K;
            z3 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(save2);
        }
        EdgeEffect edgeEffect5 = this.f7114n0;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int save3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.f7106g ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(paddingTop, -width);
            EdgeEffect edgeEffect6 = this.f7114n0;
            z3 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(save3);
        }
        EdgeEffect edgeEffect7 = this.f7116o0;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.f7106g) {
                canvas.translate((-getWidth()) + getPaddingRight(), (-getHeight()) + getPaddingBottom());
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.f7116o0;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z4 = true;
            }
            z3 |= z4;
            canvas.restoreToCount(save4);
        }
        if (z3 || this.f7118p0 == null || this.f7117p.size() <= 0 || !this.f7118p0.isRunning()) {
            z5 = z3;
        }
        if (z5) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j4) {
        return super.drawChild(canvas, view, j4);
    }

    boolean e0() {
        AccessibilityManager accessibilityManager = this.C;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    @Nullable
    public View findChildViewUnder(float f4, float f5) {
        for (int g4 = this.f7104e.g() - 1; g4 >= 0; g4--) {
            View f6 = this.f7104e.f(g4);
            float translationX = f6.getTranslationX();
            float translationY = f6.getTranslationY();
            if (f4 >= f6.getLeft() + translationX && f4 <= f6.getRight() + translationX && f5 >= f6.getTop() + translationY && f5 <= f6.getBottom() + translationY) {
                return f6;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:?, code lost:
        return r3;
     */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View findContainingItemView(@androidx.annotation.NonNull android.view.View r3) {
        /*
            r2 = this;
            android.view.ViewParent r0 = r3.getParent()
        L4:
            if (r0 == 0) goto L14
            if (r0 == r2) goto L14
            boolean r1 = r0 instanceof android.view.View
            if (r1 == 0) goto L14
            r3 = r0
            android.view.View r3 = (android.view.View) r3
            android.view.ViewParent r0 = r3.getParent()
            goto L4
        L14:
            if (r0 != r2) goto L17
            goto L18
        L17:
            r3 = 0
        L18:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.findContainingItemView(android.view.View):android.view.View");
    }

    @Nullable
    public ViewHolder findContainingViewHolder(@NonNull View view) {
        View findContainingItemView = findContainingItemView(view);
        if (findContainingItemView == null) {
            return null;
        }
        return getChildViewHolder(findContainingItemView);
    }

    @Nullable
    public ViewHolder findViewHolderForAdapterPosition(int i2) {
        ViewHolder viewHolder = null;
        if (this.E) {
            return null;
        }
        int j4 = this.f7104e.j();
        for (int i4 = 0; i4 < j4; i4++) {
            ViewHolder S = S(this.f7104e.i(i4));
            if (S != null && !S.isRemoved() && Q(S) == i2) {
                if (!this.f7104e.n(S.itemView)) {
                    return S;
                }
                viewHolder = S;
            }
        }
        return viewHolder;
    }

    public ViewHolder findViewHolderForItemId(long j4) {
        Adapter adapter = this.f7111l;
        ViewHolder viewHolder = null;
        if (adapter != null && adapter.hasStableIds()) {
            int j5 = this.f7104e.j();
            for (int i2 = 0; i2 < j5; i2++) {
                ViewHolder S = S(this.f7104e.i(i2));
                if (S != null && !S.isRemoved() && S.getItemId() == j4) {
                    if (!this.f7104e.n(S.itemView)) {
                        return S;
                    }
                    viewHolder = S;
                }
            }
        }
        return viewHolder;
    }

    @Nullable
    public ViewHolder findViewHolderForLayoutPosition(int i2) {
        return P(i2, false);
    }

    @Nullable
    @Deprecated
    public ViewHolder findViewHolderForPosition(int i2) {
        return P(i2, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v6 */
    public boolean fling(int i2, int i4) {
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager == null || this.f7135y) {
            return false;
        }
        int canScrollHorizontally = layoutManager.canScrollHorizontally();
        boolean canScrollVertically = this.f7112m.canScrollVertically();
        i2 = (canScrollHorizontally == 0 || Math.abs(i2) < this.f7138z0) ? 0 : 0;
        i4 = (!canScrollVertically || Math.abs(i4) < this.f7138z0) ? 0 : 0;
        if (i2 == 0 && i4 == 0) {
            return false;
        }
        float f4 = i2;
        float f5 = i4;
        if (!dispatchNestedPreFling(f4, f5)) {
            boolean z3 = canScrollHorizontally != 0 || canScrollVertically;
            dispatchNestedFling(f4, f5, z3);
            OnFlingListener onFlingListener = this.f7136y0;
            if (onFlingListener != null && onFlingListener.onFling(i2, i4)) {
                return true;
            }
            if (z3) {
                if (canScrollVertically) {
                    canScrollHorizontally = (canScrollHorizontally == true ? 1 : 0) | 2;
                }
                startNestedScroll(canScrollHorizontally, 1);
                int i5 = this.A0;
                int max = Math.max(-i5, Math.min(i2, i5));
                int i6 = this.A0;
                this.E0.fling(max, Math.max(-i6, Math.min(i4, i6)));
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i2) {
        View view2;
        boolean z3;
        View onInterceptFocusSearch = this.f7112m.onInterceptFocusSearch(view, i2);
        if (onInterceptFocusSearch != null) {
            return onInterceptFocusSearch;
        }
        boolean z4 = (this.f7111l == null || this.f7112m == null || isComputingLayout() || this.f7135y) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (z4 && (i2 == 2 || i2 == 1)) {
            if (this.f7112m.canScrollVertically()) {
                int i4 = i2 == 2 ? 130 : 33;
                z3 = focusFinder.findNextFocus(this, view, i4) == null;
                if (f7082j1) {
                    i2 = i4;
                }
            } else {
                z3 = false;
            }
            if (!z3 && this.f7112m.canScrollHorizontally()) {
                int i5 = (this.f7112m.getLayoutDirection() == 1) ^ (i2 == 2) ? 66 : 17;
                boolean z5 = focusFinder.findNextFocus(this, view, i5) == null;
                if (f7082j1) {
                    i2 = i5;
                }
                z3 = z5;
            }
            if (z3) {
                q();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                N0();
                this.f7112m.onFocusSearchFailed(view, i2, this.f7101b, this.H0);
                O0(false);
            }
            view2 = focusFinder.findNextFocus(this, view, i2);
        } else {
            View findNextFocus = focusFinder.findNextFocus(this, view, i2);
            if (findNextFocus == null && z4) {
                q();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                N0();
                view2 = this.f7112m.onFocusSearchFailed(view, i2, this.f7101b, this.H0);
                O0(false);
            } else {
                view2 = findNextFocus;
            }
        }
        if (view2 == null || view2.hasFocusable()) {
            return f0(view, view2, i2) ? view2 : super.focusSearch(view, i2);
        } else if (getFocusedChild() == null) {
            return super.focusSearch(view, i2);
        } else {
            C0(view2, null);
            return view;
        }
    }

    void g(@NonNull ViewHolder viewHolder, @Nullable ItemAnimator.ItemHolderInfo itemHolderInfo, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        viewHolder.setIsRecyclable(false);
        if (this.f7118p0.animateAppearance(viewHolder, itemHolderInfo, itemHolderInfo2)) {
            r0();
        }
    }

    void g0(int i2) {
        if (this.f7112m == null) {
            return;
        }
        setScrollState(2);
        this.f7112m.scrollToPosition(i2);
        awakenScrollBars();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager != null) {
            return layoutManager.generateDefaultLayoutParams();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + J());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager != null) {
            return layoutManager.generateLayoutParams(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + J());
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    @Nullable
    public Adapter getAdapter() {
        return this.f7111l;
    }

    @Override // android.view.View
    public int getBaseline() {
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager != null) {
            return layoutManager.getBaseline();
        }
        return super.getBaseline();
    }

    public int getChildAdapterPosition(@NonNull View view) {
        ViewHolder S = S(view);
        if (S != null) {
            return S.getAbsoluteAdapterPosition();
        }
        return -1;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i2, int i4) {
        ChildDrawingOrderCallback childDrawingOrderCallback = this.P0;
        if (childDrawingOrderCallback == null) {
            return super.getChildDrawingOrder(i2, i4);
        }
        return childDrawingOrderCallback.onGetChildDrawingOrder(i2, i4);
    }

    public long getChildItemId(@NonNull View view) {
        ViewHolder S;
        Adapter adapter = this.f7111l;
        if (adapter == null || !adapter.hasStableIds() || (S = S(view)) == null) {
            return -1L;
        }
        return S.getItemId();
    }

    public int getChildLayoutPosition(@NonNull View view) {
        ViewHolder S = S(view);
        if (S != null) {
            return S.getLayoutPosition();
        }
        return -1;
    }

    @Deprecated
    public int getChildPosition(@NonNull View view) {
        return getChildAdapterPosition(view);
    }

    public ViewHolder getChildViewHolder(@NonNull View view) {
        ViewParent parent = view.getParent();
        if (parent != null && parent != this) {
            throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
        }
        return S(view);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.f7106g;
    }

    @Nullable
    public RecyclerViewAccessibilityDelegate getCompatAccessibilityDelegate() {
        return this.O0;
    }

    public void getDecoratedBoundsWithMargins(@NonNull View view, @NonNull Rect rect) {
        T(view, rect);
    }

    @NonNull
    public EdgeEffectFactory getEdgeEffectFactory() {
        return this.I;
    }

    @Nullable
    public ItemAnimator getItemAnimator() {
        return this.f7118p0;
    }

    @NonNull
    public ItemDecoration getItemDecorationAt(int i2) {
        int itemDecorationCount = getItemDecorationCount();
        if (i2 >= 0 && i2 < itemDecorationCount) {
            return this.f7117p.get(i2);
        }
        throw new IndexOutOfBoundsException(i2 + " is an invalid index for size " + itemDecorationCount);
    }

    public int getItemDecorationCount() {
        return this.f7117p.size();
    }

    @Nullable
    public LayoutManager getLayoutManager() {
        return this.f7112m;
    }

    public int getMaxFlingVelocity() {
        return this.A0;
    }

    public int getMinFlingVelocity() {
        return this.f7138z0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getNanoTime() {
        if (f7081i1) {
            return System.nanoTime();
        }
        return 0L;
    }

    @Nullable
    public OnFlingListener getOnFlingListener() {
        return this.f7136y0;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.D0;
    }

    @NonNull
    public RecycledViewPool getRecycledViewPool() {
        return this.f7101b.g();
    }

    public int getScrollState() {
        return this.f7120q0;
    }

    void h0() {
        int j4 = this.f7104e.j();
        for (int i2 = 0; i2 < j4; i2++) {
            ((LayoutParams) this.f7104e.i(i2).getLayoutParams()).f7156c = true;
        }
        this.f7101b.o();
    }

    public boolean hasFixedSize() {
        return this.f7125t;
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().hasNestedScrollingParent();
    }

    public boolean hasPendingAdapterUpdates() {
        return !this.f7129v || this.E || this.f7103d.n();
    }

    void i(@NonNull ViewHolder viewHolder, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo, @Nullable ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        f(viewHolder);
        viewHolder.setIsRecyclable(false);
        if (this.f7118p0.animateDisappearance(viewHolder, itemHolderInfo, itemHolderInfo2)) {
            r0();
        }
    }

    void i0() {
        int j4 = this.f7104e.j();
        for (int i2 = 0; i2 < j4; i2++) {
            ViewHolder S = S(this.f7104e.i(i2));
            if (S != null && !S.shouldIgnore()) {
                S.addFlags(6);
            }
        }
        h0();
        this.f7101b.p();
    }

    public void invalidateItemDecorations() {
        if (this.f7117p.size() == 0) {
            return;
        }
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager != null) {
            layoutManager.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
        }
        h0();
        requestLayout();
    }

    public boolean isAnimating() {
        ItemAnimator itemAnimator = this.f7118p0;
        return itemAnimator != null && itemAnimator.isRunning();
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.f7123s;
    }

    public boolean isComputingLayout() {
        return this.G > 0;
    }

    @Deprecated
    public boolean isLayoutFrozen() {
        return isLayoutSuppressed();
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.f7135y;
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().isNestedScrollingEnabled();
    }

    void j(String str) {
        if (isComputingLayout()) {
            return;
        }
        if (str == null) {
            throw new IllegalStateException("Cannot call this method unless RecyclerView is computing a layout or scrolling" + J());
        }
        throw new IllegalStateException(str + J());
    }

    void k(String str) {
        if (isComputingLayout()) {
            if (str == null) {
                throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + J());
            }
            throw new IllegalStateException(str);
        } else if (this.H > 0) {
            new IllegalStateException("" + J());
        }
    }

    void k0(int i2, int i4) {
        int j4 = this.f7104e.j();
        for (int i5 = 0; i5 < j4; i5++) {
            ViewHolder S = S(this.f7104e.i(i5));
            if (S != null && !S.shouldIgnore() && S.mPosition >= i2) {
                S.offsetPosition(i4, false);
                this.H0.f7193g = true;
            }
        }
        this.f7101b.q(i2, i4);
        requestLayout();
    }

    boolean l(ViewHolder viewHolder) {
        ItemAnimator itemAnimator = this.f7118p0;
        return itemAnimator == null || itemAnimator.canReuseUpdatedViewHolder(viewHolder, viewHolder.getUnmodifiedPayloads());
    }

    void l0(int i2, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int j4 = this.f7104e.j();
        if (i2 < i4) {
            i7 = -1;
            i6 = i2;
            i5 = i4;
        } else {
            i5 = i2;
            i6 = i4;
            i7 = 1;
        }
        for (int i9 = 0; i9 < j4; i9++) {
            ViewHolder S = S(this.f7104e.i(i9));
            if (S != null && (i8 = S.mPosition) >= i6 && i8 <= i5) {
                if (i8 == i2) {
                    S.offsetPosition(i4 - i2, false);
                } else {
                    S.offsetPosition(i7, false);
                }
                this.H0.f7193g = true;
            }
        }
        this.f7101b.r(i2, i4);
        requestLayout();
    }

    void m0(int i2, int i4, boolean z3) {
        int i5 = i2 + i4;
        int j4 = this.f7104e.j();
        for (int i6 = 0; i6 < j4; i6++) {
            ViewHolder S = S(this.f7104e.i(i6));
            if (S != null && !S.shouldIgnore()) {
                int i7 = S.mPosition;
                if (i7 >= i5) {
                    S.offsetPosition(-i4, z3);
                    this.H0.f7193g = true;
                } else if (i7 >= i2) {
                    S.flagRemovedAndOffsetPosition(i2 - 1, -i4, z3);
                    this.H0.f7193g = true;
                }
            }
        }
        this.f7101b.s(i2, i4, z3);
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n0() {
        this.G++;
    }

    public void nestedScrollBy(int i2, int i4) {
        j0(i2, i4, null, 1);
    }

    void o() {
        int j4 = this.f7104e.j();
        for (int i2 = 0; i2 < j4; i2++) {
            ViewHolder S = S(this.f7104e.i(i2));
            if (!S.shouldIgnore()) {
                S.clearOldPosition();
            }
        }
        this.f7101b.c();
    }

    void o0() {
        p0(true);
    }

    public void offsetChildrenHorizontal(@Px int i2) {
        int g4 = this.f7104e.g();
        for (int i4 = 0; i4 < g4; i4++) {
            this.f7104e.f(i4).offsetLeftAndRight(i2);
        }
    }

    public void offsetChildrenVertical(@Px int i2) {
        int g4 = this.f7104e.g();
        for (int i4 = 0; i4 < g4; i4++) {
            this.f7104e.f(i4).offsetTopAndBottom(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.G = 0;
        boolean z3 = true;
        this.f7123s = true;
        this.f7129v = (!this.f7129v || isLayoutRequested()) ? false : false;
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager != null) {
            layoutManager.dispatchAttachedToWindow(this);
        }
        this.N0 = false;
        if (f7081i1) {
            ThreadLocal<GapWorker> threadLocal = GapWorker.f6903e;
            GapWorker gapWorker = threadLocal.get();
            this.F0 = gapWorker;
            if (gapWorker == null) {
                this.F0 = new GapWorker();
                Display display = ViewCompat.getDisplay(this);
                float f4 = 60.0f;
                if (!isInEditMode() && display != null) {
                    float refreshRate = display.getRefreshRate();
                    if (refreshRate >= 30.0f) {
                        f4 = refreshRate;
                    }
                }
                GapWorker gapWorker2 = this.F0;
                gapWorker2.f6907c = 1.0E9f / f4;
                threadLocal.set(gapWorker2);
            }
            this.F0.add(this);
        }
    }

    public void onChildAttachedToWindow(@NonNull View view) {
    }

    public void onChildDetachedFromWindow(@NonNull View view) {
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        GapWorker gapWorker;
        super.onDetachedFromWindow();
        ItemAnimator itemAnimator = this.f7118p0;
        if (itemAnimator != null) {
            itemAnimator.endAnimations();
        }
        stopScroll();
        this.f7123s = false;
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager != null) {
            layoutManager.dispatchDetachedFromWindow(this, this.f7101b);
        }
        this.V0.clear();
        removeCallbacks(this.W0);
        this.f7105f.j();
        if (!f7081i1 || (gapWorker = this.F0) == null) {
            return;
        }
        gapWorker.remove(this);
        this.F0 = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.f7117p.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f7117p.get(i2).onDraw(canvas, this, this.H0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0066  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onGenericMotionEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            androidx.recyclerview.widget.RecyclerView$LayoutManager r0 = r5.f7112m
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            boolean r0 = r5.f7135y
            if (r0 == 0) goto Lb
            return r1
        Lb:
            int r0 = r6.getAction()
            r2 = 8
            if (r0 != r2) goto L78
            int r0 = r6.getSource()
            r0 = r0 & 2
            r2 = 0
            if (r0 == 0) goto L3c
            androidx.recyclerview.widget.RecyclerView$LayoutManager r0 = r5.f7112m
            boolean r0 = r0.canScrollVertically()
            if (r0 == 0) goto L2c
            r0 = 9
            float r0 = r6.getAxisValue(r0)
            float r0 = -r0
            goto L2d
        L2c:
            r0 = 0
        L2d:
            androidx.recyclerview.widget.RecyclerView$LayoutManager r3 = r5.f7112m
            boolean r3 = r3.canScrollHorizontally()
            if (r3 == 0) goto L61
            r3 = 10
            float r3 = r6.getAxisValue(r3)
            goto L62
        L3c:
            int r0 = r6.getSource()
            r3 = 4194304(0x400000, float:5.877472E-39)
            r0 = r0 & r3
            if (r0 == 0) goto L60
            r0 = 26
            float r0 = r6.getAxisValue(r0)
            androidx.recyclerview.widget.RecyclerView$LayoutManager r3 = r5.f7112m
            boolean r3 = r3.canScrollVertically()
            if (r3 == 0) goto L55
            float r0 = -r0
            goto L61
        L55:
            androidx.recyclerview.widget.RecyclerView$LayoutManager r3 = r5.f7112m
            boolean r3 = r3.canScrollHorizontally()
            if (r3 == 0) goto L60
            r3 = r0
            r0 = 0
            goto L62
        L60:
            r0 = 0
        L61:
            r3 = 0
        L62:
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 != 0) goto L6a
            int r2 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r2 == 0) goto L78
        L6a:
            float r2 = r5.B0
            float r3 = r3 * r2
            int r2 = (int) r3
            float r3 = r5.C0
            float r0 = r0 * r3
            int r0 = (int) r0
            r3 = 1
            r5.j0(r2, r0, r6, r3)
        L78:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z3;
        if (this.f7135y) {
            return false;
        }
        this.f7121r = null;
        if (L(motionEvent)) {
            m();
            return true;
        }
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager == null) {
            return false;
        }
        boolean canScrollHorizontally = layoutManager.canScrollHorizontally();
        boolean canScrollVertically = this.f7112m.canScrollVertically();
        if (this.f7124s0 == null) {
            this.f7124s0 = VelocityTracker.obtain();
        }
        this.f7124s0.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.f7137z) {
                this.f7137z = false;
            }
            this.f7122r0 = motionEvent.getPointerId(0);
            int x3 = (int) (motionEvent.getX() + 0.5f);
            this.f7130v0 = x3;
            this.f7126t0 = x3;
            int y3 = (int) (motionEvent.getY() + 0.5f);
            this.f7132w0 = y3;
            this.f7128u0 = y3;
            if (this.f7120q0 == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                stopNestedScroll(1);
            }
            int[] iArr = this.T0;
            iArr[1] = 0;
            iArr[0] = 0;
            int i2 = canScrollHorizontally;
            if (canScrollVertically) {
                i2 = (canScrollHorizontally ? 1 : 0) | 2;
            }
            startNestedScroll(i2, 0);
        } else if (actionMasked == 1) {
            this.f7124s0.clear();
            stopNestedScroll(0);
        } else if (actionMasked == 2) {
            int findPointerIndex = motionEvent.findPointerIndex(this.f7122r0);
            if (findPointerIndex < 0) {
                StringBuilder sb = new StringBuilder();
                sb.append("Error processing scroll; pointer index for id ");
                sb.append(this.f7122r0);
                sb.append(" not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x4 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
            int y4 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
            if (this.f7120q0 != 1) {
                int i4 = x4 - this.f7126t0;
                int i5 = y4 - this.f7128u0;
                if (!canScrollHorizontally || Math.abs(i4) <= this.f7134x0) {
                    z3 = false;
                } else {
                    this.f7130v0 = x4;
                    z3 = true;
                }
                if (canScrollVertically && Math.abs(i5) > this.f7134x0) {
                    this.f7132w0 = y4;
                    z3 = true;
                }
                if (z3) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            m();
        } else if (actionMasked == 5) {
            this.f7122r0 = motionEvent.getPointerId(actionIndex);
            int x5 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.f7130v0 = x5;
            this.f7126t0 = x5;
            int y5 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.f7132w0 = y5;
            this.f7128u0 = y5;
        } else if (actionMasked == 6) {
            q0(motionEvent);
        }
        return this.f7120q0 == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        TraceCompat.beginSection(f7088p1);
        x();
        TraceCompat.endSection();
        this.f7129v = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager == null) {
            s(i2, i4);
            return;
        }
        boolean z3 = false;
        if (layoutManager.isAutoMeasureEnabled()) {
            int mode = View.MeasureSpec.getMode(i2);
            int mode2 = View.MeasureSpec.getMode(i4);
            this.f7112m.onMeasure(this.f7101b, this.H0, i2, i4);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z3 = true;
            }
            this.X0 = z3;
            if (z3 || this.f7111l == null) {
                return;
            }
            if (this.H0.f7191e == 1) {
                y();
            }
            this.f7112m.setMeasureSpecs(i2, i4);
            this.H0.f7196j = true;
            z();
            this.f7112m.setMeasuredDimensionFromChildren(i2, i4);
            if (this.f7112m.shouldMeasureTwice()) {
                this.f7112m.setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                this.H0.f7196j = true;
                z();
                this.f7112m.setMeasuredDimensionFromChildren(i2, i4);
            }
            this.Y0 = getMeasuredWidth();
            this.Z0 = getMeasuredHeight();
        } else if (this.f7125t) {
            this.f7112m.onMeasure(this.f7101b, this.H0, i2, i4);
        } else {
            if (this.B) {
                N0();
                n0();
                t0();
                o0();
                State state = this.H0;
                if (state.f7198l) {
                    state.f7194h = true;
                } else {
                    this.f7103d.h();
                    this.H0.f7194h = false;
                }
                this.B = false;
                O0(false);
            } else if (this.H0.f7198l) {
                setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
                return;
            }
            Adapter adapter = this.f7111l;
            if (adapter != null) {
                this.H0.f7192f = adapter.getItemCount();
            } else {
                this.H0.f7192f = 0;
            }
            N0();
            this.f7112m.onMeasure(this.f7101b, this.H0, i2, i4);
            O0(false);
            this.H0.f7194h = false;
        }
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (isComputingLayout()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i2, rect);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.f7102c = savedState;
        super.onRestoreInstanceState(savedState.getSuperState());
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState savedState2 = this.f7102c;
        if (savedState2 != null) {
            savedState.a(savedState2);
        } else {
            LayoutManager layoutManager = this.f7112m;
            if (layoutManager != null) {
                savedState.f7176a = layoutManager.onSaveInstanceState();
            } else {
                savedState.f7176a = null;
            }
        }
        return savedState;
    }

    public void onScrollStateChanged(int i2) {
    }

    public void onScrolled(@Px int i2, @Px int i4) {
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i4, int i5, int i6) {
        super.onSizeChanged(i2, i4, i5, i6);
        if (i2 == i5 && i4 == i6) {
            return;
        }
        d0();
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ef  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r18) {
        /*
            Method dump skipped, instructions count: 471
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    void p(int i2, int i4) {
        boolean z3;
        EdgeEffect edgeEffect = this.J;
        if (edgeEffect == null || edgeEffect.isFinished() || i2 <= 0) {
            z3 = false;
        } else {
            this.J.onRelease();
            z3 = this.J.isFinished();
        }
        EdgeEffect edgeEffect2 = this.f7114n0;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i2 < 0) {
            this.f7114n0.onRelease();
            z3 |= this.f7114n0.isFinished();
        }
        EdgeEffect edgeEffect3 = this.K;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i4 > 0) {
            this.K.onRelease();
            z3 |= this.K.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f7116o0;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i4 < 0) {
            this.f7116o0.onRelease();
            z3 |= this.f7116o0.isFinished();
        }
        if (z3) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p0(boolean z3) {
        int i2 = this.G - 1;
        this.G = i2;
        if (i2 < 1) {
            this.G = 0;
            if (z3) {
                w();
                D();
            }
        }
    }

    void q() {
        if (this.f7129v && !this.E) {
            if (this.f7103d.n()) {
                if (this.f7103d.m(4) && !this.f7103d.m(11)) {
                    TraceCompat.beginSection(f7090r1);
                    N0();
                    n0();
                    this.f7103d.u();
                    if (!this.f7133x) {
                        if (Y()) {
                            x();
                        } else {
                            this.f7103d.g();
                        }
                    }
                    O0(true);
                    o0();
                    TraceCompat.endSection();
                    return;
                } else if (this.f7103d.n()) {
                    TraceCompat.beginSection(f7089q1);
                    x();
                    TraceCompat.endSection();
                    return;
                } else {
                    return;
                }
            }
            return;
        }
        TraceCompat.beginSection(f7089q1);
        x();
        TraceCompat.endSection();
    }

    void r0() {
        if (this.N0 || !this.f7123s) {
            return;
        }
        ViewCompat.postOnAnimation(this, this.W0);
        this.N0 = true;
    }

    @Override // android.view.ViewGroup
    protected void removeDetachedView(View view, boolean z3) {
        ViewHolder S = S(view);
        if (S != null) {
            if (S.isTmpDetached()) {
                S.clearTmpDetachFlag();
            } else if (!S.shouldIgnore()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + S + J());
            }
        }
        view.clearAnimation();
        v(view);
        super.removeDetachedView(view, z3);
    }

    public void removeItemDecoration(@NonNull ItemDecoration itemDecoration) {
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager != null) {
            layoutManager.assertNotInLayoutOrScroll("Cannot remove item decoration during a scroll  or layout");
        }
        this.f7117p.remove(itemDecoration);
        if (this.f7117p.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        h0();
        requestLayout();
    }

    public void removeItemDecorationAt(int i2) {
        int itemDecorationCount = getItemDecorationCount();
        if (i2 >= 0 && i2 < itemDecorationCount) {
            removeItemDecoration(getItemDecorationAt(i2));
            return;
        }
        throw new IndexOutOfBoundsException(i2 + " is an invalid index for size " + itemDecorationCount);
    }

    public void removeOnChildAttachStateChangeListener(@NonNull OnChildAttachStateChangeListener onChildAttachStateChangeListener) {
        List<OnChildAttachStateChangeListener> list = this.D;
        if (list == null) {
            return;
        }
        list.remove(onChildAttachStateChangeListener);
    }

    public void removeOnItemTouchListener(@NonNull OnItemTouchListener onItemTouchListener) {
        this.f7119q.remove(onItemTouchListener);
        if (this.f7121r == onItemTouchListener) {
            this.f7121r = null;
        }
    }

    public void removeOnScrollListener(@NonNull OnScrollListener onScrollListener) {
        List<OnScrollListener> list = this.J0;
        if (list != null) {
            list.remove(onScrollListener);
        }
    }

    public void removeRecyclerListener(@NonNull RecyclerListener recyclerListener) {
        this.f7115o.remove(recyclerListener);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.f7112m.onRequestChildFocus(this, this.H0, view, view2) && view2 != null) {
            C0(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z3) {
        return this.f7112m.requestChildRectangleOnScreen(this, view, rect, z3);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z3) {
        int size = this.f7119q.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f7119q.get(i2).onRequestDisallowInterceptTouchEvent(z3);
        }
        super.requestDisallowInterceptTouchEvent(z3);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f7131w == 0 && !this.f7135y) {
            super.requestLayout();
        } else {
            this.f7133x = true;
        }
    }

    void s(int i2, int i4) {
        setMeasuredDimension(LayoutManager.chooseSize(i2, getPaddingLeft() + getPaddingRight(), ViewCompat.getMinimumWidth(this)), LayoutManager.chooseSize(i4, getPaddingTop() + getPaddingBottom(), ViewCompat.getMinimumHeight(this)));
    }

    @Override // android.view.View
    public void scrollBy(int i2, int i4) {
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager == null || this.f7135y) {
            return;
        }
        boolean canScrollHorizontally = layoutManager.canScrollHorizontally();
        boolean canScrollVertically = this.f7112m.canScrollVertically();
        if (canScrollHorizontally || canScrollVertically) {
            if (!canScrollHorizontally) {
                i2 = 0;
            }
            if (!canScrollVertically) {
                i4 = 0;
            }
            H0(i2, i4, null, 0);
        }
    }

    @Override // android.view.View
    public void scrollTo(int i2, int i4) {
    }

    public void scrollToPosition(int i2) {
        if (this.f7135y) {
            return;
        }
        stopScroll();
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager == null) {
            return;
        }
        layoutManager.scrollToPosition(i2);
        awakenScrollBars();
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (L0(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(@Nullable RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate) {
        this.O0 = recyclerViewAccessibilityDelegate;
        ViewCompat.setAccessibilityDelegate(this, recyclerViewAccessibilityDelegate);
    }

    public void setAdapter(@Nullable Adapter adapter) {
        setLayoutFrozen(false);
        J0(adapter, false, true);
        u0(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(@Nullable ChildDrawingOrderCallback childDrawingOrderCallback) {
        if (childDrawingOrderCallback == this.P0) {
            return;
        }
        this.P0 = childDrawingOrderCallback;
        setChildrenDrawingOrderEnabled(childDrawingOrderCallback != null);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z3) {
        if (z3 != this.f7106g) {
            d0();
        }
        this.f7106g = z3;
        super.setClipToPadding(z3);
        if (this.f7129v) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(@NonNull EdgeEffectFactory edgeEffectFactory) {
        Preconditions.checkNotNull(edgeEffectFactory);
        this.I = edgeEffectFactory;
        d0();
    }

    public void setHasFixedSize(boolean z3) {
        this.f7125t = z3;
    }

    public void setItemAnimator(@Nullable ItemAnimator itemAnimator) {
        ItemAnimator itemAnimator2 = this.f7118p0;
        if (itemAnimator2 != null) {
            itemAnimator2.endAnimations();
            this.f7118p0.b(null);
        }
        this.f7118p0 = itemAnimator;
        if (itemAnimator != null) {
            itemAnimator.b(this.M0);
        }
    }

    public void setItemViewCacheSize(int i2) {
        this.f7101b.setViewCacheSize(i2);
    }

    @Deprecated
    public void setLayoutFrozen(boolean z3) {
        suppressLayout(z3);
    }

    public void setLayoutManager(@Nullable LayoutManager layoutManager) {
        if (layoutManager == this.f7112m) {
            return;
        }
        stopScroll();
        if (this.f7112m != null) {
            ItemAnimator itemAnimator = this.f7118p0;
            if (itemAnimator != null) {
                itemAnimator.endAnimations();
            }
            this.f7112m.removeAndRecycleAllViews(this.f7101b);
            this.f7112m.removeAndRecycleScrapInt(this.f7101b);
            this.f7101b.clear();
            if (this.f7123s) {
                this.f7112m.dispatchDetachedFromWindow(this, this.f7101b);
            }
            this.f7112m.setRecyclerView(null);
            this.f7112m = null;
        } else {
            this.f7101b.clear();
        }
        this.f7104e.o();
        this.f7112m = layoutManager;
        if (layoutManager != null) {
            if (layoutManager.mRecyclerView == null) {
                layoutManager.setRecyclerView(this);
                if (this.f7123s) {
                    this.f7112m.dispatchAttachedToWindow(this);
                }
            } else {
                throw new IllegalArgumentException("LayoutManager " + layoutManager + " is already attached to a RecyclerView:" + layoutManager.mRecyclerView.J());
            }
        }
        this.f7101b.E();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (Build.VERSION.SDK_INT < 18) {
            if (layoutTransition == null) {
                suppressLayout(false);
                return;
            } else if (layoutTransition.getAnimator(0) == null && layoutTransition.getAnimator(1) == null && layoutTransition.getAnimator(2) == null && layoutTransition.getAnimator(3) == null && layoutTransition.getAnimator(4) == null) {
                suppressLayout(true);
                return;
            }
        }
        if (layoutTransition == null) {
            super.setLayoutTransition(null);
            return;
        }
        throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean z3) {
        getScrollingChildHelper().setNestedScrollingEnabled(z3);
    }

    public void setOnFlingListener(@Nullable OnFlingListener onFlingListener) {
        this.f7136y0 = onFlingListener;
    }

    @Deprecated
    public void setOnScrollListener(@Nullable OnScrollListener onScrollListener) {
        this.I0 = onScrollListener;
    }

    public void setPreserveFocusAfterLayout(boolean z3) {
        this.D0 = z3;
    }

    public void setRecycledViewPool(@Nullable RecycledViewPool recycledViewPool) {
        this.f7101b.z(recycledViewPool);
    }

    @Deprecated
    public void setRecyclerListener(@Nullable RecyclerListener recyclerListener) {
        this.f7113n = recyclerListener;
    }

    void setScrollState(int i2) {
        if (i2 == this.f7120q0) {
            return;
        }
        this.f7120q0 = i2;
        if (i2 != 2) {
            P0();
        }
        B(i2);
    }

    public void setScrollingTouchSlop(int i2) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i2 != 0) {
            if (i2 != 1) {
                StringBuilder sb = new StringBuilder();
                sb.append("setScrollingTouchSlop(): bad argument constant ");
                sb.append(i2);
                sb.append("; using default value");
            } else {
                this.f7134x0 = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
        }
        this.f7134x0 = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(@Nullable ViewCacheExtension viewCacheExtension) {
        this.f7101b.A(viewCacheExtension);
    }

    public void smoothScrollBy(@Px int i2, @Px int i4) {
        smoothScrollBy(i2, i4, null);
    }

    public void smoothScrollToPosition(int i2) {
        LayoutManager layoutManager;
        if (this.f7135y || (layoutManager = this.f7112m) == null) {
            return;
        }
        layoutManager.smoothScrollToPosition(this, this.H0, i2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean startNestedScroll(int i2) {
        return getScrollingChildHelper().startNestedScroll(i2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        getScrollingChildHelper().stopNestedScroll();
    }

    public void stopScroll() {
        setScrollState(0);
        P0();
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z3) {
        if (z3 != this.f7135y) {
            k("Do not suppressLayout in layout or scroll");
            if (!z3) {
                this.f7135y = false;
                if (this.f7133x && this.f7112m != null && this.f7111l != null) {
                    requestLayout();
                }
                this.f7133x = false;
                return;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
            this.f7135y = true;
            this.f7137z = true;
            stopScroll();
        }
    }

    public void swapAdapter(@Nullable Adapter adapter, boolean z3) {
        setLayoutFrozen(false);
        J0(adapter, true, z3);
        u0(true);
        requestLayout();
    }

    void u(View view) {
        ViewHolder S = S(view);
        onChildAttachedToWindow(view);
        Adapter adapter = this.f7111l;
        if (adapter != null && S != null) {
            adapter.onViewAttachedToWindow(S);
        }
        List<OnChildAttachStateChangeListener> list = this.D;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.D.get(size).onChildViewAttachedToWindow(view);
            }
        }
    }

    void u0(boolean z3) {
        this.F = z3 | this.F;
        this.E = true;
        i0();
    }

    void v(View view) {
        ViewHolder S = S(view);
        onChildDetachedFromWindow(view);
        Adapter adapter = this.f7111l;
        if (adapter != null && S != null) {
            adapter.onViewDetachedFromWindow(S);
        }
        List<OnChildAttachStateChangeListener> list = this.D;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.D.get(size).onChildViewDetachedFromWindow(view);
            }
        }
    }

    void w0(ViewHolder viewHolder, ItemAnimator.ItemHolderInfo itemHolderInfo) {
        viewHolder.setFlags(0, 8192);
        if (this.H0.f7195i && viewHolder.isUpdated() && !viewHolder.isRemoved() && !viewHolder.shouldIgnore()) {
            this.f7105f.c(R(viewHolder), viewHolder);
        }
        this.f7105f.e(viewHolder, itemHolderInfo);
    }

    void x() {
        if (this.f7111l == null || this.f7112m == null) {
            return;
        }
        this.H0.f7196j = false;
        boolean z3 = this.X0 && !(this.Y0 == getWidth() && this.Z0 == getHeight());
        this.Y0 = 0;
        this.Z0 = 0;
        this.X0 = false;
        if (this.H0.f7191e == 1) {
            y();
            this.f7112m.setExactMeasureSpecsFrom(this);
            z();
        } else if (!this.f7103d.o() && !z3 && this.f7112m.getWidth() == getWidth() && this.f7112m.getHeight() == getHeight()) {
            this.f7112m.setExactMeasureSpecsFrom(this);
        } else {
            this.f7112m.setExactMeasureSpecsFrom(this);
            z();
        }
        A();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void z0() {
        ItemAnimator itemAnimator = this.f7118p0;
        if (itemAnimator != null) {
            itemAnimator.endAnimations();
        }
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager != null) {
            layoutManager.removeAndRecycleAllViews(this.f7101b);
            this.f7112m.removeAndRecycleScrapInt(this.f7101b);
        }
        this.f7101b.clear();
    }

    public RecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.recyclerViewStyle);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean dispatchNestedPreScroll(int i2, int i4, int[] iArr, int[] iArr2, int i5) {
        return getScrollingChildHelper().dispatchNestedPreScroll(i2, i4, iArr, iArr2, i5);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean dispatchNestedScroll(int i2, int i4, int i5, int i6, int[] iArr, int i7) {
        return getScrollingChildHelper().dispatchNestedScroll(i2, i4, i5, i6, iArr, i7);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean hasNestedScrollingParent(int i2) {
        return getScrollingChildHelper().hasNestedScrollingParent(i2);
    }

    public void smoothScrollBy(@Px int i2, @Px int i4, @Nullable Interpolator interpolator) {
        smoothScrollBy(i2, i4, interpolator, Integer.MIN_VALUE);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public boolean startNestedScroll(int i2, int i4) {
        return getScrollingChildHelper().startNestedScroll(i2, i4);
    }

    @Override // androidx.core.view.NestedScrollingChild2
    public void stopNestedScroll(int i2) {
        getScrollingChildHelper().stopNestedScroll(i2);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes2.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.recyclerview.widget.RecyclerView.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        };

        /* renamed from: a  reason: collision with root package name */
        Parcelable f7176a;

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f7176a = parcel.readParcelable(classLoader == null ? LayoutManager.class.getClassLoader() : classLoader);
        }

        void a(SavedState savedState) {
            this.f7176a = savedState.f7176a;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeParcelable(this.f7176a, 0);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public RecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f7099a = new RecyclerViewDataObserver();
        this.f7101b = new Recycler();
        this.f7105f = new ViewInfoStore();
        this.f7107h = new Runnable() { // from class: androidx.recyclerview.widget.RecyclerView.1
            @Override // java.lang.Runnable
            public void run() {
                RecyclerView recyclerView = RecyclerView.this;
                if (!recyclerView.f7129v || recyclerView.isLayoutRequested()) {
                    return;
                }
                RecyclerView recyclerView2 = RecyclerView.this;
                if (!recyclerView2.f7123s) {
                    recyclerView2.requestLayout();
                } else if (recyclerView2.f7135y) {
                    recyclerView2.f7133x = true;
                } else {
                    recyclerView2.q();
                }
            }
        };
        this.f7108i = new Rect();
        this.f7109j = new Rect();
        this.f7110k = new RectF();
        this.f7115o = new ArrayList();
        this.f7117p = new ArrayList<>();
        this.f7119q = new ArrayList<>();
        this.f7131w = 0;
        this.E = false;
        this.F = false;
        this.G = 0;
        this.H = 0;
        this.I = new EdgeEffectFactory();
        this.f7118p0 = new DefaultItemAnimator();
        this.f7120q0 = 0;
        this.f7122r0 = -1;
        this.B0 = Float.MIN_VALUE;
        this.C0 = Float.MIN_VALUE;
        boolean z3 = true;
        this.D0 = true;
        this.E0 = new ViewFlinger();
        this.G0 = f7081i1 ? new GapWorker.LayoutPrefetchRegistryImpl() : null;
        this.H0 = new State();
        this.K0 = false;
        this.L0 = false;
        this.M0 = new ItemAnimatorRestoreListener();
        this.N0 = false;
        this.Q0 = new int[2];
        this.S0 = new int[2];
        this.T0 = new int[2];
        this.U0 = new int[2];
        this.V0 = new ArrayList();
        this.W0 = new Runnable() { // from class: androidx.recyclerview.widget.RecyclerView.2
            @Override // java.lang.Runnable
            public void run() {
                ItemAnimator itemAnimator = RecyclerView.this.f7118p0;
                if (itemAnimator != null) {
                    itemAnimator.runPendingAnimations();
                }
                RecyclerView.this.N0 = false;
            }
        };
        this.Y0 = 0;
        this.Z0 = 0;
        this.f7100a1 = new ViewInfoStore.ProcessCallback() { // from class: androidx.recyclerview.widget.RecyclerView.4
            @Override // androidx.recyclerview.widget.ViewInfoStore.ProcessCallback
            public void processAppeared(ViewHolder viewHolder, ItemAnimator.ItemHolderInfo itemHolderInfo, ItemAnimator.ItemHolderInfo itemHolderInfo2) {
                RecyclerView.this.g(viewHolder, itemHolderInfo, itemHolderInfo2);
            }

            @Override // androidx.recyclerview.widget.ViewInfoStore.ProcessCallback
            public void processDisappeared(ViewHolder viewHolder, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo, @Nullable ItemAnimator.ItemHolderInfo itemHolderInfo2) {
                RecyclerView.this.f7101b.D(viewHolder);
                RecyclerView.this.i(viewHolder, itemHolderInfo, itemHolderInfo2);
            }

            @Override // androidx.recyclerview.widget.ViewInfoStore.ProcessCallback
            public void processPersistent(ViewHolder viewHolder, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo, @NonNull ItemAnimator.ItemHolderInfo itemHolderInfo2) {
                viewHolder.setIsRecyclable(false);
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.E) {
                    if (recyclerView.f7118p0.animateChange(viewHolder, viewHolder, itemHolderInfo, itemHolderInfo2)) {
                        RecyclerView.this.r0();
                    }
                } else if (recyclerView.f7118p0.animatePersistence(viewHolder, itemHolderInfo, itemHolderInfo2)) {
                    RecyclerView.this.r0();
                }
            }

            @Override // androidx.recyclerview.widget.ViewInfoStore.ProcessCallback
            public void unused(ViewHolder viewHolder) {
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.f7112m.removeAndRecycleView(viewHolder.itemView, recyclerView.f7101b);
            }
        };
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f7134x0 = viewConfiguration.getScaledTouchSlop();
        this.B0 = ViewConfigurationCompat.getScaledHorizontalScrollFactor(viewConfiguration, context);
        this.C0 = ViewConfigurationCompat.getScaledVerticalScrollFactor(viewConfiguration, context);
        this.f7138z0 = viewConfiguration.getScaledMinimumFlingVelocity();
        this.A0 = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.f7118p0.b(this.M0);
        Z();
        b0();
        a0();
        if (ViewCompat.getImportantForAccessibility(this) == 0) {
            ViewCompat.setImportantForAccessibility(this, 1);
        }
        this.C = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new RecyclerViewAccessibilityDelegate(this));
        int[] iArr = R.styleable.RecyclerView;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i2, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, obtainStyledAttributes, i2, 0);
        String string = obtainStyledAttributes.getString(R.styleable.RecyclerView_layoutManager);
        if (obtainStyledAttributes.getInt(R.styleable.RecyclerView_android_descendantFocusability, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.f7106g = obtainStyledAttributes.getBoolean(R.styleable.RecyclerView_android_clipToPadding, true);
        boolean z4 = obtainStyledAttributes.getBoolean(R.styleable.RecyclerView_fastScrollEnabled, false);
        this.f7127u = z4;
        if (z4) {
            c0((StateListDrawable) obtainStyledAttributes.getDrawable(R.styleable.RecyclerView_fastScrollVerticalThumbDrawable), obtainStyledAttributes.getDrawable(R.styleable.RecyclerView_fastScrollVerticalTrackDrawable), (StateListDrawable) obtainStyledAttributes.getDrawable(R.styleable.RecyclerView_fastScrollHorizontalThumbDrawable), obtainStyledAttributes.getDrawable(R.styleable.RecyclerView_fastScrollHorizontalTrackDrawable));
        }
        obtainStyledAttributes.recycle();
        r(context, string, attributeSet, i2, 0);
        if (Build.VERSION.SDK_INT >= 21) {
            int[] iArr2 = f7077e1;
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i2, 0);
            ViewCompat.saveAttributeDataForStyleable(this, context, iArr2, attributeSet, obtainStyledAttributes2, i2, 0);
            z3 = obtainStyledAttributes2.getBoolean(0, true);
            obtainStyledAttributes2.recycle();
        }
        setNestedScrollingEnabled(z3);
    }

    @Override // androidx.core.view.NestedScrollingChild3
    public final void dispatchNestedScroll(int i2, int i4, int i5, int i6, int[] iArr, int i7, @NonNull int[] iArr2) {
        getScrollingChildHelper().dispatchNestedScroll(i2, i4, i5, i6, iArr, i7, iArr2);
    }

    public void smoothScrollBy(@Px int i2, @Px int i4, @Nullable Interpolator interpolator, int i5) {
        M0(i2, i4, interpolator, i5, false);
    }

    /* loaded from: classes2.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a  reason: collision with root package name */
        ViewHolder f7154a;

        /* renamed from: b  reason: collision with root package name */
        final Rect f7155b;

        /* renamed from: c  reason: collision with root package name */
        boolean f7156c;

        /* renamed from: d  reason: collision with root package name */
        boolean f7157d;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f7155b = new Rect();
            this.f7156c = true;
            this.f7157d = false;
        }

        public int getAbsoluteAdapterPosition() {
            return this.f7154a.getAbsoluteAdapterPosition();
        }

        public int getBindingAdapterPosition() {
            return this.f7154a.getBindingAdapterPosition();
        }

        @Deprecated
        public int getViewAdapterPosition() {
            return this.f7154a.getBindingAdapterPosition();
        }

        public int getViewLayoutPosition() {
            return this.f7154a.getLayoutPosition();
        }

        @Deprecated
        public int getViewPosition() {
            return this.f7154a.getPosition();
        }

        public boolean isItemChanged() {
            return this.f7154a.isUpdated();
        }

        public boolean isItemRemoved() {
            return this.f7154a.isRemoved();
        }

        public boolean isViewInvalid() {
            return this.f7154a.isInvalid();
        }

        public boolean viewNeedsUpdate() {
            return this.f7154a.needsUpdate();
        }

        public LayoutParams(int i2, int i4) {
            super(i2, i4);
            this.f7155b = new Rect();
            this.f7156c = true;
            this.f7157d = false;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f7155b = new Rect();
            this.f7156c = true;
            this.f7157d = false;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f7155b = new Rect();
            this.f7156c = true;
            this.f7157d = false;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.LayoutParams) layoutParams);
            this.f7155b = new Rect();
            this.f7156c = true;
            this.f7157d = false;
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        LayoutManager layoutManager = this.f7112m;
        if (layoutManager != null) {
            return layoutManager.generateLayoutParams(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + J());
    }

    public void addItemDecoration(@NonNull ItemDecoration itemDecoration) {
        addItemDecoration(itemDecoration, -1);
    }
}
