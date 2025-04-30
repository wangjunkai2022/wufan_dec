package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import com.google.android.material.R;
import com.google.android.material.textfield.TextInputLayout;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ClearTextEndIconDelegate.java */
/* loaded from: classes2.dex */
public class a extends com.google.android.material.textfield.e {

    /* renamed from: k  reason: collision with root package name */
    private static final int f16050k = 100;

    /* renamed from: l  reason: collision with root package name */
    private static final int f16051l = 150;

    /* renamed from: m  reason: collision with root package name */
    private static final float f16052m = 0.8f;

    /* renamed from: e  reason: collision with root package name */
    private final TextWatcher f16053e;

    /* renamed from: f  reason: collision with root package name */
    private final View.OnFocusChangeListener f16054f;

    /* renamed from: g  reason: collision with root package name */
    private final TextInputLayout.f f16055g;

    /* renamed from: h  reason: collision with root package name */
    private final TextInputLayout.g f16056h;

    /* renamed from: i  reason: collision with root package name */
    private AnimatorSet f16057i;

    /* renamed from: j  reason: collision with root package name */
    private ValueAnimator f16058j;

    /* compiled from: ClearTextEndIconDelegate.java */
    /* renamed from: com.google.android.material.textfield.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0116a implements TextWatcher {
        C0116a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@NonNull Editable editable) {
            if (a.this.f16105a.getSuffixText() != null) {
                return;
            }
            a aVar = a.this;
            aVar.i(aVar.m());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        }
    }

    /* compiled from: ClearTextEndIconDelegate.java */
    /* loaded from: classes2.dex */
    class b implements View.OnFocusChangeListener {
        b() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z3) {
            a aVar = a.this;
            aVar.i(aVar.m());
        }
    }

    /* compiled from: ClearTextEndIconDelegate.java */
    /* loaded from: classes2.dex */
    class c implements TextInputLayout.f {
        c() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.f
        public void a(@NonNull TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            textInputLayout.setEndIconVisible(a.this.m());
            editText.setOnFocusChangeListener(a.this.f16054f);
            a aVar = a.this;
            aVar.f16107c.setOnFocusChangeListener(aVar.f16054f);
            editText.removeTextChangedListener(a.this.f16053e);
            editText.addTextChangedListener(a.this.f16053e);
        }
    }

    /* compiled from: ClearTextEndIconDelegate.java */
    /* loaded from: classes2.dex */
    class d implements TextInputLayout.g {

        /* compiled from: ClearTextEndIconDelegate.java */
        /* renamed from: com.google.android.material.textfield.a$d$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class RunnableC0117a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ EditText f16063a;

            RunnableC0117a(EditText editText) {
                this.f16063a = editText;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f16063a.removeTextChangedListener(a.this.f16053e);
                a.this.i(true);
            }
        }

        d() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.g
        public void a(@NonNull TextInputLayout textInputLayout, int i2) {
            EditText editText = textInputLayout.getEditText();
            if (editText == null || i2 != 2) {
                return;
            }
            editText.post(new RunnableC0117a(editText));
            if (editText.getOnFocusChangeListener() == a.this.f16054f) {
                editText.setOnFocusChangeListener(null);
            }
            if (a.this.f16107c.getOnFocusChangeListener() == a.this.f16054f) {
                a.this.f16107c.setOnFocusChangeListener(null);
            }
        }
    }

    /* compiled from: ClearTextEndIconDelegate.java */
    /* loaded from: classes2.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Editable text = a.this.f16105a.getEditText().getText();
            if (text != null) {
                text.clear();
            }
            a.this.f16105a.i0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ClearTextEndIconDelegate.java */
    /* loaded from: classes2.dex */
    public class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            a.this.f16105a.setEndIconVisible(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ClearTextEndIconDelegate.java */
    /* loaded from: classes2.dex */
    public class g extends AnimatorListenerAdapter {
        g() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a.this.f16105a.setEndIconVisible(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ClearTextEndIconDelegate.java */
    /* loaded from: classes2.dex */
    public class h implements ValueAnimator.AnimatorUpdateListener {
        h() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            a.this.f16107c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ClearTextEndIconDelegate.java */
    /* loaded from: classes2.dex */
    public class i implements ValueAnimator.AnimatorUpdateListener {
        i() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            a.this.f16107c.setScaleX(floatValue);
            a.this.f16107c.setScaleY(floatValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(@NonNull TextInputLayout textInputLayout, @DrawableRes int i2) {
        super(textInputLayout, i2);
        this.f16053e = new C0116a();
        this.f16054f = new b();
        this.f16055g = new c();
        this.f16056h = new d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(boolean z3) {
        boolean z4 = this.f16105a.P() == z3;
        if (z3 && !this.f16057i.isRunning()) {
            this.f16058j.cancel();
            this.f16057i.start();
            if (z4) {
                this.f16057i.end();
            }
        } else if (z3) {
        } else {
            this.f16057i.cancel();
            this.f16058j.start();
            if (z4) {
                this.f16058j.end();
            }
        }
    }

    private ValueAnimator j(float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(com.google.android.material.animation.a.f14004a);
        ofFloat.setDuration(100L);
        ofFloat.addUpdateListener(new h());
        return ofFloat;
    }

    private ValueAnimator k() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f16052m, 1.0f);
        ofFloat.setInterpolator(com.google.android.material.animation.a.f14007d);
        ofFloat.setDuration(150L);
        ofFloat.addUpdateListener(new i());
        return ofFloat;
    }

    private void l() {
        ValueAnimator k4 = k();
        ValueAnimator j4 = j(0.0f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f16057i = animatorSet;
        animatorSet.playTogether(k4, j4);
        this.f16057i.addListener(new f());
        ValueAnimator j5 = j(1.0f, 0.0f);
        this.f16058j = j5;
        j5.addListener(new g());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean m() {
        EditText editText = this.f16105a.getEditText();
        return editText != null && (editText.hasFocus() || this.f16107c.hasFocus()) && editText.getText().length() > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.e
    public void a() {
        TextInputLayout textInputLayout = this.f16105a;
        int i2 = this.f16108d;
        if (i2 == 0) {
            i2 = R.drawable.mtrl_ic_cancel;
        }
        textInputLayout.setEndIconDrawable(i2);
        TextInputLayout textInputLayout2 = this.f16105a;
        textInputLayout2.setEndIconContentDescription(textInputLayout2.getResources().getText(R.string.clear_text_end_icon_content_description));
        this.f16105a.setEndIconCheckable(false);
        this.f16105a.setEndIconOnClickListener(new e());
        this.f16105a.g(this.f16055g);
        this.f16105a.h(this.f16056h);
        l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.e
    public void c(boolean z3) {
        if (this.f16105a.getSuffixText() == null) {
            return;
        }
        i(z3);
    }
}
