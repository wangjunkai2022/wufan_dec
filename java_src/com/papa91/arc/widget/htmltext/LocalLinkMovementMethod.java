package com.papa91.arc.widget.htmltext;

import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.text.method.Touch;
import android.text.style.ClickableSpan;
import android.view.MotionEvent;
import android.widget.TextView;
/* loaded from: classes4.dex */
public class LocalLinkMovementMethod extends LinkMovementMethod {
    static LocalLinkMovementMethod sInstance;

    public static LocalLinkMovementMethod getInstance() {
        if (sInstance == null) {
            sInstance = new LocalLinkMovementMethod();
        }
        return sInstance;
    }

    @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 1 && action != 0) {
            return Touch.onTouchEvent(textView, spannable, motionEvent);
        }
        int x3 = ((int) motionEvent.getX()) - textView.getTotalPaddingLeft();
        int y3 = ((int) motionEvent.getY()) - textView.getTotalPaddingTop();
        int scrollX = x3 + textView.getScrollX();
        int scrollY = y3 + textView.getScrollY();
        Layout layout = textView.getLayout();
        int offsetForHorizontal = layout.getOffsetForHorizontal(layout.getLineForVertical(scrollY), scrollX);
        Object[] objArr = (ClickableSpan[]) spannable.getSpans(offsetForHorizontal, offsetForHorizontal, ClickableSpan.class);
        if (objArr.length == 0) {
            Selection.removeSelection(spannable);
            Touch.onTouchEvent(textView, spannable, motionEvent);
            return false;
        }
        if (action == 1) {
            objArr[0].onClick(textView);
        } else if (action == 0) {
            Selection.setSelection(spannable, spannable.getSpanStart(objArr[0]), spannable.getSpanEnd(objArr[0]));
        }
        return true;
    }
}
