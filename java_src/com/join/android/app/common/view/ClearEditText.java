package com.join.android.app.common.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.CycleInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.EditText;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes.dex */
public class ClearEditText extends EditText implements View.OnFocusChangeListener, TextWatcher {

    /* renamed from: a  reason: collision with root package name */
    private Drawable f17257a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f17258b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f17259c;

    public ClearEditText(Context context) {
        this(context, null);
    }

    private void a() {
        Drawable drawable = getCompoundDrawables()[2];
        this.f17257a = drawable;
        if (drawable == null) {
            this.f17257a = getResources().getDrawable(R.drawable.delete_selector);
        }
        Drawable drawable2 = this.f17257a;
        drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), this.f17257a.getIntrinsicHeight());
        setClearIconVisible(false);
        setOnFocusChangeListener(this);
        addTextChangedListener(this);
    }

    public static Animation b(int i2) {
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 10.0f, 0.0f, 0.0f);
        translateAnimation.setInterpolator(new CycleInterpolator(i2));
        translateAnimation.setDuration(1000L);
        return translateAnimation;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z3) {
        this.f17258b = z3;
        if (z3) {
            setClearIconVisible(getText().length() > 0);
        } else {
            setClearIconVisible(false);
        }
    }

    @Override // android.widget.TextView, android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        if (this.f17258b) {
            setClearIconVisible(charSequence.length() > 0);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z3 = true;
        if (motionEvent.getAction() == 1 && getCompoundDrawables()[2] != null) {
            int intrinsicHeight = this.f17257a.getIntrinsicHeight();
            if ((motionEvent.getX() <= ((float) (getWidth() - getTotalPaddingRight())) || motionEvent.getX() >= ((float) (getWidth() - getPaddingRight())) || motionEvent.getY() < ((float) ((getHeight() - intrinsicHeight) / 2)) || motionEvent.getY() > ((float) ((getHeight() + intrinsicHeight) / 2))) ? false : false) {
                setText("");
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    protected void setClearIconVisible(boolean z3) {
        if (!this.f17259c) {
            z3 = false;
        }
        Drawable drawable = z3 ? this.f17257a : null;
        setCompoundDrawablePadding(20);
        setCompoundDrawables(getCompoundDrawables()[0], getCompoundDrawables()[1], drawable, getCompoundDrawables()[3]);
    }

    public void setShowDeleteIcon(boolean z3) {
        this.f17259c = z3;
    }

    public ClearEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842862);
    }

    public ClearEditText(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f17259c = true;
        a();
    }
}
