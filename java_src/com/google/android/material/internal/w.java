package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.R;
/* compiled from: ViewUtils.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class w {

    /* compiled from: ViewUtils.java */
    /* loaded from: classes2.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f15222a;

        a(View view) {
            this.f15222a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            ((InputMethodManager) this.f15222a.getContext().getSystemService("input_method")).showSoftInput(this.f15222a, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ViewUtils.java */
    /* loaded from: classes2.dex */
    public class b implements e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f15223a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f15224b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f15225c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ e f15226d;

        b(boolean z3, boolean z4, boolean z5, e eVar) {
            this.f15223a = z3;
            this.f15224b = z4;
            this.f15225c = z5;
            this.f15226d = eVar;
        }

        @Override // com.google.android.material.internal.w.e
        @NonNull
        public WindowInsetsCompat a(View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull f fVar) {
            if (this.f15223a) {
                fVar.f15232d += windowInsetsCompat.getSystemWindowInsetBottom();
            }
            boolean k4 = w.k(view);
            if (this.f15224b) {
                if (k4) {
                    fVar.f15231c += windowInsetsCompat.getSystemWindowInsetLeft();
                } else {
                    fVar.f15229a += windowInsetsCompat.getSystemWindowInsetLeft();
                }
            }
            if (this.f15225c) {
                if (k4) {
                    fVar.f15229a += windowInsetsCompat.getSystemWindowInsetRight();
                } else {
                    fVar.f15231c += windowInsetsCompat.getSystemWindowInsetRight();
                }
            }
            fVar.a(view);
            e eVar = this.f15226d;
            return eVar != null ? eVar.a(view, windowInsetsCompat, fVar) : windowInsetsCompat;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ViewUtils.java */
    /* loaded from: classes2.dex */
    public class c implements OnApplyWindowInsetsListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e f15227a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ f f15228b;

        c(e eVar, f fVar) {
            this.f15227a = eVar;
            this.f15228b = fVar;
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return this.f15227a.a(view, windowInsetsCompat, new f(this.f15228b));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ViewUtils.java */
    /* loaded from: classes2.dex */
    public class d implements View.OnAttachStateChangeListener {
        d() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(@NonNull View view) {
            view.removeOnAttachStateChangeListener(this);
            ViewCompat.requestApplyInsets(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* compiled from: ViewUtils.java */
    /* loaded from: classes2.dex */
    public interface e {
        WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, f fVar);
    }

    private w() {
    }

    public static void a(@Nullable View view, @NonNull ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (view != null) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(onGlobalLayoutListener);
        }
    }

    public static void b(@NonNull View view, @Nullable AttributeSet attributeSet, int i2, int i4) {
        c(view, attributeSet, i2, i4, null);
    }

    public static void c(@NonNull View view, @Nullable AttributeSet attributeSet, int i2, int i4, @Nullable e eVar) {
        TypedArray obtainStyledAttributes = view.getContext().obtainStyledAttributes(attributeSet, R.styleable.Insets, i2, i4);
        boolean z3 = obtainStyledAttributes.getBoolean(R.styleable.Insets_paddingBottomSystemWindowInsets, false);
        boolean z4 = obtainStyledAttributes.getBoolean(R.styleable.Insets_paddingLeftSystemWindowInsets, false);
        boolean z5 = obtainStyledAttributes.getBoolean(R.styleable.Insets_paddingRightSystemWindowInsets, false);
        obtainStyledAttributes.recycle();
        d(view, new b(z3, z4, z5, eVar));
    }

    public static void d(@NonNull View view, @NonNull e eVar) {
        ViewCompat.setOnApplyWindowInsetsListener(view, new c(eVar, new f(ViewCompat.getPaddingStart(view), view.getPaddingTop(), ViewCompat.getPaddingEnd(view), view.getPaddingBottom())));
        o(view);
    }

    public static float e(@NonNull Context context, @Dimension(unit = 0) int i2) {
        return TypedValue.applyDimension(1, i2, context.getResources().getDisplayMetrics());
    }

    @Nullable
    public static Integer f(@NonNull View view) {
        if (view.getBackground() instanceof ColorDrawable) {
            return Integer.valueOf(((ColorDrawable) view.getBackground()).getColor());
        }
        return null;
    }

    @Nullable
    public static ViewGroup g(@Nullable View view) {
        if (view == null) {
            return null;
        }
        View rootView = view.getRootView();
        ViewGroup viewGroup = (ViewGroup) rootView.findViewById(16908290);
        if (viewGroup != null) {
            return viewGroup;
        }
        if (rootView == view || !(rootView instanceof ViewGroup)) {
            return null;
        }
        return (ViewGroup) rootView;
    }

    @Nullable
    public static v h(@NonNull View view) {
        return i(g(view));
    }

    @Nullable
    public static v i(@Nullable View view) {
        if (view == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 18) {
            return new u(view);
        }
        return t.a(view);
    }

    public static float j(@NonNull View view) {
        float f4 = 0.0f;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            f4 += ViewCompat.getElevation((View) parent);
        }
        return f4;
    }

    public static boolean k(View view) {
        return ViewCompat.getLayoutDirection(view) == 1;
    }

    public static PorterDuff.Mode l(int i2, PorterDuff.Mode mode) {
        if (i2 != 3) {
            if (i2 != 5) {
                if (i2 != 9) {
                    switch (i2) {
                        case 14:
                            return PorterDuff.Mode.MULTIPLY;
                        case 15:
                            return PorterDuff.Mode.SCREEN;
                        case 16:
                            return PorterDuff.Mode.ADD;
                        default:
                            return mode;
                    }
                }
                return PorterDuff.Mode.SRC_ATOP;
            }
            return PorterDuff.Mode.SRC_IN;
        }
        return PorterDuff.Mode.SRC_OVER;
    }

    public static void m(@Nullable View view, @NonNull ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (view != null) {
            n(view.getViewTreeObserver(), onGlobalLayoutListener);
        }
    }

    public static void n(@NonNull ViewTreeObserver viewTreeObserver, @NonNull ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        if (Build.VERSION.SDK_INT >= 16) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        } else {
            viewTreeObserver.removeGlobalOnLayoutListener(onGlobalLayoutListener);
        }
    }

    public static void o(@NonNull View view) {
        if (ViewCompat.isAttachedToWindow(view)) {
            ViewCompat.requestApplyInsets(view);
        } else {
            view.addOnAttachStateChangeListener(new d());
        }
    }

    public static void p(@NonNull View view) {
        view.requestFocus();
        view.post(new a(view));
    }

    /* compiled from: ViewUtils.java */
    /* loaded from: classes2.dex */
    public static class f {

        /* renamed from: a  reason: collision with root package name */
        public int f15229a;

        /* renamed from: b  reason: collision with root package name */
        public int f15230b;

        /* renamed from: c  reason: collision with root package name */
        public int f15231c;

        /* renamed from: d  reason: collision with root package name */
        public int f15232d;

        public f(int i2, int i4, int i5, int i6) {
            this.f15229a = i2;
            this.f15230b = i4;
            this.f15231c = i5;
            this.f15232d = i6;
        }

        public void a(View view) {
            ViewCompat.setPaddingRelative(view, this.f15229a, this.f15230b, this.f15231c, this.f15232d);
        }

        public f(@NonNull f fVar) {
            this.f15229a = fVar.f15229a;
            this.f15230b = fVar.f15230b;
            this.f15231c = fVar.f15231c;
            this.f15232d = fVar.f15232d;
        }
    }
}
