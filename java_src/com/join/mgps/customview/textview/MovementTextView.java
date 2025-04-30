package com.join.mgps.customview.textview;

import android.content.Context;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.style.ClickableSpan;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.TextView;
import androidx.annotation.Nullable;
/* loaded from: classes3.dex */
public class MovementTextView extends TextView {

    /* renamed from: a  reason: collision with root package name */
    a f47249a;

    /* loaded from: classes3.dex */
    public interface a {
        void onClickText();
    }

    public MovementTextView(Context context) {
        super(context);
    }

    private ClickableSpan[] a(CharSequence charSequence, int i2) {
        if (charSequence instanceof SpannableStringBuilder) {
            return (ClickableSpan[]) ((SpannableStringBuilder) charSequence).getSpans(i2, i2, m1.a.class);
        }
        if (charSequence instanceof SpannableString) {
            return (ClickableSpan[]) ((SpannableString) charSequence).getSpans(i2, i2, m1.a.class);
        }
        return (ClickableSpan[]) ((SpannedString) charSequence).getSpans(i2, i2, m1.a.class);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            CharSequence text = getText();
            if ((text instanceof SpannableStringBuilder) || (text instanceof SpannedString) || (text instanceof SpannableString)) {
                int x3 = ((int) motionEvent.getX()) - getTotalPaddingLeft();
                int y3 = ((int) motionEvent.getY()) - getTotalPaddingTop();
                int scrollX = x3 + getScrollX();
                ClickableSpan[] a4 = a(text, getLayout().getOffsetForHorizontal(getLayout().getLineForVertical(y3 + getScrollY()), scrollX));
                if (a4.length != 0) {
                    a4[0].onClick(this);
                    return true;
                }
                a aVar = this.f47249a;
                if (aVar != null) {
                    aVar.onClickText();
                }
            }
        }
        return true;
    }

    public void setClickTextListener(a aVar) {
        this.f47249a = aVar;
    }

    public MovementTextView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MovementTextView(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
