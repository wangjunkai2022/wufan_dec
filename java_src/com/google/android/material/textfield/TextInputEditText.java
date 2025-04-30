package com.google.android.material.textfield;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.text.Editable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatEditText;
import com.google.android.material.R;
import com.google.android.material.internal.o;
/* loaded from: classes2.dex */
public class TextInputEditText extends AppCompatEditText {

    /* renamed from: f  reason: collision with root package name */
    private final Rect f15977f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f15978g;

    public TextInputEditText(@NonNull Context context) {
        this(context, null);
    }

    @NonNull
    private String b(@NonNull TextInputLayout textInputLayout) {
        Editable text = getText();
        CharSequence hint = textInputLayout.getHint();
        boolean z3 = !TextUtils.isEmpty(text);
        String str = "";
        String charSequence = TextUtils.isEmpty(hint) ^ true ? hint.toString() : "";
        if (!z3) {
            return !TextUtils.isEmpty(charSequence) ? charSequence : "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append((Object) text);
        if (!TextUtils.isEmpty(charSequence)) {
            str = ", " + charSequence;
        }
        sb.append(str);
        return sb.toString();
    }

    private boolean d(@Nullable TextInputLayout textInputLayout) {
        return textInputLayout != null && this.f15978g;
    }

    @Nullable
    private CharSequence getHintFromLayout() {
        TextInputLayout textInputLayout = getTextInputLayout();
        if (textInputLayout != null) {
            return textInputLayout.getHint();
        }
        return null;
    }

    @Nullable
    private TextInputLayout getTextInputLayout() {
        for (ViewParent parent = getParent(); parent instanceof View; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    public boolean c() {
        return this.f15978g;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(@Nullable Rect rect) {
        super.getFocusedRect(rect);
        TextInputLayout textInputLayout = getTextInputLayout();
        if (!d(textInputLayout) || rect == null) {
            return;
        }
        textInputLayout.getFocusedRect(this.f15977f);
        rect.bottom = this.f15977f.bottom;
    }

    @Override // android.view.View
    public boolean getGlobalVisibleRect(@Nullable Rect rect, @Nullable Point point) {
        TextInputLayout textInputLayout = getTextInputLayout();
        if (d(textInputLayout)) {
            return textInputLayout.getGlobalVisibleRect(rect, point);
        }
        return super.getGlobalVisibleRect(rect, point);
    }

    @Override // android.widget.TextView
    @Nullable
    public CharSequence getHint() {
        TextInputLayout textInputLayout = getTextInputLayout();
        if (textInputLayout != null && textInputLayout.Z()) {
            return textInputLayout.getHint();
        }
        return super.getHint();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout textInputLayout = getTextInputLayout();
        if (textInputLayout != null && textInputLayout.Z() && super.getHint() == null && com.google.android.material.internal.f.c()) {
            setHint("");
        }
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.widget.TextView, android.view.View
    @Nullable
    public InputConnection onCreateInputConnection(@NonNull EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        if (onCreateInputConnection != null && editorInfo.hintText == null) {
            editorInfo.hintText = getHintFromLayout();
        }
        return onCreateInputConnection;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        TextInputLayout textInputLayout = getTextInputLayout();
        if (Build.VERSION.SDK_INT >= 23 || textInputLayout == null) {
            return;
        }
        accessibilityNodeInfo.setText(b(textInputLayout));
    }

    @Override // android.view.View
    public boolean requestRectangleOnScreen(@Nullable Rect rect) {
        TextInputLayout textInputLayout = getTextInputLayout();
        if (d(textInputLayout) && rect != null) {
            this.f15977f.set(rect.left, rect.top, rect.right, rect.bottom + (textInputLayout.getHeight() - getHeight()));
            return super.requestRectangleOnScreen(this.f15977f);
        }
        return super.requestRectangleOnScreen(rect);
    }

    public void setTextInputLayoutFocusedRectEnabled(boolean z3) {
        this.f15978g = z3;
    }

    public TextInputEditText(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.editTextStyle);
    }

    public TextInputEditText(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(com.google.android.material.theme.overlay.a.c(context, attributeSet, i2, 0), attributeSet, i2);
        this.f15977f = new Rect();
        TypedArray j4 = o.j(context, attributeSet, R.styleable.TextInputEditText, i2, R.style.Widget_Design_TextInputEditText, new int[0]);
        setTextInputLayoutFocusedRectEnabled(j4.getBoolean(R.styleable.TextInputEditText_textInputLayoutFocusedRectEnabled, false));
        j4.recycle();
    }
}
