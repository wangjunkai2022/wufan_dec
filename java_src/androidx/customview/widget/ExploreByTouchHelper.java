package androidx.customview.widget;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SparseArrayCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.core.view.accessibility.AccessibilityRecordCompat;
import androidx.customview.widget.FocusStrategy;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public abstract class ExploreByTouchHelper extends AccessibilityDelegateCompat {
    public static final int HOST_ID = -1;
    public static final int INVALID_ID = Integer.MIN_VALUE;

    /* renamed from: k  reason: collision with root package name */
    private static final String f5170k = "android.view.View";

    /* renamed from: l  reason: collision with root package name */
    private static final Rect f5171l = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);

    /* renamed from: m  reason: collision with root package name */
    private static final FocusStrategy.BoundsAdapter<AccessibilityNodeInfoCompat> f5172m = new FocusStrategy.BoundsAdapter<AccessibilityNodeInfoCompat>() { // from class: androidx.customview.widget.ExploreByTouchHelper.1
        @Override // androidx.customview.widget.FocusStrategy.BoundsAdapter
        public void obtainBounds(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, Rect rect) {
            accessibilityNodeInfoCompat.getBoundsInParent(rect);
        }
    };

    /* renamed from: n  reason: collision with root package name */
    private static final FocusStrategy.CollectionAdapter<SparseArrayCompat<AccessibilityNodeInfoCompat>, AccessibilityNodeInfoCompat> f5173n = new FocusStrategy.CollectionAdapter<SparseArrayCompat<AccessibilityNodeInfoCompat>, AccessibilityNodeInfoCompat>() { // from class: androidx.customview.widget.ExploreByTouchHelper.2
        @Override // androidx.customview.widget.FocusStrategy.CollectionAdapter
        public AccessibilityNodeInfoCompat get(SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat, int i2) {
            return sparseArrayCompat.valueAt(i2);
        }

        @Override // androidx.customview.widget.FocusStrategy.CollectionAdapter
        public int size(SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat) {
            return sparseArrayCompat.size();
        }
    };

    /* renamed from: e  reason: collision with root package name */
    private final AccessibilityManager f5178e;

    /* renamed from: f  reason: collision with root package name */
    private final View f5179f;

    /* renamed from: g  reason: collision with root package name */
    private MyNodeProvider f5180g;

    /* renamed from: a  reason: collision with root package name */
    private final Rect f5174a = new Rect();

    /* renamed from: b  reason: collision with root package name */
    private final Rect f5175b = new Rect();

    /* renamed from: c  reason: collision with root package name */
    private final Rect f5176c = new Rect();

    /* renamed from: d  reason: collision with root package name */
    private final int[] f5177d = new int[2];

    /* renamed from: h  reason: collision with root package name */
    int f5181h = Integer.MIN_VALUE;

    /* renamed from: i  reason: collision with root package name */
    int f5182i = Integer.MIN_VALUE;

    /* renamed from: j  reason: collision with root package name */
    private int f5183j = Integer.MIN_VALUE;

    /* loaded from: classes.dex */
    private class MyNodeProvider extends AccessibilityNodeProviderCompat {
        MyNodeProvider() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int i2) {
            return AccessibilityNodeInfoCompat.obtain(ExploreByTouchHelper.this.p(i2));
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public AccessibilityNodeInfoCompat findFocus(int i2) {
            int i4 = i2 == 2 ? ExploreByTouchHelper.this.f5181h : ExploreByTouchHelper.this.f5182i;
            if (i4 == Integer.MIN_VALUE) {
                return null;
            }
            return createAccessibilityNodeInfo(i4);
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public boolean performAction(int i2, int i4, Bundle bundle) {
            return ExploreByTouchHelper.this.w(i2, i4, bundle);
        }
    }

    public ExploreByTouchHelper(@NonNull View view) {
        if (view != null) {
            this.f5179f = view;
            this.f5178e = (AccessibilityManager) view.getContext().getSystemService("accessibility");
            view.setFocusable(true);
            if (ViewCompat.getImportantForAccessibility(view) == 0) {
                ViewCompat.setImportantForAccessibility(view, 1);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("View may not be null");
    }

    private void A(int i2) {
        int i4 = this.f5183j;
        if (i4 == i2) {
            return;
        }
        this.f5183j = i2;
        sendEventForVirtualView(i2, 128);
        sendEventForVirtualView(i4, 256);
    }

    private boolean a(int i2) {
        if (this.f5181h == i2) {
            this.f5181h = Integer.MIN_VALUE;
            this.f5179f.invalidate();
            sendEventForVirtualView(i2, 65536);
            return true;
        }
        return false;
    }

    private boolean b() {
        int i2 = this.f5182i;
        return i2 != Integer.MIN_VALUE && q(i2, 16, null);
    }

    private AccessibilityEvent c(int i2, int i4) {
        if (i2 != -1) {
            return d(i2, i4);
        }
        return e(i4);
    }

    private AccessibilityEvent d(int i2, int i4) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i4);
        AccessibilityNodeInfoCompat p3 = p(i2);
        obtain.getText().add(p3.getText());
        obtain.setContentDescription(p3.getContentDescription());
        obtain.setScrollable(p3.isScrollable());
        obtain.setPassword(p3.isPassword());
        obtain.setEnabled(p3.isEnabled());
        obtain.setChecked(p3.isChecked());
        s(i2, obtain);
        if (obtain.getText().isEmpty() && obtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        obtain.setClassName(p3.getClassName());
        AccessibilityRecordCompat.setSource(obtain, this.f5179f, i2);
        obtain.setPackageName(this.f5179f.getContext().getPackageName());
        return obtain;
    }

    private AccessibilityEvent e(int i2) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
        this.f5179f.onInitializeAccessibilityEvent(obtain);
        return obtain;
    }

    @NonNull
    private AccessibilityNodeInfoCompat f(int i2) {
        AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain();
        obtain.setEnabled(true);
        obtain.setFocusable(true);
        obtain.setClassName(f5170k);
        Rect rect = f5171l;
        obtain.setBoundsInParent(rect);
        obtain.setBoundsInScreen(rect);
        obtain.setParent(this.f5179f);
        u(i2, obtain);
        if (obtain.getText() == null && obtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        obtain.getBoundsInParent(this.f5175b);
        if (!this.f5175b.equals(rect)) {
            int actions = obtain.getActions();
            if ((actions & 64) == 0) {
                if ((actions & 128) == 0) {
                    obtain.setPackageName(this.f5179f.getContext().getPackageName());
                    obtain.setSource(this.f5179f, i2);
                    if (this.f5181h == i2) {
                        obtain.setAccessibilityFocused(true);
                        obtain.addAction(128);
                    } else {
                        obtain.setAccessibilityFocused(false);
                        obtain.addAction(64);
                    }
                    boolean z3 = this.f5182i == i2;
                    if (z3) {
                        obtain.addAction(2);
                    } else if (obtain.isFocusable()) {
                        obtain.addAction(1);
                    }
                    obtain.setFocused(z3);
                    this.f5179f.getLocationOnScreen(this.f5177d);
                    obtain.getBoundsInScreen(this.f5174a);
                    if (this.f5174a.equals(rect)) {
                        obtain.getBoundsInParent(this.f5174a);
                        if (obtain.mParentVirtualDescendantId != -1) {
                            AccessibilityNodeInfoCompat obtain2 = AccessibilityNodeInfoCompat.obtain();
                            for (int i4 = obtain.mParentVirtualDescendantId; i4 != -1; i4 = obtain2.mParentVirtualDescendantId) {
                                obtain2.setParent(this.f5179f, -1);
                                obtain2.setBoundsInParent(f5171l);
                                u(i4, obtain2);
                                obtain2.getBoundsInParent(this.f5175b);
                                Rect rect2 = this.f5174a;
                                Rect rect3 = this.f5175b;
                                rect2.offset(rect3.left, rect3.top);
                            }
                            obtain2.recycle();
                        }
                        this.f5174a.offset(this.f5177d[0] - this.f5179f.getScrollX(), this.f5177d[1] - this.f5179f.getScrollY());
                    }
                    if (this.f5179f.getLocalVisibleRect(this.f5176c)) {
                        this.f5176c.offset(this.f5177d[0] - this.f5179f.getScrollX(), this.f5177d[1] - this.f5179f.getScrollY());
                        if (this.f5174a.intersect(this.f5176c)) {
                            obtain.setBoundsInScreen(this.f5174a);
                            if (m(this.f5174a)) {
                                obtain.setVisibleToUser(true);
                            }
                        }
                    }
                    return obtain;
                }
                throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            }
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
    }

    @NonNull
    private AccessibilityNodeInfoCompat g() {
        AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain(this.f5179f);
        ViewCompat.onInitializeAccessibilityNodeInfo(this.f5179f, obtain);
        ArrayList arrayList = new ArrayList();
        k(arrayList);
        if (obtain.getChildCount() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            obtain.addChild(this.f5179f, ((Integer) arrayList.get(i2)).intValue());
        }
        return obtain;
    }

    private SparseArrayCompat<AccessibilityNodeInfoCompat> h() {
        ArrayList arrayList = new ArrayList();
        k(arrayList);
        SparseArrayCompat<AccessibilityNodeInfoCompat> sparseArrayCompat = new SparseArrayCompat<>();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            sparseArrayCompat.put(arrayList.get(i2).intValue(), f(arrayList.get(i2).intValue()));
        }
        return sparseArrayCompat;
    }

    private void i(int i2, Rect rect) {
        p(i2).getBoundsInParent(rect);
    }

    private static Rect l(@NonNull View view, int i2, @NonNull Rect rect) {
        int width = view.getWidth();
        int height = view.getHeight();
        if (i2 == 17) {
            rect.set(width, 0, width, height);
        } else if (i2 == 33) {
            rect.set(0, height, width, height);
        } else if (i2 == 66) {
            rect.set(-1, 0, -1, height);
        } else if (i2 == 130) {
            rect.set(0, -1, width, -1);
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return rect;
    }

    private boolean m(Rect rect) {
        if (rect == null || rect.isEmpty() || this.f5179f.getWindowVisibility() != 0) {
            return false;
        }
        ViewParent parent = this.f5179f.getParent();
        while (parent instanceof View) {
            View view = (View) parent;
            if (view.getAlpha() <= 0.0f || view.getVisibility() != 0) {
                return false;
            }
            parent = view.getParent();
        }
        return parent != null;
    }

    private static int n(int i2) {
        if (i2 != 19) {
            if (i2 != 21) {
                return i2 != 22 ? 130 : 66;
            }
            return 17;
        }
        return 33;
    }

    private boolean o(int i2, @Nullable Rect rect) {
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat;
        SparseArrayCompat<AccessibilityNodeInfoCompat> h4 = h();
        int i4 = this.f5182i;
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2 = i4 == Integer.MIN_VALUE ? null : h4.get(i4);
        if (i2 == 1 || i2 == 2) {
            accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) FocusStrategy.findNextFocusInRelativeDirection(h4, f5173n, f5172m, accessibilityNodeInfoCompat2, i2, ViewCompat.getLayoutDirection(this.f5179f) == 1, false);
        } else if (i2 != 17 && i2 != 33 && i2 != 66 && i2 != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        } else {
            Rect rect2 = new Rect();
            int i5 = this.f5182i;
            if (i5 != Integer.MIN_VALUE) {
                i(i5, rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                l(this.f5179f, i2, rect2);
            }
            accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) FocusStrategy.findNextFocusInAbsoluteDirection(h4, f5173n, f5172m, accessibilityNodeInfoCompat2, rect2, i2);
        }
        return requestKeyboardFocusForVirtualView(accessibilityNodeInfoCompat != null ? h4.keyAt(h4.indexOfValue(accessibilityNodeInfoCompat)) : Integer.MIN_VALUE);
    }

    private boolean x(int i2, int i4, Bundle bundle) {
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 != 64) {
                    if (i4 != 128) {
                        return q(i2, i4, bundle);
                    }
                    return a(i2);
                }
                return z(i2);
            }
            return clearKeyboardFocusForVirtualView(i2);
        }
        return requestKeyboardFocusForVirtualView(i2);
    }

    private boolean y(int i2, Bundle bundle) {
        return ViewCompat.performAccessibilityAction(this.f5179f, i2, bundle);
    }

    private boolean z(int i2) {
        int i4;
        if (this.f5178e.isEnabled() && this.f5178e.isTouchExplorationEnabled() && (i4 = this.f5181h) != i2) {
            if (i4 != Integer.MIN_VALUE) {
                a(i4);
            }
            this.f5181h = i2;
            this.f5179f.invalidate();
            sendEventForVirtualView(i2, 32768);
            return true;
        }
        return false;
    }

    public final boolean clearKeyboardFocusForVirtualView(int i2) {
        if (this.f5182i != i2) {
            return false;
        }
        this.f5182i = Integer.MIN_VALUE;
        v(i2, false);
        sendEventForVirtualView(i2, 8);
        return true;
    }

    public final boolean dispatchHoverEvent(@NonNull MotionEvent motionEvent) {
        if (this.f5178e.isEnabled() && this.f5178e.isTouchExplorationEnabled()) {
            int action = motionEvent.getAction();
            if (action != 7 && action != 9) {
                if (action == 10 && this.f5183j != Integer.MIN_VALUE) {
                    A(Integer.MIN_VALUE);
                    return true;
                }
                return false;
            }
            int j4 = j(motionEvent.getX(), motionEvent.getY());
            A(j4);
            return j4 != Integer.MIN_VALUE;
        }
        return false;
    }

    public final boolean dispatchKeyEvent(@NonNull KeyEvent keyEvent) {
        int i2 = 0;
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                if (keyCode != 66) {
                    switch (keyCode) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            if (keyEvent.hasNoModifiers()) {
                                int n4 = n(keyCode);
                                int repeatCount = keyEvent.getRepeatCount() + 1;
                                boolean z3 = false;
                                while (i2 < repeatCount && o(n4, null)) {
                                    i2++;
                                    z3 = true;
                                }
                                return z3;
                            }
                            return false;
                        case 23:
                            break;
                        default:
                            return false;
                    }
                }
                if (keyEvent.hasNoModifiers() && keyEvent.getRepeatCount() == 0) {
                    b();
                    return true;
                }
                return false;
            } else if (keyEvent.hasNoModifiers()) {
                return o(2, null);
            } else {
                if (keyEvent.hasModifiers(1)) {
                    return o(1, null);
                }
                return false;
            }
        }
        return false;
    }

    public final int getAccessibilityFocusedVirtualViewId() {
        return this.f5181h;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        if (this.f5180g == null) {
            this.f5180g = new MyNodeProvider();
        }
        return this.f5180g;
    }

    @Deprecated
    public int getFocusedVirtualView() {
        return getAccessibilityFocusedVirtualViewId();
    }

    public final int getKeyboardFocusedVirtualViewId() {
        return this.f5182i;
    }

    public final void invalidateRoot() {
        invalidateVirtualView(-1, 1);
    }

    public final void invalidateVirtualView(int i2) {
        invalidateVirtualView(i2, 0);
    }

    protected abstract int j(float f4, float f5);

    protected abstract void k(List<Integer> list);

    public final void onFocusChanged(boolean z3, int i2, @Nullable Rect rect) {
        int i4 = this.f5182i;
        if (i4 != Integer.MIN_VALUE) {
            clearKeyboardFocusForVirtualView(i4);
        }
        if (z3) {
            o(i2, rect);
        }
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        r(accessibilityEvent);
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        t(accessibilityNodeInfoCompat);
    }

    @NonNull
    AccessibilityNodeInfoCompat p(int i2) {
        if (i2 == -1) {
            return g();
        }
        return f(i2);
    }

    protected abstract boolean q(int i2, int i4, @Nullable Bundle bundle);

    protected void r(@NonNull AccessibilityEvent accessibilityEvent) {
    }

    public final boolean requestKeyboardFocusForVirtualView(int i2) {
        int i4;
        if ((this.f5179f.isFocused() || this.f5179f.requestFocus()) && (i4 = this.f5182i) != i2) {
            if (i4 != Integer.MIN_VALUE) {
                clearKeyboardFocusForVirtualView(i4);
            }
            if (i2 == Integer.MIN_VALUE) {
                return false;
            }
            this.f5182i = i2;
            v(i2, true);
            sendEventForVirtualView(i2, 8);
            return true;
        }
        return false;
    }

    protected void s(int i2, @NonNull AccessibilityEvent accessibilityEvent) {
    }

    public final boolean sendEventForVirtualView(int i2, int i4) {
        ViewParent parent;
        if (i2 == Integer.MIN_VALUE || !this.f5178e.isEnabled() || (parent = this.f5179f.getParent()) == null) {
            return false;
        }
        return parent.requestSendAccessibilityEvent(this.f5179f, c(i2, i4));
    }

    protected void t(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    protected abstract void u(int i2, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat);

    protected void v(int i2, boolean z3) {
    }

    boolean w(int i2, int i4, Bundle bundle) {
        if (i2 != -1) {
            return x(i2, i4, bundle);
        }
        return y(i4, bundle);
    }

    public final void invalidateVirtualView(int i2, int i4) {
        ViewParent parent;
        if (i2 == Integer.MIN_VALUE || !this.f5178e.isEnabled() || (parent = this.f5179f.getParent()) == null) {
            return;
        }
        AccessibilityEvent c4 = c(i2, 2048);
        AccessibilityEventCompat.setContentChangeTypes(c4, i4);
        parent.requestSendAccessibilityEvent(this.f5179f, c4);
    }
}
