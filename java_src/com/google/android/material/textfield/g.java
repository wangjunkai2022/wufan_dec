package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.R;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: IndicatorViewController.java */
/* loaded from: classes2.dex */
public final class g {
    private static final int A = 0;
    private static final int B = 1;
    private static final int C = 2;

    /* renamed from: v  reason: collision with root package name */
    private static final int f16109v = 217;

    /* renamed from: w  reason: collision with root package name */
    private static final int f16110w = 167;

    /* renamed from: x  reason: collision with root package name */
    static final int f16111x = 0;

    /* renamed from: y  reason: collision with root package name */
    static final int f16112y = 1;

    /* renamed from: z  reason: collision with root package name */
    static final int f16113z = 2;

    /* renamed from: a  reason: collision with root package name */
    private final Context f16114a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final TextInputLayout f16115b;

    /* renamed from: c  reason: collision with root package name */
    private LinearLayout f16116c;

    /* renamed from: d  reason: collision with root package name */
    private int f16117d;

    /* renamed from: e  reason: collision with root package name */
    private FrameLayout f16118e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Animator f16119f;

    /* renamed from: g  reason: collision with root package name */
    private final float f16120g;

    /* renamed from: h  reason: collision with root package name */
    private int f16121h;

    /* renamed from: i  reason: collision with root package name */
    private int f16122i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private CharSequence f16123j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f16124k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private TextView f16125l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private CharSequence f16126m;

    /* renamed from: n  reason: collision with root package name */
    private int f16127n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private ColorStateList f16128o;

    /* renamed from: p  reason: collision with root package name */
    private CharSequence f16129p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f16130q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private TextView f16131r;

    /* renamed from: s  reason: collision with root package name */
    private int f16132s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private ColorStateList f16133t;

    /* renamed from: u  reason: collision with root package name */
    private Typeface f16134u;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IndicatorViewController.java */
    /* loaded from: classes2.dex */
    public class a extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f16135a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ TextView f16136b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f16137c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ TextView f16138d;

        a(int i2, TextView textView, int i4, TextView textView2) {
            this.f16135a = i2;
            this.f16136b = textView;
            this.f16137c = i4;
            this.f16138d = textView2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            g.this.f16121h = this.f16135a;
            g.this.f16119f = null;
            TextView textView = this.f16136b;
            if (textView != null) {
                textView.setVisibility(4);
                if (this.f16137c == 1 && g.this.f16125l != null) {
                    g.this.f16125l.setText((CharSequence) null);
                }
            }
            TextView textView2 = this.f16138d;
            if (textView2 != null) {
                textView2.setTranslationY(0.0f);
                this.f16138d.setAlpha(1.0f);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            TextView textView = this.f16138d;
            if (textView != null) {
                textView.setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IndicatorViewController.java */
    /* loaded from: classes2.dex */
    public class b extends View.AccessibilityDelegate {
        b() {
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            EditText editText = g.this.f16115b.getEditText();
            if (editText != null) {
                accessibilityNodeInfo.setLabeledBy(editText);
            }
        }
    }

    public g(@NonNull TextInputLayout textInputLayout) {
        Context context = textInputLayout.getContext();
        this.f16114a = context;
        this.f16115b = textInputLayout;
        this.f16120g = context.getResources().getDimensionPixelSize(R.dimen.design_textinput_caption_translate_y);
    }

    private boolean B(int i2) {
        return (i2 != 1 || this.f16125l == null || TextUtils.isEmpty(this.f16123j)) ? false : true;
    }

    private boolean C(int i2) {
        return (i2 != 2 || this.f16131r == null || TextUtils.isEmpty(this.f16129p)) ? false : true;
    }

    private void H(int i2, int i4) {
        TextView n4;
        TextView n5;
        if (i2 == i4) {
            return;
        }
        if (i4 != 0 && (n5 = n(i4)) != null) {
            n5.setVisibility(0);
            n5.setAlpha(1.0f);
        }
        if (i2 != 0 && (n4 = n(i2)) != null) {
            n4.setVisibility(4);
            if (i2 == 1) {
                n4.setText((CharSequence) null);
            }
        }
        this.f16121h = i4;
    }

    private void P(@Nullable TextView textView, Typeface typeface) {
        if (textView != null) {
            textView.setTypeface(typeface);
        }
    }

    private void R(@NonNull ViewGroup viewGroup, int i2) {
        if (i2 == 0) {
            viewGroup.setVisibility(8);
        }
    }

    private boolean S(@Nullable TextView textView, @NonNull CharSequence charSequence) {
        return ViewCompat.isLaidOut(this.f16115b) && this.f16115b.isEnabled() && !(this.f16122i == this.f16121h && textView != null && TextUtils.equals(textView.getText(), charSequence));
    }

    private void V(int i2, int i4, boolean z3) {
        if (i2 == i4) {
            return;
        }
        if (z3) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f16119f = animatorSet;
            ArrayList arrayList = new ArrayList();
            i(arrayList, this.f16130q, this.f16131r, 2, i2, i4);
            i(arrayList, this.f16124k, this.f16125l, 1, i2, i4);
            com.google.android.material.animation.b.a(animatorSet, arrayList);
            animatorSet.addListener(new a(i4, n(i2), i2, n(i4)));
            animatorSet.start();
        } else {
            H(i2, i4);
        }
        this.f16115b.G0();
        this.f16115b.L0(z3);
        this.f16115b.T0();
    }

    private boolean g() {
        return (this.f16116c == null || this.f16115b.getEditText() == null) ? false : true;
    }

    private void i(@NonNull List<Animator> list, boolean z3, @Nullable TextView textView, int i2, int i4, int i5) {
        if (textView == null || !z3) {
            return;
        }
        if (i2 == i5 || i2 == i4) {
            list.add(j(textView, i5 == i2));
            if (i5 == i2) {
                list.add(k(textView));
            }
        }
    }

    private ObjectAnimator j(TextView textView, boolean z3) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, View.ALPHA, z3 ? 1.0f : 0.0f);
        ofFloat.setDuration(167L);
        ofFloat.setInterpolator(com.google.android.material.animation.a.f14004a);
        return ofFloat;
    }

    private ObjectAnimator k(TextView textView) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, View.TRANSLATION_Y, -this.f16120g, 0.0f);
        ofFloat.setDuration(217L);
        ofFloat.setInterpolator(com.google.android.material.animation.a.f14007d);
        return ofFloat;
    }

    @Nullable
    private TextView n(int i2) {
        if (i2 != 1) {
            if (i2 != 2) {
                return null;
            }
            return this.f16131r;
        }
        return this.f16125l;
    }

    private int w(boolean z3, @DimenRes int i2, int i4) {
        return z3 ? this.f16114a.getResources().getDimensionPixelSize(i2) : i4;
    }

    void A() {
        h();
        int i2 = this.f16121h;
        if (i2 == 2) {
            this.f16122i = 0;
        }
        V(i2, this.f16122i, S(this.f16131r, ""));
    }

    boolean D(int i2) {
        return i2 == 0 || i2 == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean E() {
        return this.f16124k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean F() {
        return this.f16130q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void G(TextView textView, int i2) {
        FrameLayout frameLayout;
        if (this.f16116c == null) {
            return;
        }
        if (D(i2) && (frameLayout = this.f16118e) != null) {
            frameLayout.removeView(textView);
        } else {
            this.f16116c.removeView(textView);
        }
        int i4 = this.f16117d - 1;
        this.f16117d = i4;
        R(this.f16116c, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void I(@Nullable CharSequence charSequence) {
        this.f16126m = charSequence;
        TextView textView = this.f16125l;
        if (textView != null) {
            textView.setContentDescription(charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void J(boolean z3) {
        if (this.f16124k == z3) {
            return;
        }
        h();
        if (z3) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.f16114a);
            this.f16125l = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_error);
            if (Build.VERSION.SDK_INT >= 17) {
                this.f16125l.setTextAlignment(5);
            }
            Typeface typeface = this.f16134u;
            if (typeface != null) {
                this.f16125l.setTypeface(typeface);
            }
            K(this.f16127n);
            L(this.f16128o);
            I(this.f16126m);
            this.f16125l.setVisibility(4);
            ViewCompat.setAccessibilityLiveRegion(this.f16125l, 1);
            e(this.f16125l, 0);
        } else {
            z();
            G(this.f16125l, 0);
            this.f16125l = null;
            this.f16115b.G0();
            this.f16115b.T0();
        }
        this.f16124k = z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void K(@StyleRes int i2) {
        this.f16127n = i2;
        TextView textView = this.f16125l;
        if (textView != null) {
            this.f16115b.s0(textView, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void L(@Nullable ColorStateList colorStateList) {
        this.f16128o = colorStateList;
        TextView textView = this.f16125l;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void M(@StyleRes int i2) {
        this.f16132s = i2;
        TextView textView = this.f16131r;
        if (textView != null) {
            TextViewCompat.setTextAppearance(textView, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void N(boolean z3) {
        if (this.f16130q == z3) {
            return;
        }
        h();
        if (z3) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(this.f16114a);
            this.f16131r = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_helper_text);
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 17) {
                this.f16131r.setTextAlignment(5);
            }
            Typeface typeface = this.f16134u;
            if (typeface != null) {
                this.f16131r.setTypeface(typeface);
            }
            this.f16131r.setVisibility(4);
            ViewCompat.setAccessibilityLiveRegion(this.f16131r, 1);
            M(this.f16132s);
            O(this.f16133t);
            e(this.f16131r, 1);
            if (i2 >= 17) {
                this.f16131r.setAccessibilityDelegate(new b());
            }
        } else {
            A();
            G(this.f16131r, 1);
            this.f16131r = null;
            this.f16115b.G0();
            this.f16115b.T0();
        }
        this.f16130q = z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void O(@Nullable ColorStateList colorStateList) {
        this.f16133t = colorStateList;
        TextView textView = this.f16131r;
        if (textView == null || colorStateList == null) {
            return;
        }
        textView.setTextColor(colorStateList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Q(Typeface typeface) {
        if (typeface != this.f16134u) {
            this.f16134u = typeface;
            P(this.f16125l, typeface);
            P(this.f16131r, typeface);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void T(CharSequence charSequence) {
        h();
        this.f16123j = charSequence;
        this.f16125l.setText(charSequence);
        int i2 = this.f16121h;
        if (i2 != 1) {
            this.f16122i = 1;
        }
        V(i2, this.f16122i, S(this.f16125l, charSequence));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void U(CharSequence charSequence) {
        h();
        this.f16129p = charSequence;
        this.f16131r.setText(charSequence);
        int i2 = this.f16121h;
        if (i2 != 2) {
            this.f16122i = 2;
        }
        V(i2, this.f16122i, S(this.f16131r, charSequence));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(TextView textView, int i2) {
        if (this.f16116c == null && this.f16118e == null) {
            LinearLayout linearLayout = new LinearLayout(this.f16114a);
            this.f16116c = linearLayout;
            linearLayout.setOrientation(0);
            this.f16115b.addView(this.f16116c, -1, -2);
            this.f16118e = new FrameLayout(this.f16114a);
            this.f16116c.addView(this.f16118e, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (this.f16115b.getEditText() != null) {
                f();
            }
        }
        if (D(i2)) {
            this.f16118e.setVisibility(0);
            this.f16118e.addView(textView);
        } else {
            this.f16116c.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f16116c.setVisibility(0);
        this.f16117d++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        if (g()) {
            EditText editText = this.f16115b.getEditText();
            boolean i2 = com.google.android.material.resources.c.i(this.f16114a);
            LinearLayout linearLayout = this.f16116c;
            int i4 = R.dimen.material_helper_text_font_1_3_padding_horizontal;
            ViewCompat.setPaddingRelative(linearLayout, w(i2, i4, ViewCompat.getPaddingStart(editText)), w(i2, R.dimen.material_helper_text_font_1_3_padding_top, this.f16114a.getResources().getDimensionPixelSize(R.dimen.material_helper_text_default_padding_top)), w(i2, i4, ViewCompat.getPaddingEnd(editText)), 0);
        }
    }

    void h() {
        Animator animator = this.f16119f;
        if (animator != null) {
            animator.cancel();
        }
    }

    boolean l() {
        return B(this.f16121h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean m() {
        return B(this.f16122i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public CharSequence o() {
        return this.f16126m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public CharSequence p() {
        return this.f16123j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ColorInt
    public int q() {
        TextView textView = this.f16125l;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public ColorStateList r() {
        TextView textView = this.f16125l;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CharSequence s() {
        return this.f16129p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public View t() {
        return this.f16131r;
    }

    @Nullable
    ColorStateList u() {
        TextView textView = this.f16131r;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ColorInt
    public int v() {
        TextView textView = this.f16131r;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean x() {
        return C(this.f16121h);
    }

    boolean y() {
        return C(this.f16122i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void z() {
        this.f16123j = null;
        h();
        if (this.f16121h == 1) {
            if (this.f16130q && !TextUtils.isEmpty(this.f16129p)) {
                this.f16122i = 2;
            } else {
                this.f16122i = 0;
            }
        }
        V(this.f16121h, this.f16122i, S(this.f16125l, ""));
    }
}
