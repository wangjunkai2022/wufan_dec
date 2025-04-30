package androidx.viewpager2.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.R;
import androidx.viewpager2.adapter.StatefulAdapter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes2.dex */
public final class ViewPager2 extends ViewGroup {
    public static final int OFFSCREEN_PAGE_LIMIT_DEFAULT = -1;
    public static final int ORIENTATION_HORIZONTAL = 0;
    public static final int ORIENTATION_VERTICAL = 1;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;

    /* renamed from: u  reason: collision with root package name */
    static boolean f8151u = true;

    /* renamed from: a  reason: collision with root package name */
    private final Rect f8152a;

    /* renamed from: b  reason: collision with root package name */
    private final Rect f8153b;

    /* renamed from: c  reason: collision with root package name */
    private CompositeOnPageChangeCallback f8154c;

    /* renamed from: d  reason: collision with root package name */
    int f8155d;

    /* renamed from: e  reason: collision with root package name */
    boolean f8156e;

    /* renamed from: f  reason: collision with root package name */
    private RecyclerView.AdapterDataObserver f8157f;

    /* renamed from: g  reason: collision with root package name */
    private LinearLayoutManager f8158g;

    /* renamed from: h  reason: collision with root package name */
    private int f8159h;

    /* renamed from: i  reason: collision with root package name */
    private Parcelable f8160i;

    /* renamed from: j  reason: collision with root package name */
    RecyclerView f8161j;

    /* renamed from: k  reason: collision with root package name */
    private PagerSnapHelper f8162k;

    /* renamed from: l  reason: collision with root package name */
    ScrollEventAdapter f8163l;

    /* renamed from: m  reason: collision with root package name */
    private CompositeOnPageChangeCallback f8164m;

    /* renamed from: n  reason: collision with root package name */
    private FakeDrag f8165n;

    /* renamed from: o  reason: collision with root package name */
    private PageTransformerAdapter f8166o;

    /* renamed from: p  reason: collision with root package name */
    private RecyclerView.ItemAnimator f8167p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f8168q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f8169r;

    /* renamed from: s  reason: collision with root package name */
    private int f8170s;

    /* renamed from: t  reason: collision with root package name */
    AccessibilityProvider f8171t;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public abstract class AccessibilityProvider {
        private AccessibilityProvider() {
        }

        boolean handlesGetAccessibilityClassName() {
            return false;
        }

        boolean handlesLmPerformAccessibilityAction(int i2) {
            return false;
        }

        boolean handlesPerformAccessibilityAction(int i2, Bundle bundle) {
            return false;
        }

        boolean handlesRvGetAccessibilityClassName() {
            return false;
        }

        void onAttachAdapter(@Nullable RecyclerView.Adapter<?> adapter) {
        }

        void onDetachAdapter(@Nullable RecyclerView.Adapter<?> adapter) {
        }

        String onGetAccessibilityClassName() {
            throw new IllegalStateException("Not implemented.");
        }

        void onInitialize(@NonNull CompositeOnPageChangeCallback compositeOnPageChangeCallback, @NonNull RecyclerView recyclerView) {
        }

        void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        }

        void onLmInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        }

        boolean onLmPerformAccessibilityAction(int i2) {
            throw new IllegalStateException("Not implemented.");
        }

        boolean onPerformAccessibilityAction(int i2, Bundle bundle) {
            throw new IllegalStateException("Not implemented.");
        }

        void onRestorePendingState() {
        }

        CharSequence onRvGetAccessibilityClassName() {
            throw new IllegalStateException("Not implemented.");
        }

        void onRvInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        }

        void onSetLayoutDirection() {
        }

        void onSetNewCurrentItem() {
        }

        void onSetOrientation() {
        }

        void onSetUserInputEnabled() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class BasicAccessibilityProvider extends AccessibilityProvider {
        BasicAccessibilityProvider() {
            super();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public boolean handlesLmPerformAccessibilityAction(int i2) {
            return (i2 == 8192 || i2 == 4096) && !ViewPager2.this.isUserInputEnabled();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public boolean handlesRvGetAccessibilityClassName() {
            return true;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public void onLmInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (ViewPager2.this.isUserInputEnabled()) {
                return;
            }
            accessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
            accessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfoCompat.setScrollable(false);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public boolean onLmPerformAccessibilityAction(int i2) {
            if (handlesLmPerformAccessibilityAction(i2)) {
                return false;
            }
            throw new IllegalStateException();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public CharSequence onRvGetAccessibilityClassName() {
            if (handlesRvGetAccessibilityClassName()) {
                return "androidx.viewpager.widget.ViewPager";
            }
            throw new IllegalStateException();
        }
    }

    /* loaded from: classes2.dex */
    private static abstract class DataSetChangeObserver extends RecyclerView.AdapterDataObserver {
        private DataSetChangeObserver() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public abstract void onChanged();

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i2, int i4) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeInserted(int i2, int i4) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeMoved(int i2, int i4, int i5) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeRemoved(int i2, int i4) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i2, int i4, @Nullable Object obj) {
            onChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class LinearLayoutManagerImpl extends LinearLayoutManager {
        LinearLayoutManagerImpl(Context context) {
            super(context);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.recyclerview.widget.LinearLayoutManager
        public void calculateExtraLayoutSpace(@NonNull RecyclerView.State state, @NonNull int[] iArr) {
            int offscreenPageLimit = ViewPager2.this.getOffscreenPageLimit();
            if (offscreenPageLimit == -1) {
                super.calculateExtraLayoutSpace(state, iArr);
                return;
            }
            int pageSize = ViewPager2.this.getPageSize() * offscreenPageLimit;
            iArr[0] = pageSize;
            iArr[1] = pageSize;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public void onInitializeAccessibilityNodeInfo(@NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(recycler, state, accessibilityNodeInfoCompat);
            ViewPager2.this.f8171t.onLmInitializeAccessibilityNodeInfo(accessibilityNodeInfoCompat);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public boolean performAccessibilityAction(@NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state, int i2, @Nullable Bundle bundle) {
            if (ViewPager2.this.f8171t.handlesLmPerformAccessibilityAction(i2)) {
                return ViewPager2.this.f8171t.onLmPerformAccessibilityAction(i2);
            }
            return super.performAccessibilityAction(recycler, state, i2, bundle);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public boolean requestChildRectangleOnScreen(@NonNull RecyclerView recyclerView, @NonNull View view, @NonNull Rect rect, boolean z3, boolean z4) {
            return false;
        }
    }

    @IntRange(from = 1)
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface OffscreenPageLimit {
    }

    /* loaded from: classes2.dex */
    public static abstract class OnPageChangeCallback {
        public void onPageScrollStateChanged(int i2) {
        }

        public void onPageScrolled(int i2, float f4, @Px int i4) {
        }

        public void onPageSelected(int i2) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface Orientation {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class PageAwareAccessibilityProvider extends AccessibilityProvider {

        /* renamed from: b  reason: collision with root package name */
        private final AccessibilityViewCommand f8179b;

        /* renamed from: c  reason: collision with root package name */
        private final AccessibilityViewCommand f8180c;

        /* renamed from: d  reason: collision with root package name */
        private RecyclerView.AdapterDataObserver f8181d;

        PageAwareAccessibilityProvider() {
            super();
            this.f8179b = new AccessibilityViewCommand() { // from class: androidx.viewpager2.widget.ViewPager2.PageAwareAccessibilityProvider.1
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
                    PageAwareAccessibilityProvider.this.c(((ViewPager2) view).getCurrentItem() + 1);
                    return true;
                }
            };
            this.f8180c = new AccessibilityViewCommand() { // from class: androidx.viewpager2.widget.ViewPager2.PageAwareAccessibilityProvider.2
                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
                    PageAwareAccessibilityProvider.this.c(((ViewPager2) view).getCurrentItem() - 1);
                    return true;
                }
            };
        }

        private void a(AccessibilityNodeInfo accessibilityNodeInfo) {
            int i2;
            int i4;
            if (ViewPager2.this.getAdapter() == null) {
                i2 = 0;
            } else if (ViewPager2.this.getOrientation() == 1) {
                i2 = ViewPager2.this.getAdapter().getItemCount();
            } else {
                i4 = ViewPager2.this.getAdapter().getItemCount();
                i2 = 0;
                AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(i2, i4, false, 0));
            }
            i4 = 0;
            AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(i2, i4, false, 0));
        }

        private void b(AccessibilityNodeInfo accessibilityNodeInfo) {
            int itemCount;
            RecyclerView.Adapter adapter = ViewPager2.this.getAdapter();
            if (adapter == null || (itemCount = adapter.getItemCount()) == 0 || !ViewPager2.this.isUserInputEnabled()) {
                return;
            }
            if (ViewPager2.this.f8155d > 0) {
                accessibilityNodeInfo.addAction(8192);
            }
            if (ViewPager2.this.f8155d < itemCount - 1) {
                accessibilityNodeInfo.addAction(4096);
            }
            accessibilityNodeInfo.setScrollable(true);
        }

        void c(int i2) {
            if (ViewPager2.this.isUserInputEnabled()) {
                ViewPager2.this.f(i2, true);
            }
        }

        void d() {
            int itemCount;
            ViewPager2 viewPager2 = ViewPager2.this;
            ViewCompat.removeAccessibilityAction(viewPager2, 16908360);
            ViewCompat.removeAccessibilityAction(viewPager2, 16908361);
            ViewCompat.removeAccessibilityAction(viewPager2, 16908358);
            ViewCompat.removeAccessibilityAction(viewPager2, 16908359);
            if (ViewPager2.this.getAdapter() == null || (itemCount = ViewPager2.this.getAdapter().getItemCount()) == 0 || !ViewPager2.this.isUserInputEnabled()) {
                return;
            }
            if (ViewPager2.this.getOrientation() == 0) {
                boolean c4 = ViewPager2.this.c();
                int i2 = c4 ? 16908360 : 16908361;
                int i4 = c4 ? 16908361 : 16908360;
                if (ViewPager2.this.f8155d < itemCount - 1) {
                    ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(i2, null), null, this.f8179b);
                }
                if (ViewPager2.this.f8155d > 0) {
                    ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(i4, null), null, this.f8180c);
                    return;
                }
                return;
            }
            if (ViewPager2.this.f8155d < itemCount - 1) {
                ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16908359, null), null, this.f8179b);
            }
            if (ViewPager2.this.f8155d > 0) {
                ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16908358, null), null, this.f8180c);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public boolean handlesGetAccessibilityClassName() {
            return true;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public boolean handlesPerformAccessibilityAction(int i2, Bundle bundle) {
            return i2 == 8192 || i2 == 4096;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public void onAttachAdapter(@Nullable RecyclerView.Adapter<?> adapter) {
            d();
            if (adapter != null) {
                adapter.registerAdapterDataObserver(this.f8181d);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public void onDetachAdapter(@Nullable RecyclerView.Adapter<?> adapter) {
            if (adapter != null) {
                adapter.unregisterAdapterDataObserver(this.f8181d);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public String onGetAccessibilityClassName() {
            if (handlesGetAccessibilityClassName()) {
                return "androidx.viewpager.widget.ViewPager";
            }
            throw new IllegalStateException();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public void onInitialize(@NonNull CompositeOnPageChangeCallback compositeOnPageChangeCallback, @NonNull RecyclerView recyclerView) {
            ViewCompat.setImportantForAccessibility(recyclerView, 2);
            this.f8181d = new DataSetChangeObserver() { // from class: androidx.viewpager2.widget.ViewPager2.PageAwareAccessibilityProvider.3
                @Override // androidx.viewpager2.widget.ViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                public void onChanged() {
                    PageAwareAccessibilityProvider.this.d();
                }
            };
            if (ViewCompat.getImportantForAccessibility(ViewPager2.this) == 0) {
                ViewCompat.setImportantForAccessibility(ViewPager2.this, 1);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            a(accessibilityNodeInfo);
            if (Build.VERSION.SDK_INT >= 16) {
                b(accessibilityNodeInfo);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public boolean onPerformAccessibilityAction(int i2, Bundle bundle) {
            int currentItem;
            if (handlesPerformAccessibilityAction(i2, bundle)) {
                if (i2 == 8192) {
                    currentItem = ViewPager2.this.getCurrentItem() - 1;
                } else {
                    currentItem = ViewPager2.this.getCurrentItem() + 1;
                }
                c(currentItem);
                return true;
            }
            throw new IllegalStateException();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public void onRestorePendingState() {
            d();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public void onRvInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
            accessibilityEvent.setSource(ViewPager2.this);
            accessibilityEvent.setClassName(onGetAccessibilityClassName());
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public void onSetLayoutDirection() {
            d();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public void onSetNewCurrentItem() {
            d();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public void onSetOrientation() {
            d();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public void onSetUserInputEnabled() {
            d();
            if (Build.VERSION.SDK_INT < 21) {
                ViewPager2.this.sendAccessibilityEvent(2048);
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface PageTransformer {
        void transformPage(@NonNull View view, float f4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class PagerSnapHelperImpl extends PagerSnapHelper {
        PagerSnapHelperImpl() {
        }

        @Override // androidx.recyclerview.widget.PagerSnapHelper, androidx.recyclerview.widget.SnapHelper
        @Nullable
        public View findSnapView(RecyclerView.LayoutManager layoutManager) {
            if (ViewPager2.this.isFakeDragging()) {
                return null;
            }
            return super.findSnapView(layoutManager);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class RecyclerViewImpl extends RecyclerView {
        RecyclerViewImpl(@NonNull Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        @RequiresApi(23)
        public CharSequence getAccessibilityClassName() {
            if (ViewPager2.this.f8171t.handlesRvGetAccessibilityClassName()) {
                return ViewPager2.this.f8171t.onRvGetAccessibilityClassName();
            }
            return super.getAccessibilityClassName();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setFromIndex(ViewPager2.this.f8155d);
            accessibilityEvent.setToIndex(ViewPager2.this.f8155d);
            ViewPager2.this.f8171t.onRvInitializeAccessibilityEvent(accessibilityEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.isUserInputEnabled() && super.onInterceptTouchEvent(motionEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.isUserInputEnabled() && super.onTouchEvent(motionEvent);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface ScrollState {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class SmoothScrollToPosition implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final int f8190a;

        /* renamed from: b  reason: collision with root package name */
        private final RecyclerView f8191b;

        SmoothScrollToPosition(int i2, RecyclerView recyclerView) {
            this.f8190a = i2;
            this.f8191b = recyclerView;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f8191b.smoothScrollToPosition(this.f8190a);
        }
    }

    public ViewPager2(@NonNull Context context) {
        super(context);
        this.f8152a = new Rect();
        this.f8153b = new Rect();
        this.f8154c = new CompositeOnPageChangeCallback(3);
        this.f8156e = false;
        this.f8157f = new DataSetChangeObserver() { // from class: androidx.viewpager2.widget.ViewPager2.1
            @Override // androidx.viewpager2.widget.ViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                ViewPager2 viewPager2 = ViewPager2.this;
                viewPager2.f8156e = true;
                viewPager2.f8163l.m();
            }
        };
        this.f8159h = -1;
        this.f8167p = null;
        this.f8168q = false;
        this.f8169r = true;
        this.f8170s = -1;
        b(context, null);
    }

    private RecyclerView.OnChildAttachStateChangeListener a() {
        return new RecyclerView.OnChildAttachStateChangeListener() { // from class: androidx.viewpager2.widget.ViewPager2.4
            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewAttachedToWindow(@NonNull View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                if (((ViewGroup.MarginLayoutParams) layoutParams).width != -1 || ((ViewGroup.MarginLayoutParams) layoutParams).height != -1) {
                    throw new IllegalStateException("Pages must fill the whole ViewPager2 (use match_parent)");
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewDetachedFromWindow(@NonNull View view) {
            }
        };
    }

    private void b(Context context, AttributeSet attributeSet) {
        this.f8171t = f8151u ? new PageAwareAccessibilityProvider() : new BasicAccessibilityProvider();
        RecyclerViewImpl recyclerViewImpl = new RecyclerViewImpl(context);
        this.f8161j = recyclerViewImpl;
        recyclerViewImpl.setId(ViewCompat.generateViewId());
        this.f8161j.setDescendantFocusability(131072);
        LinearLayoutManagerImpl linearLayoutManagerImpl = new LinearLayoutManagerImpl(context);
        this.f8158g = linearLayoutManagerImpl;
        this.f8161j.setLayoutManager(linearLayoutManagerImpl);
        this.f8161j.setScrollingTouchSlop(1);
        g(context, attributeSet);
        this.f8161j.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.f8161j.addOnChildAttachStateChangeListener(a());
        ScrollEventAdapter scrollEventAdapter = new ScrollEventAdapter(this);
        this.f8163l = scrollEventAdapter;
        this.f8165n = new FakeDrag(this, scrollEventAdapter, this.f8161j);
        PagerSnapHelperImpl pagerSnapHelperImpl = new PagerSnapHelperImpl();
        this.f8162k = pagerSnapHelperImpl;
        pagerSnapHelperImpl.attachToRecyclerView(this.f8161j);
        this.f8161j.addOnScrollListener(this.f8163l);
        CompositeOnPageChangeCallback compositeOnPageChangeCallback = new CompositeOnPageChangeCallback(3);
        this.f8164m = compositeOnPageChangeCallback;
        this.f8163l.q(compositeOnPageChangeCallback);
        OnPageChangeCallback onPageChangeCallback = new OnPageChangeCallback() { // from class: androidx.viewpager2.widget.ViewPager2.2
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageScrollStateChanged(int i2) {
                if (i2 == 0) {
                    ViewPager2.this.j();
                }
            }

            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i2) {
                ViewPager2 viewPager2 = ViewPager2.this;
                if (viewPager2.f8155d != i2) {
                    viewPager2.f8155d = i2;
                    viewPager2.f8171t.onSetNewCurrentItem();
                }
            }
        };
        OnPageChangeCallback onPageChangeCallback2 = new OnPageChangeCallback() { // from class: androidx.viewpager2.widget.ViewPager2.3
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i2) {
                ViewPager2.this.clearFocus();
                if (ViewPager2.this.hasFocus()) {
                    ViewPager2.this.f8161j.requestFocus(2);
                }
            }
        };
        this.f8164m.a(onPageChangeCallback);
        this.f8164m.a(onPageChangeCallback2);
        this.f8171t.onInitialize(this.f8164m, this.f8161j);
        this.f8164m.a(this.f8154c);
        PageTransformerAdapter pageTransformerAdapter = new PageTransformerAdapter(this.f8158g);
        this.f8166o = pageTransformerAdapter;
        this.f8164m.a(pageTransformerAdapter);
        RecyclerView recyclerView = this.f8161j;
        attachViewToParent(recyclerView, 0, recyclerView.getLayoutParams());
    }

    private void d(@Nullable RecyclerView.Adapter<?> adapter) {
        if (adapter != null) {
            adapter.registerAdapterDataObserver(this.f8157f);
        }
    }

    private void e() {
        RecyclerView.Adapter adapter;
        if (this.f8159h == -1 || (adapter = getAdapter()) == null) {
            return;
        }
        Parcelable parcelable = this.f8160i;
        if (parcelable != null) {
            if (adapter instanceof StatefulAdapter) {
                ((StatefulAdapter) adapter).restoreState(parcelable);
            }
            this.f8160i = null;
        }
        int max = Math.max(0, Math.min(this.f8159h, adapter.getItemCount() - 1));
        this.f8155d = max;
        this.f8159h = -1;
        this.f8161j.scrollToPosition(max);
        this.f8171t.onRestorePendingState();
    }

    private void g(Context context, AttributeSet attributeSet) {
        int[] iArr = R.styleable.ViewPager2;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, iArr, attributeSet, obtainStyledAttributes, 0, 0);
        }
        try {
            setOrientation(obtainStyledAttributes.getInt(R.styleable.ViewPager2_android_orientation, 0));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    private void i(@Nullable RecyclerView.Adapter<?> adapter) {
        if (adapter != null) {
            adapter.unregisterAdapterDataObserver(this.f8157f);
        }
    }

    public void addItemDecoration(@NonNull RecyclerView.ItemDecoration itemDecoration) {
        this.f8161j.addItemDecoration(itemDecoration);
    }

    public boolean beginFakeDrag() {
        return this.f8165n.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        return this.f8158g.getLayoutDirection() == 1;
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i2) {
        return this.f8161j.canScrollHorizontally(i2);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i2) {
        return this.f8161j.canScrollVertically(i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        Parcelable parcelable = sparseArray.get(getId());
        if (parcelable instanceof SavedState) {
            int i2 = ((SavedState) parcelable).f8187a;
            sparseArray.put(this.f8161j.getId(), sparseArray.get(i2));
            sparseArray.remove(i2);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        e();
    }

    public boolean endFakeDrag() {
        return this.f8165n.d();
    }

    void f(int i2, boolean z3) {
        RecyclerView.Adapter adapter = getAdapter();
        if (adapter == null) {
            if (this.f8159h != -1) {
                this.f8159h = Math.max(i2, 0);
            }
        } else if (adapter.getItemCount() <= 0) {
        } else {
            int min = Math.min(Math.max(i2, 0), adapter.getItemCount() - 1);
            if (min == this.f8155d && this.f8163l.j()) {
                return;
            }
            int i4 = this.f8155d;
            if (min == i4 && z3) {
                return;
            }
            double d4 = i4;
            this.f8155d = min;
            this.f8171t.onSetNewCurrentItem();
            if (!this.f8163l.j()) {
                d4 = this.f8163l.f();
            }
            this.f8163l.o(min, z3);
            if (!z3) {
                this.f8161j.scrollToPosition(min);
                return;
            }
            double d5 = min;
            Double.isNaN(d5);
            if (Math.abs(d5 - d4) > 3.0d) {
                this.f8161j.scrollToPosition(d5 > d4 ? min - 3 : min + 3);
                RecyclerView recyclerView = this.f8161j;
                recyclerView.post(new SmoothScrollToPosition(min, recyclerView));
                return;
            }
            this.f8161j.smoothScrollToPosition(min);
        }
    }

    public boolean fakeDragBy(@Px @SuppressLint({"SupportAnnotationUsage"}) float f4) {
        return this.f8165n.e(f4);
    }

    @Override // android.view.ViewGroup, android.view.View
    @RequiresApi(23)
    public CharSequence getAccessibilityClassName() {
        if (this.f8171t.handlesGetAccessibilityClassName()) {
            return this.f8171t.onGetAccessibilityClassName();
        }
        return super.getAccessibilityClassName();
    }

    @Nullable
    public RecyclerView.Adapter getAdapter() {
        return this.f8161j.getAdapter();
    }

    public int getCurrentItem() {
        return this.f8155d;
    }

    @NonNull
    public RecyclerView.ItemDecoration getItemDecorationAt(int i2) {
        return this.f8161j.getItemDecorationAt(i2);
    }

    public int getItemDecorationCount() {
        return this.f8161j.getItemDecorationCount();
    }

    public int getOffscreenPageLimit() {
        return this.f8170s;
    }

    public int getOrientation() {
        return this.f8158g.getOrientation();
    }

    int getPageSize() {
        int height;
        int paddingBottom;
        RecyclerView recyclerView = this.f8161j;
        if (getOrientation() == 0) {
            height = recyclerView.getWidth() - recyclerView.getPaddingLeft();
            paddingBottom = recyclerView.getPaddingRight();
        } else {
            height = recyclerView.getHeight() - recyclerView.getPaddingTop();
            paddingBottom = recyclerView.getPaddingBottom();
        }
        return height - paddingBottom;
    }

    public int getScrollState() {
        return this.f8163l.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        View findSnapView = this.f8162k.findSnapView(this.f8158g);
        if (findSnapView == null) {
            return;
        }
        int[] calculateDistanceToFinalSnap = this.f8162k.calculateDistanceToFinalSnap(this.f8158g, findSnapView);
        if (calculateDistanceToFinalSnap[0] == 0 && calculateDistanceToFinalSnap[1] == 0) {
            return;
        }
        this.f8161j.smoothScrollBy(calculateDistanceToFinalSnap[0], calculateDistanceToFinalSnap[1]);
    }

    public void invalidateItemDecorations() {
        this.f8161j.invalidateItemDecorations();
    }

    public boolean isFakeDragging() {
        return this.f8165n.f();
    }

    public boolean isUserInputEnabled() {
        return this.f8169r;
    }

    void j() {
        PagerSnapHelper pagerSnapHelper = this.f8162k;
        if (pagerSnapHelper != null) {
            View findSnapView = pagerSnapHelper.findSnapView(this.f8158g);
            if (findSnapView == null) {
                return;
            }
            int position = this.f8158g.getPosition(findSnapView);
            if (position != this.f8155d && getScrollState() == 0) {
                this.f8164m.onPageSelected(position);
            }
            this.f8156e = false;
            return;
        }
        throw new IllegalStateException("Design assumption violated.");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        this.f8171t.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        int measuredWidth = this.f8161j.getMeasuredWidth();
        int measuredHeight = this.f8161j.getMeasuredHeight();
        this.f8152a.left = getPaddingLeft();
        this.f8152a.right = (i5 - i2) - getPaddingRight();
        this.f8152a.top = getPaddingTop();
        this.f8152a.bottom = (i6 - i4) - getPaddingBottom();
        Gravity.apply(8388659, measuredWidth, measuredHeight, this.f8152a, this.f8153b);
        RecyclerView recyclerView = this.f8161j;
        Rect rect = this.f8153b;
        recyclerView.layout(rect.left, rect.top, rect.right, rect.bottom);
        if (this.f8156e) {
            j();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        measureChild(this.f8161j, i2, i4);
        int measuredWidth = this.f8161j.getMeasuredWidth();
        int measuredHeight = this.f8161j.getMeasuredHeight();
        int measuredState = this.f8161j.getMeasuredState();
        int paddingLeft = measuredWidth + getPaddingLeft() + getPaddingRight();
        int paddingTop = measuredHeight + getPaddingTop() + getPaddingBottom();
        setMeasuredDimension(ViewGroup.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i2, measuredState), ViewGroup.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i4, measuredState << 16));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f8159h = savedState.f8188b;
        this.f8160i = savedState.f8189c;
    }

    @Override // android.view.View
    @Nullable
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f8187a = this.f8161j.getId();
        int i2 = this.f8159h;
        if (i2 == -1) {
            i2 = this.f8155d;
        }
        savedState.f8188b = i2;
        Parcelable parcelable = this.f8160i;
        if (parcelable != null) {
            savedState.f8189c = parcelable;
        } else {
            RecyclerView.Adapter adapter = this.f8161j.getAdapter();
            if (adapter instanceof StatefulAdapter) {
                savedState.f8189c = ((StatefulAdapter) adapter).saveState();
            }
        }
        return savedState;
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        throw new IllegalStateException(ViewPager2.class.getSimpleName() + " does not support direct child views");
    }

    @Override // android.view.View
    @RequiresApi(16)
    public boolean performAccessibilityAction(int i2, Bundle bundle) {
        if (this.f8171t.handlesPerformAccessibilityAction(i2, bundle)) {
            return this.f8171t.onPerformAccessibilityAction(i2, bundle);
        }
        return super.performAccessibilityAction(i2, bundle);
    }

    public void registerOnPageChangeCallback(@NonNull OnPageChangeCallback onPageChangeCallback) {
        this.f8154c.a(onPageChangeCallback);
    }

    public void removeItemDecoration(@NonNull RecyclerView.ItemDecoration itemDecoration) {
        this.f8161j.removeItemDecoration(itemDecoration);
    }

    public void removeItemDecorationAt(int i2) {
        this.f8161j.removeItemDecorationAt(i2);
    }

    public void requestTransform() {
        if (this.f8166o.a() == null) {
            return;
        }
        double f4 = this.f8163l.f();
        int i2 = (int) f4;
        double d4 = i2;
        Double.isNaN(d4);
        float f5 = (float) (f4 - d4);
        this.f8166o.onPageScrolled(i2, f5, Math.round(getPageSize() * f5));
    }

    public void setAdapter(@Nullable RecyclerView.Adapter adapter) {
        RecyclerView.Adapter adapter2 = this.f8161j.getAdapter();
        this.f8171t.onDetachAdapter(adapter2);
        i(adapter2);
        this.f8161j.setAdapter(adapter);
        this.f8155d = 0;
        e();
        this.f8171t.onAttachAdapter(adapter);
        d(adapter);
    }

    public void setCurrentItem(int i2) {
        setCurrentItem(i2, true);
    }

    @Override // android.view.View
    @RequiresApi(17)
    public void setLayoutDirection(int i2) {
        super.setLayoutDirection(i2);
        this.f8171t.onSetLayoutDirection();
    }

    public void setOffscreenPageLimit(int i2) {
        if (i2 < 1 && i2 != -1) {
            throw new IllegalArgumentException("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
        }
        this.f8170s = i2;
        this.f8161j.requestLayout();
    }

    public void setOrientation(int i2) {
        this.f8158g.setOrientation(i2);
        this.f8171t.onSetOrientation();
    }

    public void setPageTransformer(@Nullable PageTransformer pageTransformer) {
        if (pageTransformer != null) {
            if (!this.f8168q) {
                this.f8167p = this.f8161j.getItemAnimator();
                this.f8168q = true;
            }
            this.f8161j.setItemAnimator(null);
        } else if (this.f8168q) {
            this.f8161j.setItemAnimator(this.f8167p);
            this.f8167p = null;
            this.f8168q = false;
        }
        if (pageTransformer == this.f8166o.a()) {
            return;
        }
        this.f8166o.b(pageTransformer);
        requestTransform();
    }

    public void setUserInputEnabled(boolean z3) {
        this.f8169r = z3;
        this.f8171t.onSetUserInputEnabled();
    }

    public void unregisterOnPageChangeCallback(@NonNull OnPageChangeCallback onPageChangeCallback) {
        this.f8154c.b(onPageChangeCallback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.viewpager2.widget.ViewPager2.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return Build.VERSION.SDK_INT >= 24 ? new SavedState(parcel, classLoader) : new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return createFromParcel(parcel, (ClassLoader) null);
            }
        };

        /* renamed from: a  reason: collision with root package name */
        int f8187a;

        /* renamed from: b  reason: collision with root package name */
        int f8188b;

        /* renamed from: c  reason: collision with root package name */
        Parcelable f8189c;

        @RequiresApi(24)
        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            a(parcel, classLoader);
        }

        private void a(Parcel parcel, ClassLoader classLoader) {
            this.f8187a = parcel.readInt();
            this.f8188b = parcel.readInt();
            this.f8189c = parcel.readParcelable(classLoader);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f8187a);
            parcel.writeInt(this.f8188b);
            parcel.writeParcelable(this.f8189c, i2);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            a(parcel, null);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public void addItemDecoration(@NonNull RecyclerView.ItemDecoration itemDecoration, int i2) {
        this.f8161j.addItemDecoration(itemDecoration, i2);
    }

    public void setCurrentItem(int i2, boolean z3) {
        if (!isFakeDragging()) {
            f(i2, z3);
            return;
        }
        throw new IllegalStateException("Cannot change current item when ViewPager2 is fake dragging");
    }

    public ViewPager2(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8152a = new Rect();
        this.f8153b = new Rect();
        this.f8154c = new CompositeOnPageChangeCallback(3);
        this.f8156e = false;
        this.f8157f = new DataSetChangeObserver() { // from class: androidx.viewpager2.widget.ViewPager2.1
            @Override // androidx.viewpager2.widget.ViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                ViewPager2 viewPager2 = ViewPager2.this;
                viewPager2.f8156e = true;
                viewPager2.f8163l.m();
            }
        };
        this.f8159h = -1;
        this.f8167p = null;
        this.f8168q = false;
        this.f8169r = true;
        this.f8170s = -1;
        b(context, attributeSet);
    }

    public ViewPager2(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f8152a = new Rect();
        this.f8153b = new Rect();
        this.f8154c = new CompositeOnPageChangeCallback(3);
        this.f8156e = false;
        this.f8157f = new DataSetChangeObserver() { // from class: androidx.viewpager2.widget.ViewPager2.1
            @Override // androidx.viewpager2.widget.ViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                ViewPager2 viewPager2 = ViewPager2.this;
                viewPager2.f8156e = true;
                viewPager2.f8163l.m();
            }
        };
        this.f8159h = -1;
        this.f8167p = null;
        this.f8168q = false;
        this.f8169r = true;
        this.f8170s = -1;
        b(context, attributeSet);
    }

    @RequiresApi(21)
    public ViewPager2(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2, int i4) {
        super(context, attributeSet, i2, i4);
        this.f8152a = new Rect();
        this.f8153b = new Rect();
        this.f8154c = new CompositeOnPageChangeCallback(3);
        this.f8156e = false;
        this.f8157f = new DataSetChangeObserver() { // from class: androidx.viewpager2.widget.ViewPager2.1
            @Override // androidx.viewpager2.widget.ViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                ViewPager2 viewPager2 = ViewPager2.this;
                viewPager2.f8156e = true;
                viewPager2.f8163l.m();
            }
        };
        this.f8159h = -1;
        this.f8167p = null;
        this.f8168q = false;
        this.f8169r = true;
        this.f8170s = -1;
        b(context, attributeSet);
    }
}
