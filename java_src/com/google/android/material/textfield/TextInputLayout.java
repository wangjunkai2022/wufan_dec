package com.google.android.material.textfield;

import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.DrawableUtils;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.text.BidiFormatter;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import androidx.transition.Fade;
import androidx.transition.TransitionManager;
import com.google.android.material.R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.w;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.m;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;
/* loaded from: classes2.dex */
public class TextInputLayout extends LinearLayout {

    /* renamed from: h1  reason: collision with root package name */
    private static final int f15979h1 = R.style.Widget_Design_TextInputLayout;

    /* renamed from: i1  reason: collision with root package name */
    private static final int f15980i1 = 167;

    /* renamed from: j1  reason: collision with root package name */
    private static final long f15981j1 = 87;

    /* renamed from: k1  reason: collision with root package name */
    private static final long f15982k1 = 67;

    /* renamed from: l1  reason: collision with root package name */
    private static final int f15983l1 = -1;

    /* renamed from: m1  reason: collision with root package name */
    private static final int f15984m1 = -1;

    /* renamed from: n1  reason: collision with root package name */
    private static final String f15985n1 = "TextInputLayout";

    /* renamed from: o1  reason: collision with root package name */
    public static final int f15986o1 = 0;

    /* renamed from: p1  reason: collision with root package name */
    public static final int f15987p1 = 1;

    /* renamed from: q1  reason: collision with root package name */
    public static final int f15988q1 = 2;

    /* renamed from: r1  reason: collision with root package name */
    public static final int f15989r1 = -1;

    /* renamed from: s1  reason: collision with root package name */
    public static final int f15990s1 = 0;

    /* renamed from: t1  reason: collision with root package name */
    public static final int f15991t1 = 1;

    /* renamed from: u1  reason: collision with root package name */
    public static final int f15992u1 = 2;

    /* renamed from: v1  reason: collision with root package name */
    public static final int f15993v1 = 3;
    @Nullable
    private CharSequence A;
    private final LinkedHashSet<f> A0;
    @NonNull
    private final TextView B;
    private int B0;
    private boolean C;
    private final SparseArray<com.google.android.material.textfield.e> C0;
    private CharSequence D;
    @NonNull
    private final CheckableImageButton D0;
    private boolean E;
    private final LinkedHashSet<g> E0;
    @Nullable
    private MaterialShapeDrawable F;
    private ColorStateList F0;
    @Nullable
    private MaterialShapeDrawable G;
    private PorterDuff.Mode G0;
    @Nullable
    private MaterialShapeDrawable H;
    @Nullable
    private Drawable H0;
    @NonNull
    private m I;
    private int I0;
    private boolean J;
    private Drawable J0;
    private final int K;
    private View.OnLongClickListener K0;
    private View.OnLongClickListener L0;
    @NonNull
    private final CheckableImageButton M0;
    private ColorStateList N0;
    private PorterDuff.Mode O0;
    private ColorStateList P0;
    private ColorStateList Q0;
    @ColorInt
    private int R0;
    @ColorInt
    private int S0;
    @ColorInt
    private int T0;
    private ColorStateList U0;
    @ColorInt
    private int V0;
    @ColorInt
    private int W0;
    @ColorInt
    private int X0;
    @ColorInt
    private int Y0;
    @ColorInt
    private int Z0;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f15994a;

    /* renamed from: a1  reason: collision with root package name */
    private boolean f15995a1;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final j f15996b;

    /* renamed from: b1  reason: collision with root package name */
    final com.google.android.material.internal.b f15997b1;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final LinearLayout f15998c;

    /* renamed from: c1  reason: collision with root package name */
    private boolean f15999c1;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final FrameLayout f16000d;

    /* renamed from: d1  reason: collision with root package name */
    private boolean f16001d1;

    /* renamed from: e  reason: collision with root package name */
    EditText f16002e;

    /* renamed from: e1  reason: collision with root package name */
    private ValueAnimator f16003e1;

    /* renamed from: f  reason: collision with root package name */
    private CharSequence f16004f;

    /* renamed from: f1  reason: collision with root package name */
    private boolean f16005f1;

    /* renamed from: g  reason: collision with root package name */
    private int f16006g;

    /* renamed from: g1  reason: collision with root package name */
    private boolean f16007g1;

    /* renamed from: h  reason: collision with root package name */
    private int f16008h;

    /* renamed from: i  reason: collision with root package name */
    private int f16009i;

    /* renamed from: j  reason: collision with root package name */
    private int f16010j;

    /* renamed from: k  reason: collision with root package name */
    private final com.google.android.material.textfield.g f16011k;

    /* renamed from: l  reason: collision with root package name */
    boolean f16012l;

    /* renamed from: m  reason: collision with root package name */
    private int f16013m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f16014n;

    /* renamed from: n0  reason: collision with root package name */
    private int f16015n0;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private TextView f16016o;

    /* renamed from: o0  reason: collision with root package name */
    private int f16017o0;

    /* renamed from: p  reason: collision with root package name */
    private int f16018p;

    /* renamed from: p0  reason: collision with root package name */
    private int f16019p0;

    /* renamed from: q  reason: collision with root package name */
    private int f16020q;

    /* renamed from: q0  reason: collision with root package name */
    private int f16021q0;

    /* renamed from: r  reason: collision with root package name */
    private CharSequence f16022r;

    /* renamed from: r0  reason: collision with root package name */
    private int f16023r0;

    /* renamed from: s  reason: collision with root package name */
    private boolean f16024s;
    @ColorInt

    /* renamed from: s0  reason: collision with root package name */
    private int f16025s0;

    /* renamed from: t  reason: collision with root package name */
    private TextView f16026t;
    @ColorInt

    /* renamed from: t0  reason: collision with root package name */
    private int f16027t0;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private ColorStateList f16028u;

    /* renamed from: u0  reason: collision with root package name */
    private final Rect f16029u0;

    /* renamed from: v  reason: collision with root package name */
    private int f16030v;

    /* renamed from: v0  reason: collision with root package name */
    private final Rect f16031v0;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private Fade f16032w;

    /* renamed from: w0  reason: collision with root package name */
    private final RectF f16033w0;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private Fade f16034x;

    /* renamed from: x0  reason: collision with root package name */
    private Typeface f16035x0;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private ColorStateList f16036y;
    @Nullable

    /* renamed from: y0  reason: collision with root package name */
    private Drawable f16037y0;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private ColorStateList f16038z;

    /* renamed from: z0  reason: collision with root package name */
    private int f16039z0;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface BoxBackgroundMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface EndIconMode {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        CharSequence f16040a;

        /* renamed from: b  reason: collision with root package name */
        boolean f16041b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        CharSequence f16042c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        CharSequence f16043d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        CharSequence f16044e;

        /* loaded from: classes2.dex */
        class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            @Nullable
            /* renamed from: a */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            @NonNull
            /* renamed from: b */
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: c */
            public SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @NonNull
        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f16040a) + " hint=" + ((Object) this.f16042c) + " helperText=" + ((Object) this.f16043d) + " placeholderText=" + ((Object) this.f16044e) + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            TextUtils.writeToParcel(this.f16040a, parcel, i2);
            parcel.writeInt(this.f16041b ? 1 : 0);
            TextUtils.writeToParcel(this.f16042c, parcel, i2);
            TextUtils.writeToParcel(this.f16043d, parcel, i2);
            TextUtils.writeToParcel(this.f16044e, parcel, i2);
        }

        SavedState(@NonNull Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f16040a = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f16041b = parcel.readInt() == 1;
            this.f16042c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f16043d = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f16044e = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@NonNull Editable editable) {
            TextInputLayout textInputLayout = TextInputLayout.this;
            textInputLayout.L0(!textInputLayout.f16007g1);
            TextInputLayout textInputLayout2 = TextInputLayout.this;
            if (textInputLayout2.f16012l) {
                textInputLayout2.B0(editable.length());
            }
            if (TextInputLayout.this.f16024s) {
                TextInputLayout.this.P0(editable.length());
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        }
    }

    /* loaded from: classes2.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout.this.D0.performClick();
            TextInputLayout.this.D0.jumpDrawablesToCurrentState();
        }
    }

    /* loaded from: classes2.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout.this.f16002e.requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements ValueAnimator.AnimatorUpdateListener {
        d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            TextInputLayout.this.f15997b1.z0(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* loaded from: classes2.dex */
    public static class e extends AccessibilityDelegateCompat {

        /* renamed from: a  reason: collision with root package name */
        private final TextInputLayout f16049a;

        public e(@NonNull TextInputLayout textInputLayout) {
            this.f16049a = textInputLayout;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(@NonNull View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            View t3;
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            EditText editText = this.f16049a.getEditText();
            CharSequence text = editText != null ? editText.getText() : null;
            CharSequence hint = this.f16049a.getHint();
            CharSequence error = this.f16049a.getError();
            CharSequence placeholderText = this.f16049a.getPlaceholderText();
            int counterMaxLength = this.f16049a.getCounterMaxLength();
            CharSequence counterOverflowDescription = this.f16049a.getCounterOverflowDescription();
            boolean z3 = !TextUtils.isEmpty(text);
            boolean z4 = !TextUtils.isEmpty(hint);
            boolean z5 = !this.f16049a.X();
            boolean z6 = !TextUtils.isEmpty(error);
            boolean z7 = z6 || !TextUtils.isEmpty(counterOverflowDescription);
            String charSequence = z4 ? hint.toString() : "";
            this.f16049a.f15996b.w(accessibilityNodeInfoCompat);
            if (z3) {
                accessibilityNodeInfoCompat.setText(text);
            } else if (!TextUtils.isEmpty(charSequence)) {
                accessibilityNodeInfoCompat.setText(charSequence);
                if (z5 && placeholderText != null) {
                    accessibilityNodeInfoCompat.setText(charSequence + ", " + ((Object) placeholderText));
                }
            } else if (placeholderText != null) {
                accessibilityNodeInfoCompat.setText(placeholderText);
            }
            if (!TextUtils.isEmpty(charSequence)) {
                if (Build.VERSION.SDK_INT >= 26) {
                    accessibilityNodeInfoCompat.setHintText(charSequence);
                } else {
                    if (z3) {
                        charSequence = ((Object) text) + ", " + charSequence;
                    }
                    accessibilityNodeInfoCompat.setText(charSequence);
                }
                accessibilityNodeInfoCompat.setShowingHintText(!z3);
            }
            accessibilityNodeInfoCompat.setMaxTextLength((text == null || text.length() != counterMaxLength) ? -1 : -1);
            if (z7) {
                if (!z6) {
                    error = counterOverflowDescription;
                }
                accessibilityNodeInfoCompat.setError(error);
            }
            if (Build.VERSION.SDK_INT < 17 || (t3 = this.f16049a.f16011k.t()) == null) {
                return;
            }
            accessibilityNodeInfoCompat.setLabelFor(t3);
        }
    }

    /* loaded from: classes2.dex */
    public interface f {
        void a(@NonNull TextInputLayout textInputLayout);
    }

    /* loaded from: classes2.dex */
    public interface g {
        void a(@NonNull TextInputLayout textInputLayout, int i2);
    }

    public TextInputLayout(@NonNull Context context) {
        this(context, null);
    }

    private void A(boolean z3) {
        ValueAnimator valueAnimator = this.f16003e1;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f16003e1.cancel();
        }
        if (z3 && this.f16001d1) {
            k(1.0f);
        } else {
            this.f15997b1.z0(1.0f);
        }
        this.f15995a1 = false;
        if (C()) {
            e0();
        }
        O0();
        this.f15996b.j(false);
        S0();
    }

    private void A0() {
        if (this.f16016o != null) {
            EditText editText = this.f16002e;
            B0(editText == null ? 0 : editText.getText().length());
        }
    }

    private Fade B() {
        Fade fade = new Fade();
        fade.setDuration(f15981j1);
        fade.setInterpolator(com.google.android.material.animation.a.f14004a);
        return fade;
    }

    private boolean C() {
        return this.C && !TextUtils.isEmpty(this.D) && (this.F instanceof com.google.android.material.textfield.c);
    }

    private static void C0(@NonNull Context context, @NonNull TextView textView, int i2, int i4, boolean z3) {
        int i5;
        if (z3) {
            i5 = R.string.character_counter_overflowed_content_description;
        } else {
            i5 = R.string.character_counter_content_description;
        }
        textView.setContentDescription(context.getString(i5, Integer.valueOf(i2), Integer.valueOf(i4)));
    }

    private void D0() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        TextView textView = this.f16016o;
        if (textView != null) {
            s0(textView, this.f16014n ? this.f16018p : this.f16020q);
            if (!this.f16014n && (colorStateList2 = this.f16036y) != null) {
                this.f16016o.setTextColor(colorStateList2);
            }
            if (!this.f16014n || (colorStateList = this.f16038z) == null) {
                return;
            }
            this.f16016o.setTextColor(colorStateList);
        }
    }

    private void E() {
        Iterator<f> it2 = this.A0.iterator();
        while (it2.hasNext()) {
            it2.next().a(this);
        }
    }

    private void E0() {
        if (this.B0 == 3 && this.f16015n0 == 2) {
            ((com.google.android.material.textfield.d) this.C0.get(3)).O((AutoCompleteTextView) this.f16002e);
        }
    }

    private void F(int i2) {
        Iterator<g> it2 = this.E0.iterator();
        while (it2.hasNext()) {
            it2.next().a(this, i2);
        }
    }

    private void G(Canvas canvas) {
        MaterialShapeDrawable materialShapeDrawable;
        if (this.H == null || (materialShapeDrawable = this.G) == null) {
            return;
        }
        materialShapeDrawable.draw(canvas);
        if (this.f16002e.isFocused()) {
            Rect bounds = this.H.getBounds();
            Rect bounds2 = this.G.getBounds();
            float G = this.f15997b1.G();
            int centerX = bounds2.centerX();
            bounds.left = com.google.android.material.animation.a.c(centerX, bounds2.left, G);
            bounds.right = com.google.android.material.animation.a.c(centerX, bounds2.right, G);
            this.H.draw(canvas);
        }
    }

    private void H(@NonNull Canvas canvas) {
        if (this.C) {
            this.f15997b1.l(canvas);
        }
    }

    private boolean H0() {
        int max;
        if (this.f16002e != null && this.f16002e.getMeasuredHeight() < (max = Math.max(this.f15998c.getMeasuredHeight(), this.f15996b.getMeasuredHeight()))) {
            this.f16002e.setMinimumHeight(max);
            return true;
        }
        return false;
    }

    private void I(boolean z3) {
        ValueAnimator valueAnimator = this.f16003e1;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f16003e1.cancel();
        }
        if (z3 && this.f16001d1) {
            k(0.0f);
        } else {
            this.f15997b1.z0(0.0f);
        }
        if (C() && ((com.google.android.material.textfield.c) this.F).P0()) {
            z();
        }
        this.f15995a1 = true;
        M();
        this.f15996b.j(true);
        S0();
    }

    private void I0() {
        this.f16000d.setVisibility((this.D0.getVisibility() != 0 || R()) ? 8 : 0);
        this.f15998c.setVisibility(P() || R() || ((this.A == null || X()) ? '\b' : (char) 0) == 0 ? 0 : 8);
    }

    private int J(int i2, boolean z3) {
        int compoundPaddingLeft = i2 + this.f16002e.getCompoundPaddingLeft();
        return (getPrefixText() == null || z3) ? compoundPaddingLeft : (compoundPaddingLeft - getPrefixTextView().getMeasuredWidth()) + getPrefixTextView().getPaddingLeft();
    }

    private void J0() {
        this.M0.setVisibility(getErrorIconDrawable() != null && this.f16011k.E() && this.f16011k.m() ? 0 : 8);
        I0();
        R0();
        if (L()) {
            return;
        }
        F0();
    }

    private int K(int i2, boolean z3) {
        int compoundPaddingRight = i2 - this.f16002e.getCompoundPaddingRight();
        return (getPrefixText() == null || !z3) ? compoundPaddingRight : compoundPaddingRight + (getPrefixTextView().getMeasuredWidth() - getPrefixTextView().getPaddingRight());
    }

    private void K0() {
        if (this.f16015n0 != 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f15994a.getLayoutParams();
            int u3 = u();
            if (u3 != layoutParams.topMargin) {
                layoutParams.topMargin = u3;
                this.f15994a.requestLayout();
            }
        }
    }

    private boolean L() {
        return this.B0 != 0;
    }

    private void M() {
        TextView textView = this.f16026t;
        if (textView == null || !this.f16024s) {
            return;
        }
        textView.setText((CharSequence) null);
        TransitionManager.beginDelayedTransition(this.f15994a, this.f16034x);
        this.f16026t.setVisibility(4);
    }

    private void M0(boolean z3, boolean z4) {
        ColorStateList colorStateList;
        TextView textView;
        int i2;
        boolean isEnabled = isEnabled();
        EditText editText = this.f16002e;
        boolean z5 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.f16002e;
        boolean z6 = editText2 != null && editText2.hasFocus();
        boolean m4 = this.f16011k.m();
        ColorStateList colorStateList2 = this.P0;
        if (colorStateList2 != null) {
            this.f15997b1.j0(colorStateList2);
            this.f15997b1.u0(this.P0);
        }
        if (!isEnabled) {
            ColorStateList colorStateList3 = this.P0;
            if (colorStateList3 != null) {
                i2 = colorStateList3.getColorForState(new int[]{-16842910}, this.Z0);
            } else {
                i2 = this.Z0;
            }
            this.f15997b1.j0(ColorStateList.valueOf(i2));
            this.f15997b1.u0(ColorStateList.valueOf(i2));
        } else if (m4) {
            this.f15997b1.j0(this.f16011k.r());
        } else if (this.f16014n && (textView = this.f16016o) != null) {
            this.f15997b1.j0(textView.getTextColors());
        } else if (z6 && (colorStateList = this.Q0) != null) {
            this.f15997b1.j0(colorStateList);
        }
        if (!z5 && this.f15999c1 && (!isEnabled() || !z6)) {
            if (z4 || !this.f15995a1) {
                I(z3);
            }
        } else if (z4 || this.f15995a1) {
            A(z3);
        }
    }

    private void N0() {
        EditText editText;
        if (this.f16026t == null || (editText = this.f16002e) == null) {
            return;
        }
        this.f16026t.setGravity(editText.getGravity());
        this.f16026t.setPadding(this.f16002e.getCompoundPaddingLeft(), this.f16002e.getCompoundPaddingTop(), this.f16002e.getCompoundPaddingRight(), this.f16002e.getCompoundPaddingBottom());
    }

    private void O0() {
        EditText editText = this.f16002e;
        P0(editText == null ? 0 : editText.getText().length());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P0(int i2) {
        if (i2 == 0 && !this.f15995a1) {
            w0();
        } else {
            M();
        }
    }

    private void Q0(boolean z3, boolean z4) {
        int defaultColor = this.U0.getDefaultColor();
        int colorForState = this.U0.getColorForState(new int[]{16843623, 16842910}, defaultColor);
        int colorForState2 = this.U0.getColorForState(new int[]{16843518, 16842910}, defaultColor);
        if (z3) {
            this.f16025s0 = colorForState2;
        } else if (z4) {
            this.f16025s0 = colorForState;
        } else {
            this.f16025s0 = defaultColor;
        }
    }

    private boolean R() {
        return this.M0.getVisibility() == 0;
    }

    private void R0() {
        if (this.f16002e == null) {
            return;
        }
        ViewCompat.setPaddingRelative(this.B, getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding), this.f16002e.getPaddingTop(), (P() || R()) ? 0 : ViewCompat.getPaddingEnd(this.f16002e), this.f16002e.getPaddingBottom());
    }

    private void S0() {
        int visibility = this.B.getVisibility();
        int i2 = (this.A == null || X()) ? 8 : 0;
        if (visibility != i2) {
            getEndIconDelegate().c(i2 == 0);
        }
        I0();
        this.B.setVisibility(i2);
        F0();
    }

    private boolean a0() {
        return this.f16015n0 == 1 && (Build.VERSION.SDK_INT < 16 || this.f16002e.getMinLines() <= 1);
    }

    private void d0() {
        o();
        o0();
        T0();
        y0();
        j();
        if (this.f16015n0 != 0) {
            K0();
        }
    }

    private void e0() {
        if (C()) {
            RectF rectF = this.f16033w0;
            this.f15997b1.o(rectF, this.f16002e.getWidth(), this.f16002e.getGravity());
            n(rectF);
            rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.f16019p0);
            ((com.google.android.material.textfield.c) this.F).S0(rectF);
        }
    }

    private void g0() {
        if (!C() || this.f15995a1) {
            return;
        }
        z();
        e0();
    }

    private com.google.android.material.textfield.e getEndIconDelegate() {
        com.google.android.material.textfield.e eVar = this.C0.get(this.B0);
        return eVar != null ? eVar : this.C0.get(0);
    }

    @Nullable
    private CheckableImageButton getEndIconToUpdateDummyDrawable() {
        if (this.M0.getVisibility() == 0) {
            return this.M0;
        }
        if (L() && P()) {
            return this.D0;
        }
        return null;
    }

    private static void h0(@NonNull ViewGroup viewGroup, boolean z3) {
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            childAt.setEnabled(z3);
            if (childAt instanceof ViewGroup) {
                h0((ViewGroup) childAt, z3);
            }
        }
    }

    private void i() {
        TextView textView = this.f16026t;
        if (textView != null) {
            this.f15994a.addView(textView);
            this.f16026t.setVisibility(0);
        }
    }

    private void j() {
        if (this.f16002e == null || this.f16015n0 != 1) {
            return;
        }
        if (com.google.android.material.resources.c.j(getContext())) {
            EditText editText = this.f16002e;
            ViewCompat.setPaddingRelative(editText, ViewCompat.getPaddingStart(editText), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_2_0_padding_top), ViewCompat.getPaddingEnd(this.f16002e), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_2_0_padding_bottom));
        } else if (com.google.android.material.resources.c.i(getContext())) {
            EditText editText2 = this.f16002e;
            ViewCompat.setPaddingRelative(editText2, ViewCompat.getPaddingStart(editText2), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_1_3_padding_top), ViewCompat.getPaddingEnd(this.f16002e), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_1_3_padding_bottom));
        }
    }

    private void l() {
        MaterialShapeDrawable materialShapeDrawable = this.F;
        if (materialShapeDrawable == null) {
            return;
        }
        m shapeAppearanceModel = materialShapeDrawable.getShapeAppearanceModel();
        m mVar = this.I;
        if (shapeAppearanceModel != mVar) {
            this.F.setShapeAppearanceModel(mVar);
            E0();
        }
        if (v()) {
            this.F.D0(this.f16019p0, this.f16025s0);
        }
        int p3 = p();
        this.f16027t0 = p3;
        this.F.o0(ColorStateList.valueOf(p3));
        if (this.B0 == 3) {
            this.f16002e.getBackground().invalidateSelf();
        }
        m();
        invalidate();
    }

    private void m() {
        ColorStateList valueOf;
        if (this.G == null || this.H == null) {
            return;
        }
        if (w()) {
            MaterialShapeDrawable materialShapeDrawable = this.G;
            if (this.f16002e.isFocused()) {
                valueOf = ColorStateList.valueOf(this.R0);
            } else {
                valueOf = ColorStateList.valueOf(this.f16025s0);
            }
            materialShapeDrawable.o0(valueOf);
            this.H.o0(ColorStateList.valueOf(this.f16025s0));
        }
        invalidate();
    }

    private void n(@NonNull RectF rectF) {
        float f4 = rectF.left;
        int i2 = this.K;
        rectF.left = f4 - i2;
        rectF.right += i2;
    }

    private void n0() {
        TextView textView = this.f16026t;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    private void o() {
        int i2 = this.f16015n0;
        if (i2 == 0) {
            this.F = null;
            this.G = null;
            this.H = null;
        } else if (i2 == 1) {
            this.F = new MaterialShapeDrawable(this.I);
            this.G = new MaterialShapeDrawable();
            this.H = new MaterialShapeDrawable();
        } else if (i2 == 2) {
            if (this.C && !(this.F instanceof com.google.android.material.textfield.c)) {
                this.F = new com.google.android.material.textfield.c(this.I);
            } else {
                this.F = new MaterialShapeDrawable(this.I);
            }
            this.G = null;
            this.H = null;
        } else {
            throw new IllegalArgumentException(this.f16015n0 + " is illegal; only @BoxBackgroundMode constants are supported.");
        }
    }

    private void o0() {
        if (v0()) {
            ViewCompat.setBackground(this.f16002e, this.F);
        }
    }

    private int p() {
        return this.f16015n0 == 1 ? com.google.android.material.color.m.l(com.google.android.material.color.m.e(this, R.attr.colorSurface, 0), this.f16027t0) : this.f16027t0;
    }

    private static void p0(@NonNull CheckableImageButton checkableImageButton, @Nullable View.OnLongClickListener onLongClickListener) {
        boolean hasOnClickListeners = ViewCompat.hasOnClickListeners(checkableImageButton);
        boolean z3 = false;
        boolean z4 = onLongClickListener != null;
        z3 = (hasOnClickListeners || z4) ? true : true;
        checkableImageButton.setFocusable(z3);
        checkableImageButton.setClickable(hasOnClickListeners);
        checkableImageButton.setPressable(hasOnClickListeners);
        checkableImageButton.setLongClickable(z4);
        ViewCompat.setImportantForAccessibility(checkableImageButton, z3 ? 1 : 2);
    }

    @NonNull
    private Rect q(@NonNull Rect rect) {
        if (this.f16002e != null) {
            Rect rect2 = this.f16031v0;
            boolean k4 = w.k(this);
            rect2.bottom = rect.bottom;
            int i2 = this.f16015n0;
            if (i2 == 1) {
                rect2.left = J(rect.left, k4);
                rect2.top = rect.top + this.f16017o0;
                rect2.right = K(rect.right, k4);
                return rect2;
            } else if (i2 != 2) {
                rect2.left = J(rect.left, k4);
                rect2.top = getPaddingTop();
                rect2.right = K(rect.right, k4);
                return rect2;
            } else {
                rect2.left = rect.left + this.f16002e.getPaddingLeft();
                rect2.top = rect.top - u();
                rect2.right = rect.right - this.f16002e.getPaddingRight();
                return rect2;
            }
        }
        throw new IllegalStateException();
    }

    private static void q0(@NonNull CheckableImageButton checkableImageButton, @Nullable View.OnClickListener onClickListener, @Nullable View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnClickListener(onClickListener);
        p0(checkableImageButton, onLongClickListener);
    }

    private int r(@NonNull Rect rect, @NonNull Rect rect2, float f4) {
        if (a0()) {
            return (int) (rect2.top + f4);
        }
        return rect.bottom - this.f16002e.getCompoundPaddingBottom();
    }

    private static void r0(@NonNull CheckableImageButton checkableImageButton, @Nullable View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        p0(checkableImageButton, onLongClickListener);
    }

    private int s(@NonNull Rect rect, float f4) {
        if (a0()) {
            return (int) (rect.centerY() - (f4 / 2.0f));
        }
        return rect.top + this.f16002e.getCompoundPaddingTop();
    }

    private void setEditText(EditText editText) {
        if (this.f16002e == null) {
            if (this.B0 != 3) {
                boolean z3 = editText instanceof TextInputEditText;
            }
            this.f16002e = editText;
            int i2 = this.f16006g;
            if (i2 != -1) {
                setMinEms(i2);
            } else {
                setMinWidth(this.f16009i);
            }
            int i4 = this.f16008h;
            if (i4 != -1) {
                setMaxEms(i4);
            } else {
                setMaxWidth(this.f16010j);
            }
            d0();
            setTextInputAccessibilityDelegate(new e(this));
            this.f15997b1.M0(this.f16002e.getTypeface());
            this.f15997b1.w0(this.f16002e.getTextSize());
            if (Build.VERSION.SDK_INT >= 21) {
                this.f15997b1.r0(this.f16002e.getLetterSpacing());
            }
            int gravity = this.f16002e.getGravity();
            this.f15997b1.k0((gravity & (-113)) | 48);
            this.f15997b1.v0(gravity);
            this.f16002e.addTextChangedListener(new a());
            if (this.P0 == null) {
                this.P0 = this.f16002e.getHintTextColors();
            }
            if (this.C) {
                if (TextUtils.isEmpty(this.D)) {
                    CharSequence hint = this.f16002e.getHint();
                    this.f16004f = hint;
                    setHint(hint);
                    this.f16002e.setHint((CharSequence) null);
                }
                this.E = true;
            }
            if (this.f16016o != null) {
                B0(this.f16002e.getText().length());
            }
            G0();
            this.f16011k.f();
            this.f15996b.bringToFront();
            this.f15998c.bringToFront();
            this.f16000d.bringToFront();
            this.M0.bringToFront();
            E();
            R0();
            if (!isEnabled()) {
                editText.setEnabled(false);
            }
            M0(false, true);
            return;
        }
        throw new IllegalArgumentException("We already have an EditText, can only have one");
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.D)) {
            return;
        }
        this.D = charSequence;
        this.f15997b1.K0(charSequence);
        if (this.f15995a1) {
            return;
        }
        e0();
    }

    private void setPlaceholderTextEnabled(boolean z3) {
        if (this.f16024s == z3) {
            return;
        }
        if (z3) {
            i();
        } else {
            n0();
            this.f16026t = null;
        }
        this.f16024s = z3;
    }

    @NonNull
    private Rect t(@NonNull Rect rect) {
        if (this.f16002e != null) {
            Rect rect2 = this.f16031v0;
            float D = this.f15997b1.D();
            rect2.left = rect.left + this.f16002e.getCompoundPaddingLeft();
            rect2.top = s(rect, D);
            rect2.right = rect.right - this.f16002e.getCompoundPaddingRight();
            rect2.bottom = r(rect, rect2, D);
            return rect2;
        }
        throw new IllegalStateException();
    }

    private boolean t0() {
        return (this.M0.getVisibility() == 0 || ((L() && P()) || this.A != null)) && this.f15998c.getMeasuredWidth() > 0;
    }

    private int u() {
        float r3;
        if (this.C) {
            int i2 = this.f16015n0;
            if (i2 == 0) {
                r3 = this.f15997b1.r();
            } else if (i2 != 2) {
                return 0;
            } else {
                r3 = this.f15997b1.r() / 2.0f;
            }
            return (int) r3;
        }
        return 0;
    }

    private boolean u0() {
        return (getStartIconDrawable() != null || (getPrefixText() != null && getPrefixTextView().getVisibility() == 0)) && this.f15996b.getMeasuredWidth() > 0;
    }

    private boolean v() {
        return this.f16015n0 == 2 && w();
    }

    private boolean v0() {
        EditText editText = this.f16002e;
        return (editText == null || this.F == null || editText.getBackground() != null || this.f16015n0 == 0) ? false : true;
    }

    private boolean w() {
        return this.f16019p0 > -1 && this.f16025s0 != 0;
    }

    private void w0() {
        if (this.f16026t == null || !this.f16024s || TextUtils.isEmpty(this.f16022r)) {
            return;
        }
        this.f16026t.setText(this.f16022r);
        TransitionManager.beginDelayedTransition(this.f15994a, this.f16032w);
        this.f16026t.setVisibility(0);
        this.f16026t.bringToFront();
        if (Build.VERSION.SDK_INT >= 16) {
            announceForAccessibility(this.f16022r);
        }
    }

    private void x0(boolean z3) {
        if (z3 && getEndIconDrawable() != null) {
            Drawable mutate = DrawableCompat.wrap(getEndIconDrawable()).mutate();
            DrawableCompat.setTint(mutate, this.f16011k.q());
            this.D0.setImageDrawable(mutate);
            return;
        }
        com.google.android.material.textfield.f.a(this, this.D0, this.F0, this.G0);
    }

    private void y0() {
        if (this.f16015n0 == 1) {
            if (com.google.android.material.resources.c.j(getContext())) {
                this.f16017o0 = getResources().getDimensionPixelSize(R.dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (com.google.android.material.resources.c.i(getContext())) {
                this.f16017o0 = getResources().getDimensionPixelSize(R.dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
    }

    private void z() {
        if (C()) {
            ((com.google.android.material.textfield.c) this.F).Q0();
        }
    }

    private void z0(@NonNull Rect rect) {
        MaterialShapeDrawable materialShapeDrawable = this.G;
        if (materialShapeDrawable != null) {
            int i2 = rect.bottom;
            materialShapeDrawable.setBounds(rect.left, i2 - this.f16021q0, rect.right, i2);
        }
        MaterialShapeDrawable materialShapeDrawable2 = this.H;
        if (materialShapeDrawable2 != null) {
            int i4 = rect.bottom;
            materialShapeDrawable2.setBounds(rect.left, i4 - this.f16023r0, rect.right, i4);
        }
    }

    void B0(int i2) {
        boolean z3 = this.f16014n;
        int i4 = this.f16013m;
        if (i4 == -1) {
            this.f16016o.setText(String.valueOf(i2));
            this.f16016o.setContentDescription(null);
            this.f16014n = false;
        } else {
            this.f16014n = i2 > i4;
            C0(getContext(), this.f16016o, i2, this.f16013m, this.f16014n);
            if (z3 != this.f16014n) {
                D0();
            }
            this.f16016o.setText(BidiFormatter.getInstance().unicodeWrap(getContext().getString(R.string.character_counter_pattern, Integer.valueOf(i2), Integer.valueOf(this.f16013m))));
        }
        if (this.f16002e == null || z3 == this.f16014n) {
            return;
        }
        L0(false);
        T0();
        G0();
    }

    @VisibleForTesting
    boolean D() {
        return C() && ((com.google.android.material.textfield.c) this.F).P0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean F0() {
        boolean z3;
        if (this.f16002e == null) {
            return false;
        }
        boolean z4 = true;
        if (u0()) {
            int measuredWidth = this.f15996b.getMeasuredWidth() - this.f16002e.getPaddingLeft();
            if (this.f16037y0 == null || this.f16039z0 != measuredWidth) {
                ColorDrawable colorDrawable = new ColorDrawable();
                this.f16037y0 = colorDrawable;
                this.f16039z0 = measuredWidth;
                colorDrawable.setBounds(0, 0, measuredWidth, 1);
            }
            Drawable[] compoundDrawablesRelative = TextViewCompat.getCompoundDrawablesRelative(this.f16002e);
            Drawable drawable = compoundDrawablesRelative[0];
            Drawable drawable2 = this.f16037y0;
            if (drawable != drawable2) {
                TextViewCompat.setCompoundDrawablesRelative(this.f16002e, drawable2, compoundDrawablesRelative[1], compoundDrawablesRelative[2], compoundDrawablesRelative[3]);
                z3 = true;
            }
            z3 = false;
        } else {
            if (this.f16037y0 != null) {
                Drawable[] compoundDrawablesRelative2 = TextViewCompat.getCompoundDrawablesRelative(this.f16002e);
                TextViewCompat.setCompoundDrawablesRelative(this.f16002e, null, compoundDrawablesRelative2[1], compoundDrawablesRelative2[2], compoundDrawablesRelative2[3]);
                this.f16037y0 = null;
                z3 = true;
            }
            z3 = false;
        }
        if (t0()) {
            int measuredWidth2 = this.B.getMeasuredWidth() - this.f16002e.getPaddingRight();
            CheckableImageButton endIconToUpdateDummyDrawable = getEndIconToUpdateDummyDrawable();
            if (endIconToUpdateDummyDrawable != null) {
                measuredWidth2 = measuredWidth2 + endIconToUpdateDummyDrawable.getMeasuredWidth() + MarginLayoutParamsCompat.getMarginStart((ViewGroup.MarginLayoutParams) endIconToUpdateDummyDrawable.getLayoutParams());
            }
            Drawable[] compoundDrawablesRelative3 = TextViewCompat.getCompoundDrawablesRelative(this.f16002e);
            Drawable drawable3 = this.H0;
            if (drawable3 != null && this.I0 != measuredWidth2) {
                this.I0 = measuredWidth2;
                drawable3.setBounds(0, 0, measuredWidth2, 1);
                TextViewCompat.setCompoundDrawablesRelative(this.f16002e, compoundDrawablesRelative3[0], compoundDrawablesRelative3[1], this.H0, compoundDrawablesRelative3[3]);
            } else {
                if (drawable3 == null) {
                    ColorDrawable colorDrawable2 = new ColorDrawable();
                    this.H0 = colorDrawable2;
                    this.I0 = measuredWidth2;
                    colorDrawable2.setBounds(0, 0, measuredWidth2, 1);
                }
                Drawable drawable4 = compoundDrawablesRelative3[2];
                Drawable drawable5 = this.H0;
                if (drawable4 != drawable5) {
                    this.J0 = compoundDrawablesRelative3[2];
                    TextViewCompat.setCompoundDrawablesRelative(this.f16002e, compoundDrawablesRelative3[0], compoundDrawablesRelative3[1], drawable5, compoundDrawablesRelative3[3]);
                } else {
                    z4 = z3;
                }
            }
        } else if (this.H0 == null) {
            return z3;
        } else {
            Drawable[] compoundDrawablesRelative4 = TextViewCompat.getCompoundDrawablesRelative(this.f16002e);
            if (compoundDrawablesRelative4[2] == this.H0) {
                TextViewCompat.setCompoundDrawablesRelative(this.f16002e, compoundDrawablesRelative4[0], compoundDrawablesRelative4[1], this.J0, compoundDrawablesRelative4[3]);
            } else {
                z4 = z3;
            }
            this.H0 = null;
        }
        return z4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void G0() {
        Drawable background;
        TextView textView;
        EditText editText = this.f16002e;
        if (editText == null || this.f16015n0 != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        if (DrawableUtils.canSafelyMutateDrawable(background)) {
            background = background.mutate();
        }
        if (this.f16011k.m()) {
            background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(this.f16011k.q(), PorterDuff.Mode.SRC_IN));
        } else if (this.f16014n && (textView = this.f16016o) != null) {
            background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            DrawableCompat.clearColorFilter(background);
            this.f16002e.refreshDrawableState();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void L0(boolean z3) {
        M0(z3, false);
    }

    public boolean N() {
        return this.f16012l;
    }

    public boolean O() {
        return this.D0.a();
    }

    public boolean P() {
        return this.f16000d.getVisibility() == 0 && this.D0.getVisibility() == 0;
    }

    public boolean Q() {
        return this.f16011k.E();
    }

    public boolean S() {
        return this.f15999c1;
    }

    @VisibleForTesting
    final boolean T() {
        return this.f16011k.x();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void T0() {
        TextView textView;
        EditText editText;
        EditText editText2;
        if (this.F == null || this.f16015n0 == 0) {
            return;
        }
        boolean z3 = false;
        boolean z4 = isFocused() || ((editText2 = this.f16002e) != null && editText2.hasFocus());
        if (isHovered() || ((editText = this.f16002e) != null && editText.isHovered())) {
            z3 = true;
        }
        if (!isEnabled()) {
            this.f16025s0 = this.Z0;
        } else if (this.f16011k.m()) {
            if (this.U0 != null) {
                Q0(z4, z3);
            } else {
                this.f16025s0 = this.f16011k.q();
            }
        } else if (!this.f16014n || (textView = this.f16016o) == null) {
            if (z4) {
                this.f16025s0 = this.T0;
            } else if (z3) {
                this.f16025s0 = this.S0;
            } else {
                this.f16025s0 = this.R0;
            }
        } else if (this.U0 != null) {
            Q0(z4, z3);
        } else {
            this.f16025s0 = textView.getCurrentTextColor();
        }
        J0();
        j0();
        k0();
        i0();
        if (getEndIconDelegate().d()) {
            x0(this.f16011k.m());
        }
        if (this.f16015n0 == 2) {
            int i2 = this.f16019p0;
            if (z4 && isEnabled()) {
                this.f16019p0 = this.f16023r0;
            } else {
                this.f16019p0 = this.f16021q0;
            }
            if (this.f16019p0 != i2) {
                g0();
            }
        }
        if (this.f16015n0 == 1) {
            if (!isEnabled()) {
                this.f16027t0 = this.W0;
            } else if (z3 && !z4) {
                this.f16027t0 = this.Y0;
            } else if (z4) {
                this.f16027t0 = this.X0;
            } else {
                this.f16027t0 = this.V0;
            }
        }
        l();
    }

    public boolean U() {
        return this.f16011k.F();
    }

    public boolean V() {
        return this.f16001d1;
    }

    public boolean W() {
        return this.C;
    }

    final boolean X() {
        return this.f15995a1;
    }

    @Deprecated
    public boolean Y() {
        return this.B0 == 1;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean Z() {
        return this.E;
    }

    @Override // android.view.ViewGroup
    public void addView(@NonNull View view, int i2, @NonNull ViewGroup.LayoutParams layoutParams) {
        if (view instanceof EditText) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
            layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
            this.f15994a.addView(view, layoutParams2);
            this.f15994a.setLayoutParams(layoutParams);
            K0();
            setEditText((EditText) view);
            return;
        }
        super.addView(view, i2, layoutParams);
    }

    public boolean b0() {
        return this.f15996b.h();
    }

    public boolean c0() {
        return this.f15996b.i();
    }

    @Override // android.view.ViewGroup, android.view.View
    @TargetApi(26)
    public void dispatchProvideAutofillStructure(@NonNull ViewStructure viewStructure, int i2) {
        EditText editText = this.f16002e;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i2);
            return;
        }
        if (this.f16004f != null) {
            boolean z3 = this.E;
            this.E = false;
            CharSequence hint = editText.getHint();
            this.f16002e.setHint(this.f16004f);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i2);
                return;
            } finally {
                this.f16002e.setHint(hint);
                this.E = z3;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i2);
        onProvideAutofillVirtualStructure(viewStructure, i2);
        viewStructure.setChildCount(this.f15994a.getChildCount());
        for (int i4 = 0; i4 < this.f15994a.getChildCount(); i4++) {
            View childAt = this.f15994a.getChildAt(i4);
            ViewStructure newChild = viewStructure.newChild(i4);
            childAt.dispatchProvideAutofillStructure(newChild, i2);
            if (childAt == this.f16002e) {
                newChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(@NonNull SparseArray<Parcelable> sparseArray) {
        this.f16007g1 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.f16007g1 = false;
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        H(canvas);
        G(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.f16005f1) {
            return;
        }
        boolean z3 = true;
        this.f16005f1 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        com.google.android.material.internal.b bVar = this.f15997b1;
        boolean J0 = bVar != null ? bVar.J0(drawableState) | false : false;
        if (this.f16002e != null) {
            L0((ViewCompat.isLaidOut(this) && isEnabled()) ? false : false);
        }
        G0();
        T0();
        if (J0) {
            invalidate();
        }
        this.f16005f1 = false;
    }

    @Deprecated
    public void f0(boolean z3) {
        if (this.B0 == 1) {
            this.D0.performClick();
            if (z3) {
                this.D0.jumpDrawablesToCurrentState();
            }
        }
    }

    public void g(@NonNull f fVar) {
        this.A0.add(fVar);
        if (this.f16002e != null) {
            fVar.a(this);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f16002e;
        if (editText != null) {
            return editText.getBaseline() + getPaddingTop() + u();
        }
        return super.getBaseline();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public MaterialShapeDrawable getBoxBackground() {
        int i2 = this.f16015n0;
        if (i2 != 1 && i2 != 2) {
            throw new IllegalStateException();
        }
        return this.F;
    }

    public int getBoxBackgroundColor() {
        return this.f16027t0;
    }

    public int getBoxBackgroundMode() {
        return this.f16015n0;
    }

    public int getBoxCollapsedPaddingTop() {
        return this.f16017o0;
    }

    public float getBoxCornerRadiusBottomEnd() {
        if (w.k(this)) {
            return this.I.j().a(this.f16033w0);
        }
        return this.I.l().a(this.f16033w0);
    }

    public float getBoxCornerRadiusBottomStart() {
        if (w.k(this)) {
            return this.I.l().a(this.f16033w0);
        }
        return this.I.j().a(this.f16033w0);
    }

    public float getBoxCornerRadiusTopEnd() {
        if (w.k(this)) {
            return this.I.r().a(this.f16033w0);
        }
        return this.I.t().a(this.f16033w0);
    }

    public float getBoxCornerRadiusTopStart() {
        if (w.k(this)) {
            return this.I.t().a(this.f16033w0);
        }
        return this.I.r().a(this.f16033w0);
    }

    public int getBoxStrokeColor() {
        return this.T0;
    }

    @Nullable
    public ColorStateList getBoxStrokeErrorColor() {
        return this.U0;
    }

    public int getBoxStrokeWidth() {
        return this.f16021q0;
    }

    public int getBoxStrokeWidthFocused() {
        return this.f16023r0;
    }

    public int getCounterMaxLength() {
        return this.f16013m;
    }

    @Nullable
    CharSequence getCounterOverflowDescription() {
        TextView textView;
        if (this.f16012l && this.f16014n && (textView = this.f16016o) != null) {
            return textView.getContentDescription();
        }
        return null;
    }

    @Nullable
    public ColorStateList getCounterOverflowTextColor() {
        return this.f16036y;
    }

    @Nullable
    public ColorStateList getCounterTextColor() {
        return this.f16036y;
    }

    @Nullable
    public ColorStateList getDefaultHintTextColor() {
        return this.P0;
    }

    @Nullable
    public EditText getEditText() {
        return this.f16002e;
    }

    @Nullable
    public CharSequence getEndIconContentDescription() {
        return this.D0.getContentDescription();
    }

    @Nullable
    public Drawable getEndIconDrawable() {
        return this.D0.getDrawable();
    }

    public int getEndIconMode() {
        return this.B0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public CheckableImageButton getEndIconView() {
        return this.D0;
    }

    @Nullable
    public CharSequence getError() {
        if (this.f16011k.E()) {
            return this.f16011k.p();
        }
        return null;
    }

    @Nullable
    public CharSequence getErrorContentDescription() {
        return this.f16011k.o();
    }

    @ColorInt
    public int getErrorCurrentTextColors() {
        return this.f16011k.q();
    }

    @Nullable
    public Drawable getErrorIconDrawable() {
        return this.M0.getDrawable();
    }

    @VisibleForTesting
    final int getErrorTextCurrentColor() {
        return this.f16011k.q();
    }

    @Nullable
    public CharSequence getHelperText() {
        if (this.f16011k.F()) {
            return this.f16011k.s();
        }
        return null;
    }

    @ColorInt
    public int getHelperTextCurrentTextColor() {
        return this.f16011k.v();
    }

    @Nullable
    public CharSequence getHint() {
        if (this.C) {
            return this.D;
        }
        return null;
    }

    @VisibleForTesting
    final float getHintCollapsedTextHeight() {
        return this.f15997b1.r();
    }

    @VisibleForTesting
    final int getHintCurrentCollapsedTextColor() {
        return this.f15997b1.w();
    }

    @Nullable
    public ColorStateList getHintTextColor() {
        return this.Q0;
    }

    public int getMaxEms() {
        return this.f16008h;
    }

    @Px
    public int getMaxWidth() {
        return this.f16010j;
    }

    public int getMinEms() {
        return this.f16006g;
    }

    @Px
    public int getMinWidth() {
        return this.f16009i;
    }

    @Nullable
    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.D0.getContentDescription();
    }

    @Nullable
    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.D0.getDrawable();
    }

    @Nullable
    public CharSequence getPlaceholderText() {
        if (this.f16024s) {
            return this.f16022r;
        }
        return null;
    }

    @StyleRes
    public int getPlaceholderTextAppearance() {
        return this.f16030v;
    }

    @Nullable
    public ColorStateList getPlaceholderTextColor() {
        return this.f16028u;
    }

    @Nullable
    public CharSequence getPrefixText() {
        return this.f15996b.a();
    }

    @Nullable
    public ColorStateList getPrefixTextColor() {
        return this.f15996b.b();
    }

    @NonNull
    public TextView getPrefixTextView() {
        return this.f15996b.c();
    }

    @Nullable
    public CharSequence getStartIconContentDescription() {
        return this.f15996b.d();
    }

    @Nullable
    public Drawable getStartIconDrawable() {
        return this.f15996b.e();
    }

    @Nullable
    public CharSequence getSuffixText() {
        return this.A;
    }

    @Nullable
    public ColorStateList getSuffixTextColor() {
        return this.B.getTextColors();
    }

    @NonNull
    public TextView getSuffixTextView() {
        return this.B;
    }

    @Nullable
    public Typeface getTypeface() {
        return this.f16035x0;
    }

    public void h(@NonNull g gVar) {
        this.E0.add(gVar);
    }

    public void i0() {
        com.google.android.material.textfield.f.c(this, this.D0, this.F0);
    }

    public void j0() {
        com.google.android.material.textfield.f.c(this, this.M0, this.N0);
    }

    @VisibleForTesting
    void k(float f4) {
        if (this.f15997b1.G() == f4) {
            return;
        }
        if (this.f16003e1 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f16003e1 = valueAnimator;
            valueAnimator.setInterpolator(com.google.android.material.animation.a.f14005b);
            this.f16003e1.setDuration(167L);
            this.f16003e1.addUpdateListener(new d());
        }
        this.f16003e1.setFloatValues(this.f15997b1.G(), f4);
        this.f16003e1.start();
    }

    public void k0() {
        this.f15996b.k();
    }

    public void l0(@NonNull f fVar) {
        this.A0.remove(fVar);
    }

    public void m0(@NonNull g gVar) {
        this.E0.remove(gVar);
    }

    @Override // android.view.View
    protected void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f15997b1.Z(configuration);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
        EditText editText = this.f16002e;
        if (editText != null) {
            Rect rect = this.f16029u0;
            com.google.android.material.internal.d.a(this, editText, rect);
            z0(rect);
            if (this.C) {
                this.f15997b1.w0(this.f16002e.getTextSize());
                int gravity = this.f16002e.getGravity();
                this.f15997b1.k0((gravity & (-113)) | 48);
                this.f15997b1.v0(gravity);
                this.f15997b1.g0(q(rect));
                this.f15997b1.q0(t(rect));
                this.f15997b1.c0();
                if (!C() || this.f15995a1) {
                    return;
                }
                e0();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        boolean H0 = H0();
        boolean F0 = F0();
        if (H0 || F0) {
            this.f16002e.post(new c());
        }
        N0();
        R0();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setError(savedState.f16040a);
        if (savedState.f16041b) {
            this.D0.post(new b());
        }
        setHint(savedState.f16042c);
        setHelperText(savedState.f16043d);
        setPlaceholderText(savedState.f16044e);
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onRtlPropertiesChanged(int i2) {
        super.onRtlPropertiesChanged(i2);
        boolean z3 = false;
        boolean z4 = i2 == 1;
        boolean z5 = this.J;
        if (z4 != z5) {
            if (z4 && !z5) {
                z3 = true;
            }
            float a4 = this.I.r().a(this.f16033w0);
            float a5 = this.I.t().a(this.f16033w0);
            float a6 = this.I.j().a(this.f16033w0);
            float a7 = this.I.l().a(this.f16033w0);
            float f4 = z3 ? a4 : a5;
            if (z3) {
                a4 = a5;
            }
            float f5 = z3 ? a6 : a7;
            if (z3) {
                a6 = a7;
            }
            setBoxCornerRadii(f4, a4, f5, a6);
        }
    }

    @Override // android.view.View
    @Nullable
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.f16011k.m()) {
            savedState.f16040a = getError();
        }
        savedState.f16041b = L() && this.D0.isChecked();
        savedState.f16042c = getHint();
        savedState.f16043d = getHelperText();
        savedState.f16044e = getPlaceholderText();
        return savedState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0015, code lost:
        if (r3.getTextColors().getDefaultColor() == (-65281)) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void s0(@androidx.annotation.NonNull android.widget.TextView r3, @androidx.annotation.StyleRes int r4) {
        /*
            r2 = this;
            r0 = 1
            androidx.core.widget.TextViewCompat.setTextAppearance(r3, r4)     // Catch: java.lang.Exception -> L1b
            int r4 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L1b
            r1 = 23
            if (r4 < r1) goto L18
            android.content.res.ColorStateList r4 = r3.getTextColors()     // Catch: java.lang.Exception -> L1b
            int r4 = r4.getDefaultColor()     // Catch: java.lang.Exception -> L1b
            r1 = -65281(0xffffffffffff00ff, float:NaN)
            if (r4 != r1) goto L18
            goto L1c
        L18:
            r4 = 0
            r0 = 0
            goto L1c
        L1b:
        L1c:
            if (r0 == 0) goto L30
            int r4 = com.google.android.material.R.style.TextAppearance_AppCompat_Caption
            androidx.core.widget.TextViewCompat.setTextAppearance(r3, r4)
            android.content.Context r4 = r2.getContext()
            int r0 = com.google.android.material.R.color.design_error
            int r4 = androidx.core.content.ContextCompat.getColor(r4, r0)
            r3.setTextColor(r4)
        L30:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.s0(android.widget.TextView, int):void");
    }

    public void setBoxBackgroundColor(@ColorInt int i2) {
        if (this.f16027t0 != i2) {
            this.f16027t0 = i2;
            this.V0 = i2;
            this.X0 = i2;
            this.Y0 = i2;
            l();
        }
    }

    public void setBoxBackgroundColorResource(@ColorRes int i2) {
        setBoxBackgroundColor(ContextCompat.getColor(getContext(), i2));
    }

    public void setBoxBackgroundColorStateList(@NonNull ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.V0 = defaultColor;
        this.f16027t0 = defaultColor;
        this.W0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.X0 = colorStateList.getColorForState(new int[]{16842908, 16842910}, -1);
        this.Y0 = colorStateList.getColorForState(new int[]{16843623, 16842910}, -1);
        l();
    }

    public void setBoxBackgroundMode(int i2) {
        if (i2 == this.f16015n0) {
            return;
        }
        this.f16015n0 = i2;
        if (this.f16002e != null) {
            d0();
        }
    }

    public void setBoxCollapsedPaddingTop(int i2) {
        this.f16017o0 = i2;
    }

    public void setBoxCornerRadii(float f4, float f5, float f6, float f7) {
        boolean k4 = w.k(this);
        this.J = k4;
        float f8 = k4 ? f5 : f4;
        if (!k4) {
            f4 = f5;
        }
        float f9 = k4 ? f7 : f6;
        if (!k4) {
            f6 = f7;
        }
        MaterialShapeDrawable materialShapeDrawable = this.F;
        if (materialShapeDrawable != null && materialShapeDrawable.S() == f8 && this.F.T() == f4 && this.F.t() == f9 && this.F.u() == f6) {
            return;
        }
        this.I = this.I.v().K(f8).P(f4).x(f9).C(f6).m();
        l();
    }

    public void setBoxCornerRadiiResources(@DimenRes int i2, @DimenRes int i4, @DimenRes int i5, @DimenRes int i6) {
        setBoxCornerRadii(getContext().getResources().getDimension(i2), getContext().getResources().getDimension(i4), getContext().getResources().getDimension(i6), getContext().getResources().getDimension(i5));
    }

    public void setBoxStrokeColor(@ColorInt int i2) {
        if (this.T0 != i2) {
            this.T0 = i2;
            T0();
        }
    }

    public void setBoxStrokeColorStateList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.R0 = colorStateList.getDefaultColor();
            this.Z0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.S0 = colorStateList.getColorForState(new int[]{16843623, 16842910}, -1);
            this.T0 = colorStateList.getColorForState(new int[]{16842908, 16842910}, -1);
        } else if (this.T0 != colorStateList.getDefaultColor()) {
            this.T0 = colorStateList.getDefaultColor();
        }
        T0();
    }

    public void setBoxStrokeErrorColor(@Nullable ColorStateList colorStateList) {
        if (this.U0 != colorStateList) {
            this.U0 = colorStateList;
            T0();
        }
    }

    public void setBoxStrokeWidth(int i2) {
        this.f16021q0 = i2;
        T0();
    }

    public void setBoxStrokeWidthFocused(int i2) {
        this.f16023r0 = i2;
        T0();
    }

    public void setBoxStrokeWidthFocusedResource(@DimenRes int i2) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i2));
    }

    public void setBoxStrokeWidthResource(@DimenRes int i2) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i2));
    }

    public void setCounterEnabled(boolean z3) {
        if (this.f16012l != z3) {
            if (z3) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
                this.f16016o = appCompatTextView;
                appCompatTextView.setId(R.id.textinput_counter);
                Typeface typeface = this.f16035x0;
                if (typeface != null) {
                    this.f16016o.setTypeface(typeface);
                }
                this.f16016o.setMaxLines(1);
                this.f16011k.e(this.f16016o, 2);
                MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) this.f16016o.getLayoutParams(), getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_counter_margin_start));
                D0();
                A0();
            } else {
                this.f16011k.G(this.f16016o, 2);
                this.f16016o = null;
            }
            this.f16012l = z3;
        }
    }

    public void setCounterMaxLength(int i2) {
        if (this.f16013m != i2) {
            if (i2 > 0) {
                this.f16013m = i2;
            } else {
                this.f16013m = -1;
            }
            if (this.f16012l) {
                A0();
            }
        }
    }

    public void setCounterOverflowTextAppearance(int i2) {
        if (this.f16018p != i2) {
            this.f16018p = i2;
            D0();
        }
    }

    public void setCounterOverflowTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f16038z != colorStateList) {
            this.f16038z = colorStateList;
            D0();
        }
    }

    public void setCounterTextAppearance(int i2) {
        if (this.f16020q != i2) {
            this.f16020q = i2;
            D0();
        }
    }

    public void setCounterTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f16036y != colorStateList) {
            this.f16036y = colorStateList;
            D0();
        }
    }

    public void setDefaultHintTextColor(@Nullable ColorStateList colorStateList) {
        this.P0 = colorStateList;
        this.Q0 = colorStateList;
        if (this.f16002e != null) {
            L0(false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z3) {
        h0(this, z3);
        super.setEnabled(z3);
    }

    public void setEndIconActivated(boolean z3) {
        this.D0.setActivated(z3);
    }

    public void setEndIconCheckable(boolean z3) {
        this.D0.setCheckable(z3);
    }

    public void setEndIconContentDescription(@StringRes int i2) {
        setEndIconContentDescription(i2 != 0 ? getResources().getText(i2) : null);
    }

    public void setEndIconDrawable(@DrawableRes int i2) {
        setEndIconDrawable(i2 != 0 ? AppCompatResources.getDrawable(getContext(), i2) : null);
    }

    public void setEndIconMode(int i2) {
        int i4 = this.B0;
        if (i4 == i2) {
            return;
        }
        this.B0 = i2;
        F(i4);
        setEndIconVisible(i2 != 0);
        if (getEndIconDelegate().b(this.f16015n0)) {
            getEndIconDelegate().a();
            com.google.android.material.textfield.f.a(this, this.D0, this.F0, this.G0);
            return;
        }
        throw new IllegalStateException("The current box background mode " + this.f16015n0 + " is not supported by the end icon mode " + i2);
    }

    public void setEndIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        q0(this.D0, onClickListener, this.K0);
    }

    public void setEndIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.K0 = onLongClickListener;
        r0(this.D0, onLongClickListener);
    }

    public void setEndIconTintList(@Nullable ColorStateList colorStateList) {
        if (this.F0 != colorStateList) {
            this.F0 = colorStateList;
            com.google.android.material.textfield.f.a(this, this.D0, colorStateList, this.G0);
        }
    }

    public void setEndIconTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.G0 != mode) {
            this.G0 = mode;
            com.google.android.material.textfield.f.a(this, this.D0, this.F0, mode);
        }
    }

    public void setEndIconVisible(boolean z3) {
        if (P() != z3) {
            this.D0.setVisibility(z3 ? 0 : 8);
            I0();
            R0();
            F0();
        }
    }

    public void setError(@Nullable CharSequence charSequence) {
        if (!this.f16011k.E()) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
            setErrorEnabled(true);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            this.f16011k.T(charSequence);
        } else {
            this.f16011k.z();
        }
    }

    public void setErrorContentDescription(@Nullable CharSequence charSequence) {
        this.f16011k.I(charSequence);
    }

    public void setErrorEnabled(boolean z3) {
        this.f16011k.J(z3);
    }

    public void setErrorIconDrawable(@DrawableRes int i2) {
        setErrorIconDrawable(i2 != 0 ? AppCompatResources.getDrawable(getContext(), i2) : null);
        j0();
    }

    public void setErrorIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        q0(this.M0, onClickListener, this.L0);
    }

    public void setErrorIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.L0 = onLongClickListener;
        r0(this.M0, onLongClickListener);
    }

    public void setErrorIconTintList(@Nullable ColorStateList colorStateList) {
        if (this.N0 != colorStateList) {
            this.N0 = colorStateList;
            com.google.android.material.textfield.f.a(this, this.M0, colorStateList, this.O0);
        }
    }

    public void setErrorIconTintMode(@Nullable PorterDuff.Mode mode) {
        if (this.O0 != mode) {
            this.O0 = mode;
            com.google.android.material.textfield.f.a(this, this.M0, this.N0, mode);
        }
    }

    public void setErrorTextAppearance(@StyleRes int i2) {
        this.f16011k.K(i2);
    }

    public void setErrorTextColor(@Nullable ColorStateList colorStateList) {
        this.f16011k.L(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z3) {
        if (this.f15999c1 != z3) {
            this.f15999c1 = z3;
            L0(false);
        }
    }

    public void setHelperText(@Nullable CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            if (U()) {
                setHelperTextEnabled(false);
                return;
            }
            return;
        }
        if (!U()) {
            setHelperTextEnabled(true);
        }
        this.f16011k.U(charSequence);
    }

    public void setHelperTextColor(@Nullable ColorStateList colorStateList) {
        this.f16011k.O(colorStateList);
    }

    public void setHelperTextEnabled(boolean z3) {
        this.f16011k.N(z3);
    }

    public void setHelperTextTextAppearance(@StyleRes int i2) {
        this.f16011k.M(i2);
    }

    public void setHint(@Nullable CharSequence charSequence) {
        if (this.C) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z3) {
        this.f16001d1 = z3;
    }

    public void setHintEnabled(boolean z3) {
        if (z3 != this.C) {
            this.C = z3;
            if (!z3) {
                this.E = false;
                if (!TextUtils.isEmpty(this.D) && TextUtils.isEmpty(this.f16002e.getHint())) {
                    this.f16002e.setHint(this.D);
                }
                setHintInternal(null);
            } else {
                CharSequence hint = this.f16002e.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.D)) {
                        setHint(hint);
                    }
                    this.f16002e.setHint((CharSequence) null);
                }
                this.E = true;
            }
            if (this.f16002e != null) {
                K0();
            }
        }
    }

    public void setHintTextAppearance(@StyleRes int i2) {
        this.f15997b1.h0(i2);
        this.Q0 = this.f15997b1.p();
        if (this.f16002e != null) {
            L0(false);
            K0();
        }
    }

    public void setHintTextColor(@Nullable ColorStateList colorStateList) {
        if (this.Q0 != colorStateList) {
            if (this.P0 == null) {
                this.f15997b1.j0(colorStateList);
            }
            this.Q0 = colorStateList;
            if (this.f16002e != null) {
                L0(false);
            }
        }
    }

    public void setMaxEms(int i2) {
        this.f16008h = i2;
        EditText editText = this.f16002e;
        if (editText == null || i2 == -1) {
            return;
        }
        editText.setMaxEms(i2);
    }

    public void setMaxWidth(@Px int i2) {
        this.f16010j = i2;
        EditText editText = this.f16002e;
        if (editText == null || i2 == -1) {
            return;
        }
        editText.setMaxWidth(i2);
    }

    public void setMaxWidthResource(@DimenRes int i2) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i2));
    }

    public void setMinEms(int i2) {
        this.f16006g = i2;
        EditText editText = this.f16002e;
        if (editText == null || i2 == -1) {
            return;
        }
        editText.setMinEms(i2);
    }

    public void setMinWidth(@Px int i2) {
        this.f16009i = i2;
        EditText editText = this.f16002e;
        if (editText == null || i2 == -1) {
            return;
        }
        editText.setMinWidth(i2);
    }

    public void setMinWidthResource(@DimenRes int i2) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i2));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@StringRes int i2) {
        setPasswordVisibilityToggleContentDescription(i2 != 0 ? getResources().getText(i2) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@DrawableRes int i2) {
        setPasswordVisibilityToggleDrawable(i2 != 0 ? AppCompatResources.getDrawable(getContext(), i2) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z3) {
        if (z3 && this.B0 != 1) {
            setEndIconMode(1);
        } else if (z3) {
        } else {
            setEndIconMode(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(@Nullable ColorStateList colorStateList) {
        this.F0 = colorStateList;
        com.google.android.material.textfield.f.a(this, this.D0, colorStateList, this.G0);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(@Nullable PorterDuff.Mode mode) {
        this.G0 = mode;
        com.google.android.material.textfield.f.a(this, this.D0, this.F0, mode);
    }

    public void setPlaceholderText(@Nullable CharSequence charSequence) {
        if (this.f16026t == null) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
            this.f16026t = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_placeholder);
            ViewCompat.setImportantForAccessibility(this.f16026t, 2);
            Fade B = B();
            this.f16032w = B;
            B.setStartDelay(f15982k1);
            this.f16034x = B();
            setPlaceholderTextAppearance(this.f16030v);
            setPlaceholderTextColor(this.f16028u);
        }
        if (TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.f16024s) {
                setPlaceholderTextEnabled(true);
            }
            this.f16022r = charSequence;
        }
        O0();
    }

    public void setPlaceholderTextAppearance(@StyleRes int i2) {
        this.f16030v = i2;
        TextView textView = this.f16026t;
        if (textView != null) {
            TextViewCompat.setTextAppearance(textView, i2);
        }
    }

    public void setPlaceholderTextColor(@Nullable ColorStateList colorStateList) {
        if (this.f16028u != colorStateList) {
            this.f16028u = colorStateList;
            TextView textView = this.f16026t;
            if (textView == null || colorStateList == null) {
                return;
            }
            textView.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(@Nullable CharSequence charSequence) {
        this.f15996b.l(charSequence);
    }

    public void setPrefixTextAppearance(@StyleRes int i2) {
        this.f15996b.m(i2);
    }

    public void setPrefixTextColor(@NonNull ColorStateList colorStateList) {
        this.f15996b.n(colorStateList);
    }

    public void setStartIconCheckable(boolean z3) {
        this.f15996b.o(z3);
    }

    public void setStartIconContentDescription(@StringRes int i2) {
        setStartIconContentDescription(i2 != 0 ? getResources().getText(i2) : null);
    }

    public void setStartIconDrawable(@DrawableRes int i2) {
        setStartIconDrawable(i2 != 0 ? AppCompatResources.getDrawable(getContext(), i2) : null);
    }

    public void setStartIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.f15996b.r(onClickListener);
    }

    public void setStartIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f15996b.s(onLongClickListener);
    }

    public void setStartIconTintList(@Nullable ColorStateList colorStateList) {
        this.f15996b.t(colorStateList);
    }

    public void setStartIconTintMode(@Nullable PorterDuff.Mode mode) {
        this.f15996b.u(mode);
    }

    public void setStartIconVisible(boolean z3) {
        this.f15996b.v(z3);
    }

    public void setSuffixText(@Nullable CharSequence charSequence) {
        this.A = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.B.setText(charSequence);
        S0();
    }

    public void setSuffixTextAppearance(@StyleRes int i2) {
        TextViewCompat.setTextAppearance(this.B, i2);
    }

    public void setSuffixTextColor(@NonNull ColorStateList colorStateList) {
        this.B.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(@Nullable e eVar) {
        EditText editText = this.f16002e;
        if (editText != null) {
            ViewCompat.setAccessibilityDelegate(editText, eVar);
        }
    }

    public void setTypeface(@Nullable Typeface typeface) {
        if (typeface != this.f16035x0) {
            this.f16035x0 = typeface;
            this.f15997b1.M0(typeface);
            this.f16011k.Q(typeface);
            TextView textView = this.f16016o;
            if (textView != null) {
                textView.setTypeface(typeface);
            }
        }
    }

    public void x() {
        this.A0.clear();
    }

    public void y() {
        this.E0.clear();
    }

    public TextInputLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textInputStyle);
    }

    public void setEndIconContentDescription(@Nullable CharSequence charSequence) {
        if (getEndIconContentDescription() != charSequence) {
            this.D0.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(@Nullable Drawable drawable) {
        this.D0.setImageDrawable(drawable);
        if (drawable != null) {
            com.google.android.material.textfield.f.a(this, this.D0, this.F0, this.G0);
            i0();
        }
    }

    public void setStartIconContentDescription(@Nullable CharSequence charSequence) {
        this.f15996b.p(charSequence);
    }

    public void setStartIconDrawable(@Nullable Drawable drawable) {
        this.f15996b.q(drawable);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v109 */
    /* JADX WARN: Type inference failed for: r3v49 */
    /* JADX WARN: Type inference failed for: r3v50, types: [int, boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TextInputLayout(@androidx.annotation.NonNull android.content.Context r27, @androidx.annotation.Nullable android.util.AttributeSet r28, int r29) {
        /*
            Method dump skipped, instructions count: 1386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    public void setErrorIconDrawable(@Nullable Drawable drawable) {
        this.M0.setImageDrawable(drawable);
        J0();
        com.google.android.material.textfield.f.a(this, this.M0, this.N0, this.O0);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@Nullable CharSequence charSequence) {
        this.D0.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@Nullable Drawable drawable) {
        this.D0.setImageDrawable(drawable);
    }

    public void setHint(@StringRes int i2) {
        setHint(i2 != 0 ? getResources().getText(i2) : null);
    }
}
