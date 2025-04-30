package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
/* loaded from: classes3.dex */
public class MyTouchFrameLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private GestureDetector f45852a;

    public MyTouchFrameLayout(@NonNull Context context) {
        super(context);
    }

    public GestureDetector getDetector() {
        return this.f45852a;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        GestureDetector gestureDetector = this.f45852a;
        if (gestureDetector != null) {
            return gestureDetector.onTouchEvent(motionEvent);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        GestureDetector gestureDetector = this.f45852a;
        if (gestureDetector != null) {
            return gestureDetector.onTouchEvent(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setDetector(GestureDetector gestureDetector) {
        this.f45852a = gestureDetector;
    }

    public MyTouchFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MyTouchFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    @RequiresApi(api = 21)
    public MyTouchFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2, int i4) {
        super(context, attributeSet, i2, i4);
    }
}
