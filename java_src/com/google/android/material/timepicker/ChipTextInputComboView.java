package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.chip.Chip;
import com.google.android.material.internal.n;
import com.google.android.material.internal.w;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ChipTextInputComboView extends FrameLayout implements Checkable {

    /* renamed from: a  reason: collision with root package name */
    private final Chip f16160a;

    /* renamed from: b  reason: collision with root package name */
    private final TextInputLayout f16161b;

    /* renamed from: c  reason: collision with root package name */
    private final EditText f16162c;

    /* renamed from: d  reason: collision with root package name */
    private TextWatcher f16163d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f16164e;

    /* loaded from: classes2.dex */
    private class b extends n {

        /* renamed from: b  reason: collision with root package name */
        private static final String f16165b = "00";

        private b() {
        }

        @Override // com.google.android.material.internal.n, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (TextUtils.isEmpty(editable)) {
                ChipTextInputComboView.this.f16160a.setText(ChipTextInputComboView.this.d(f16165b));
            } else {
                ChipTextInputComboView.this.f16160a.setText(ChipTextInputComboView.this.d(editable));
            }
        }
    }

    public ChipTextInputComboView(@NonNull Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String d(CharSequence charSequence) {
        return TimeModel.a(getResources(), charSequence);
    }

    private void j() {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f16162c.setImeHintLocales(getContext().getResources().getConfiguration().getLocales());
        }
    }

    public void c(InputFilter inputFilter) {
        InputFilter[] filters = this.f16162c.getFilters();
        InputFilter[] inputFilterArr = (InputFilter[]) Arrays.copyOf(filters, filters.length + 1);
        inputFilterArr[filters.length] = inputFilter;
        this.f16162c.setFilters(inputFilterArr);
    }

    public TextInputLayout e() {
        return this.f16161b;
    }

    public void f(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(this.f16160a, accessibilityDelegateCompat);
    }

    public void g(boolean z3) {
        this.f16162c.setCursorVisible(z3);
    }

    public void h(CharSequence charSequence) {
        this.f16164e.setText(charSequence);
    }

    public void i(CharSequence charSequence) {
        this.f16160a.setText(d(charSequence));
        if (TextUtils.isEmpty(this.f16162c.getText())) {
            return;
        }
        this.f16162c.removeTextChangedListener(this.f16163d);
        this.f16162c.setText((CharSequence) null);
        this.f16162c.addTextChangedListener(this.f16163d);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f16160a.isChecked();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        j();
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z3) {
        this.f16160a.setChecked(z3);
        this.f16162c.setVisibility(z3 ? 0 : 4);
        this.f16160a.setVisibility(z3 ? 8 : 0);
        if (isChecked()) {
            w.p(this.f16162c);
            if (TextUtils.isEmpty(this.f16162c.getText())) {
                return;
            }
            EditText editText = this.f16162c;
            editText.setSelection(editText.getText().length());
        }
    }

    @Override // android.view.View
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.f16160a.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public void setTag(int i2, Object obj) {
        this.f16160a.setTag(i2, obj);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        this.f16160a.toggle();
    }

    public ChipTextInputComboView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ChipTextInputComboView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        LayoutInflater from = LayoutInflater.from(context);
        Chip chip = (Chip) from.inflate(R.layout.material_time_chip, (ViewGroup) this, false);
        this.f16160a = chip;
        chip.setAccessibilityClassName("android.view.View");
        TextInputLayout textInputLayout = (TextInputLayout) from.inflate(R.layout.material_time_input, (ViewGroup) this, false);
        this.f16161b = textInputLayout;
        EditText editText = textInputLayout.getEditText();
        this.f16162c = editText;
        editText.setVisibility(4);
        b bVar = new b();
        this.f16163d = bVar;
        editText.addTextChangedListener(bVar);
        j();
        addView(chip);
        addView(textInputLayout);
        this.f16164e = (TextView) findViewById(R.id.material_label);
        editText.setSaveEnabled(false);
        editText.setLongClickable(false);
    }
}
