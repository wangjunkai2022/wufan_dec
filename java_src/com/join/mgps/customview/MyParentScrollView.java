package com.join.mgps.customview;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ScrollView;
/* loaded from: classes3.dex */
public class MyParentScrollView extends ScrollView {

    /* renamed from: a  reason: collision with root package name */
    private b f45812a;

    /* renamed from: b  reason: collision with root package name */
    private int f45813b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f45814c;

    /* renamed from: d  reason: collision with root package name */
    private Handler f45815d;

    /* renamed from: e  reason: collision with root package name */
    private float f45816e;

    /* renamed from: f  reason: collision with root package name */
    private float f45817f;

    /* renamed from: g  reason: collision with root package name */
    private float f45818g;

    /* renamed from: h  reason: collision with root package name */
    private float f45819h;

    /* loaded from: classes3.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int scrollY = MyParentScrollView.this.getScrollY();
            if (MyParentScrollView.this.f45813b != scrollY) {
                MyParentScrollView.this.f45813b = scrollY;
                MyParentScrollView.this.f45815d.sendMessageDelayed(MyParentScrollView.this.f45815d.obtainMessage(), 20L);
            }
            if (MyParentScrollView.this.f45812a != null) {
                MyParentScrollView.this.f45812a.a(scrollY);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void a(int i2);
    }

    public MyParentScrollView(Context context) {
        super(context, null);
        this.f45815d = new a();
    }

    public boolean e() {
        return this.f45814c;
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f45817f = 0.0f;
            this.f45816e = 0.0f;
            this.f45818g = motionEvent.getX();
            this.f45819h = motionEvent.getY();
        } else if (action == 2) {
            float x3 = motionEvent.getX();
            float y3 = motionEvent.getY();
            this.f45816e += Math.abs(x3 - this.f45818g);
            float abs = this.f45817f + Math.abs(y3 - this.f45819h);
            this.f45817f = abs;
            this.f45818g = x3;
            this.f45819h = y3;
            if (this.f45816e > abs) {
                return false;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        b bVar = this.f45812a;
        if (bVar != null) {
            int scrollY = getScrollY();
            this.f45813b = scrollY;
            bVar.a(scrollY);
        }
        if (motionEvent.getAction() == 1) {
            Handler handler = this.f45815d;
            handler.sendMessageDelayed(handler.obtainMessage(), 20L);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setIsInnerScroll(boolean z3) {
        this.f45814c = z3;
    }

    public void setOnScrollListener(b bVar) {
        this.f45812a = bVar;
    }

    public MyParentScrollView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45815d = new a();
    }

    public MyParentScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45815d = new a();
    }
}
