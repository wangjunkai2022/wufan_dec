package com.google.android.material.textfield;

import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.w;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StartCompoundLayout.java */
@SuppressLint({"ViewConstructor"})
/* loaded from: classes2.dex */
public class j extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private final TextInputLayout f16150a;

    /* renamed from: b  reason: collision with root package name */
    private final TextView f16151b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private CharSequence f16152c;

    /* renamed from: d  reason: collision with root package name */
    private final CheckableImageButton f16153d;

    /* renamed from: e  reason: collision with root package name */
    private ColorStateList f16154e;

    /* renamed from: f  reason: collision with root package name */
    private PorterDuff.Mode f16155f;

    /* renamed from: g  reason: collision with root package name */
    private View.OnLongClickListener f16156g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f16157h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(TextInputLayout textInputLayout, TintTypedArray tintTypedArray) {
        super(textInputLayout.getContext());
        this.f16150a = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, GravityCompat.START));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_start_icon, (ViewGroup) this, false);
        this.f16153d = checkableImageButton;
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.f16151b = appCompatTextView;
        g(tintTypedArray);
        f(tintTypedArray);
        addView(checkableImageButton);
        addView(appCompatTextView);
    }

    private void f(TintTypedArray tintTypedArray) {
        this.f16151b.setVisibility(8);
        this.f16151b.setId(R.id.textinput_prefix_text);
        this.f16151b.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        ViewCompat.setAccessibilityLiveRegion(this.f16151b, 1);
        m(tintTypedArray.getResourceId(R.styleable.TextInputLayout_prefixTextAppearance, 0));
        int i2 = R.styleable.TextInputLayout_prefixTextColor;
        if (tintTypedArray.hasValue(i2)) {
            n(tintTypedArray.getColorStateList(i2));
        }
        l(tintTypedArray.getText(R.styleable.TextInputLayout_prefixText));
    }

    private void g(TintTypedArray tintTypedArray) {
        if (com.google.android.material.resources.c.i(getContext())) {
            MarginLayoutParamsCompat.setMarginEnd((ViewGroup.MarginLayoutParams) this.f16153d.getLayoutParams(), 0);
        }
        r(null);
        s(null);
        int i2 = R.styleable.TextInputLayout_startIconTint;
        if (tintTypedArray.hasValue(i2)) {
            this.f16154e = com.google.android.material.resources.c.b(getContext(), tintTypedArray, i2);
        }
        int i4 = R.styleable.TextInputLayout_startIconTintMode;
        if (tintTypedArray.hasValue(i4)) {
            this.f16155f = w.l(tintTypedArray.getInt(i4, -1), null);
        }
        int i5 = R.styleable.TextInputLayout_startIconDrawable;
        if (tintTypedArray.hasValue(i5)) {
            q(tintTypedArray.getDrawable(i5));
            int i6 = R.styleable.TextInputLayout_startIconContentDescription;
            if (tintTypedArray.hasValue(i6)) {
                p(tintTypedArray.getText(i6));
            }
            o(tintTypedArray.getBoolean(R.styleable.TextInputLayout_startIconCheckable, true));
        }
    }

    private void y() {
        int i2 = (this.f16152c == null || this.f16157h) ? 8 : 0;
        setVisibility(this.f16153d.getVisibility() == 0 || i2 == 0 ? 0 : 8);
        this.f16151b.setVisibility(i2);
        this.f16150a.F0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public CharSequence a() {
        return this.f16152c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public ColorStateList b() {
        return this.f16151b.getTextColors();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public TextView c() {
        return this.f16151b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public CharSequence d() {
        return this.f16153d.getContentDescription();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Drawable e() {
        return this.f16153d.getDrawable();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean h() {
        return this.f16153d.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i() {
        return this.f16153d.getVisibility() == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(boolean z3) {
        this.f16157h = z3;
        y();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k() {
        f.c(this.f16150a, this.f16153d, this.f16154e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l(@Nullable CharSequence charSequence) {
        this.f16152c = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f16151b.setText(charSequence);
        y();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(@StyleRes int i2) {
        TextViewCompat.setTextAppearance(this.f16151b, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(@NonNull ColorStateList colorStateList) {
        this.f16151b.setTextColor(colorStateList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(boolean z3) {
        this.f16153d.setCheckable(z3);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        x();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p(@Nullable CharSequence charSequence) {
        if (d() != charSequence) {
            this.f16153d.setContentDescription(charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q(@Nullable Drawable drawable) {
        this.f16153d.setImageDrawable(drawable);
        if (drawable != null) {
            f.a(this.f16150a, this.f16153d, this.f16154e, this.f16155f);
            v(true);
            k();
            return;
        }
        v(false);
        r(null);
        s(null);
        p(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r(@Nullable View.OnClickListener onClickListener) {
        f.e(this.f16153d, onClickListener, this.f16156g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s(@Nullable View.OnLongClickListener onLongClickListener) {
        this.f16156g = onLongClickListener;
        f.f(this.f16153d, onLongClickListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void t(@Nullable ColorStateList colorStateList) {
        if (this.f16154e != colorStateList) {
            this.f16154e = colorStateList;
            f.a(this.f16150a, this.f16153d, colorStateList, this.f16155f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u(@Nullable PorterDuff.Mode mode) {
        if (this.f16155f != mode) {
            this.f16155f = mode;
            f.a(this.f16150a, this.f16153d, this.f16154e, mode);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v(boolean z3) {
        if (i() != z3) {
            this.f16153d.setVisibility(z3 ? 0 : 8);
            x();
            y();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (this.f16151b.getVisibility() == 0) {
            accessibilityNodeInfoCompat.setLabelFor(this.f16151b);
            accessibilityNodeInfoCompat.setTraversalAfter(this.f16151b);
            return;
        }
        accessibilityNodeInfoCompat.setTraversalAfter(this.f16153d);
    }

    void x() {
        EditText editText = this.f16150a.f16002e;
        if (editText == null) {
            return;
        }
        ViewCompat.setPaddingRelative(this.f16151b, i() ? 0 : ViewCompat.getPaddingStart(editText), editText.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding), editText.getCompoundPaddingBottom());
    }
}
