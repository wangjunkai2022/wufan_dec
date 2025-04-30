package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.widget.ViewDragHelper;
/* loaded from: classes2.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {

    /* renamed from: k  reason: collision with root package name */
    public static final int f14096k = 0;

    /* renamed from: l  reason: collision with root package name */
    public static final int f14097l = 1;

    /* renamed from: m  reason: collision with root package name */
    public static final int f14098m = 2;

    /* renamed from: n  reason: collision with root package name */
    public static final int f14099n = 0;

    /* renamed from: o  reason: collision with root package name */
    public static final int f14100o = 1;

    /* renamed from: p  reason: collision with root package name */
    public static final int f14101p = 2;

    /* renamed from: q  reason: collision with root package name */
    private static final float f14102q = 0.5f;

    /* renamed from: r  reason: collision with root package name */
    private static final float f14103r = 0.0f;

    /* renamed from: s  reason: collision with root package name */
    private static final float f14104s = 0.5f;

    /* renamed from: a  reason: collision with root package name */
    ViewDragHelper f14105a;

    /* renamed from: b  reason: collision with root package name */
    c f14106b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f14107c;

    /* renamed from: e  reason: collision with root package name */
    private boolean f14109e;

    /* renamed from: d  reason: collision with root package name */
    private float f14108d = 0.0f;

    /* renamed from: f  reason: collision with root package name */
    int f14110f = 2;

    /* renamed from: g  reason: collision with root package name */
    float f14111g = 0.5f;

    /* renamed from: h  reason: collision with root package name */
    float f14112h = 0.0f;

    /* renamed from: i  reason: collision with root package name */
    float f14113i = 0.5f;

    /* renamed from: j  reason: collision with root package name */
    private final ViewDragHelper.Callback f14114j = new a();

    /* loaded from: classes2.dex */
    class a extends ViewDragHelper.Callback {

        /* renamed from: d  reason: collision with root package name */
        private static final int f14115d = -1;

        /* renamed from: a  reason: collision with root package name */
        private int f14116a;

        /* renamed from: b  reason: collision with root package name */
        private int f14117b = -1;

        a() {
        }

        private boolean a(@NonNull View view, float f4) {
            if (f4 == 0.0f) {
                return Math.abs(view.getLeft() - this.f14116a) >= Math.round(((float) view.getWidth()) * SwipeDismissBehavior.this.f14111g);
            }
            boolean z3 = ViewCompat.getLayoutDirection(view) == 1;
            int i2 = SwipeDismissBehavior.this.f14110f;
            if (i2 == 2) {
                return true;
            }
            if (i2 == 0) {
                if (z3) {
                    if (f4 >= 0.0f) {
                        return false;
                    }
                } else if (f4 <= 0.0f) {
                    return false;
                }
                return true;
            } else if (i2 == 1) {
                if (z3) {
                    if (f4 <= 0.0f) {
                        return false;
                    }
                } else if (f4 >= 0.0f) {
                    return false;
                }
                return true;
            } else {
                return false;
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(@NonNull View view, int i2, int i4) {
            int width;
            int width2;
            int width3;
            boolean z3 = ViewCompat.getLayoutDirection(view) == 1;
            int i5 = SwipeDismissBehavior.this.f14110f;
            if (i5 == 0) {
                if (z3) {
                    width = this.f14116a - view.getWidth();
                    width2 = this.f14116a;
                } else {
                    width = this.f14116a;
                    width3 = view.getWidth();
                    width2 = width3 + width;
                }
            } else if (i5 != 1) {
                width = this.f14116a - view.getWidth();
                width2 = view.getWidth() + this.f14116a;
            } else if (z3) {
                width = this.f14116a;
                width3 = view.getWidth();
                width2 = width3 + width;
            } else {
                width = this.f14116a - view.getWidth();
                width2 = this.f14116a;
            }
            return SwipeDismissBehavior.c(width, i2, width2);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(@NonNull View view, int i2, int i4) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(@NonNull View view) {
            return view.getWidth();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewCaptured(@NonNull View view, int i2) {
            this.f14117b = i2;
            this.f14116a = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i2) {
            c cVar = SwipeDismissBehavior.this.f14106b;
            if (cVar != null) {
                cVar.b(i2);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(@NonNull View view, int i2, int i4, int i5, int i6) {
            float width = this.f14116a + (view.getWidth() * SwipeDismissBehavior.this.f14112h);
            float width2 = this.f14116a + (view.getWidth() * SwipeDismissBehavior.this.f14113i);
            float f4 = i2;
            if (f4 <= width) {
                view.setAlpha(1.0f);
            } else if (f4 >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.b(0.0f, 1.0f - SwipeDismissBehavior.e(width, width2, f4), 1.0f));
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewReleased(@NonNull View view, float f4, float f5) {
            int i2;
            boolean z3;
            c cVar;
            this.f14117b = -1;
            int width = view.getWidth();
            if (a(view, f4)) {
                int left = view.getLeft();
                int i4 = this.f14116a;
                i2 = left < i4 ? i4 - width : i4 + width;
                z3 = true;
            } else {
                i2 = this.f14116a;
                z3 = false;
            }
            if (SwipeDismissBehavior.this.f14105a.settleCapturedViewAt(i2, view.getTop())) {
                ViewCompat.postOnAnimation(view, new d(view, z3));
            } else if (!z3 || (cVar = SwipeDismissBehavior.this.f14106b) == null) {
            } else {
                cVar.a(view);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i2) {
            int i4 = this.f14117b;
            return (i4 == -1 || i4 == i2) && SwipeDismissBehavior.this.a(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements AccessibilityViewCommand {
        b() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
        public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
            boolean z3 = false;
            if (SwipeDismissBehavior.this.a(view)) {
                boolean z4 = ViewCompat.getLayoutDirection(view) == 1;
                int i2 = SwipeDismissBehavior.this.f14110f;
                if ((i2 == 0 && z4) || (i2 == 1 && !z4)) {
                    z3 = true;
                }
                int width = view.getWidth();
                if (z3) {
                    width = -width;
                }
                ViewCompat.offsetLeftAndRight(view, width);
                view.setAlpha(0.0f);
                c cVar = SwipeDismissBehavior.this.f14106b;
                if (cVar != null) {
                    cVar.a(view);
                }
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes2.dex */
    public interface c {
        void a(View view);

        void b(int i2);
    }

    /* loaded from: classes2.dex */
    private class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final View f14120a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f14121b;

        d(View view, boolean z3) {
            this.f14120a = view;
            this.f14121b = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar;
            ViewDragHelper viewDragHelper = SwipeDismissBehavior.this.f14105a;
            if (viewDragHelper != null && viewDragHelper.continueSettling(true)) {
                ViewCompat.postOnAnimation(this.f14120a, this);
            } else if (!this.f14121b || (cVar = SwipeDismissBehavior.this.f14106b) == null) {
            } else {
                cVar.a(this.f14120a);
            }
        }
    }

    static float b(float f4, float f5, float f6) {
        return Math.min(Math.max(f4, f5), f6);
    }

    static int c(int i2, int i4, int i5) {
        return Math.min(Math.max(i2, i4), i5);
    }

    private void d(ViewGroup viewGroup) {
        ViewDragHelper create;
        if (this.f14105a == null) {
            if (this.f14109e) {
                create = ViewDragHelper.create(viewGroup, this.f14108d, this.f14114j);
            } else {
                create = ViewDragHelper.create(viewGroup, this.f14114j);
            }
            this.f14105a = create;
        }
    }

    static float e(float f4, float f5, float f6) {
        return (f6 - f4) / (f5 - f4);
    }

    private void n(View view) {
        ViewCompat.removeAccessibilityAction(view, 1048576);
        if (a(view)) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, null, new b());
        }
    }

    public boolean a(@NonNull View view) {
        return true;
    }

    public int f() {
        ViewDragHelper viewDragHelper = this.f14105a;
        if (viewDragHelper != null) {
            return viewDragHelper.getViewDragState();
        }
        return 0;
    }

    @Nullable
    @VisibleForTesting
    public c g() {
        return this.f14106b;
    }

    public void h(float f4) {
        this.f14111g = b(0.0f, f4, 1.0f);
    }

    public void i(float f4) {
        this.f14113i = b(0.0f, f4, 1.0f);
    }

    public void j(@Nullable c cVar) {
        this.f14106b = cVar;
    }

    public void k(float f4) {
        this.f14108d = f4;
        this.f14109e = true;
    }

    public void l(float f4) {
        this.f14112h = b(0.0f, f4, 1.0f);
    }

    public void m(int i2) {
        this.f14110f = i2;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, @NonNull MotionEvent motionEvent) {
        boolean z3 = this.f14107c;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            z3 = coordinatorLayout.isPointInChildBounds(v3, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f14107c = z3;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f14107c = false;
        }
        if (z3) {
            d(coordinatorLayout);
            return this.f14105a.shouldInterceptTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v3, int i2) {
        boolean onLayoutChild = super.onLayoutChild(coordinatorLayout, v3, i2);
        if (ViewCompat.getImportantForAccessibility(v3) == 0) {
            ViewCompat.setImportantForAccessibility(v3, 1);
            n(v3);
        }
        return onLayoutChild;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v3, MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper = this.f14105a;
        if (viewDragHelper != null) {
            viewDragHelper.processTouchEvent(motionEvent);
            return true;
        }
        return false;
    }
}
