package com.join.mgps.Util;

import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
/* compiled from: CustomLinkMovementMethod.java */
/* loaded from: classes3.dex */
public class w extends LinkMovementMethod {

    /* renamed from: a  reason: collision with root package name */
    private static w f27872a;

    public static w a() {
        if (f27872a == null) {
            f27872a = new w();
        }
        return f27872a;
    }

    @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        boolean onTouchEvent = super.onTouchEvent(textView, spannable, motionEvent);
        if (!onTouchEvent && motionEvent.getAction() == 1) {
            ViewParent parent = textView.getParent();
            if (parent instanceof ViewGroup) {
                return ((ViewGroup) parent).performClick();
            }
        }
        return onTouchEvent;
    }
}
