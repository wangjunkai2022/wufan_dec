package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.color.m;
import com.google.android.material.internal.n;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.textfield.TextInputLayout;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DropdownMenuEndIconDelegate.java */
/* loaded from: classes2.dex */
public class d extends com.google.android.material.textfield.e {

    /* renamed from: t  reason: collision with root package name */
    private static final boolean f16070t;

    /* renamed from: u  reason: collision with root package name */
    private static final int f16071u = 50;

    /* renamed from: v  reason: collision with root package name */
    private static final int f16072v = 67;

    /* renamed from: e  reason: collision with root package name */
    private final TextWatcher f16073e;

    /* renamed from: f  reason: collision with root package name */
    private final View.OnFocusChangeListener f16074f;

    /* renamed from: g  reason: collision with root package name */
    private final TextInputLayout.e f16075g;

    /* renamed from: h  reason: collision with root package name */
    private final TextInputLayout.f f16076h;
    @SuppressLint({"ClickableViewAccessibility"})

    /* renamed from: i  reason: collision with root package name */
    private final TextInputLayout.g f16077i;

    /* renamed from: j  reason: collision with root package name */
    private final View.OnAttachStateChangeListener f16078j;

    /* renamed from: k  reason: collision with root package name */
    private final AccessibilityManagerCompat.TouchExplorationStateChangeListener f16079k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f16080l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f16081m;

    /* renamed from: n  reason: collision with root package name */
    private long f16082n;

    /* renamed from: o  reason: collision with root package name */
    private StateListDrawable f16083o;

    /* renamed from: p  reason: collision with root package name */
    private MaterialShapeDrawable f16084p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private AccessibilityManager f16085q;

    /* renamed from: r  reason: collision with root package name */
    private ValueAnimator f16086r;

    /* renamed from: s  reason: collision with root package name */
    private ValueAnimator f16087s;

    /* compiled from: DropdownMenuEndIconDelegate.java */
    /* loaded from: classes2.dex */
    class a extends n {

        /* compiled from: DropdownMenuEndIconDelegate.java */
        /* renamed from: com.google.android.material.textfield.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class RunnableC0118a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ AutoCompleteTextView f16089a;

            RunnableC0118a(AutoCompleteTextView autoCompleteTextView) {
                this.f16089a = autoCompleteTextView;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean isPopupShowing = this.f16089a.isPopupShowing();
                d.this.J(isPopupShowing);
                d.this.f16080l = isPopupShowing;
            }
        }

        a() {
        }

        @Override // com.google.android.material.internal.n, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            AutoCompleteTextView C = d.C(d.this.f16105a.getEditText());
            if (d.this.f16085q.isTouchExplorationEnabled() && d.H(C) && !d.this.f16107c.hasFocus()) {
                C.dismissDropDown();
            }
            C.post(new RunnableC0118a(C));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DropdownMenuEndIconDelegate.java */
    /* loaded from: classes2.dex */
    public class b implements AutoCompleteTextView.OnDismissListener {
        b() {
        }

        @Override // android.widget.AutoCompleteTextView.OnDismissListener
        public void onDismiss() {
            d.this.N();
            d.this.J(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DropdownMenuEndIconDelegate.java */
    /* loaded from: classes2.dex */
    public class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d dVar = d.this;
            dVar.f16107c.setChecked(dVar.f16081m);
            d.this.f16087s.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DropdownMenuEndIconDelegate.java */
    /* renamed from: com.google.android.material.textfield.d$d  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0119d implements ValueAnimator.AnimatorUpdateListener {
        C0119d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            d.this.f16107c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* compiled from: DropdownMenuEndIconDelegate.java */
    /* loaded from: classes2.dex */
    class e implements View.OnFocusChangeListener {
        e() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z3) {
            d.this.f16105a.setEndIconActivated(z3);
            if (z3) {
                return;
            }
            d.this.J(false);
            d.this.f16080l = false;
        }
    }

    /* compiled from: DropdownMenuEndIconDelegate.java */
    /* loaded from: classes2.dex */
    class f extends TextInputLayout.e {
        f(TextInputLayout textInputLayout) {
            super(textInputLayout);
        }

        @Override // com.google.android.material.textfield.TextInputLayout.e, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (!d.H(d.this.f16105a.getEditText())) {
                accessibilityNodeInfoCompat.setClassName(Spinner.class.getName());
            }
            if (accessibilityNodeInfoCompat.isShowingHintText()) {
                accessibilityNodeInfoCompat.setHintText(null);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onPopulateAccessibilityEvent(View view, @NonNull AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            AutoCompleteTextView C = d.C(d.this.f16105a.getEditText());
            if (accessibilityEvent.getEventType() == 1 && d.this.f16085q.isEnabled() && !d.H(d.this.f16105a.getEditText())) {
                d.this.M(C);
                d.this.N();
            }
        }
    }

    /* compiled from: DropdownMenuEndIconDelegate.java */
    /* loaded from: classes2.dex */
    class g implements TextInputLayout.f {
        g() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.f
        public void a(@NonNull TextInputLayout textInputLayout) {
            AutoCompleteTextView C = d.C(textInputLayout.getEditText());
            d.this.K(C);
            d.this.y(C);
            d.this.L(C);
            C.setThreshold(0);
            C.removeTextChangedListener(d.this.f16073e);
            C.addTextChangedListener(d.this.f16073e);
            textInputLayout.setEndIconCheckable(true);
            textInputLayout.setErrorIconDrawable((Drawable) null);
            if (!d.H(C) && d.this.f16085q.isTouchExplorationEnabled()) {
                ViewCompat.setImportantForAccessibility(d.this.f16107c, 2);
            }
            textInputLayout.setTextInputAccessibilityDelegate(d.this.f16075g);
            textInputLayout.setEndIconVisible(true);
        }
    }

    /* compiled from: DropdownMenuEndIconDelegate.java */
    /* loaded from: classes2.dex */
    class h implements TextInputLayout.g {

        /* compiled from: DropdownMenuEndIconDelegate.java */
        /* loaded from: classes2.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ AutoCompleteTextView f16098a;

            a(AutoCompleteTextView autoCompleteTextView) {
                this.f16098a = autoCompleteTextView;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f16098a.removeTextChangedListener(d.this.f16073e);
            }
        }

        h() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.g
        public void a(@NonNull TextInputLayout textInputLayout, int i2) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) textInputLayout.getEditText();
            if (autoCompleteTextView != null && i2 == 3) {
                autoCompleteTextView.post(new a(autoCompleteTextView));
                if (autoCompleteTextView.getOnFocusChangeListener() == d.this.f16074f) {
                    autoCompleteTextView.setOnFocusChangeListener(null);
                }
                autoCompleteTextView.setOnTouchListener(null);
                if (d.f16070t) {
                    autoCompleteTextView.setOnDismissListener(null);
                }
            }
            if (i2 == 3) {
                textInputLayout.removeOnAttachStateChangeListener(d.this.f16078j);
                d.this.I();
            }
        }
    }

    /* compiled from: DropdownMenuEndIconDelegate.java */
    /* loaded from: classes2.dex */
    class i implements View.OnAttachStateChangeListener {
        i() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            d.this.B();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            d.this.I();
        }
    }

    /* compiled from: DropdownMenuEndIconDelegate.java */
    /* loaded from: classes2.dex */
    class j implements AccessibilityManagerCompat.TouchExplorationStateChangeListener {
        j() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityManagerCompat.TouchExplorationStateChangeListener
        public void onTouchExplorationStateChanged(boolean z3) {
            AutoCompleteTextView autoCompleteTextView;
            TextInputLayout textInputLayout = d.this.f16105a;
            if (textInputLayout == null || (autoCompleteTextView = (AutoCompleteTextView) textInputLayout.getEditText()) == null || d.H(autoCompleteTextView)) {
                return;
            }
            ViewCompat.setImportantForAccessibility(d.this.f16107c, z3 ? 2 : 1);
        }
    }

    /* compiled from: DropdownMenuEndIconDelegate.java */
    /* loaded from: classes2.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d.this.M((AutoCompleteTextView) d.this.f16105a.getEditText());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DropdownMenuEndIconDelegate.java */
    /* loaded from: classes2.dex */
    public class l implements View.OnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AutoCompleteTextView f16103a;

        l(AutoCompleteTextView autoCompleteTextView) {
            this.f16103a = autoCompleteTextView;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(@NonNull View view, @NonNull MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1) {
                if (d.this.G()) {
                    d.this.f16080l = false;
                }
                d.this.M(this.f16103a);
                d.this.N();
            }
            return false;
        }
    }

    static {
        f16070t = Build.VERSION.SDK_INT >= 21;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(@NonNull TextInputLayout textInputLayout, @DrawableRes int i2) {
        super(textInputLayout, i2);
        this.f16073e = new a();
        this.f16074f = new e();
        this.f16075g = new f(this.f16105a);
        this.f16076h = new g();
        this.f16077i = new h();
        this.f16078j = new i();
        this.f16079k = new j();
        this.f16080l = false;
        this.f16081m = false;
        this.f16082n = Long.MAX_VALUE;
    }

    private void A(@NonNull AutoCompleteTextView autoCompleteTextView, int i2, int[][] iArr, @NonNull MaterialShapeDrawable materialShapeDrawable) {
        LayerDrawable layerDrawable;
        int d4 = m.d(autoCompleteTextView, R.attr.colorSurface);
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(materialShapeDrawable.getShapeAppearanceModel());
        int m4 = m.m(i2, d4, 0.1f);
        materialShapeDrawable2.o0(new ColorStateList(iArr, new int[]{m4, 0}));
        if (f16070t) {
            materialShapeDrawable2.setTint(d4);
            ColorStateList colorStateList = new ColorStateList(iArr, new int[]{m4, d4});
            MaterialShapeDrawable materialShapeDrawable3 = new MaterialShapeDrawable(materialShapeDrawable.getShapeAppearanceModel());
            materialShapeDrawable3.setTint(-1);
            layerDrawable = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, materialShapeDrawable2, materialShapeDrawable3), materialShapeDrawable});
        } else {
            layerDrawable = new LayerDrawable(new Drawable[]{materialShapeDrawable2, materialShapeDrawable});
        }
        ViewCompat.setBackground(autoCompleteTextView, layerDrawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        TextInputLayout textInputLayout;
        if (this.f16085q == null || (textInputLayout = this.f16105a) == null || !ViewCompat.isAttachedToWindow(textInputLayout)) {
            return;
        }
        AccessibilityManagerCompat.addTouchExplorationStateChangeListener(this.f16085q, this.f16079k);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public static AutoCompleteTextView C(EditText editText) {
        if (editText instanceof AutoCompleteTextView) {
            return (AutoCompleteTextView) editText;
        }
        throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
    }

    private ValueAnimator D(int i2, float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(com.google.android.material.animation.a.f14004a);
        ofFloat.setDuration(i2);
        ofFloat.addUpdateListener(new C0119d());
        return ofFloat;
    }

    private MaterialShapeDrawable E(float f4, float f5, float f6, int i2) {
        com.google.android.material.shape.m m4 = com.google.android.material.shape.m.a().K(f4).P(f4).x(f5).C(f5).m();
        MaterialShapeDrawable n4 = MaterialShapeDrawable.n(this.f16106b, f6);
        n4.setShapeAppearanceModel(m4);
        n4.q0(0, i2, 0, i2);
        return n4;
    }

    private void F() {
        this.f16087s = D(67, 0.0f, 1.0f);
        ValueAnimator D = D(50, 1.0f, 0.0f);
        this.f16086r = D;
        D.addListener(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean G() {
        long currentTimeMillis = System.currentTimeMillis() - this.f16082n;
        return currentTimeMillis < 0 || currentTimeMillis > 300;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean H(@NonNull EditText editText) {
        return editText.getKeyListener() != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I() {
        AccessibilityManager accessibilityManager = this.f16085q;
        if (accessibilityManager != null) {
            AccessibilityManagerCompat.removeTouchExplorationStateChangeListener(accessibilityManager, this.f16079k);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J(boolean z3) {
        if (this.f16081m != z3) {
            this.f16081m = z3;
            this.f16087s.cancel();
            this.f16086r.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K(@NonNull AutoCompleteTextView autoCompleteTextView) {
        if (f16070t) {
            int boxBackgroundMode = this.f16105a.getBoxBackgroundMode();
            if (boxBackgroundMode == 2) {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.f16084p);
            } else if (boxBackgroundMode == 1) {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.f16083o);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClickableViewAccessibility"})
    public void L(@NonNull AutoCompleteTextView autoCompleteTextView) {
        autoCompleteTextView.setOnTouchListener(new l(autoCompleteTextView));
        autoCompleteTextView.setOnFocusChangeListener(this.f16074f);
        if (f16070t) {
            autoCompleteTextView.setOnDismissListener(new b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M(@Nullable AutoCompleteTextView autoCompleteTextView) {
        if (autoCompleteTextView == null) {
            return;
        }
        if (G()) {
            this.f16080l = false;
        }
        if (!this.f16080l) {
            if (f16070t) {
                J(!this.f16081m);
            } else {
                this.f16081m = !this.f16081m;
                this.f16107c.toggle();
            }
            if (this.f16081m) {
                autoCompleteTextView.requestFocus();
                autoCompleteTextView.showDropDown();
                return;
            }
            autoCompleteTextView.dismissDropDown();
            return;
        }
        this.f16080l = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N() {
        this.f16080l = true;
        this.f16082n = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y(@NonNull AutoCompleteTextView autoCompleteTextView) {
        if (H(autoCompleteTextView)) {
            return;
        }
        int boxBackgroundMode = this.f16105a.getBoxBackgroundMode();
        MaterialShapeDrawable boxBackground = this.f16105a.getBoxBackground();
        int d4 = m.d(autoCompleteTextView, R.attr.colorControlHighlight);
        int[][] iArr = {new int[]{16842919}, new int[0]};
        if (boxBackgroundMode == 2) {
            A(autoCompleteTextView, d4, iArr, boxBackground);
        } else if (boxBackgroundMode == 1) {
            z(autoCompleteTextView, d4, iArr, boxBackground);
        }
    }

    private void z(@NonNull AutoCompleteTextView autoCompleteTextView, int i2, int[][] iArr, @NonNull MaterialShapeDrawable materialShapeDrawable) {
        int boxBackgroundColor = this.f16105a.getBoxBackgroundColor();
        int[] iArr2 = {m.m(i2, boxBackgroundColor, 0.1f), boxBackgroundColor};
        if (f16070t) {
            ViewCompat.setBackground(autoCompleteTextView, new RippleDrawable(new ColorStateList(iArr, iArr2), materialShapeDrawable, materialShapeDrawable));
            return;
        }
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(materialShapeDrawable.getShapeAppearanceModel());
        materialShapeDrawable2.o0(new ColorStateList(iArr, iArr2));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{materialShapeDrawable, materialShapeDrawable2});
        int paddingStart = ViewCompat.getPaddingStart(autoCompleteTextView);
        int paddingTop = autoCompleteTextView.getPaddingTop();
        int paddingEnd = ViewCompat.getPaddingEnd(autoCompleteTextView);
        int paddingBottom = autoCompleteTextView.getPaddingBottom();
        ViewCompat.setBackground(autoCompleteTextView, layerDrawable);
        ViewCompat.setPaddingRelative(autoCompleteTextView, paddingStart, paddingTop, paddingEnd, paddingBottom);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void O(@NonNull AutoCompleteTextView autoCompleteTextView) {
        if (!H(autoCompleteTextView) && this.f16105a.getBoxBackgroundMode() == 2 && (autoCompleteTextView.getBackground() instanceof LayerDrawable)) {
            y(autoCompleteTextView);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.e
    public void a() {
        float dimensionPixelOffset = this.f16106b.getResources().getDimensionPixelOffset(R.dimen.mtrl_shape_corner_size_small_component);
        float dimensionPixelOffset2 = this.f16106b.getResources().getDimensionPixelOffset(R.dimen.mtrl_exposed_dropdown_menu_popup_elevation);
        int dimensionPixelOffset3 = this.f16106b.getResources().getDimensionPixelOffset(R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        MaterialShapeDrawable E = E(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        MaterialShapeDrawable E2 = E(0.0f, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        this.f16084p = E;
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.f16083o = stateListDrawable;
        stateListDrawable.addState(new int[]{16842922}, E);
        this.f16083o.addState(new int[0], E2);
        int i2 = this.f16108d;
        if (i2 == 0) {
            i2 = f16070t ? R.drawable.mtrl_dropdown_arrow : R.drawable.mtrl_ic_arrow_drop_down;
        }
        this.f16105a.setEndIconDrawable(i2);
        TextInputLayout textInputLayout = this.f16105a;
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(R.string.exposed_dropdown_menu_content_description));
        this.f16105a.setEndIconOnClickListener(new k());
        this.f16105a.g(this.f16076h);
        this.f16105a.h(this.f16077i);
        F();
        this.f16085q = (AccessibilityManager) this.f16106b.getSystemService("accessibility");
        this.f16105a.addOnAttachStateChangeListener(this.f16078j);
        B();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.e
    public boolean b(int i2) {
        return i2 != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.e
    public boolean d() {
        return true;
    }
}
