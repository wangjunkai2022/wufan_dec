package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
/* loaded from: classes3.dex */
public class XListView4NewGame extends XListView2 {
    public static final String G = "XListView4NewGame";
    private int E;
    private GestureDetector F;

    /* loaded from: classes3.dex */
    class a extends GestureDetector.SimpleOnGestureListener {
        a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f4, float f5) {
            return Math.abs(f5) > Math.abs(f4) * 1.5f;
        }
    }

    public XListView4NewGame(Context context) {
        super(context);
        this.E = 0;
        this.F = new GestureDetector(new a());
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.F.onTouchEvent(motionEvent)) {
            if (this.E != 0) {
                return false;
            }
            this.E = 1;
            if (motionEvent.getAction() == 1) {
                this.E = 0;
            }
        }
        this.E = 0;
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // com.join.mgps.customview.XListView2, android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 2) {
            motionEvent.getRawY();
            this.f46586a = motionEvent.getRawY();
            motionEvent.getRawX();
            this.f46587b = motionEvent.getRawX();
            if (!this.F.onTouchEvent(motionEvent)) {
                return false;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public XListView4NewGame(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.E = 0;
        this.F = new GestureDetector(new a());
    }

    public XListView4NewGame(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.E = 0;
        this.F = new GestureDetector(new a());
    }
}
