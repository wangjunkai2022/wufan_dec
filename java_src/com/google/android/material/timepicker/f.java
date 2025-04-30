package com.google.android.material.timepicker;

import android.text.Editable;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.material.textfield.TextInputLayout;
/* compiled from: TimePickerTextInputKeyController.java */
/* loaded from: classes2.dex */
class f implements TextView.OnEditorActionListener, View.OnKeyListener {

    /* renamed from: a  reason: collision with root package name */
    private final ChipTextInputComboView f16274a;

    /* renamed from: b  reason: collision with root package name */
    private final ChipTextInputComboView f16275b;

    /* renamed from: c  reason: collision with root package name */
    private final TimeModel f16276c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f16277d = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(ChipTextInputComboView chipTextInputComboView, ChipTextInputComboView chipTextInputComboView2, TimeModel timeModel) {
        this.f16274a = chipTextInputComboView;
        this.f16275b = chipTextInputComboView2;
        this.f16276c = timeModel;
    }

    private void b(int i2) {
        this.f16275b.setChecked(i2 == 12);
        this.f16274a.setChecked(i2 == 10);
        this.f16276c.f16210f = i2;
    }

    private boolean c(int i2, KeyEvent keyEvent, EditText editText) {
        Editable text = editText.getText();
        if (text == null) {
            return false;
        }
        if (i2 >= 7 && i2 <= 16 && keyEvent.getAction() == 1 && editText.getSelectionStart() == 2 && text.length() == 2) {
            b(12);
            return true;
        }
        return false;
    }

    private boolean d(int i2, KeyEvent keyEvent, EditText editText) {
        if (i2 == 67 && keyEvent.getAction() == 0 && TextUtils.isEmpty(editText.getText())) {
            b(10);
            return true;
        }
        return false;
    }

    public void a() {
        TextInputLayout e4 = this.f16274a.e();
        TextInputLayout e5 = this.f16275b.e();
        EditText editText = e4.getEditText();
        EditText editText2 = e5.getEditText();
        editText.setImeOptions(268435461);
        editText2.setImeOptions(268435462);
        editText.setOnEditorActionListener(this);
        editText.setOnKeyListener(this);
        editText2.setOnKeyListener(this);
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
        boolean z3 = i2 == 5;
        if (z3) {
            b(12);
        }
        return z3;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i2, KeyEvent keyEvent) {
        boolean c4;
        if (this.f16277d) {
            return false;
        }
        this.f16277d = true;
        EditText editText = (EditText) view;
        if (this.f16276c.f16210f == 12) {
            c4 = d(i2, keyEvent, editText);
        } else {
            c4 = c(i2, keyEvent, editText);
        }
        this.f16277d = false;
        return c4;
    }
}
