package com.google.android.material.textfield;

import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import com.google.android.material.R;
import com.google.android.material.internal.n;
import com.google.android.material.textfield.TextInputLayout;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PasswordToggleEndIconDelegate.java */
/* loaded from: classes2.dex */
public class i extends e {

    /* renamed from: e  reason: collision with root package name */
    private final TextWatcher f16141e;

    /* renamed from: f  reason: collision with root package name */
    private final TextInputLayout.f f16142f;

    /* renamed from: g  reason: collision with root package name */
    private final TextInputLayout.g f16143g;

    /* compiled from: PasswordToggleEndIconDelegate.java */
    /* loaded from: classes2.dex */
    class a extends n {
        a() {
        }

        @Override // com.google.android.material.internal.n, android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
            i iVar = i.this;
            iVar.f16107c.setChecked(!iVar.g());
        }
    }

    /* compiled from: PasswordToggleEndIconDelegate.java */
    /* loaded from: classes2.dex */
    class b implements TextInputLayout.f {
        b() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.f
        public void a(@NonNull TextInputLayout textInputLayout) {
            EditText editText = textInputLayout.getEditText();
            i iVar = i.this;
            iVar.f16107c.setChecked(!iVar.g());
            editText.removeTextChangedListener(i.this.f16141e);
            editText.addTextChangedListener(i.this.f16141e);
        }
    }

    /* compiled from: PasswordToggleEndIconDelegate.java */
    /* loaded from: classes2.dex */
    class c implements TextInputLayout.g {

        /* compiled from: PasswordToggleEndIconDelegate.java */
        /* loaded from: classes2.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ EditText f16147a;

            a(EditText editText) {
                this.f16147a = editText;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f16147a.removeTextChangedListener(i.this.f16141e);
            }
        }

        c() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.g
        public void a(@NonNull TextInputLayout textInputLayout, int i2) {
            EditText editText = textInputLayout.getEditText();
            if (editText == null || i2 != 1) {
                return;
            }
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            editText.post(new a(editText));
        }
    }

    /* compiled from: PasswordToggleEndIconDelegate.java */
    /* loaded from: classes2.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            EditText editText = i.this.f16105a.getEditText();
            if (editText == null) {
                return;
            }
            int selectionEnd = editText.getSelectionEnd();
            if (i.this.g()) {
                editText.setTransformationMethod(null);
            } else {
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
            if (selectionEnd >= 0) {
                editText.setSelection(selectionEnd);
            }
            i.this.f16105a.i0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(@NonNull TextInputLayout textInputLayout, @DrawableRes int i2) {
        super(textInputLayout, i2);
        this.f16141e = new a();
        this.f16142f = new b();
        this.f16143g = new c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g() {
        EditText editText = this.f16105a.getEditText();
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    private static boolean h(EditText editText) {
        return editText != null && (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.e
    public void a() {
        TextInputLayout textInputLayout = this.f16105a;
        int i2 = this.f16108d;
        if (i2 == 0) {
            i2 = R.drawable.design_password_eye;
        }
        textInputLayout.setEndIconDrawable(i2);
        TextInputLayout textInputLayout2 = this.f16105a;
        textInputLayout2.setEndIconContentDescription(textInputLayout2.getResources().getText(R.string.password_toggle_content_description));
        this.f16105a.setEndIconVisible(true);
        this.f16105a.setEndIconCheckable(true);
        this.f16105a.setEndIconOnClickListener(new d());
        this.f16105a.g(this.f16142f);
        this.f16105a.h(this.f16143g);
        EditText editText = this.f16105a.getEditText();
        if (h(editText)) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}
