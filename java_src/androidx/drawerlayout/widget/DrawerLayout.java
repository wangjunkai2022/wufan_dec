package androidx.drawerlayout.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.Insets;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.Openable;
import androidx.customview.widget.ViewDragHelper;
import androidx.drawerlayout.R;
import com.uc.crashsdk.export.LogType;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class DrawerLayout extends ViewGroup implements Openable {
    private static boolean A0 = false;
    public static final int LOCK_MODE_LOCKED_CLOSED = 1;
    public static final int LOCK_MODE_LOCKED_OPEN = 2;
    public static final int LOCK_MODE_UNDEFINED = 3;
    public static final int LOCK_MODE_UNLOCKED = 0;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;

    /* renamed from: n0  reason: collision with root package name */
    private static final String f5371n0 = "DrawerLayout";

    /* renamed from: p0  reason: collision with root package name */
    private static final int f5373p0 = 64;

    /* renamed from: q0  reason: collision with root package name */
    private static final int f5374q0 = -1728053248;

    /* renamed from: r0  reason: collision with root package name */
    private static final int f5375r0 = 160;

    /* renamed from: s0  reason: collision with root package name */
    private static final int f5376s0 = 400;

    /* renamed from: t0  reason: collision with root package name */
    private static final boolean f5377t0 = false;

    /* renamed from: u0  reason: collision with root package name */
    private static final boolean f5378u0 = true;

    /* renamed from: v0  reason: collision with root package name */
    private static final float f5379v0 = 1.0f;

    /* renamed from: x0  reason: collision with root package name */
    static final boolean f5381x0;

    /* renamed from: y0  reason: collision with root package name */
    private static final boolean f5382y0;

    /* renamed from: z0  reason: collision with root package name */
    private static final String f5383z0 = "androidx.drawerlayout.widget.DrawerLayout";
    private CharSequence A;
    private Object B;
    private boolean C;
    private Drawable D;
    private Drawable E;
    private Drawable F;
    private Drawable G;
    private final ArrayList<View> H;
    private Rect I;
    private Matrix J;
    private final AccessibilityViewCommand K;

    /* renamed from: a  reason: collision with root package name */
    private final ChildAccessibilityDelegate f5384a;

    /* renamed from: b  reason: collision with root package name */
    private float f5385b;

    /* renamed from: c  reason: collision with root package name */
    private int f5386c;

    /* renamed from: d  reason: collision with root package name */
    private int f5387d;

    /* renamed from: e  reason: collision with root package name */
    private float f5388e;

    /* renamed from: f  reason: collision with root package name */
    private Paint f5389f;

    /* renamed from: g  reason: collision with root package name */
    private final ViewDragHelper f5390g;

    /* renamed from: h  reason: collision with root package name */
    private final ViewDragHelper f5391h;

    /* renamed from: i  reason: collision with root package name */
    private final ViewDragCallback f5392i;

    /* renamed from: j  reason: collision with root package name */
    private final ViewDragCallback f5393j;

    /* renamed from: k  reason: collision with root package name */
    private int f5394k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f5395l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f5396m;

    /* renamed from: n  reason: collision with root package name */
    private int f5397n;

    /* renamed from: o  reason: collision with root package name */
    private int f5398o;

    /* renamed from: p  reason: collision with root package name */
    private int f5399p;

    /* renamed from: q  reason: collision with root package name */
    private int f5400q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f5401r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private DrawerListener f5402s;

    /* renamed from: t  reason: collision with root package name */
    private List<DrawerListener> f5403t;

    /* renamed from: u  reason: collision with root package name */
    private float f5404u;

    /* renamed from: v  reason: collision with root package name */
    private float f5405v;

    /* renamed from: w  reason: collision with root package name */
    private Drawable f5406w;

    /* renamed from: x  reason: collision with root package name */
    private Drawable f5407x;

    /* renamed from: y  reason: collision with root package name */
    private Drawable f5408y;

    /* renamed from: z  reason: collision with root package name */
    private CharSequence f5409z;

    /* renamed from: o0  reason: collision with root package name */
    private static final int[] f5372o0 = {16843828};

    /* renamed from: w0  reason: collision with root package name */
    static final int[] f5380w0 = {16842931};

    /* loaded from: classes.dex */
    class AccessibilityDelegate extends AccessibilityDelegateCompat {

        /* renamed from: a  reason: collision with root package name */
        private final Rect f5412a = new Rect();

        AccessibilityDelegate() {
        }

        private void a(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, ViewGroup viewGroup) {
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if (DrawerLayout.r(childAt)) {
                    accessibilityNodeInfoCompat.addChild(childAt);
                }
            }
        }

        private void b(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2) {
            Rect rect = this.f5412a;
            accessibilityNodeInfoCompat2.getBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setVisibleToUser(accessibilityNodeInfoCompat2.isVisibleToUser());
            accessibilityNodeInfoCompat.setPackageName(accessibilityNodeInfoCompat2.getPackageName());
            accessibilityNodeInfoCompat.setClassName(accessibilityNodeInfoCompat2.getClassName());
            accessibilityNodeInfoCompat.setContentDescription(accessibilityNodeInfoCompat2.getContentDescription());
            accessibilityNodeInfoCompat.setEnabled(accessibilityNodeInfoCompat2.isEnabled());
            accessibilityNodeInfoCompat.setFocused(accessibilityNodeInfoCompat2.isFocused());
            accessibilityNodeInfoCompat.setAccessibilityFocused(accessibilityNodeInfoCompat2.isAccessibilityFocused());
            accessibilityNodeInfoCompat.setSelected(accessibilityNodeInfoCompat2.isSelected());
            accessibilityNodeInfoCompat.addAction(accessibilityNodeInfoCompat2.getActions());
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() == 32) {
                List<CharSequence> text = accessibilityEvent.getText();
                View j4 = DrawerLayout.this.j();
                if (j4 != null) {
                    CharSequence drawerTitle = DrawerLayout.this.getDrawerTitle(DrawerLayout.this.k(j4));
                    if (drawerTitle != null) {
                        text.add(drawerTitle);
                        return true;
                    }
                    return true;
                }
                return true;
            }
            return super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(DrawerLayout.f5383z0);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (DrawerLayout.f5381x0) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            } else {
                AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain(accessibilityNodeInfoCompat);
                super.onInitializeAccessibilityNodeInfo(view, obtain);
                accessibilityNodeInfoCompat.setSource(view);
                ViewParent parentForAccessibility = ViewCompat.getParentForAccessibility(view);
                if (parentForAccessibility instanceof View) {
                    accessibilityNodeInfoCompat.setParent((View) parentForAccessibility);
                }
                b(accessibilityNodeInfoCompat, obtain);
                obtain.recycle();
                a(accessibilityNodeInfoCompat, (ViewGroup) view);
            }
            accessibilityNodeInfoCompat.setClassName(DrawerLayout.f5383z0);
            accessibilityNodeInfoCompat.setFocusable(false);
            accessibilityNodeInfoCompat.setFocused(false);
            accessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_FOCUS);
            accessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLEAR_FOCUS);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (DrawerLayout.f5381x0 || DrawerLayout.r(view)) {
                return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    static final class ChildAccessibilityDelegate extends AccessibilityDelegateCompat {
        ChildAccessibilityDelegate() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (DrawerLayout.r(view)) {
                return;
            }
            accessibilityNodeInfoCompat.setParent(null);
        }
    }

    /* loaded from: classes.dex */
    public interface DrawerListener {
        void onDrawerClosed(@NonNull View view);

        void onDrawerOpened(@NonNull View view);

        void onDrawerSlide(@NonNull View view, float f4);

        void onDrawerStateChanged(int i2);
    }

    /* loaded from: classes.dex */
    public static abstract class SimpleDrawerListener implements DrawerListener {
        @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerClosed(View view) {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerOpened(View view) {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerSlide(View view, float f4) {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerStateChanged(int i2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ViewDragCallback extends ViewDragHelper.Callback {

        /* renamed from: a  reason: collision with root package name */
        private final int f5425a;

        /* renamed from: b  reason: collision with root package name */
        private ViewDragHelper f5426b;

        /* renamed from: c  reason: collision with root package name */
        private final Runnable f5427c = new Runnable() { // from class: androidx.drawerlayout.widget.DrawerLayout.ViewDragCallback.1
            @Override // java.lang.Runnable
            public void run() {
                ViewDragCallback.this.b();
            }
        };

        ViewDragCallback(int i2) {
            this.f5425a = i2;
        }

        private void a() {
            View h4 = DrawerLayout.this.h(this.f5425a == 3 ? 5 : 3);
            if (h4 != null) {
                DrawerLayout.this.closeDrawer(h4);
            }
        }

        void b() {
            View h4;
            int width;
            int edgeSize = this.f5426b.getEdgeSize();
            boolean z3 = this.f5425a == 3;
            if (z3) {
                h4 = DrawerLayout.this.h(3);
                width = (h4 != null ? -h4.getWidth() : 0) + edgeSize;
            } else {
                h4 = DrawerLayout.this.h(5);
                width = DrawerLayout.this.getWidth() - edgeSize;
            }
            if (h4 != null) {
                if (((!z3 || h4.getLeft() >= width) && (z3 || h4.getLeft() <= width)) || DrawerLayout.this.getDrawerLockMode(h4) != 0) {
                    return;
                }
                this.f5426b.smoothSlideViewTo(h4, width, h4.getTop());
                ((LayoutParams) h4.getLayoutParams()).f5418b = true;
                DrawerLayout.this.invalidate();
                a();
                DrawerLayout.this.a();
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(View view, int i2, int i4) {
            if (DrawerLayout.this.b(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i2, 0));
            }
            int width = DrawerLayout.this.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i2, width));
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(View view, int i2, int i4) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(View view) {
            if (DrawerLayout.this.t(view)) {
                return view.getWidth();
            }
            return 0;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onEdgeDragStarted(int i2, int i4) {
            View h4;
            if ((i2 & 1) == 1) {
                h4 = DrawerLayout.this.h(3);
            } else {
                h4 = DrawerLayout.this.h(5);
            }
            if (h4 == null || DrawerLayout.this.getDrawerLockMode(h4) != 0) {
                return;
            }
            this.f5426b.captureChildView(h4, i4);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean onEdgeLock(int i2) {
            return false;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onEdgeTouched(int i2, int i4) {
            DrawerLayout.this.postDelayed(this.f5427c, 160L);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewCaptured(View view, int i2) {
            ((LayoutParams) view.getLayoutParams()).f5418b = false;
            a();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i2) {
            DrawerLayout.this.D(i2, this.f5426b.getCapturedView());
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(View view, int i2, int i4, int i5, int i6) {
            int width = view.getWidth();
            float width2 = (DrawerLayout.this.b(view, 3) ? i2 + width : DrawerLayout.this.getWidth() - i2) / width;
            DrawerLayout.this.A(view, width2);
            view.setVisibility(width2 == 0.0f ? 4 : 0);
            DrawerLayout.this.invalidate();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewReleased(View view, float f4, float f5) {
            int i2;
            float l4 = DrawerLayout.this.l(view);
            int width = view.getWidth();
            if (DrawerLayout.this.b(view, 3)) {
                i2 = (f4 > 0.0f || (f4 == 0.0f && l4 > 0.5f)) ? 0 : -width;
            } else {
                int width2 = DrawerLayout.this.getWidth();
                if (f4 < 0.0f || (f4 == 0.0f && l4 > 0.5f)) {
                    width2 -= width;
                }
                i2 = width2;
            }
            this.f5426b.settleCapturedViewAt(i2, view.getTop());
            DrawerLayout.this.invalidate();
        }

        public void removeCallbacks() {
            DrawerLayout.this.removeCallbacks(this.f5427c);
        }

        public void setDragger(ViewDragHelper viewDragHelper) {
            this.f5426b = viewDragHelper;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i2) {
            return DrawerLayout.this.t(view) && DrawerLayout.this.b(view, this.f5425a) && DrawerLayout.this.getDrawerLockMode(view) == 0;
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        f5381x0 = i2 >= 19;
        f5382y0 = i2 >= 21;
        A0 = i2 >= 29;
    }

    public DrawerLayout(@NonNull Context context) {
        this(context, null);
    }

    private void B(View view) {
        AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat = AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS;
        ViewCompat.removeAccessibilityAction(view, accessibilityActionCompat.getId());
        if (!isDrawerOpen(view) || getDrawerLockMode(view) == 2) {
            return;
        }
        ViewCompat.replaceAccessibilityAction(view, accessibilityActionCompat, null, this.K);
    }

    private void C(View view, boolean z3) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((!z3 && !t(childAt)) || (z3 && childAt == view)) {
                ViewCompat.setImportantForAccessibility(childAt, 1);
            } else {
                ViewCompat.setImportantForAccessibility(childAt, 4);
            }
        }
    }

    private boolean g(MotionEvent motionEvent, View view) {
        if (!view.getMatrix().isIdentity()) {
            MotionEvent m4 = m(motionEvent, view);
            boolean dispatchGenericMotionEvent = view.dispatchGenericMotionEvent(m4);
            m4.recycle();
            return dispatchGenericMotionEvent;
        }
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        motionEvent.offsetLocation(scrollX, scrollY);
        boolean dispatchGenericMotionEvent2 = view.dispatchGenericMotionEvent(motionEvent);
        motionEvent.offsetLocation(-scrollX, -scrollY);
        return dispatchGenericMotionEvent2;
    }

    private MotionEvent m(MotionEvent motionEvent, View view) {
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(getScrollX() - view.getLeft(), getScrollY() - view.getTop());
        Matrix matrix = view.getMatrix();
        if (!matrix.isIdentity()) {
            if (this.J == null) {
                this.J = new Matrix();
            }
            matrix.invert(this.J);
            obtain.transform(this.J);
        }
        return obtain;
    }

    static String n(int i2) {
        return (i2 & 3) == 3 ? "LEFT" : (i2 & 5) == 5 ? "RIGHT" : Integer.toHexString(i2);
    }

    private static boolean o(View view) {
        Drawable background = view.getBackground();
        return background != null && background.getOpacity() == -1;
    }

    private boolean p() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (((LayoutParams) getChildAt(i2).getLayoutParams()).f5418b) {
                return true;
            }
        }
        return false;
    }

    private boolean q() {
        return j() != null;
    }

    static boolean r(View view) {
        return (ViewCompat.getImportantForAccessibility(view) == 4 || ViewCompat.getImportantForAccessibility(view) == 2) ? false : true;
    }

    private boolean u(float f4, float f5, View view) {
        if (this.I == null) {
            this.I = new Rect();
        }
        view.getHitRect(this.I);
        return this.I.contains((int) f4, (int) f5);
    }

    private void v(Drawable drawable, int i2) {
        if (drawable == null || !DrawableCompat.isAutoMirrored(drawable)) {
            return;
        }
        DrawableCompat.setLayoutDirection(drawable, i2);
    }

    private Drawable x() {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        if (layoutDirection == 0) {
            Drawable drawable = this.D;
            if (drawable != null) {
                v(drawable, layoutDirection);
                return this.D;
            }
        } else {
            Drawable drawable2 = this.E;
            if (drawable2 != null) {
                v(drawable2, layoutDirection);
                return this.E;
            }
        }
        return this.F;
    }

    private Drawable y() {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        if (layoutDirection == 0) {
            Drawable drawable = this.E;
            if (drawable != null) {
                v(drawable, layoutDirection);
                return this.E;
            }
        } else {
            Drawable drawable2 = this.D;
            if (drawable2 != null) {
                v(drawable2, layoutDirection);
                return this.D;
            }
        }
        return this.G;
    }

    private void z() {
        if (f5382y0) {
            return;
        }
        this.f5407x = x();
        this.f5408y = y();
    }

    void A(View view, float f4) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f4 == layoutParams.f5417a) {
            return;
        }
        layoutParams.f5417a = f4;
        f(view, f4);
    }

    void D(int i2, View view) {
        int viewDragState = this.f5390g.getViewDragState();
        int viewDragState2 = this.f5391h.getViewDragState();
        int i4 = 2;
        if (viewDragState == 1 || viewDragState2 == 1) {
            i4 = 1;
        } else if (viewDragState != 2 && viewDragState2 != 2) {
            i4 = 0;
        }
        if (view != null && i2 == 0) {
            float f4 = ((LayoutParams) view.getLayoutParams()).f5417a;
            if (f4 == 0.0f) {
                d(view);
            } else if (f4 == 1.0f) {
                e(view);
            }
        }
        if (i4 != this.f5394k) {
            this.f5394k = i4;
            List<DrawerListener> list = this.f5403t;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f5403t.get(size).onDrawerStateChanged(i4);
                }
            }
        }
    }

    void a() {
        if (this.f5401r) {
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            getChildAt(i2).dispatchTouchEvent(obtain);
        }
        obtain.recycle();
        this.f5401r = true;
    }

    public void addDrawerListener(@NonNull DrawerListener drawerListener) {
        if (drawerListener == null) {
            return;
        }
        if (this.f5403t == null) {
            this.f5403t = new ArrayList();
        }
        this.f5403t.add(drawerListener);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i4) {
        if (getDescendantFocusability() == 393216) {
            return;
        }
        int childCount = getChildCount();
        boolean z3 = false;
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (t(childAt)) {
                if (isDrawerOpen(childAt)) {
                    childAt.addFocusables(arrayList, i2, i4);
                    z3 = true;
                }
            } else {
                this.H.add(childAt);
            }
        }
        if (!z3) {
            int size = this.H.size();
            for (int i6 = 0; i6 < size; i6++) {
                View view = this.H.get(i6);
                if (view.getVisibility() == 0) {
                    view.addFocusables(arrayList, i2, i4);
                }
            }
        }
        this.H.clear();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i2, layoutParams);
        if (i() == null && !t(view)) {
            ViewCompat.setImportantForAccessibility(view, 1);
        } else {
            ViewCompat.setImportantForAccessibility(view, 4);
        }
        if (f5381x0) {
            return;
        }
        ViewCompat.setAccessibilityDelegate(view, this.f5384a);
    }

    boolean b(View view, int i2) {
        return (k(view) & i2) == i2;
    }

    void c(boolean z3) {
        boolean smoothSlideViewTo;
        int childCount = getChildCount();
        boolean z4 = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (t(childAt) && (!z3 || layoutParams.f5418b)) {
                int width = childAt.getWidth();
                if (b(childAt, 3)) {
                    smoothSlideViewTo = this.f5390g.smoothSlideViewTo(childAt, -width, childAt.getTop());
                } else {
                    smoothSlideViewTo = this.f5391h.smoothSlideViewTo(childAt, getWidth(), childAt.getTop());
                }
                z4 |= smoothSlideViewTo;
                layoutParams.f5418b = false;
            }
        }
        this.f5392i.removeCallbacks();
        this.f5393j.removeCallbacks();
        if (z4) {
            invalidate();
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // androidx.customview.widget.Openable
    public void close() {
        closeDrawer(GravityCompat.START);
    }

    public void closeDrawer(@NonNull View view) {
        closeDrawer(view, true);
    }

    public void closeDrawers() {
        c(false);
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float f4 = 0.0f;
        for (int i2 = 0; i2 < childCount; i2++) {
            f4 = Math.max(f4, ((LayoutParams) getChildAt(i2).getLayoutParams()).f5417a);
        }
        this.f5388e = f4;
        boolean continueSettling = this.f5390g.continueSettling(true);
        boolean continueSettling2 = this.f5391h.continueSettling(true);
        if (continueSettling || continueSettling2) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    void d(View view) {
        View rootView;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if ((layoutParams.f5419c & 1) == 1) {
            layoutParams.f5419c = 0;
            List<DrawerListener> list = this.f5403t;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f5403t.get(size).onDrawerClosed(view);
                }
            }
            C(view, false);
            B(view);
            if (!hasWindowFocus() || (rootView = getRootView()) == null) {
                return;
            }
            rootView.sendAccessibilityEvent(32);
        }
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) != 0 && motionEvent.getAction() != 10 && this.f5388e > 0.0f) {
            int childCount = getChildCount();
            if (childCount != 0) {
                float x3 = motionEvent.getX();
                float y3 = motionEvent.getY();
                for (int i2 = childCount - 1; i2 >= 0; i2--) {
                    View childAt = getChildAt(i2);
                    if (u(x3, y3, childAt) && !s(childAt) && g(motionEvent, childAt)) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }
        return super.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j4) {
        int height = getHeight();
        boolean s3 = s(view);
        int width = getWidth();
        int save = canvas.save();
        int i2 = 0;
        if (s3) {
            int childCount = getChildCount();
            int i4 = 0;
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (childAt != view && childAt.getVisibility() == 0 && o(childAt) && t(childAt) && childAt.getHeight() >= height) {
                    if (b(childAt, 3)) {
                        int right = childAt.getRight();
                        if (right > i4) {
                            i4 = right;
                        }
                    } else {
                        int left = childAt.getLeft();
                        if (left < width) {
                            width = left;
                        }
                    }
                }
            }
            canvas.clipRect(i4, 0, width, getHeight());
            i2 = i4;
        }
        boolean drawChild = super.drawChild(canvas, view, j4);
        canvas.restoreToCount(save);
        float f4 = this.f5388e;
        if (f4 > 0.0f && s3) {
            int i6 = this.f5387d;
            this.f5389f.setColor((i6 & 16777215) | (((int) ((((-16777216) & i6) >>> 24) * f4)) << 24));
            canvas.drawRect(i2, 0.0f, width, getHeight(), this.f5389f);
        } else if (this.f5407x != null && b(view, 3)) {
            int intrinsicWidth = this.f5407x.getIntrinsicWidth();
            int right2 = view.getRight();
            float max = Math.max(0.0f, Math.min(right2 / this.f5390g.getEdgeSize(), 1.0f));
            this.f5407x.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
            this.f5407x.setAlpha((int) (max * 255.0f));
            this.f5407x.draw(canvas);
        } else if (this.f5408y != null && b(view, 5)) {
            int intrinsicWidth2 = this.f5408y.getIntrinsicWidth();
            int left2 = view.getLeft();
            float max2 = Math.max(0.0f, Math.min((getWidth() - left2) / this.f5391h.getEdgeSize(), 1.0f));
            this.f5408y.setBounds(left2 - intrinsicWidth2, view.getTop(), left2, view.getBottom());
            this.f5408y.setAlpha((int) (max2 * 255.0f));
            this.f5408y.draw(canvas);
        }
        return drawChild;
    }

    void e(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if ((layoutParams.f5419c & 1) == 0) {
            layoutParams.f5419c = 1;
            List<DrawerListener> list = this.f5403t;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f5403t.get(size).onDrawerOpened(view);
                }
            }
            C(view, true);
            B(view);
            if (hasWindowFocus()) {
                sendAccessibilityEvent(32);
            }
        }
    }

    void f(View view, float f4) {
        List<DrawerListener> list = this.f5403t;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f5403t.get(size).onDrawerSlide(view, f4);
            }
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    public float getDrawerElevation() {
        if (f5382y0) {
            return this.f5385b;
        }
        return 0.0f;
    }

    public int getDrawerLockMode(int i2) {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        if (i2 == 3) {
            int i4 = this.f5397n;
            if (i4 != 3) {
                return i4;
            }
            int i5 = layoutDirection == 0 ? this.f5399p : this.f5400q;
            if (i5 != 3) {
                return i5;
            }
            return 0;
        } else if (i2 == 5) {
            int i6 = this.f5398o;
            if (i6 != 3) {
                return i6;
            }
            int i7 = layoutDirection == 0 ? this.f5400q : this.f5399p;
            if (i7 != 3) {
                return i7;
            }
            return 0;
        } else if (i2 == 8388611) {
            int i8 = this.f5399p;
            if (i8 != 3) {
                return i8;
            }
            int i9 = layoutDirection == 0 ? this.f5397n : this.f5398o;
            if (i9 != 3) {
                return i9;
            }
            return 0;
        } else if (i2 != 8388613) {
            return 0;
        } else {
            int i10 = this.f5400q;
            if (i10 != 3) {
                return i10;
            }
            int i11 = layoutDirection == 0 ? this.f5398o : this.f5397n;
            if (i11 != 3) {
                return i11;
            }
            return 0;
        }
    }

    @Nullable
    public CharSequence getDrawerTitle(int i2) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i2, ViewCompat.getLayoutDirection(this));
        if (absoluteGravity == 3) {
            return this.f5409z;
        }
        if (absoluteGravity == 5) {
            return this.A;
        }
        return null;
    }

    @Nullable
    public Drawable getStatusBarBackgroundDrawable() {
        return this.f5406w;
    }

    View h(int i2) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i2, ViewCompat.getLayoutDirection(this)) & 7;
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if ((k(childAt) & 7) == absoluteGravity) {
                return childAt;
            }
        }
        return null;
    }

    View i() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((((LayoutParams) childAt.getLayoutParams()).f5419c & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    public boolean isDrawerOpen(@NonNull View view) {
        if (t(view)) {
            return (((LayoutParams) view.getLayoutParams()).f5419c & 1) == 1;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    public boolean isDrawerVisible(@NonNull View view) {
        if (t(view)) {
            return ((LayoutParams) view.getLayoutParams()).f5417a > 0.0f;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    @Override // androidx.customview.widget.Openable
    public boolean isOpen() {
        return isDrawerOpen(GravityCompat.START);
    }

    View j() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (t(childAt) && isDrawerVisible(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    int k(View view) {
        return GravityCompat.getAbsoluteGravity(((LayoutParams) view.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(this));
    }

    float l(View view) {
        return ((LayoutParams) view.getLayoutParams()).f5417a;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f5396m = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f5396m = true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Object obj;
        super.onDraw(canvas);
        if (!this.C || this.f5406w == null) {
            return;
        }
        int systemWindowInsetTop = (Build.VERSION.SDK_INT < 21 || (obj = this.B) == null) ? 0 : ((WindowInsets) obj).getSystemWindowInsetTop();
        if (systemWindowInsetTop > 0) {
            this.f5406w.setBounds(0, 0, getWidth(), systemWindowInsetTop);
            this.f5406w.draw(canvas);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001b, code lost:
        if (r0 != 3) goto L7;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            int r0 = r7.getActionMasked()
            androidx.customview.widget.ViewDragHelper r1 = r6.f5390g
            boolean r1 = r1.shouldInterceptTouchEvent(r7)
            androidx.customview.widget.ViewDragHelper r2 = r6.f5391h
            boolean r2 = r2.shouldInterceptTouchEvent(r7)
            r1 = r1 | r2
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L38
            if (r0 == r2) goto L31
            r7 = 2
            r4 = 3
            if (r0 == r7) goto L1e
            if (r0 == r4) goto L31
            goto L36
        L1e:
            androidx.customview.widget.ViewDragHelper r7 = r6.f5390g
            boolean r7 = r7.checkTouchSlop(r4)
            if (r7 == 0) goto L36
            androidx.drawerlayout.widget.DrawerLayout$ViewDragCallback r7 = r6.f5392i
            r7.removeCallbacks()
            androidx.drawerlayout.widget.DrawerLayout$ViewDragCallback r7 = r6.f5393j
            r7.removeCallbacks()
            goto L36
        L31:
            r6.c(r2)
            r6.f5401r = r3
        L36:
            r7 = 0
            goto L60
        L38:
            float r0 = r7.getX()
            float r7 = r7.getY()
            r6.f5404u = r0
            r6.f5405v = r7
            float r4 = r6.f5388e
            r5 = 0
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 <= 0) goto L5d
            androidx.customview.widget.ViewDragHelper r4 = r6.f5390g
            int r0 = (int) r0
            int r7 = (int) r7
            android.view.View r7 = r4.findTopChildUnder(r0, r7)
            if (r7 == 0) goto L5d
            boolean r7 = r6.s(r7)
            if (r7 == 0) goto L5d
            r7 = 1
            goto L5e
        L5d:
            r7 = 0
        L5e:
            r6.f5401r = r3
        L60:
            if (r1 != 0) goto L70
            if (r7 != 0) goto L70
            boolean r7 = r6.p()
            if (r7 != 0) goto L70
            boolean r7 = r6.f5401r
            if (r7 == 0) goto L6f
            goto L70
        L6f:
            r2 = 0
        L70:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4 && q()) {
            keyEvent.startTracking();
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            View j4 = j();
            if (j4 != null && getDrawerLockMode(j4) == 0) {
                closeDrawers();
            }
            return j4 != null;
        }
        return super.onKeyUp(i2, keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        WindowInsets rootWindowInsets;
        int i7;
        float f4;
        int i8;
        this.f5395l = true;
        int i9 = i5 - i2;
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (s(childAt)) {
                    int i11 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    childAt.layout(i11, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, childAt.getMeasuredWidth() + i11, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + childAt.getMeasuredHeight());
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (b(childAt, 3)) {
                        float f5 = measuredWidth;
                        i8 = (-measuredWidth) + ((int) (layoutParams.f5417a * f5));
                        f4 = (measuredWidth + i8) / f5;
                    } else {
                        float f6 = measuredWidth;
                        f4 = (i9 - i7) / f6;
                        i8 = i9 - ((int) (layoutParams.f5417a * f6));
                    }
                    boolean z4 = f4 != layoutParams.f5417a;
                    int i12 = layoutParams.gravity & 112;
                    if (i12 == 16) {
                        int i13 = i6 - i4;
                        int i14 = (i13 - measuredHeight) / 2;
                        int i15 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        if (i14 < i15) {
                            i14 = i15;
                        } else {
                            int i16 = i14 + measuredHeight;
                            int i17 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                            if (i16 > i13 - i17) {
                                i14 = (i13 - i17) - measuredHeight;
                            }
                        }
                        childAt.layout(i8, i14, measuredWidth + i8, measuredHeight + i14);
                    } else if (i12 != 80) {
                        int i18 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        childAt.layout(i8, i18, measuredWidth + i8, measuredHeight + i18);
                    } else {
                        int i19 = i6 - i4;
                        childAt.layout(i8, (i19 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i8, i19 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                    }
                    if (z4) {
                        A(childAt, f4);
                    }
                    int i20 = layoutParams.f5417a > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i20) {
                        childAt.setVisibility(i20);
                    }
                }
            }
        }
        if (A0 && (rootWindowInsets = getRootWindowInsets()) != null) {
            Insets systemGestureInsets = WindowInsetsCompat.toWindowInsetsCompat(rootWindowInsets).getSystemGestureInsets();
            ViewDragHelper viewDragHelper = this.f5390g;
            viewDragHelper.setEdgeSize(Math.max(viewDragHelper.getDefaultEdgeSize(), systemGestureInsets.left));
            ViewDragHelper viewDragHelper2 = this.f5391h;
            viewDragHelper2.setEdgeSize(Math.max(viewDragHelper2.getDefaultEdgeSize(), systemGestureInsets.right));
        }
        this.f5395l = false;
        this.f5396m = false;
    }

    @Override // android.view.View
    @SuppressLint({"WrongConstant"})
    protected void onMeasure(int i2, int i4) {
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i4);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i4);
        if (mode != 1073741824 || mode2 != 1073741824) {
            if (!isInEditMode()) {
                throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
            }
            if (mode == 0) {
                size = 300;
            }
            if (mode2 == 0) {
                size2 = 300;
            }
        }
        setMeasuredDimension(size, size2);
        int i5 = 0;
        boolean z3 = this.B != null && ViewCompat.getFitsSystemWindows(this);
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int childCount = getChildCount();
        int i6 = 0;
        boolean z4 = false;
        boolean z5 = false;
        while (i6 < childCount) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (z3) {
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(layoutParams.gravity, layoutDirection);
                    if (ViewCompat.getFitsSystemWindows(childAt)) {
                        if (Build.VERSION.SDK_INT >= 21) {
                            WindowInsets windowInsets = (WindowInsets) this.B;
                            if (absoluteGravity == 3) {
                                windowInsets = windowInsets.replaceSystemWindowInsets(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), i5, windowInsets.getSystemWindowInsetBottom());
                            } else if (absoluteGravity == 5) {
                                windowInsets = windowInsets.replaceSystemWindowInsets(i5, windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
                            }
                            childAt.dispatchApplyWindowInsets(windowInsets);
                        }
                    } else if (Build.VERSION.SDK_INT >= 21) {
                        WindowInsets windowInsets2 = (WindowInsets) this.B;
                        if (absoluteGravity == 3) {
                            windowInsets2 = windowInsets2.replaceSystemWindowInsets(windowInsets2.getSystemWindowInsetLeft(), windowInsets2.getSystemWindowInsetTop(), i5, windowInsets2.getSystemWindowInsetBottom());
                        } else if (absoluteGravity == 5) {
                            windowInsets2 = windowInsets2.replaceSystemWindowInsets(i5, windowInsets2.getSystemWindowInsetTop(), windowInsets2.getSystemWindowInsetRight(), windowInsets2.getSystemWindowInsetBottom());
                        }
                        ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = windowInsets2.getSystemWindowInsetLeft();
                        ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = windowInsets2.getSystemWindowInsetTop();
                        ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = windowInsets2.getSystemWindowInsetRight();
                        ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = windowInsets2.getSystemWindowInsetBottom();
                    }
                }
                if (s(childAt)) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec((size - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec((size2 - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, 1073741824));
                } else if (t(childAt)) {
                    if (f5382y0) {
                        float elevation = ViewCompat.getElevation(childAt);
                        float f4 = this.f5385b;
                        if (elevation != f4) {
                            ViewCompat.setElevation(childAt, f4);
                        }
                    }
                    int k4 = k(childAt) & 7;
                    boolean z6 = k4 == 3;
                    if ((z6 && z4) || (!z6 && z5)) {
                        throw new IllegalStateException("Child drawer has absolute gravity " + n(k4) + " but this " + f5371n0 + " already has a drawer view along that edge");
                    }
                    if (z6) {
                        z4 = true;
                    } else {
                        z5 = true;
                    }
                    childAt.measure(ViewGroup.getChildMeasureSpec(i2, this.f5386c + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, ((ViewGroup.MarginLayoutParams) layoutParams).width), ViewGroup.getChildMeasureSpec(i4, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, ((ViewGroup.MarginLayoutParams) layoutParams).height));
                    i6++;
                    i5 = 0;
                } else {
                    throw new IllegalStateException("Child " + childAt + " at index " + i6 + " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY");
                }
            }
            i6++;
            i5 = 0;
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        View h4;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        int i2 = savedState.f5420a;
        if (i2 != 0 && (h4 = h(i2)) != null) {
            openDrawer(h4);
        }
        int i4 = savedState.f5421b;
        if (i4 != 3) {
            setDrawerLockMode(i4, 3);
        }
        int i5 = savedState.f5422c;
        if (i5 != 3) {
            setDrawerLockMode(i5, 5);
        }
        int i6 = savedState.f5423d;
        if (i6 != 3) {
            setDrawerLockMode(i6, GravityCompat.START);
        }
        int i7 = savedState.f5424e;
        if (i7 != 3) {
            setDrawerLockMode(i7, GravityCompat.END);
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i2) {
        z();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i2).getLayoutParams();
            int i4 = layoutParams.f5419c;
            boolean z3 = i4 == 1;
            boolean z4 = i4 == 2;
            if (z3 || z4) {
                savedState.f5420a = layoutParams.gravity;
                break;
            }
        }
        savedState.f5421b = this.f5397n;
        savedState.f5422c = this.f5398o;
        savedState.f5423d = this.f5399p;
        savedState.f5424e = this.f5400q;
        return savedState;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005b, code lost:
        if (getDrawerLockMode(r7) != 2) goto L19;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            androidx.customview.widget.ViewDragHelper r0 = r6.f5390g
            r0.processTouchEvent(r7)
            androidx.customview.widget.ViewDragHelper r0 = r6.f5391h
            r0.processTouchEvent(r7)
            int r0 = r7.getAction()
            r0 = r0 & 255(0xff, float:3.57E-43)
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L62
            if (r0 == r2) goto L20
            r7 = 3
            if (r0 == r7) goto L1a
            goto L70
        L1a:
            r6.c(r2)
            r6.f5401r = r1
            goto L70
        L20:
            float r0 = r7.getX()
            float r7 = r7.getY()
            androidx.customview.widget.ViewDragHelper r3 = r6.f5390g
            int r4 = (int) r0
            int r5 = (int) r7
            android.view.View r3 = r3.findTopChildUnder(r4, r5)
            if (r3 == 0) goto L5d
            boolean r3 = r6.s(r3)
            if (r3 == 0) goto L5d
            float r3 = r6.f5404u
            float r0 = r0 - r3
            float r3 = r6.f5405v
            float r7 = r7 - r3
            androidx.customview.widget.ViewDragHelper r3 = r6.f5390g
            int r3 = r3.getTouchSlop()
            float r0 = r0 * r0
            float r7 = r7 * r7
            float r0 = r0 + r7
            int r3 = r3 * r3
            float r7 = (float) r3
            int r7 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r7 >= 0) goto L5d
            android.view.View r7 = r6.i()
            if (r7 == 0) goto L5d
            int r7 = r6.getDrawerLockMode(r7)
            r0 = 2
            if (r7 != r0) goto L5e
        L5d:
            r1 = 1
        L5e:
            r6.c(r1)
            goto L70
        L62:
            float r0 = r7.getX()
            float r7 = r7.getY()
            r6.f5404u = r0
            r6.f5405v = r7
            r6.f5401r = r1
        L70:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // androidx.customview.widget.Openable
    public void open() {
        openDrawer(GravityCompat.START);
    }

    public void openDrawer(@NonNull View view) {
        openDrawer(view, true);
    }

    public void removeDrawerListener(@NonNull DrawerListener drawerListener) {
        List<DrawerListener> list;
        if (drawerListener == null || (list = this.f5403t) == null) {
            return;
        }
        list.remove(drawerListener);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z3) {
        super.requestDisallowInterceptTouchEvent(z3);
        if (z3) {
            c(true);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f5395l) {
            return;
        }
        super.requestLayout();
    }

    boolean s(View view) {
        return ((LayoutParams) view.getLayoutParams()).gravity == 0;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setChildInsets(Object obj, boolean z3) {
        this.B = obj;
        this.C = z3;
        setWillNotDraw(!z3 && getBackground() == null);
        requestLayout();
    }

    public void setDrawerElevation(float f4) {
        this.f5385b = f4;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (t(childAt)) {
                ViewCompat.setElevation(childAt, this.f5385b);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(DrawerListener drawerListener) {
        DrawerListener drawerListener2 = this.f5402s;
        if (drawerListener2 != null) {
            removeDrawerListener(drawerListener2);
        }
        if (drawerListener != null) {
            addDrawerListener(drawerListener);
        }
        this.f5402s = drawerListener;
    }

    public void setDrawerLockMode(int i2) {
        setDrawerLockMode(i2, 3);
        setDrawerLockMode(i2, 5);
    }

    public void setDrawerShadow(Drawable drawable, int i2) {
        if (f5382y0) {
            return;
        }
        if ((i2 & GravityCompat.START) == 8388611) {
            this.D = drawable;
        } else if ((i2 & GravityCompat.END) == 8388613) {
            this.E = drawable;
        } else if ((i2 & 3) == 3) {
            this.F = drawable;
        } else if ((i2 & 5) != 5) {
            return;
        } else {
            this.G = drawable;
        }
        z();
        invalidate();
    }

    public void setDrawerTitle(int i2, @Nullable CharSequence charSequence) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i2, ViewCompat.getLayoutDirection(this));
        if (absoluteGravity == 3) {
            this.f5409z = charSequence;
        } else if (absoluteGravity == 5) {
            this.A = charSequence;
        }
    }

    public void setScrimColor(@ColorInt int i2) {
        this.f5387d = i2;
        invalidate();
    }

    public void setStatusBarBackground(@Nullable Drawable drawable) {
        this.f5406w = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(@ColorInt int i2) {
        this.f5406w = new ColorDrawable(i2);
        invalidate();
    }

    boolean t(View view) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(((LayoutParams) view.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(view));
        return ((absoluteGravity & 3) == 0 && (absoluteGravity & 5) == 0) ? false : true;
    }

    void w(View view, float f4) {
        float l4 = l(view);
        float width = view.getWidth();
        int i2 = ((int) (width * f4)) - ((int) (l4 * width));
        if (!b(view, 3)) {
            i2 = -i2;
        }
        view.offsetLeftAndRight(i2);
        A(view, f4);
    }

    public DrawerLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.drawerLayoutStyle);
    }

    public void closeDrawer(@NonNull View view, boolean z3) {
        if (t(view)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (this.f5396m) {
                layoutParams.f5417a = 0.0f;
                layoutParams.f5419c = 0;
            } else if (z3) {
                layoutParams.f5419c |= 4;
                if (b(view, 3)) {
                    this.f5390g.smoothSlideViewTo(view, -view.getWidth(), view.getTop());
                } else {
                    this.f5391h.smoothSlideViewTo(view, getWidth(), view.getTop());
                }
            } else {
                w(view, 0.0f);
                D(0, view);
                view.setVisibility(4);
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    public void openDrawer(@NonNull View view, boolean z3) {
        if (t(view)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (this.f5396m) {
                layoutParams.f5417a = 1.0f;
                layoutParams.f5419c = 1;
                C(view, true);
                B(view);
            } else if (z3) {
                layoutParams.f5419c |= 2;
                if (b(view, 3)) {
                    this.f5390g.smoothSlideViewTo(view, 0, view.getTop());
                } else {
                    this.f5391h.smoothSlideViewTo(view, getWidth() - view.getWidth(), view.getTop());
                }
            } else {
                w(view, 1.0f);
                D(0, view);
                view.setVisibility(0);
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    public DrawerLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f5384a = new ChildAccessibilityDelegate();
        this.f5387d = -1728053248;
        this.f5389f = new Paint();
        this.f5396m = true;
        this.f5397n = 3;
        this.f5398o = 3;
        this.f5399p = 3;
        this.f5400q = 3;
        this.D = null;
        this.E = null;
        this.F = null;
        this.G = null;
        this.K = new AccessibilityViewCommand() { // from class: androidx.drawerlayout.widget.DrawerLayout.1
            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
                if (!DrawerLayout.this.isDrawerOpen(view) || DrawerLayout.this.getDrawerLockMode(view) == 2) {
                    return false;
                }
                DrawerLayout.this.closeDrawer(view);
                return true;
            }
        };
        setDescendantFocusability(262144);
        float f4 = getResources().getDisplayMetrics().density;
        this.f5386c = (int) ((64.0f * f4) + 0.5f);
        float f5 = f4 * 400.0f;
        ViewDragCallback viewDragCallback = new ViewDragCallback(3);
        this.f5392i = viewDragCallback;
        ViewDragCallback viewDragCallback2 = new ViewDragCallback(5);
        this.f5393j = viewDragCallback2;
        ViewDragHelper create = ViewDragHelper.create(this, 1.0f, viewDragCallback);
        this.f5390g = create;
        create.setEdgeTrackingEnabled(1);
        create.setMinVelocity(f5);
        viewDragCallback.setDragger(create);
        ViewDragHelper create2 = ViewDragHelper.create(this, 1.0f, viewDragCallback2);
        this.f5391h = create2;
        create2.setEdgeTrackingEnabled(2);
        create2.setMinVelocity(f5);
        viewDragCallback2.setDragger(create2);
        setFocusableInTouchMode(true);
        ViewCompat.setImportantForAccessibility(this, 1);
        ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegate());
        setMotionEventSplittingEnabled(false);
        if (ViewCompat.getFitsSystemWindows(this)) {
            if (Build.VERSION.SDK_INT >= 21) {
                setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: androidx.drawerlayout.widget.DrawerLayout.2
                    @Override // android.view.View.OnApplyWindowInsetsListener
                    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                        ((DrawerLayout) view).setChildInsets(windowInsets, windowInsets.getSystemWindowInsetTop() > 0);
                        return windowInsets.consumeSystemWindowInsets();
                    }
                });
                setSystemUiVisibility(LogType.UNEXP_ANR);
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f5372o0);
                try {
                    this.f5406w = obtainStyledAttributes.getDrawable(0);
                } finally {
                    obtainStyledAttributes.recycle();
                }
            } else {
                this.f5406w = null;
            }
        }
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.DrawerLayout, i2, 0);
        try {
            int i4 = R.styleable.DrawerLayout_elevation;
            if (obtainStyledAttributes2.hasValue(i4)) {
                this.f5385b = obtainStyledAttributes2.getDimension(i4, 0.0f);
            } else {
                this.f5385b = getResources().getDimension(R.dimen.def_drawer_elevation);
            }
            obtainStyledAttributes2.recycle();
            this.H = new ArrayList<>();
        } catch (Throwable th) {
            obtainStyledAttributes2.recycle();
            throw th;
        }
    }

    public void setDrawerLockMode(int i2, int i4) {
        View h4;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i4, ViewCompat.getLayoutDirection(this));
        if (i4 == 3) {
            this.f5397n = i2;
        } else if (i4 == 5) {
            this.f5398o = i2;
        } else if (i4 == 8388611) {
            this.f5399p = i2;
        } else if (i4 == 8388613) {
            this.f5400q = i2;
        }
        if (i2 != 0) {
            (absoluteGravity == 3 ? this.f5390g : this.f5391h).cancel();
        }
        if (i2 != 1) {
            if (i2 == 2 && (h4 = h(absoluteGravity)) != null) {
                openDrawer(h4);
                return;
            }
            return;
        }
        View h5 = h(absoluteGravity);
        if (h5 != null) {
            closeDrawer(h5);
        }
    }

    public void setStatusBarBackground(int i2) {
        this.f5406w = i2 != 0 ? ContextCompat.getDrawable(getContext(), i2) : null;
        invalidate();
    }

    public boolean isDrawerVisible(int i2) {
        View h4 = h(i2);
        if (h4 != null) {
            return isDrawerVisible(h4);
        }
        return false;
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: d  reason: collision with root package name */
        private static final int f5414d = 1;

        /* renamed from: e  reason: collision with root package name */
        private static final int f5415e = 2;

        /* renamed from: f  reason: collision with root package name */
        private static final int f5416f = 4;

        /* renamed from: a  reason: collision with root package name */
        float f5417a;

        /* renamed from: b  reason: collision with root package name */
        boolean f5418b;

        /* renamed from: c  reason: collision with root package name */
        int f5419c;
        public int gravity;

        public LayoutParams(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.f5380w0);
            this.gravity = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i2, int i4) {
            super(i2, i4);
            this.gravity = 0;
        }

        public LayoutParams(int i2, int i4, int i5) {
            this(i2, i4);
            this.gravity = i5;
        }

        public LayoutParams(@NonNull LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.gravity = 0;
            this.gravity = layoutParams.gravity;
        }

        public LayoutParams(@NonNull ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = 0;
        }

        public LayoutParams(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.gravity = 0;
        }
    }

    public boolean isDrawerOpen(int i2) {
        View h4 = h(i2);
        if (h4 != null) {
            return isDrawerOpen(h4);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.drawerlayout.widget.DrawerLayout.SavedState.1
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
        int f5420a;

        /* renamed from: b  reason: collision with root package name */
        int f5421b;

        /* renamed from: c  reason: collision with root package name */
        int f5422c;

        /* renamed from: d  reason: collision with root package name */
        int f5423d;

        /* renamed from: e  reason: collision with root package name */
        int f5424e;

        public SavedState(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f5420a = 0;
            this.f5420a = parcel.readInt();
            this.f5421b = parcel.readInt();
            this.f5422c = parcel.readInt();
            this.f5423d = parcel.readInt();
            this.f5424e = parcel.readInt();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f5420a);
            parcel.writeInt(this.f5421b);
            parcel.writeInt(this.f5422c);
            parcel.writeInt(this.f5423d);
            parcel.writeInt(this.f5424e);
        }

        public SavedState(@NonNull Parcelable parcelable) {
            super(parcelable);
            this.f5420a = 0;
        }
    }

    public void setDrawerShadow(@DrawableRes int i2, int i4) {
        setDrawerShadow(ContextCompat.getDrawable(getContext(), i2), i4);
    }

    public int getDrawerLockMode(@NonNull View view) {
        if (t(view)) {
            return getDrawerLockMode(((LayoutParams) view.getLayoutParams()).gravity);
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    public void setDrawerLockMode(int i2, @NonNull View view) {
        if (t(view)) {
            setDrawerLockMode(i2, ((LayoutParams) view.getLayoutParams()).gravity);
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer with appropriate layout_gravity");
    }

    public void closeDrawer(int i2) {
        closeDrawer(i2, true);
    }

    public void closeDrawer(int i2, boolean z3) {
        View h4 = h(i2);
        if (h4 != null) {
            closeDrawer(h4, z3);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + n(i2));
    }

    public void openDrawer(int i2) {
        openDrawer(i2, true);
    }

    public void openDrawer(int i2, boolean z3) {
        View h4 = h(i2);
        if (h4 != null) {
            openDrawer(h4, z3);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + n(i2));
    }
}
