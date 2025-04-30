package androidx.core.view;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ClipData;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContentInfo;
import android.view.Display;
import android.view.KeyEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.annotation.DoNotInline;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import androidx.collection.SimpleArrayMap;
import androidx.core.R;
import androidx.core.util.Preconditions;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
@SuppressLint({"PrivateConstructorForUtilityClass"})
/* loaded from: classes.dex */
public class ViewCompat {
    public static final int ACCESSIBILITY_LIVE_REGION_ASSERTIVE = 2;
    public static final int ACCESSIBILITY_LIVE_REGION_NONE = 0;
    public static final int ACCESSIBILITY_LIVE_REGION_POLITE = 1;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_AUTO = 0;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO = 2;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS = 4;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_YES = 1;
    @Deprecated
    public static final int LAYER_TYPE_HARDWARE = 2;
    @Deprecated
    public static final int LAYER_TYPE_NONE = 0;
    @Deprecated
    public static final int LAYER_TYPE_SOFTWARE = 1;
    public static final int LAYOUT_DIRECTION_INHERIT = 2;
    public static final int LAYOUT_DIRECTION_LOCALE = 3;
    public static final int LAYOUT_DIRECTION_LTR = 0;
    public static final int LAYOUT_DIRECTION_RTL = 1;
    @Deprecated
    public static final int MEASURED_HEIGHT_STATE_SHIFT = 16;
    @Deprecated
    public static final int MEASURED_SIZE_MASK = 16777215;
    @Deprecated
    public static final int MEASURED_STATE_MASK = -16777216;
    @Deprecated
    public static final int MEASURED_STATE_TOO_SMALL = 16777216;
    @Deprecated
    public static final int OVER_SCROLL_ALWAYS = 0;
    @Deprecated
    public static final int OVER_SCROLL_IF_CONTENT_SCROLLS = 1;
    @Deprecated
    public static final int OVER_SCROLL_NEVER = 2;
    public static final int SCROLL_AXIS_HORIZONTAL = 1;
    public static final int SCROLL_AXIS_NONE = 0;
    public static final int SCROLL_AXIS_VERTICAL = 2;
    public static final int SCROLL_INDICATOR_BOTTOM = 2;
    public static final int SCROLL_INDICATOR_END = 32;
    public static final int SCROLL_INDICATOR_LEFT = 4;
    public static final int SCROLL_INDICATOR_RIGHT = 8;
    public static final int SCROLL_INDICATOR_START = 16;
    public static final int SCROLL_INDICATOR_TOP = 1;
    public static final int TYPE_NON_TOUCH = 1;
    public static final int TYPE_TOUCH = 0;

    /* renamed from: a  reason: collision with root package name */
    private static final String f4816a = "ViewCompat";

    /* renamed from: c  reason: collision with root package name */
    private static Field f4818c;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f4819d;

    /* renamed from: e  reason: collision with root package name */
    private static Field f4820e;

    /* renamed from: f  reason: collision with root package name */
    private static boolean f4821f;

    /* renamed from: g  reason: collision with root package name */
    private static Method f4822g;

    /* renamed from: h  reason: collision with root package name */
    private static Method f4823h;

    /* renamed from: i  reason: collision with root package name */
    private static boolean f4824i;

    /* renamed from: j  reason: collision with root package name */
    private static WeakHashMap<View, String> f4825j;

    /* renamed from: l  reason: collision with root package name */
    private static Method f4827l;

    /* renamed from: m  reason: collision with root package name */
    private static Field f4828m;

    /* renamed from: o  reason: collision with root package name */
    private static ThreadLocal<Rect> f4830o;

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicInteger f4817b = new AtomicInteger(1);

    /* renamed from: k  reason: collision with root package name */
    private static WeakHashMap<View, ViewPropertyAnimatorCompat> f4826k = null;

    /* renamed from: n  reason: collision with root package name */
    private static boolean f4829n = false;

    /* renamed from: p  reason: collision with root package name */
    private static final int[] f4831p = {R.id.accessibility_custom_action_0, R.id.accessibility_custom_action_1, R.id.accessibility_custom_action_2, R.id.accessibility_custom_action_3, R.id.accessibility_custom_action_4, R.id.accessibility_custom_action_5, R.id.accessibility_custom_action_6, R.id.accessibility_custom_action_7, R.id.accessibility_custom_action_8, R.id.accessibility_custom_action_9, R.id.accessibility_custom_action_10, R.id.accessibility_custom_action_11, R.id.accessibility_custom_action_12, R.id.accessibility_custom_action_13, R.id.accessibility_custom_action_14, R.id.accessibility_custom_action_15, R.id.accessibility_custom_action_16, R.id.accessibility_custom_action_17, R.id.accessibility_custom_action_18, R.id.accessibility_custom_action_19, R.id.accessibility_custom_action_20, R.id.accessibility_custom_action_21, R.id.accessibility_custom_action_22, R.id.accessibility_custom_action_23, R.id.accessibility_custom_action_24, R.id.accessibility_custom_action_25, R.id.accessibility_custom_action_26, R.id.accessibility_custom_action_27, R.id.accessibility_custom_action_28, R.id.accessibility_custom_action_29, R.id.accessibility_custom_action_30, R.id.accessibility_custom_action_31};

    /* renamed from: q  reason: collision with root package name */
    private static final OnReceiveContentViewBehavior f4832q = new OnReceiveContentViewBehavior() { // from class: androidx.core.view.d
        @Override // androidx.core.view.OnReceiveContentViewBehavior
        public final ContentInfoCompat onReceiveContent(ContentInfoCompat contentInfoCompat) {
            ContentInfoCompat p3;
            p3 = ViewCompat.p(contentInfoCompat);
            return p3;
        }
    };

    /* renamed from: r  reason: collision with root package name */
    private static final AccessibilityPaneVisibilityManager f4833r = new AccessibilityPaneVisibilityManager();

    /* loaded from: classes.dex */
    static class AccessibilityPaneVisibilityManager implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {

        /* renamed from: a  reason: collision with root package name */
        private final WeakHashMap<View, Boolean> f4834a = new WeakHashMap<>();

        AccessibilityPaneVisibilityManager() {
        }

        @RequiresApi(19)
        private void b(View view, boolean z3) {
            boolean z4 = view.getVisibility() == 0;
            if (z3 != z4) {
                ViewCompat.q(view, z4 ? 16 : 32);
                this.f4834a.put(view, Boolean.valueOf(z4));
            }
        }

        @RequiresApi(19)
        private void c(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        @RequiresApi(19)
        private void e(View view) {
            Api16Impl.o(view.getViewTreeObserver(), this);
        }

        @RequiresApi(19)
        void a(View view) {
            this.f4834a.put(view, Boolean.valueOf(view.getVisibility() == 0));
            view.addOnAttachStateChangeListener(this);
            if (Api19Impl.b(view)) {
                c(view);
            }
        }

        @RequiresApi(19)
        void d(View view) {
            this.f4834a.remove(view);
            view.removeOnAttachStateChangeListener(this);
            e(view);
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        @RequiresApi(19)
        public void onGlobalLayout() {
            if (Build.VERSION.SDK_INT < 28) {
                for (Map.Entry<View, Boolean> entry : this.f4834a.entrySet()) {
                    b(entry.getKey(), entry.getValue().booleanValue());
                }
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        @RequiresApi(19)
        public void onViewAttachedToWindow(View view) {
            c(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static abstract class AccessibilityViewProperty<T> {

        /* renamed from: a  reason: collision with root package name */
        private final int f4835a;

        /* renamed from: b  reason: collision with root package name */
        private final Class<T> f4836b;

        /* renamed from: c  reason: collision with root package name */
        private final int f4837c;

        /* renamed from: d  reason: collision with root package name */
        private final int f4838d;

        AccessibilityViewProperty(int i2, Class<T> cls, int i4) {
            this(i2, cls, 0, i4);
        }

        private boolean b() {
            return Build.VERSION.SDK_INT >= 19;
        }

        private boolean c() {
            return Build.VERSION.SDK_INT >= this.f4837c;
        }

        boolean a(Boolean bool, Boolean bool2) {
            return (bool != null && bool.booleanValue()) == (bool2 != null && bool2.booleanValue());
        }

        abstract T d(View view);

        abstract void e(View view, T t3);

        T f(View view) {
            if (c()) {
                return d(view);
            }
            if (b()) {
                T t3 = (T) view.getTag(this.f4835a);
                if (this.f4836b.isInstance(t3)) {
                    return t3;
                }
                return null;
            }
            return null;
        }

        void g(View view, T t3) {
            if (c()) {
                e(view, t3);
            } else if (b() && h(f(view), t3)) {
                ViewCompat.i(view);
                view.setTag(this.f4835a, t3);
                ViewCompat.q(view, this.f4838d);
            }
        }

        boolean h(T t3, T t4) {
            return !t4.equals(t3);
        }

        AccessibilityViewProperty(int i2, Class<T> cls, int i4, int i5) {
            this.f4835a = i2;
            this.f4836b = cls;
            this.f4838d = i4;
            this.f4837c = i5;
        }
    }

    @RequiresApi(15)
    /* loaded from: classes.dex */
    static class Api15Impl {
        private Api15Impl() {
        }

        @DoNotInline
        static boolean a(@NonNull View view) {
            return view.hasOnClickListeners();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(16)
    /* loaded from: classes.dex */
    public static class Api16Impl {
        private Api16Impl() {
        }

        @DoNotInline
        static AccessibilityNodeProvider a(View view) {
            return view.getAccessibilityNodeProvider();
        }

        @DoNotInline
        static boolean b(View view) {
            return view.getFitsSystemWindows();
        }

        @DoNotInline
        static int c(View view) {
            return view.getImportantForAccessibility();
        }

        @DoNotInline
        static int d(View view) {
            return view.getMinimumHeight();
        }

        @DoNotInline
        static int e(View view) {
            return view.getMinimumWidth();
        }

        @DoNotInline
        static ViewParent f(View view) {
            return view.getParentForAccessibility();
        }

        @DoNotInline
        static int g(View view) {
            return view.getWindowSystemUiVisibility();
        }

        @DoNotInline
        static boolean h(View view) {
            return view.hasOverlappingRendering();
        }

        @DoNotInline
        static boolean i(View view) {
            return view.hasTransientState();
        }

        @DoNotInline
        static boolean j(View view, int i2, Bundle bundle) {
            return view.performAccessibilityAction(i2, bundle);
        }

        @DoNotInline
        static void k(View view) {
            view.postInvalidateOnAnimation();
        }

        @DoNotInline
        static void l(View view, int i2, int i4, int i5, int i6) {
            view.postInvalidateOnAnimation(i2, i4, i5, i6);
        }

        @DoNotInline
        static void m(View view, Runnable runnable) {
            view.postOnAnimation(runnable);
        }

        @DoNotInline
        static void n(View view, Runnable runnable, long j4) {
            view.postOnAnimationDelayed(runnable, j4);
        }

        @DoNotInline
        static void o(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        }

        @DoNotInline
        static void p(View view) {
            view.requestFitSystemWindows();
        }

        @DoNotInline
        static void q(View view, Drawable drawable) {
            view.setBackground(drawable);
        }

        @DoNotInline
        static void r(View view, boolean z3) {
            view.setHasTransientState(z3);
        }

        @DoNotInline
        static void s(View view, int i2) {
            view.setImportantForAccessibility(i2);
        }
    }

    @RequiresApi(17)
    /* loaded from: classes.dex */
    static class Api17Impl {
        private Api17Impl() {
        }

        @DoNotInline
        static int a() {
            return View.generateViewId();
        }

        @DoNotInline
        static Display b(@NonNull View view) {
            return view.getDisplay();
        }

        @DoNotInline
        static int c(View view) {
            return view.getLabelFor();
        }

        @DoNotInline
        static int d(View view) {
            return view.getLayoutDirection();
        }

        @DoNotInline
        static int e(View view) {
            return view.getPaddingEnd();
        }

        @DoNotInline
        static int f(View view) {
            return view.getPaddingStart();
        }

        @DoNotInline
        static boolean g(View view) {
            return view.isPaddingRelative();
        }

        @DoNotInline
        static void h(View view, int i2) {
            view.setLabelFor(i2);
        }

        @DoNotInline
        static void i(View view, Paint paint) {
            view.setLayerPaint(paint);
        }

        @DoNotInline
        static void j(View view, int i2) {
            view.setLayoutDirection(i2);
        }

        @DoNotInline
        static void k(View view, int i2, int i4, int i5, int i6) {
            view.setPaddingRelative(i2, i4, i5, i6);
        }
    }

    @RequiresApi(18)
    /* loaded from: classes.dex */
    static class Api18Impl {
        private Api18Impl() {
        }

        @DoNotInline
        static Rect a(@NonNull View view) {
            return view.getClipBounds();
        }

        @DoNotInline
        static boolean b(@NonNull View view) {
            return view.isInLayout();
        }

        @DoNotInline
        static void c(@NonNull View view, Rect rect) {
            view.setClipBounds(rect);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(19)
    /* loaded from: classes.dex */
    public static class Api19Impl {
        private Api19Impl() {
        }

        @DoNotInline
        static int a(View view) {
            return view.getAccessibilityLiveRegion();
        }

        @DoNotInline
        static boolean b(@NonNull View view) {
            return view.isAttachedToWindow();
        }

        @DoNotInline
        static boolean c(@NonNull View view) {
            return view.isLaidOut();
        }

        @DoNotInline
        static boolean d(@NonNull View view) {
            return view.isLayoutDirectionResolved();
        }

        @DoNotInline
        static void e(ViewParent viewParent, View view, View view2, int i2) {
            viewParent.notifySubtreeAccessibilityStateChanged(view, view2, i2);
        }

        @DoNotInline
        static void f(View view, int i2) {
            view.setAccessibilityLiveRegion(i2);
        }

        @DoNotInline
        static void g(AccessibilityEvent accessibilityEvent, int i2) {
            accessibilityEvent.setContentChangeTypes(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(20)
    /* loaded from: classes.dex */
    public static class Api20Impl {
        private Api20Impl() {
        }

        @DoNotInline
        static WindowInsets a(View view, WindowInsets windowInsets) {
            return view.dispatchApplyWindowInsets(windowInsets);
        }

        @DoNotInline
        static WindowInsets b(View view, WindowInsets windowInsets) {
            return view.onApplyWindowInsets(windowInsets);
        }

        @DoNotInline
        static void c(View view) {
            view.requestApplyInsets();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        static void a(@NonNull WindowInsets windowInsets, @NonNull View view) {
            View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback);
            if (onApplyWindowInsetsListener != null) {
                onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
            }
        }

        @DoNotInline
        static WindowInsetsCompat b(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Rect rect) {
            WindowInsets windowInsets = windowInsetsCompat.toWindowInsets();
            if (windowInsets != null) {
                return WindowInsetsCompat.toWindowInsetsCompat(view.computeSystemWindowInsets(windowInsets, rect), view);
            }
            rect.setEmpty();
            return windowInsetsCompat;
        }

        @DoNotInline
        static boolean c(@NonNull View view, float f4, float f5, boolean z3) {
            return view.dispatchNestedFling(f4, f5, z3);
        }

        @DoNotInline
        static boolean d(@NonNull View view, float f4, float f5) {
            return view.dispatchNestedPreFling(f4, f5);
        }

        @DoNotInline
        static boolean e(View view, int i2, int i4, int[] iArr, int[] iArr2) {
            return view.dispatchNestedPreScroll(i2, i4, iArr, iArr2);
        }

        @DoNotInline
        static boolean f(View view, int i2, int i4, int i5, int i6, int[] iArr) {
            return view.dispatchNestedScroll(i2, i4, i5, i6, iArr);
        }

        @DoNotInline
        static ColorStateList g(View view) {
            return view.getBackgroundTintList();
        }

        @Nullable
        @DoNotInline
        public static WindowInsetsCompat getRootWindowInsets(@NonNull View view) {
            return WindowInsetsCompat.Api21ReflectionHolder.getRootWindowInsets(view);
        }

        @DoNotInline
        static PorterDuff.Mode h(View view) {
            return view.getBackgroundTintMode();
        }

        @DoNotInline
        static float i(View view) {
            return view.getElevation();
        }

        @DoNotInline
        static String j(View view) {
            return view.getTransitionName();
        }

        @DoNotInline
        static float k(View view) {
            return view.getTranslationZ();
        }

        @DoNotInline
        static float l(@NonNull View view) {
            return view.getZ();
        }

        @DoNotInline
        static boolean m(View view) {
            return view.hasNestedScrollingParent();
        }

        @DoNotInline
        static boolean n(View view) {
            return view.isImportantForAccessibility();
        }

        @DoNotInline
        static boolean o(View view) {
            return view.isNestedScrollingEnabled();
        }

        @DoNotInline
        static void p(View view, ColorStateList colorStateList) {
            view.setBackgroundTintList(colorStateList);
        }

        @DoNotInline
        static void q(View view, PorterDuff.Mode mode) {
            view.setBackgroundTintMode(mode);
        }

        @DoNotInline
        static void r(View view, float f4) {
            view.setElevation(f4);
        }

        @DoNotInline
        static void s(View view, boolean z3) {
            view.setNestedScrollingEnabled(z3);
        }

        @DoNotInline
        static void t(@NonNull final View view, @Nullable final OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
            if (Build.VERSION.SDK_INT < 30) {
                view.setTag(R.id.tag_on_apply_window_listener, onApplyWindowInsetsListener);
            }
            if (onApplyWindowInsetsListener == null) {
                view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback));
            } else {
                view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: androidx.core.view.ViewCompat.Api21Impl.1

                    /* renamed from: a  reason: collision with root package name */
                    WindowInsetsCompat f4839a = null;

                    @Override // android.view.View.OnApplyWindowInsetsListener
                    public WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, view2);
                        int i2 = Build.VERSION.SDK_INT;
                        if (i2 < 30) {
                            Api21Impl.a(windowInsets, view);
                            if (windowInsetsCompat.equals(this.f4839a)) {
                                return onApplyWindowInsetsListener.onApplyWindowInsets(view2, windowInsetsCompat).toWindowInsets();
                            }
                        }
                        this.f4839a = windowInsetsCompat;
                        WindowInsetsCompat onApplyWindowInsets = onApplyWindowInsetsListener.onApplyWindowInsets(view2, windowInsetsCompat);
                        if (i2 >= 30) {
                            return onApplyWindowInsets.toWindowInsets();
                        }
                        ViewCompat.requestApplyInsets(view2);
                        return onApplyWindowInsets.toWindowInsets();
                    }
                });
            }
        }

        @DoNotInline
        static void u(View view, String str) {
            view.setTransitionName(str);
        }

        @DoNotInline
        static void v(View view, float f4) {
            view.setTranslationZ(f4);
        }

        @DoNotInline
        static void w(@NonNull View view, float f4) {
            view.setZ(f4);
        }

        @DoNotInline
        static boolean x(View view, int i2) {
            return view.startNestedScroll(i2);
        }

        @DoNotInline
        static void y(View view) {
            view.stopNestedScroll();
        }
    }

    @RequiresApi(23)
    /* loaded from: classes.dex */
    private static class Api23Impl {
        private Api23Impl() {
        }

        @DoNotInline
        static int a(@NonNull View view) {
            return view.getScrollIndicators();
        }

        @DoNotInline
        static void b(@NonNull View view, int i2) {
            view.setScrollIndicators(i2);
        }

        @DoNotInline
        static void c(@NonNull View view, int i2, int i4) {
            view.setScrollIndicators(i2, i4);
        }

        @Nullable
        public static WindowInsetsCompat getRootWindowInsets(@NonNull View view) {
            WindowInsets rootWindowInsets = view.getRootWindowInsets();
            if (rootWindowInsets == null) {
                return null;
            }
            WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(rootWindowInsets);
            windowInsetsCompat.e(windowInsetsCompat);
            windowInsetsCompat.a(view.getRootView());
            return windowInsetsCompat;
        }
    }

    @RequiresApi(24)
    /* loaded from: classes.dex */
    static class Api24Impl {
        private Api24Impl() {
        }

        @DoNotInline
        static void a(@NonNull View view) {
            view.cancelDragAndDrop();
        }

        @DoNotInline
        static void b(View view) {
            view.dispatchFinishTemporaryDetach();
        }

        @DoNotInline
        static void c(View view) {
            view.dispatchStartTemporaryDetach();
        }

        @DoNotInline
        static void d(@NonNull View view, PointerIcon pointerIcon) {
            view.setPointerIcon(pointerIcon);
        }

        @DoNotInline
        static boolean e(@NonNull View view, @Nullable ClipData clipData, @NonNull View.DragShadowBuilder dragShadowBuilder, @Nullable Object obj, int i2) {
            return view.startDragAndDrop(clipData, dragShadowBuilder, obj, i2);
        }

        @DoNotInline
        static void f(@NonNull View view, @NonNull View.DragShadowBuilder dragShadowBuilder) {
            view.updateDragShadow(dragShadowBuilder);
        }
    }

    @RequiresApi(26)
    /* loaded from: classes.dex */
    static class Api26Impl {
        private Api26Impl() {
        }

        @DoNotInline
        static void a(@NonNull View view, Collection<View> collection, int i2) {
            view.addKeyboardNavigationClusters(collection, i2);
        }

        @DoNotInline
        static int b(View view) {
            return view.getImportantForAutofill();
        }

        @DoNotInline
        static int c(@NonNull View view) {
            return view.getNextClusterForwardId();
        }

        @DoNotInline
        static boolean d(@NonNull View view) {
            return view.hasExplicitFocusable();
        }

        @DoNotInline
        static boolean e(@NonNull View view) {
            return view.isFocusedByDefault();
        }

        @DoNotInline
        static boolean f(View view) {
            return view.isImportantForAutofill();
        }

        @DoNotInline
        static boolean g(@NonNull View view) {
            return view.isKeyboardNavigationCluster();
        }

        @DoNotInline
        static View h(@NonNull View view, View view2, int i2) {
            return view.keyboardNavigationClusterSearch(view2, i2);
        }

        @DoNotInline
        static boolean i(@NonNull View view) {
            return view.restoreDefaultFocus();
        }

        @DoNotInline
        static void j(@NonNull View view, String... strArr) {
            view.setAutofillHints(strArr);
        }

        @DoNotInline
        static void k(@NonNull View view, boolean z3) {
            view.setFocusedByDefault(z3);
        }

        @DoNotInline
        static void l(View view, int i2) {
            view.setImportantForAutofill(i2);
        }

        @DoNotInline
        static void m(@NonNull View view, boolean z3) {
            view.setKeyboardNavigationCluster(z3);
        }

        @DoNotInline
        static void n(View view, int i2) {
            view.setNextClusterForwardId(i2);
        }

        @DoNotInline
        static void o(@NonNull View view, CharSequence charSequence) {
            view.setTooltipText(charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(28)
    /* loaded from: classes.dex */
    public static class Api28Impl {
        private Api28Impl() {
        }

        @DoNotInline
        static void a(@NonNull View view, @NonNull final OnUnhandledKeyEventListenerCompat onUnhandledKeyEventListenerCompat) {
            int i2 = R.id.tag_unhandled_key_listeners;
            SimpleArrayMap simpleArrayMap = (SimpleArrayMap) view.getTag(i2);
            if (simpleArrayMap == null) {
                simpleArrayMap = new SimpleArrayMap();
                view.setTag(i2, simpleArrayMap);
            }
            Objects.requireNonNull(onUnhandledKeyEventListenerCompat);
            View.OnUnhandledKeyEventListener onUnhandledKeyEventListener = new View.OnUnhandledKeyEventListener() { // from class: androidx.core.view.e
                @Override // android.view.View.OnUnhandledKeyEventListener
                public final boolean onUnhandledKeyEvent(View view2, KeyEvent keyEvent) {
                    return ViewCompat.OnUnhandledKeyEventListenerCompat.this.onUnhandledKeyEvent(view2, keyEvent);
                }
            };
            simpleArrayMap.put(onUnhandledKeyEventListenerCompat, onUnhandledKeyEventListener);
            view.addOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
        }

        @DoNotInline
        static CharSequence b(View view) {
            return view.getAccessibilityPaneTitle();
        }

        @DoNotInline
        static boolean c(View view) {
            return view.isAccessibilityHeading();
        }

        @DoNotInline
        static boolean d(View view) {
            return view.isScreenReaderFocusable();
        }

        @DoNotInline
        static void e(@NonNull View view, @NonNull OnUnhandledKeyEventListenerCompat onUnhandledKeyEventListenerCompat) {
            View.OnUnhandledKeyEventListener onUnhandledKeyEventListener;
            SimpleArrayMap simpleArrayMap = (SimpleArrayMap) view.getTag(R.id.tag_unhandled_key_listeners);
            if (simpleArrayMap == null || (onUnhandledKeyEventListener = (View.OnUnhandledKeyEventListener) simpleArrayMap.get(onUnhandledKeyEventListenerCompat)) == null) {
                return;
            }
            view.removeOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
        }

        @DoNotInline
        static <T> T f(View view, int i2) {
            return (T) view.requireViewById(i2);
        }

        @DoNotInline
        static void g(View view, boolean z3) {
            view.setAccessibilityHeading(z3);
        }

        @DoNotInline
        static void h(View view, CharSequence charSequence) {
            view.setAccessibilityPaneTitle(charSequence);
        }

        @DoNotInline
        static void i(View view, boolean z3) {
            view.setScreenReaderFocusable(z3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(29)
    /* loaded from: classes.dex */
    public static class Api29Impl {
        private Api29Impl() {
        }

        @DoNotInline
        static View.AccessibilityDelegate a(View view) {
            return view.getAccessibilityDelegate();
        }

        @DoNotInline
        static List<Rect> b(View view) {
            return view.getSystemGestureExclusionRects();
        }

        @DoNotInline
        static void c(@NonNull View view, @NonNull Context context, @NonNull int[] iArr, @Nullable AttributeSet attributeSet, @NonNull TypedArray typedArray, int i2, int i4) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i2, i4);
        }

        @DoNotInline
        static void d(View view, List<Rect> list) {
            view.setSystemGestureExclusionRects(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(30)
    /* loaded from: classes.dex */
    public static class Api30Impl {
        private Api30Impl() {
        }

        @DoNotInline
        static CharSequence a(View view) {
            return view.getStateDescription();
        }

        @DoNotInline
        static void b(View view, CharSequence charSequence) {
            view.setStateDescription(charSequence);
        }

        @Nullable
        public static WindowInsetsControllerCompat getWindowInsetsController(@NonNull View view) {
            WindowInsetsController windowInsetsController = view.getWindowInsetsController();
            if (windowInsetsController != null) {
                return WindowInsetsControllerCompat.toWindowInsetsControllerCompat(windowInsetsController);
            }
            return null;
        }
    }

    @RequiresApi(31)
    /* loaded from: classes.dex */
    private static final class Api31Impl {
        private Api31Impl() {
        }

        @Nullable
        @DoNotInline
        public static String[] getReceiveContentMimeTypes(@NonNull View view) {
            return view.getReceiveContentMimeTypes();
        }

        @Nullable
        @DoNotInline
        public static ContentInfoCompat performReceiveContent(@NonNull View view, @NonNull ContentInfoCompat contentInfoCompat) {
            ContentInfo contentInfo = contentInfoCompat.toContentInfo();
            ContentInfo performReceiveContent = view.performReceiveContent(contentInfo);
            if (performReceiveContent == null) {
                return null;
            }
            return performReceiveContent == contentInfo ? contentInfoCompat : ContentInfoCompat.toContentInfoCompat(performReceiveContent);
        }

        @DoNotInline
        public static void setOnReceiveContentListener(@NonNull View view, @Nullable String[] strArr, @Nullable OnReceiveContentListener onReceiveContentListener) {
            if (onReceiveContentListener == null) {
                view.setOnReceiveContentListener(strArr, null);
            } else {
                view.setOnReceiveContentListener(strArr, new OnReceiveContentListenerAdapter(onReceiveContentListener));
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface FocusDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface FocusRealDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface FocusRelativeDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface NestedScrollType {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(31)
    /* loaded from: classes.dex */
    public static final class OnReceiveContentListenerAdapter implements android.view.OnReceiveContentListener {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final OnReceiveContentListener f4842a;

        OnReceiveContentListenerAdapter(@NonNull OnReceiveContentListener onReceiveContentListener) {
            this.f4842a = onReceiveContentListener;
        }

        @Override // android.view.OnReceiveContentListener
        @Nullable
        public ContentInfo onReceiveContent(@NonNull View view, @NonNull ContentInfo contentInfo) {
            ContentInfoCompat contentInfoCompat = ContentInfoCompat.toContentInfoCompat(contentInfo);
            ContentInfoCompat onReceiveContent = this.f4842a.onReceiveContent(view, contentInfoCompat);
            if (onReceiveContent == null) {
                return null;
            }
            return onReceiveContent == contentInfoCompat ? contentInfo : onReceiveContent.toContentInfo();
        }
    }

    /* loaded from: classes.dex */
    public interface OnUnhandledKeyEventListenerCompat {
        boolean onUnhandledKeyEvent(@NonNull View view, @NonNull KeyEvent keyEvent);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface ScrollAxis {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface ScrollIndicators {
    }

    /* loaded from: classes.dex */
    static class UnhandledKeyEventManager {

        /* renamed from: d  reason: collision with root package name */
        private static final ArrayList<WeakReference<View>> f4843d = new ArrayList<>();
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private WeakHashMap<View, Boolean> f4844a = null;

        /* renamed from: b  reason: collision with root package name */
        private SparseArray<WeakReference<View>> f4845b = null;

        /* renamed from: c  reason: collision with root package name */
        private WeakReference<KeyEvent> f4846c = null;

        UnhandledKeyEventManager() {
        }

        static UnhandledKeyEventManager a(View view) {
            int i2 = R.id.tag_unhandled_key_event_manager;
            UnhandledKeyEventManager unhandledKeyEventManager = (UnhandledKeyEventManager) view.getTag(i2);
            if (unhandledKeyEventManager == null) {
                UnhandledKeyEventManager unhandledKeyEventManager2 = new UnhandledKeyEventManager();
                view.setTag(i2, unhandledKeyEventManager2);
                return unhandledKeyEventManager2;
            }
            return unhandledKeyEventManager;
        }

        @Nullable
        private View c(View view, KeyEvent keyEvent) {
            WeakHashMap<View, Boolean> weakHashMap = this.f4844a;
            if (weakHashMap != null && weakHashMap.containsKey(view)) {
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                        View c4 = c(viewGroup.getChildAt(childCount), keyEvent);
                        if (c4 != null) {
                            return c4;
                        }
                    }
                }
                if (e(view, keyEvent)) {
                    return view;
                }
            }
            return null;
        }

        private SparseArray<WeakReference<View>> d() {
            if (this.f4845b == null) {
                this.f4845b = new SparseArray<>();
            }
            return this.f4845b;
        }

        private boolean e(@NonNull View view, @NonNull KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_unhandled_key_listeners);
            if (arrayList != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (((OnUnhandledKeyEventListenerCompat) arrayList.get(size)).onUnhandledKeyEvent(view, keyEvent)) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }

        private void g() {
            WeakHashMap<View, Boolean> weakHashMap = this.f4844a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList<WeakReference<View>> arrayList = f4843d;
            if (arrayList.isEmpty()) {
                return;
            }
            synchronized (arrayList) {
                if (this.f4844a == null) {
                    this.f4844a = new WeakHashMap<>();
                }
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ArrayList<WeakReference<View>> arrayList2 = f4843d;
                    View view = arrayList2.get(size).get();
                    if (view == null) {
                        arrayList2.remove(size);
                    } else {
                        this.f4844a.put(view, Boolean.TRUE);
                        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                            this.f4844a.put((View) parent, Boolean.TRUE);
                        }
                    }
                }
            }
        }

        static void h(View view) {
            ArrayList<WeakReference<View>> arrayList = f4843d;
            synchronized (arrayList) {
                Iterator<WeakReference<View>> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    if (it2.next().get() == view) {
                        return;
                    }
                }
                f4843d.add(new WeakReference<>(view));
            }
        }

        static void i(View view) {
            synchronized (f4843d) {
                int i2 = 0;
                while (true) {
                    ArrayList<WeakReference<View>> arrayList = f4843d;
                    if (i2 >= arrayList.size()) {
                        return;
                    }
                    if (arrayList.get(i2).get() == view) {
                        arrayList.remove(i2);
                        return;
                    }
                    i2++;
                }
            }
        }

        boolean b(View view, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 0) {
                g();
            }
            View c4 = c(view, keyEvent);
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (c4 != null && !KeyEvent.isModifierKey(keyCode)) {
                    d().put(keyCode, new WeakReference<>(c4));
                }
            }
            return c4 != null;
        }

        boolean f(KeyEvent keyEvent) {
            int indexOfKey;
            WeakReference<KeyEvent> weakReference = this.f4846c;
            if (weakReference == null || weakReference.get() != keyEvent) {
                this.f4846c = new WeakReference<>(keyEvent);
                WeakReference<View> weakReference2 = null;
                SparseArray<WeakReference<View>> d4 = d();
                if (keyEvent.getAction() == 1 && (indexOfKey = d4.indexOfKey(keyEvent.getKeyCode())) >= 0) {
                    weakReference2 = d4.valueAt(indexOfKey);
                    d4.removeAt(indexOfKey);
                }
                if (weakReference2 == null) {
                    weakReference2 = d4.get(keyEvent.getKeyCode());
                }
                if (weakReference2 != null) {
                    View view = weakReference2.get();
                    if (view != null && ViewCompat.isAttachedToWindow(view)) {
                        e(view, keyEvent);
                    }
                    return true;
                }
                return false;
            }
            return false;
        }
    }

    @Deprecated
    protected ViewCompat() {
    }

    public static int addAccessibilityAction(@NonNull View view, @NonNull CharSequence charSequence, @NonNull AccessibilityViewCommand accessibilityViewCommand) {
        int m4 = m(view, charSequence);
        if (m4 != -1) {
            c(view, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(m4, charSequence, accessibilityViewCommand));
        }
        return m4;
    }

    public static void addKeyboardNavigationClusters(@NonNull View view, @NonNull Collection<View> collection, int i2) {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.a(view, collection, i2);
        }
    }

    public static void addOnUnhandledKeyEventListener(@NonNull View view, @NonNull OnUnhandledKeyEventListenerCompat onUnhandledKeyEventListenerCompat) {
        if (Build.VERSION.SDK_INT >= 28) {
            Api28Impl.a(view, onUnhandledKeyEventListenerCompat);
            return;
        }
        int i2 = R.id.tag_unhandled_key_listeners;
        ArrayList arrayList = (ArrayList) view.getTag(i2);
        if (arrayList == null) {
            arrayList = new ArrayList();
            view.setTag(i2, arrayList);
        }
        arrayList.add(onUnhandledKeyEventListenerCompat);
        if (arrayList.size() == 1) {
            UnhandledKeyEventManager.h(view);
        }
    }

    @NonNull
    public static ViewPropertyAnimatorCompat animate(@NonNull View view) {
        if (f4826k == null) {
            f4826k = new WeakHashMap<>();
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = f4826k.get(view);
        if (viewPropertyAnimatorCompat == null) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2 = new ViewPropertyAnimatorCompat(view);
            f4826k.put(view, viewPropertyAnimatorCompat2);
            return viewPropertyAnimatorCompat2;
        }
        return viewPropertyAnimatorCompat;
    }

    private static AccessibilityViewProperty<Boolean> b() {
        return new AccessibilityViewProperty<Boolean>(R.id.tag_accessibility_heading, Boolean.class, 28) { // from class: androidx.core.view.ViewCompat.4
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            @RequiresApi(28)
            /* renamed from: i */
            public Boolean d(View view) {
                return Boolean.valueOf(Api28Impl.c(view));
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            @RequiresApi(28)
            /* renamed from: j */
            public void e(View view, Boolean bool) {
                Api28Impl.g(view, bool.booleanValue());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            /* renamed from: k */
            public boolean h(Boolean bool, Boolean bool2) {
                return !a(bool, bool2);
            }
        };
    }

    private static void c(@NonNull View view, @NonNull AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat) {
        if (Build.VERSION.SDK_INT >= 21) {
            i(view);
            s(accessibilityActionCompat.getId(), view);
            l(view).add(accessibilityActionCompat);
            q(view, 0);
        }
    }

    @Deprecated
    public static boolean canScrollHorizontally(View view, int i2) {
        return view.canScrollHorizontally(i2);
    }

    @Deprecated
    public static boolean canScrollVertically(View view, int i2) {
        return view.canScrollVertically(i2);
    }

    public static void cancelDragAndDrop(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 24) {
            Api24Impl.a(view);
        }
    }

    @Deprecated
    public static int combineMeasuredStates(int i2, int i4) {
        return View.combineMeasuredStates(i2, i4);
    }

    @NonNull
    public static WindowInsetsCompat computeSystemWindowInsets(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Rect rect) {
        return Build.VERSION.SDK_INT >= 21 ? Api21Impl.b(view, windowInsetsCompat, rect) : windowInsetsCompat;
    }

    private static void d() {
        try {
            f4822g = View.class.getDeclaredMethod("dispatchStartTemporaryDetach", new Class[0]);
            f4823h = View.class.getDeclaredMethod("dispatchFinishTemporaryDetach", new Class[0]);
        } catch (NoSuchMethodException unused) {
        }
        f4824i = true;
    }

    @NonNull
    public static WindowInsetsCompat dispatchApplyWindowInsets(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
        WindowInsets windowInsets;
        if (Build.VERSION.SDK_INT >= 21 && (windowInsets = windowInsetsCompat.toWindowInsets()) != null) {
            WindowInsets a4 = Api20Impl.a(view, windowInsets);
            if (!a4.equals(windowInsets)) {
                return WindowInsetsCompat.toWindowInsetsCompat(a4, view);
            }
        }
        return windowInsetsCompat;
    }

    public static void dispatchFinishTemporaryDetach(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 24) {
            Api24Impl.b(view);
            return;
        }
        if (!f4824i) {
            d();
        }
        Method method = f4823h;
        if (method != null) {
            try {
                method.invoke(view, new Object[0]);
                return;
            } catch (Exception unused) {
                return;
            }
        }
        view.onFinishTemporaryDetach();
    }

    public static boolean dispatchNestedFling(@NonNull View view, float f4, float f5, boolean z3) {
        if (Build.VERSION.SDK_INT >= 21) {
            return Api21Impl.c(view, f4, f5, z3);
        }
        if (view instanceof NestedScrollingChild) {
            return ((NestedScrollingChild) view).dispatchNestedFling(f4, f5, z3);
        }
        return false;
    }

    public static boolean dispatchNestedPreFling(@NonNull View view, float f4, float f5) {
        if (Build.VERSION.SDK_INT >= 21) {
            return Api21Impl.d(view, f4, f5);
        }
        if (view instanceof NestedScrollingChild) {
            return ((NestedScrollingChild) view).dispatchNestedPreFling(f4, f5);
        }
        return false;
    }

    public static boolean dispatchNestedPreScroll(@NonNull View view, int i2, int i4, @Nullable int[] iArr, @Nullable int[] iArr2) {
        if (Build.VERSION.SDK_INT >= 21) {
            return Api21Impl.e(view, i2, i4, iArr, iArr2);
        }
        if (view instanceof NestedScrollingChild) {
            return ((NestedScrollingChild) view).dispatchNestedPreScroll(i2, i4, iArr, iArr2);
        }
        return false;
    }

    public static boolean dispatchNestedScroll(@NonNull View view, int i2, int i4, int i5, int i6, @Nullable int[] iArr) {
        if (Build.VERSION.SDK_INT >= 21) {
            return Api21Impl.f(view, i2, i4, i5, i6, iArr);
        }
        if (view instanceof NestedScrollingChild) {
            return ((NestedScrollingChild) view).dispatchNestedScroll(i2, i4, i5, i6, iArr);
        }
        return false;
    }

    public static void dispatchStartTemporaryDetach(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 24) {
            Api24Impl.c(view);
            return;
        }
        if (!f4824i) {
            d();
        }
        Method method = f4822g;
        if (method != null) {
            try {
                method.invoke(view, new Object[0]);
                return;
            } catch (Exception unused) {
                return;
            }
        }
        view.onStartTemporaryDetach();
    }

    private static void e(View view, int i2) {
        view.offsetLeftAndRight(i2);
        if (view.getVisibility() == 0) {
            w(view);
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                w((View) parent);
            }
        }
    }

    public static void enableAccessibleClickableSpanSupport(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            i(view);
        }
    }

    private static void f(View view, int i2) {
        view.offsetTopAndBottom(i2);
        if (view.getVisibility() == 0) {
            w(view);
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                w((View) parent);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public static boolean g(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return UnhandledKeyEventManager.a(view).b(view, keyEvent);
    }

    public static int generateViewId() {
        AtomicInteger atomicInteger;
        int i2;
        int i4;
        if (Build.VERSION.SDK_INT >= 17) {
            return Api17Impl.a();
        }
        do {
            atomicInteger = f4817b;
            i2 = atomicInteger.get();
            i4 = i2 + 1;
            if (i4 > 16777215) {
                i4 = 1;
            }
        } while (!atomicInteger.compareAndSet(i2, i4));
        return i2;
    }

    @Nullable
    public static AccessibilityDelegateCompat getAccessibilityDelegate(@NonNull View view) {
        View.AccessibilityDelegate j4 = j(view);
        if (j4 == null) {
            return null;
        }
        if (j4 instanceof AccessibilityDelegateCompat.AccessibilityDelegateAdapter) {
            return ((AccessibilityDelegateCompat.AccessibilityDelegateAdapter) j4).f4726a;
        }
        return new AccessibilityDelegateCompat(j4);
    }

    public static int getAccessibilityLiveRegion(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Api19Impl.a(view);
        }
        return 0;
    }

    @Nullable
    public static AccessibilityNodeProviderCompat getAccessibilityNodeProvider(@NonNull View view) {
        AccessibilityNodeProvider a4;
        if (Build.VERSION.SDK_INT < 16 || (a4 = Api16Impl.a(view)) == null) {
            return null;
        }
        return new AccessibilityNodeProviderCompat(a4);
    }

    @Nullable
    @UiThread
    public static CharSequence getAccessibilityPaneTitle(@NonNull View view) {
        return r().f(view);
    }

    @Deprecated
    public static float getAlpha(View view) {
        return view.getAlpha();
    }

    @Nullable
    public static ColorStateList getBackgroundTintList(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return Api21Impl.g(view);
        }
        if (view instanceof TintableBackgroundView) {
            return ((TintableBackgroundView) view).getSupportBackgroundTintList();
        }
        return null;
    }

    @Nullable
    public static PorterDuff.Mode getBackgroundTintMode(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return Api21Impl.h(view);
        }
        if (view instanceof TintableBackgroundView) {
            return ((TintableBackgroundView) view).getSupportBackgroundTintMode();
        }
        return null;
    }

    @Nullable
    public static Rect getClipBounds(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 18) {
            return Api18Impl.a(view);
        }
        return null;
    }

    @Nullable
    public static Display getDisplay(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return Api17Impl.b(view);
        }
        if (isAttachedToWindow(view)) {
            return ((WindowManager) view.getContext().getSystemService("window")).getDefaultDisplay();
        }
        return null;
    }

    public static float getElevation(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return Api21Impl.i(view);
        }
        return 0.0f;
    }

    public static boolean getFitsSystemWindows(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return Api16Impl.b(view);
        }
        return false;
    }

    public static int getImportantForAccessibility(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return Api16Impl.c(view);
        }
        return 0;
    }

    @SuppressLint({"InlinedApi"})
    public static int getImportantForAutofill(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.b(view);
        }
        return 0;
    }

    public static int getLabelFor(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return Api17Impl.c(view);
        }
        return 0;
    }

    @Deprecated
    public static int getLayerType(View view) {
        return view.getLayerType();
    }

    public static int getLayoutDirection(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return Api17Impl.d(view);
        }
        return 0;
    }

    @Nullable
    @Deprecated
    public static Matrix getMatrix(View view) {
        return view.getMatrix();
    }

    @Deprecated
    public static int getMeasuredHeightAndState(View view) {
        return view.getMeasuredHeightAndState();
    }

    @Deprecated
    public static int getMeasuredState(View view) {
        return view.getMeasuredState();
    }

    @Deprecated
    public static int getMeasuredWidthAndState(View view) {
        return view.getMeasuredWidthAndState();
    }

    public static int getMinimumHeight(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return Api16Impl.d(view);
        }
        if (!f4821f) {
            try {
                Field declaredField = View.class.getDeclaredField("mMinHeight");
                f4820e = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f4821f = true;
        }
        Field field = f4820e;
        if (field != null) {
            try {
                return ((Integer) field.get(view)).intValue();
            } catch (Exception unused2) {
                return 0;
            }
        }
        return 0;
    }

    public static int getMinimumWidth(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return Api16Impl.e(view);
        }
        if (!f4819d) {
            try {
                Field declaredField = View.class.getDeclaredField("mMinWidth");
                f4818c = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f4819d = true;
        }
        Field field = f4818c;
        if (field != null) {
            try {
                return ((Integer) field.get(view)).intValue();
            } catch (Exception unused2) {
                return 0;
            }
        }
        return 0;
    }

    public static int getNextClusterForwardId(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.c(view);
        }
        return -1;
    }

    @Nullable
    public static String[] getOnReceiveContentMimeTypes(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 31) {
            return Api31Impl.getReceiveContentMimeTypes(view);
        }
        return (String[]) view.getTag(R.id.tag_on_receive_content_mime_types);
    }

    @Deprecated
    public static int getOverScrollMode(View view) {
        return view.getOverScrollMode();
    }

    @Px
    public static int getPaddingEnd(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return Api17Impl.e(view);
        }
        return view.getPaddingRight();
    }

    @Px
    public static int getPaddingStart(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return Api17Impl.f(view);
        }
        return view.getPaddingLeft();
    }

    @Nullable
    public static ViewParent getParentForAccessibility(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return Api16Impl.f(view);
        }
        return view.getParent();
    }

    @Deprecated
    public static float getPivotX(View view) {
        return view.getPivotX();
    }

    @Deprecated
    public static float getPivotY(View view) {
        return view.getPivotY();
    }

    @Nullable
    public static WindowInsetsCompat getRootWindowInsets(@NonNull View view) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            return Api23Impl.getRootWindowInsets(view);
        }
        if (i2 >= 21) {
            return Api21Impl.getRootWindowInsets(view);
        }
        return null;
    }

    @Deprecated
    public static float getRotation(View view) {
        return view.getRotation();
    }

    @Deprecated
    public static float getRotationX(View view) {
        return view.getRotationX();
    }

    @Deprecated
    public static float getRotationY(View view) {
        return view.getRotationY();
    }

    @Deprecated
    public static float getScaleX(View view) {
        return view.getScaleX();
    }

    @Deprecated
    public static float getScaleY(View view) {
        return view.getScaleY();
    }

    public static int getScrollIndicators(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 23) {
            return Api23Impl.a(view);
        }
        return 0;
    }

    @Nullable
    @UiThread
    public static CharSequence getStateDescription(@NonNull View view) {
        return v().f(view);
    }

    @NonNull
    public static List<Rect> getSystemGestureExclusionRects(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return Api29Impl.b(view);
        }
        return Collections.emptyList();
    }

    @Nullable
    public static String getTransitionName(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return Api21Impl.j(view);
        }
        WeakHashMap<View, String> weakHashMap = f4825j;
        if (weakHashMap == null) {
            return null;
        }
        return weakHashMap.get(view);
    }

    @Deprecated
    public static float getTranslationX(View view) {
        return view.getTranslationX();
    }

    @Deprecated
    public static float getTranslationY(View view) {
        return view.getTranslationY();
    }

    public static float getTranslationZ(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return Api21Impl.k(view);
        }
        return 0.0f;
    }

    @Nullable
    public static WindowInsetsControllerCompat getWindowInsetsController(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.getWindowInsetsController(view);
        }
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                Window window = ((Activity) context).getWindow();
                if (window != null) {
                    return WindowCompat.getInsetsController(window, view);
                }
                return null;
            }
        }
        return null;
    }

    @Deprecated
    public static int getWindowSystemUiVisibility(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return Api16Impl.g(view);
        }
        return 0;
    }

    @Deprecated
    public static float getX(View view) {
        return view.getX();
    }

    @Deprecated
    public static float getY(View view) {
        return view.getY();
    }

    public static float getZ(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return Api21Impl.l(view);
        }
        return 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public static boolean h(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return UnhandledKeyEventManager.a(view).f(keyEvent);
    }

    public static boolean hasAccessibilityDelegate(@NonNull View view) {
        return j(view) != null;
    }

    public static boolean hasExplicitFocusable(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.d(view);
        }
        return view.hasFocusable();
    }

    public static boolean hasNestedScrollingParent(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return Api21Impl.m(view);
        }
        if (view instanceof NestedScrollingChild) {
            return ((NestedScrollingChild) view).hasNestedScrollingParent();
        }
        return false;
    }

    public static boolean hasOnClickListeners(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 15) {
            return Api15Impl.a(view);
        }
        return false;
    }

    public static boolean hasOverlappingRendering(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return Api16Impl.h(view);
        }
        return true;
    }

    public static boolean hasTransientState(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return Api16Impl.i(view);
        }
        return false;
    }

    static void i(@NonNull View view) {
        AccessibilityDelegateCompat accessibilityDelegate = getAccessibilityDelegate(view);
        if (accessibilityDelegate == null) {
            accessibilityDelegate = new AccessibilityDelegateCompat();
        }
        setAccessibilityDelegate(view, accessibilityDelegate);
    }

    @UiThread
    public static boolean isAccessibilityHeading(@NonNull View view) {
        Boolean f4 = b().f(view);
        return f4 != null && f4.booleanValue();
    }

    public static boolean isAttachedToWindow(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Api19Impl.b(view);
        }
        return view.getWindowToken() != null;
    }

    public static boolean isFocusedByDefault(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.e(view);
        }
        return false;
    }

    public static boolean isImportantForAccessibility(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return Api21Impl.n(view);
        }
        return true;
    }

    public static boolean isImportantForAutofill(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.f(view);
        }
        return true;
    }

    public static boolean isInLayout(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 18) {
            return Api18Impl.b(view);
        }
        return false;
    }

    public static boolean isKeyboardNavigationCluster(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.g(view);
        }
        return false;
    }

    public static boolean isLaidOut(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Api19Impl.c(view);
        }
        return view.getWidth() > 0 && view.getHeight() > 0;
    }

    public static boolean isLayoutDirectionResolved(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Api19Impl.d(view);
        }
        return false;
    }

    public static boolean isNestedScrollingEnabled(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return Api21Impl.o(view);
        }
        if (view instanceof NestedScrollingChild) {
            return ((NestedScrollingChild) view).isNestedScrollingEnabled();
        }
        return false;
    }

    @Deprecated
    public static boolean isOpaque(View view) {
        return view.isOpaque();
    }

    public static boolean isPaddingRelative(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return Api17Impl.g(view);
        }
        return false;
    }

    @UiThread
    public static boolean isScreenReaderFocusable(@NonNull View view) {
        Boolean f4 = t().f(view);
        return f4 != null && f4.booleanValue();
    }

    @Nullable
    private static View.AccessibilityDelegate j(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return Api29Impl.a(view);
        }
        return k(view);
    }

    @Deprecated
    public static void jumpDrawablesToCurrentState(View view) {
        view.jumpDrawablesToCurrentState();
    }

    @Nullable
    private static View.AccessibilityDelegate k(@NonNull View view) {
        if (f4829n) {
            return null;
        }
        if (f4828m == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                f4828m = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                f4829n = true;
                return null;
            }
        }
        try {
            Object obj = f4828m.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            f4829n = true;
            return null;
        }
    }

    @Nullable
    public static View keyboardNavigationClusterSearch(@NonNull View view, @Nullable View view2, int i2) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.h(view, view2, i2);
        }
        return null;
    }

    private static List<AccessibilityNodeInfoCompat.AccessibilityActionCompat> l(View view) {
        int i2 = R.id.tag_accessibility_actions;
        ArrayList arrayList = (ArrayList) view.getTag(i2);
        if (arrayList == null) {
            ArrayList arrayList2 = new ArrayList();
            view.setTag(i2, arrayList2);
            return arrayList2;
        }
        return arrayList;
    }

    private static int m(View view, @NonNull CharSequence charSequence) {
        List<AccessibilityNodeInfoCompat.AccessibilityActionCompat> l4 = l(view);
        for (int i2 = 0; i2 < l4.size(); i2++) {
            if (TextUtils.equals(charSequence, l4.get(i2).getLabel())) {
                return l4.get(i2).getId();
            }
        }
        int i4 = 0;
        int i5 = -1;
        while (true) {
            int[] iArr = f4831p;
            if (i4 >= iArr.length || i5 != -1) {
                break;
            }
            int i6 = iArr[i4];
            boolean z3 = true;
            for (int i7 = 0; i7 < l4.size(); i7++) {
                z3 &= l4.get(i7).getId() != i6;
            }
            if (z3) {
                i5 = i6;
            }
            i4++;
        }
        return i5;
    }

    private static Rect n() {
        if (f4830o == null) {
            f4830o = new ThreadLocal<>();
        }
        Rect rect = f4830o.get();
        if (rect == null) {
            rect = new Rect();
            f4830o.set(rect);
        }
        rect.setEmpty();
        return rect;
    }

    private static OnReceiveContentViewBehavior o(@NonNull View view) {
        if (view instanceof OnReceiveContentViewBehavior) {
            return (OnReceiveContentViewBehavior) view;
        }
        return f4832q;
    }

    public static void offsetLeftAndRight(@NonNull View view, int i2) {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 23) {
            view.offsetLeftAndRight(i2);
        } else if (i4 >= 21) {
            Rect n4 = n();
            boolean z3 = false;
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                n4.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z3 = !n4.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            e(view, i2);
            if (z3 && n4.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                ((View) parent).invalidate(n4);
            }
        } else {
            e(view, i2);
        }
    }

    public static void offsetTopAndBottom(@NonNull View view, int i2) {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 23) {
            view.offsetTopAndBottom(i2);
        } else if (i4 >= 21) {
            Rect n4 = n();
            boolean z3 = false;
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                View view2 = (View) parent;
                n4.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
                z3 = !n4.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            f(view, i2);
            if (z3 && n4.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
                ((View) parent).invalidate(n4);
            }
        } else {
            f(view, i2);
        }
    }

    @NonNull
    public static WindowInsetsCompat onApplyWindowInsets(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
        WindowInsets windowInsets;
        if (Build.VERSION.SDK_INT >= 21 && (windowInsets = windowInsetsCompat.toWindowInsets()) != null) {
            WindowInsets b4 = Api20Impl.b(view, windowInsets);
            if (!b4.equals(windowInsets)) {
                return WindowInsetsCompat.toWindowInsetsCompat(b4, view);
            }
        }
        return windowInsetsCompat;
    }

    @Deprecated
    public static void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        view.onInitializeAccessibilityEvent(accessibilityEvent);
    }

    public static void onInitializeAccessibilityNodeInfo(@NonNull View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        view.onInitializeAccessibilityNodeInfo(accessibilityNodeInfoCompat.unwrap());
    }

    @Deprecated
    public static void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        view.onPopulateAccessibilityEvent(accessibilityEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ContentInfoCompat p(ContentInfoCompat contentInfoCompat) {
        return contentInfoCompat;
    }

    public static boolean performAccessibilityAction(@NonNull View view, int i2, @Nullable Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return Api16Impl.j(view, i2, bundle);
        }
        return false;
    }

    @Nullable
    public static ContentInfoCompat performReceiveContent(@NonNull View view, @NonNull ContentInfoCompat contentInfoCompat) {
        if (Log.isLoggable(f4816a, 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("performReceiveContent: ");
            sb.append(contentInfoCompat);
            sb.append(", view=");
            sb.append(view.getClass().getSimpleName());
            sb.append("[");
            sb.append(view.getId());
            sb.append("]");
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return Api31Impl.performReceiveContent(view, contentInfoCompat);
        }
        OnReceiveContentListener onReceiveContentListener = (OnReceiveContentListener) view.getTag(R.id.tag_on_receive_content_listener);
        if (onReceiveContentListener != null) {
            ContentInfoCompat onReceiveContent = onReceiveContentListener.onReceiveContent(view, contentInfoCompat);
            if (onReceiveContent == null) {
                return null;
            }
            return o(view).onReceiveContent(onReceiveContent);
        }
        return o(view).onReceiveContent(contentInfoCompat);
    }

    public static void postInvalidateOnAnimation(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            Api16Impl.k(view);
        } else {
            view.postInvalidate();
        }
    }

    public static void postOnAnimation(@NonNull View view, @NonNull Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            Api16Impl.m(view, runnable);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay());
        }
    }

    @SuppressLint({"LambdaLast"})
    public static void postOnAnimationDelayed(@NonNull View view, @NonNull Runnable runnable, long j4) {
        if (Build.VERSION.SDK_INT >= 16) {
            Api16Impl.n(view, runnable, j4);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay() + j4);
        }
    }

    @RequiresApi(19)
    static void q(View view, int i2) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z3 = getAccessibilityPaneTitle(view) != null && view.getVisibility() == 0;
            if (getAccessibilityLiveRegion(view) != 0 || z3) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                obtain.setEventType(z3 ? 32 : 2048);
                Api19Impl.g(obtain, i2);
                if (z3) {
                    obtain.getText().add(getAccessibilityPaneTitle(view));
                    u(view);
                }
                view.sendAccessibilityEventUnchecked(obtain);
            } else if (i2 == 32) {
                AccessibilityEvent obtain2 = AccessibilityEvent.obtain();
                view.onInitializeAccessibilityEvent(obtain2);
                obtain2.setEventType(32);
                Api19Impl.g(obtain2, i2);
                obtain2.setSource(view);
                view.onPopulateAccessibilityEvent(obtain2);
                obtain2.getText().add(getAccessibilityPaneTitle(view));
                accessibilityManager.sendAccessibilityEvent(obtain2);
            } else if (view.getParent() != null) {
                try {
                    Api19Impl.e(view.getParent(), view, view, i2);
                } catch (AbstractMethodError unused) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(view.getParent().getClass().getSimpleName());
                    sb.append(" does not fully implement ViewParent");
                }
            }
        }
    }

    private static AccessibilityViewProperty<CharSequence> r() {
        return new AccessibilityViewProperty<CharSequence>(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28) { // from class: androidx.core.view.ViewCompat.2
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            @RequiresApi(28)
            /* renamed from: i */
            public CharSequence d(View view) {
                return Api28Impl.b(view);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            @RequiresApi(28)
            /* renamed from: j */
            public void e(View view, CharSequence charSequence) {
                Api28Impl.h(view, charSequence);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            /* renamed from: k */
            public boolean h(CharSequence charSequence, CharSequence charSequence2) {
                return !TextUtils.equals(charSequence, charSequence2);
            }
        };
    }

    public static void removeAccessibilityAction(@NonNull View view, int i2) {
        if (Build.VERSION.SDK_INT >= 21) {
            s(i2, view);
            q(view, 0);
        }
    }

    public static void removeOnUnhandledKeyEventListener(@NonNull View view, @NonNull OnUnhandledKeyEventListenerCompat onUnhandledKeyEventListenerCompat) {
        if (Build.VERSION.SDK_INT >= 28) {
            Api28Impl.e(view, onUnhandledKeyEventListenerCompat);
            return;
        }
        ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_unhandled_key_listeners);
        if (arrayList != null) {
            arrayList.remove(onUnhandledKeyEventListenerCompat);
            if (arrayList.size() == 0) {
                UnhandledKeyEventManager.i(view);
            }
        }
    }

    public static void replaceAccessibilityAction(@NonNull View view, @NonNull AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, @Nullable CharSequence charSequence, @Nullable AccessibilityViewCommand accessibilityViewCommand) {
        if (accessibilityViewCommand == null && charSequence == null) {
            removeAccessibilityAction(view, accessibilityActionCompat.getId());
        } else {
            c(view, accessibilityActionCompat.createReplacementAction(charSequence, accessibilityViewCommand));
        }
    }

    public static void requestApplyInsets(@NonNull View view) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 20) {
            Api20Impl.c(view);
        } else if (i2 >= 16) {
            Api16Impl.p(view);
        }
    }

    @NonNull
    public static <T extends View> T requireViewById(@NonNull View view, @IdRes int i2) {
        if (Build.VERSION.SDK_INT >= 28) {
            return (T) Api28Impl.f(view, i2);
        }
        T t3 = (T) view.findViewById(i2);
        if (t3 != null) {
            return t3;
        }
        throw new IllegalArgumentException("ID does not reference a View inside this View");
    }

    @Deprecated
    public static int resolveSizeAndState(int i2, int i4, int i5) {
        return View.resolveSizeAndState(i2, i4, i5);
    }

    public static boolean restoreDefaultFocus(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.i(view);
        }
        return view.requestFocus();
    }

    private static void s(int i2, View view) {
        List<AccessibilityNodeInfoCompat.AccessibilityActionCompat> l4 = l(view);
        for (int i4 = 0; i4 < l4.size(); i4++) {
            if (l4.get(i4).getId() == i2) {
                l4.remove(i4);
                return;
            }
        }
    }

    public static void saveAttributeDataForStyleable(@NonNull View view, @NonNull @SuppressLint({"ContextFirst"}) Context context, @NonNull int[] iArr, @Nullable AttributeSet attributeSet, @NonNull TypedArray typedArray, int i2, int i4) {
        if (Build.VERSION.SDK_INT >= 29) {
            Api29Impl.c(view, context, iArr, attributeSet, typedArray, i2, i4);
        }
    }

    public static void setAccessibilityDelegate(@NonNull View view, @Nullable AccessibilityDelegateCompat accessibilityDelegateCompat) {
        if (accessibilityDelegateCompat == null && (j(view) instanceof AccessibilityDelegateCompat.AccessibilityDelegateAdapter)) {
            accessibilityDelegateCompat = new AccessibilityDelegateCompat();
        }
        view.setAccessibilityDelegate(accessibilityDelegateCompat == null ? null : accessibilityDelegateCompat.getBridge());
    }

    @UiThread
    public static void setAccessibilityHeading(@NonNull View view, boolean z3) {
        b().g(view, Boolean.valueOf(z3));
    }

    public static void setAccessibilityLiveRegion(@NonNull View view, int i2) {
        if (Build.VERSION.SDK_INT >= 19) {
            Api19Impl.f(view, i2);
        }
    }

    @UiThread
    public static void setAccessibilityPaneTitle(@NonNull View view, @Nullable CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 19) {
            r().g(view, charSequence);
            if (charSequence != null) {
                f4833r.a(view);
            } else {
                f4833r.d(view);
            }
        }
    }

    @Deprecated
    public static void setActivated(View view, boolean z3) {
        view.setActivated(z3);
    }

    @Deprecated
    public static void setAlpha(View view, @FloatRange(from = 0.0d, to = 1.0d) float f4) {
        view.setAlpha(f4);
    }

    public static void setAutofillHints(@NonNull View view, @Nullable String... strArr) {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.j(view, strArr);
        }
    }

    public static void setBackground(@NonNull View view, @Nullable Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            Api16Impl.q(view, drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    public static void setBackgroundTintList(@NonNull View view, @Nullable ColorStateList colorStateList) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            Api21Impl.p(view, colorStateList);
            if (i2 == 21) {
                Drawable background = view.getBackground();
                boolean z3 = (Api21Impl.g(view) == null && Api21Impl.h(view) == null) ? false : true;
                if (background == null || !z3) {
                    return;
                }
                if (background.isStateful()) {
                    background.setState(view.getDrawableState());
                }
                Api16Impl.q(view, background);
            }
        } else if (view instanceof TintableBackgroundView) {
            ((TintableBackgroundView) view).setSupportBackgroundTintList(colorStateList);
        }
    }

    public static void setBackgroundTintMode(@NonNull View view, @Nullable PorterDuff.Mode mode) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            Api21Impl.q(view, mode);
            if (i2 == 21) {
                Drawable background = view.getBackground();
                boolean z3 = (Api21Impl.g(view) == null && Api21Impl.h(view) == null) ? false : true;
                if (background == null || !z3) {
                    return;
                }
                if (background.isStateful()) {
                    background.setState(view.getDrawableState());
                }
                Api16Impl.q(view, background);
            }
        } else if (view instanceof TintableBackgroundView) {
            ((TintableBackgroundView) view).setSupportBackgroundTintMode(mode);
        }
    }

    @SuppressLint({"BanUncheckedReflection"})
    @Deprecated
    public static void setChildrenDrawingOrderEnabled(ViewGroup viewGroup, boolean z3) {
        if (f4827l == null) {
            try {
                f4827l = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
            }
            f4827l.setAccessible(true);
        }
        try {
            f4827l.invoke(viewGroup, Boolean.valueOf(z3));
        } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused2) {
        }
    }

    public static void setClipBounds(@NonNull View view, @Nullable Rect rect) {
        if (Build.VERSION.SDK_INT >= 18) {
            Api18Impl.c(view, rect);
        }
    }

    public static void setElevation(@NonNull View view, float f4) {
        if (Build.VERSION.SDK_INT >= 21) {
            Api21Impl.r(view, f4);
        }
    }

    @Deprecated
    public static void setFitsSystemWindows(View view, boolean z3) {
        view.setFitsSystemWindows(z3);
    }

    public static void setFocusedByDefault(@NonNull View view, boolean z3) {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.k(view, z3);
        }
    }

    public static void setHasTransientState(@NonNull View view, boolean z3) {
        if (Build.VERSION.SDK_INT >= 16) {
            Api16Impl.r(view, z3);
        }
    }

    @UiThread
    public static void setImportantForAccessibility(@NonNull View view, int i2) {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 19) {
            Api16Impl.s(view, i2);
        } else if (i4 >= 16) {
            if (i2 == 4) {
                i2 = 2;
            }
            Api16Impl.s(view, i2);
        }
    }

    public static void setImportantForAutofill(@NonNull View view, int i2) {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.l(view, i2);
        }
    }

    public static void setKeyboardNavigationCluster(@NonNull View view, boolean z3) {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.m(view, z3);
        }
    }

    public static void setLabelFor(@NonNull View view, @IdRes int i2) {
        if (Build.VERSION.SDK_INT >= 17) {
            Api17Impl.h(view, i2);
        }
    }

    public static void setLayerPaint(@NonNull View view, @Nullable Paint paint) {
        if (Build.VERSION.SDK_INT >= 17) {
            Api17Impl.i(view, paint);
            return;
        }
        view.setLayerType(view.getLayerType(), paint);
        view.invalidate();
    }

    @Deprecated
    public static void setLayerType(View view, int i2, Paint paint) {
        view.setLayerType(i2, paint);
    }

    public static void setLayoutDirection(@NonNull View view, int i2) {
        if (Build.VERSION.SDK_INT >= 17) {
            Api17Impl.j(view, i2);
        }
    }

    public static void setNestedScrollingEnabled(@NonNull View view, boolean z3) {
        if (Build.VERSION.SDK_INT >= 21) {
            Api21Impl.s(view, z3);
        } else if (view instanceof NestedScrollingChild) {
            ((NestedScrollingChild) view).setNestedScrollingEnabled(z3);
        }
    }

    public static void setNextClusterForwardId(@NonNull View view, int i2) {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.n(view, i2);
        }
    }

    public static void setOnApplyWindowInsetsListener(@NonNull View view, @Nullable OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        if (Build.VERSION.SDK_INT >= 21) {
            Api21Impl.t(view, onApplyWindowInsetsListener);
        }
    }

    public static void setOnReceiveContentListener(@NonNull View view, @Nullable String[] strArr, @Nullable OnReceiveContentListener onReceiveContentListener) {
        if (Build.VERSION.SDK_INT >= 31) {
            Api31Impl.setOnReceiveContentListener(view, strArr, onReceiveContentListener);
            return;
        }
        strArr = (strArr == null || strArr.length == 0) ? null : null;
        boolean z3 = false;
        if (onReceiveContentListener != null) {
            Preconditions.checkArgument(strArr != null, "When the listener is set, MIME types must also be set");
        }
        if (strArr != null) {
            int length = strArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                } else if (strArr[i2].startsWith(WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD)) {
                    z3 = true;
                    break;
                } else {
                    i2++;
                }
            }
            Preconditions.checkArgument(!z3, "A MIME type set here must not start with *: " + Arrays.toString(strArr));
        }
        view.setTag(R.id.tag_on_receive_content_mime_types, strArr);
        view.setTag(R.id.tag_on_receive_content_listener, onReceiveContentListener);
    }

    @Deprecated
    public static void setOverScrollMode(View view, int i2) {
        view.setOverScrollMode(i2);
    }

    public static void setPaddingRelative(@NonNull View view, @Px int i2, @Px int i4, @Px int i5, @Px int i6) {
        if (Build.VERSION.SDK_INT >= 17) {
            Api17Impl.k(view, i2, i4, i5, i6);
        } else {
            view.setPadding(i2, i4, i5, i6);
        }
    }

    @Deprecated
    public static void setPivotX(View view, float f4) {
        view.setPivotX(f4);
    }

    @Deprecated
    public static void setPivotY(View view, float f4) {
        view.setPivotY(f4);
    }

    public static void setPointerIcon(@NonNull View view, @Nullable PointerIconCompat pointerIconCompat) {
        if (Build.VERSION.SDK_INT >= 24) {
            Api24Impl.d(view, (PointerIcon) (pointerIconCompat != null ? pointerIconCompat.getPointerIcon() : null));
        }
    }

    @Deprecated
    public static void setRotation(View view, float f4) {
        view.setRotation(f4);
    }

    @Deprecated
    public static void setRotationX(View view, float f4) {
        view.setRotationX(f4);
    }

    @Deprecated
    public static void setRotationY(View view, float f4) {
        view.setRotationY(f4);
    }

    @Deprecated
    public static void setSaveFromParentEnabled(View view, boolean z3) {
        view.setSaveFromParentEnabled(z3);
    }

    @Deprecated
    public static void setScaleX(View view, float f4) {
        view.setScaleX(f4);
    }

    @Deprecated
    public static void setScaleY(View view, float f4) {
        view.setScaleY(f4);
    }

    @UiThread
    public static void setScreenReaderFocusable(@NonNull View view, boolean z3) {
        t().g(view, Boolean.valueOf(z3));
    }

    public static void setScrollIndicators(@NonNull View view, int i2) {
        if (Build.VERSION.SDK_INT >= 23) {
            Api23Impl.b(view, i2);
        }
    }

    @UiThread
    public static void setStateDescription(@NonNull View view, @Nullable CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 19) {
            v().g(view, charSequence);
        }
    }

    public static void setSystemGestureExclusionRects(@NonNull View view, @NonNull List<Rect> list) {
        if (Build.VERSION.SDK_INT >= 29) {
            Api29Impl.d(view, list);
        }
    }

    public static void setTooltipText(@NonNull View view, @Nullable CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.o(view, charSequence);
        }
    }

    public static void setTransitionName(@NonNull View view, @Nullable String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            Api21Impl.u(view, str);
            return;
        }
        if (f4825j == null) {
            f4825j = new WeakHashMap<>();
        }
        f4825j.put(view, str);
    }

    @Deprecated
    public static void setTranslationX(View view, float f4) {
        view.setTranslationX(f4);
    }

    @Deprecated
    public static void setTranslationY(View view, float f4) {
        view.setTranslationY(f4);
    }

    public static void setTranslationZ(@NonNull View view, float f4) {
        if (Build.VERSION.SDK_INT >= 21) {
            Api21Impl.v(view, f4);
        }
    }

    public static void setWindowInsetsAnimationCallback(@NonNull View view, @Nullable WindowInsetsAnimationCompat.Callback callback) {
        WindowInsetsAnimationCompat.a(view, callback);
    }

    @Deprecated
    public static void setX(View view, float f4) {
        view.setX(f4);
    }

    @Deprecated
    public static void setY(View view, float f4) {
        view.setY(f4);
    }

    public static void setZ(@NonNull View view, float f4) {
        if (Build.VERSION.SDK_INT >= 21) {
            Api21Impl.w(view, f4);
        }
    }

    public static boolean startDragAndDrop(@NonNull View view, @Nullable ClipData clipData, @NonNull View.DragShadowBuilder dragShadowBuilder, @Nullable Object obj, int i2) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Api24Impl.e(view, clipData, dragShadowBuilder, obj, i2);
        }
        return view.startDrag(clipData, dragShadowBuilder, obj, i2);
    }

    public static boolean startNestedScroll(@NonNull View view, int i2) {
        if (Build.VERSION.SDK_INT >= 21) {
            return Api21Impl.x(view, i2);
        }
        if (view instanceof NestedScrollingChild) {
            return ((NestedScrollingChild) view).startNestedScroll(i2);
        }
        return false;
    }

    public static void stopNestedScroll(@NonNull View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            Api21Impl.y(view);
        } else if (view instanceof NestedScrollingChild) {
            ((NestedScrollingChild) view).stopNestedScroll();
        }
    }

    private static AccessibilityViewProperty<Boolean> t() {
        return new AccessibilityViewProperty<Boolean>(R.id.tag_screen_reader_focusable, Boolean.class, 28) { // from class: androidx.core.view.ViewCompat.1
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            @RequiresApi(28)
            /* renamed from: i */
            public Boolean d(@NonNull View view) {
                return Boolean.valueOf(Api28Impl.d(view));
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            @RequiresApi(28)
            /* renamed from: j */
            public void e(@NonNull View view, Boolean bool) {
                Api28Impl.i(view, bool.booleanValue());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            /* renamed from: k */
            public boolean h(Boolean bool, Boolean bool2) {
                return !a(bool, bool2);
            }
        };
    }

    private static void u(View view) {
        if (getImportantForAccessibility(view) == 0) {
            setImportantForAccessibility(view, 1);
        }
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            if (getImportantForAccessibility((View) parent) == 4) {
                setImportantForAccessibility(view, 2);
                return;
            }
        }
    }

    public static void updateDragShadow(@NonNull View view, @NonNull View.DragShadowBuilder dragShadowBuilder) {
        if (Build.VERSION.SDK_INT >= 24) {
            Api24Impl.f(view, dragShadowBuilder);
        }
    }

    private static AccessibilityViewProperty<CharSequence> v() {
        return new AccessibilityViewProperty<CharSequence>(R.id.tag_state_description, CharSequence.class, 64, 30) { // from class: androidx.core.view.ViewCompat.3
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            @RequiresApi(30)
            /* renamed from: i */
            public CharSequence d(View view) {
                return Api30Impl.a(view);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            @RequiresApi(30)
            /* renamed from: j */
            public void e(View view, CharSequence charSequence) {
                Api30Impl.b(view, charSequence);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
            /* renamed from: k */
            public boolean h(CharSequence charSequence, CharSequence charSequence2) {
                return !TextUtils.equals(charSequence, charSequence2);
            }
        };
    }

    private static void w(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    public static void setScrollIndicators(@NonNull View view, int i2, int i4) {
        if (Build.VERSION.SDK_INT >= 23) {
            Api23Impl.c(view, i2, i4);
        }
    }

    public static void postInvalidateOnAnimation(@NonNull View view, int i2, int i4, int i5, int i6) {
        if (Build.VERSION.SDK_INT >= 16) {
            Api16Impl.l(view, i2, i4, i5, i6);
        } else {
            view.postInvalidate(i2, i4, i5, i6);
        }
    }

    public static boolean dispatchNestedPreScroll(@NonNull View view, int i2, int i4, @Nullable int[] iArr, @Nullable int[] iArr2, int i5) {
        if (view instanceof NestedScrollingChild2) {
            return ((NestedScrollingChild2) view).dispatchNestedPreScroll(i2, i4, iArr, iArr2, i5);
        }
        if (i5 == 0) {
            return dispatchNestedPreScroll(view, i2, i4, iArr, iArr2);
        }
        return false;
    }

    public static void dispatchNestedScroll(@NonNull View view, int i2, int i4, int i5, int i6, @Nullable int[] iArr, int i7, @NonNull int[] iArr2) {
        if (view instanceof NestedScrollingChild3) {
            ((NestedScrollingChild3) view).dispatchNestedScroll(i2, i4, i5, i6, iArr, i7, iArr2);
        } else {
            dispatchNestedScroll(view, i2, i4, i5, i6, iArr, i7);
        }
    }

    public static boolean hasNestedScrollingParent(@NonNull View view, int i2) {
        if (view instanceof NestedScrollingChild2) {
            ((NestedScrollingChild2) view).hasNestedScrollingParent(i2);
            return false;
        } else if (i2 == 0) {
            return hasNestedScrollingParent(view);
        } else {
            return false;
        }
    }

    public static boolean startNestedScroll(@NonNull View view, int i2, int i4) {
        if (view instanceof NestedScrollingChild2) {
            return ((NestedScrollingChild2) view).startNestedScroll(i2, i4);
        }
        if (i4 == 0) {
            return startNestedScroll(view, i2);
        }
        return false;
    }

    public static void stopNestedScroll(@NonNull View view, int i2) {
        if (view instanceof NestedScrollingChild2) {
            ((NestedScrollingChild2) view).stopNestedScroll(i2);
        } else if (i2 == 0) {
            stopNestedScroll(view);
        }
    }

    public static boolean dispatchNestedScroll(@NonNull View view, int i2, int i4, int i5, int i6, @Nullable int[] iArr, int i7) {
        if (view instanceof NestedScrollingChild2) {
            return ((NestedScrollingChild2) view).dispatchNestedScroll(i2, i4, i5, i6, iArr, i7);
        }
        if (i7 == 0) {
            return dispatchNestedScroll(view, i2, i4, i5, i6, iArr);
        }
        return false;
    }
}
