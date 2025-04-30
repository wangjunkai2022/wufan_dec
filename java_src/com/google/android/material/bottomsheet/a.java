package com.google.android.material.bottomsheet;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.app.AppCompatDialog;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.color.m;
import com.google.android.material.shape.MaterialShapeDrawable;
/* compiled from: BottomSheetDialog.java */
/* loaded from: classes2.dex */
public class a extends AppCompatDialog {

    /* renamed from: a  reason: collision with root package name */
    private BottomSheetBehavior<FrameLayout> f14257a;

    /* renamed from: b  reason: collision with root package name */
    private FrameLayout f14258b;

    /* renamed from: c  reason: collision with root package name */
    private CoordinatorLayout f14259c;

    /* renamed from: d  reason: collision with root package name */
    private FrameLayout f14260d;

    /* renamed from: e  reason: collision with root package name */
    boolean f14261e;

    /* renamed from: f  reason: collision with root package name */
    boolean f14262f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f14263g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f14264h;

    /* renamed from: i  reason: collision with root package name */
    private BottomSheetBehavior.f f14265i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f14266j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    private BottomSheetBehavior.f f14267k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BottomSheetDialog.java */
    /* renamed from: com.google.android.material.bottomsheet.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0100a implements OnApplyWindowInsetsListener {
        C0100a() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            if (a.this.f14265i != null) {
                a.this.f14257a.X(a.this.f14265i);
            }
            if (windowInsetsCompat != null) {
                a aVar = a.this;
                aVar.f14265i = new f(aVar.f14260d, windowInsetsCompat, null);
                a.this.f14257a.s(a.this.f14265i);
            }
            return windowInsetsCompat;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BottomSheetDialog.java */
    /* loaded from: classes2.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a aVar = a.this;
            if (aVar.f14262f && aVar.isShowing() && a.this.l()) {
                a.this.cancel();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BottomSheetDialog.java */
    /* loaded from: classes2.dex */
    public class c extends AccessibilityDelegateCompat {
        c() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (a.this.f14262f) {
                accessibilityNodeInfoCompat.addAction(1048576);
                accessibilityNodeInfoCompat.setDismissable(true);
                return;
            }
            accessibilityNodeInfoCompat.setDismissable(false);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
            if (i2 == 1048576) {
                a aVar = a.this;
                if (aVar.f14262f) {
                    aVar.cancel();
                    return true;
                }
            }
            return super.performAccessibilityAction(view, i2, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BottomSheetDialog.java */
    /* loaded from: classes2.dex */
    public class d implements View.OnTouchListener {
        d() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    /* compiled from: BottomSheetDialog.java */
    /* loaded from: classes2.dex */
    class e extends BottomSheetBehavior.f {
        e() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        public void b(@NonNull View view, float f4) {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        public void c(@NonNull View view, int i2) {
            if (i2 == 5) {
                a.this.cancel();
            }
        }
    }

    /* compiled from: BottomSheetDialog.java */
    /* loaded from: classes2.dex */
    private static class f extends BottomSheetBehavior.f {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f14273a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f14274b;

        /* renamed from: c  reason: collision with root package name */
        private final WindowInsetsCompat f14275c;

        /* synthetic */ f(View view, WindowInsetsCompat windowInsetsCompat, C0100a c0100a) {
            this(view, windowInsetsCompat);
        }

        private void d(View view) {
            if (view.getTop() < this.f14275c.getSystemWindowInsetTop()) {
                a.k(view, this.f14273a);
                view.setPadding(view.getPaddingLeft(), this.f14275c.getSystemWindowInsetTop() - view.getTop(), view.getPaddingRight(), view.getPaddingBottom());
            } else if (view.getTop() != 0) {
                a.k(view, this.f14274b);
                view.setPadding(view.getPaddingLeft(), 0, view.getPaddingRight(), view.getPaddingBottom());
            }
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        void a(@NonNull View view) {
            d(view);
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        public void b(@NonNull View view, float f4) {
            d(view);
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        public void c(@NonNull View view, int i2) {
            d(view);
        }

        private f(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
            ColorStateList backgroundTintList;
            this.f14275c = windowInsetsCompat;
            boolean z3 = Build.VERSION.SDK_INT >= 23 && (view.getSystemUiVisibility() & 8192) != 0;
            this.f14274b = z3;
            MaterialShapeDrawable H = BottomSheetBehavior.C(view).H();
            if (H != null) {
                backgroundTintList = H.y();
            } else {
                backgroundTintList = ViewCompat.getBackgroundTintList(view);
            }
            if (backgroundTintList != null) {
                this.f14273a = m.k(backgroundTintList.getDefaultColor());
            } else if (view.getBackground() instanceof ColorDrawable) {
                this.f14273a = m.k(((ColorDrawable) view.getBackground()).getColor());
            } else {
                this.f14273a = z3;
            }
        }
    }

    public a(@NonNull Context context) {
        this(context, 0);
        this.f14266j = getContext().getTheme().obtainStyledAttributes(new int[]{R.attr.enableEdgeToEdge}).getBoolean(0, false);
    }

    private FrameLayout e() {
        if (this.f14258b == null) {
            FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), R.layout.design_bottom_sheet_dialog, null);
            this.f14258b = frameLayout;
            this.f14259c = (CoordinatorLayout) frameLayout.findViewById(R.id.coordinator);
            FrameLayout frameLayout2 = (FrameLayout) this.f14258b.findViewById(R.id.design_bottom_sheet);
            this.f14260d = frameLayout2;
            BottomSheetBehavior<FrameLayout> C = BottomSheetBehavior.C(frameLayout2);
            this.f14257a = C;
            C.s(this.f14267k);
            this.f14257a.i0(this.f14262f);
        }
        return this.f14258b;
    }

    private static int getThemeResId(@NonNull Context context, int i2) {
        if (i2 == 0) {
            TypedValue typedValue = new TypedValue();
            if (context.getTheme().resolveAttribute(R.attr.bottomSheetDialogTheme, typedValue, true)) {
                return typedValue.resourceId;
            }
            return R.style.Theme_Design_Light_BottomSheetDialog;
        }
        return i2;
    }

    public static void k(@NonNull View view, boolean z3) {
        if (Build.VERSION.SDK_INT >= 23) {
            int systemUiVisibility = view.getSystemUiVisibility();
            view.setSystemUiVisibility(z3 ? systemUiVisibility | 8192 : systemUiVisibility & (-8193));
        }
    }

    private View m(int i2, @Nullable View view, @Nullable ViewGroup.LayoutParams layoutParams) {
        e();
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.f14258b.findViewById(R.id.coordinator);
        if (i2 != 0 && view == null) {
            view = getLayoutInflater().inflate(i2, (ViewGroup) coordinatorLayout, false);
        }
        if (this.f14266j) {
            ViewCompat.setOnApplyWindowInsetsListener(this.f14260d, new C0100a());
        }
        this.f14260d.removeAllViews();
        if (layoutParams == null) {
            this.f14260d.addView(view);
        } else {
            this.f14260d.addView(view, layoutParams);
        }
        coordinatorLayout.findViewById(R.id.touch_outside).setOnClickListener(new b());
        ViewCompat.setAccessibilityDelegate(this.f14260d, new c());
        this.f14260d.setOnTouchListener(new d());
        return this.f14258b;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        BottomSheetBehavior<FrameLayout> f4 = f();
        if (this.f14261e && f4.O() != 5) {
            f4.q0(5);
        } else {
            super.cancel();
        }
    }

    @NonNull
    public BottomSheetBehavior<FrameLayout> f() {
        if (this.f14257a == null) {
            e();
        }
        return this.f14257a;
    }

    public boolean g() {
        return this.f14261e;
    }

    public boolean h() {
        return this.f14266j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i() {
        this.f14257a.X(this.f14267k);
    }

    public void j(boolean z3) {
        this.f14261e = z3;
    }

    boolean l() {
        if (!this.f14264h) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{16843611});
            this.f14263g = obtainStyledAttributes.getBoolean(0, true);
            obtainStyledAttributes.recycle();
            this.f14264h = true;
        }
        return this.f14263g;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Window window = getWindow();
        if (window == null || Build.VERSION.SDK_INT < 21) {
            return;
        }
        boolean z3 = this.f14266j && Color.alpha(window.getNavigationBarColor()) < 255;
        FrameLayout frameLayout = this.f14258b;
        if (frameLayout != null) {
            frameLayout.setFitsSystemWindows(!z3);
        }
        CoordinatorLayout coordinatorLayout = this.f14259c;
        if (coordinatorLayout != null) {
            coordinatorLayout.setFitsSystemWindows(!z3);
        }
        if (z3) {
            window.getDecorView().setSystemUiVisibility(768);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 21) {
                window.setStatusBarColor(0);
                window.addFlags(Integer.MIN_VALUE);
                if (i2 < 23) {
                    window.addFlags(67108864);
                }
            }
            window.setLayout(-1, -1);
        }
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.f14257a;
        if (bottomSheetBehavior == null || bottomSheetBehavior.O() != 5) {
            return;
        }
        this.f14257a.q0(4);
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z3) {
        super.setCancelable(z3);
        if (this.f14262f != z3) {
            this.f14262f = z3;
            BottomSheetBehavior<FrameLayout> bottomSheetBehavior = this.f14257a;
            if (bottomSheetBehavior != null) {
                bottomSheetBehavior.i0(z3);
            }
        }
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z3) {
        super.setCanceledOnTouchOutside(z3);
        if (z3 && !this.f14262f) {
            this.f14262f = true;
        }
        this.f14263g = z3;
        this.f14264h = true;
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void setContentView(@LayoutRes int i2) {
        super.setContentView(m(i2, null, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void setContentView(View view) {
        super.setContentView(m(0, view, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(m(0, view, layoutParams));
    }

    public a(@NonNull Context context, @StyleRes int i2) {
        super(context, getThemeResId(context, i2));
        this.f14262f = true;
        this.f14263g = true;
        this.f14267k = new e();
        supportRequestWindowFeature(1);
        this.f14266j = getContext().getTheme().obtainStyledAttributes(new int[]{R.attr.enableEdgeToEdge}).getBoolean(0, false);
    }

    protected a(@NonNull Context context, boolean z3, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z3, onCancelListener);
        this.f14262f = true;
        this.f14263g = true;
        this.f14267k = new e();
        supportRequestWindowFeature(1);
        this.f14262f = z3;
        this.f14266j = getContext().getTheme().obtainStyledAttributes(new int[]{R.attr.enableEdgeToEdge}).getBoolean(0, false);
    }
}
