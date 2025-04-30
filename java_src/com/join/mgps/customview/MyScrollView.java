package com.join.mgps.customview;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ScrollView;
/* loaded from: classes3.dex */
public class MyScrollView extends ScrollView {

    /* renamed from: a  reason: collision with root package name */
    private b f45834a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f45835b;

    /* renamed from: c  reason: collision with root package name */
    private c f45836c;

    /* renamed from: d  reason: collision with root package name */
    private int f45837d;

    /* renamed from: e  reason: collision with root package name */
    private GestureDetector f45838e;

    /* renamed from: f  reason: collision with root package name */
    View.OnTouchListener f45839f;

    /* renamed from: g  reason: collision with root package name */
    private Handler f45840g;

    /* loaded from: classes3.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int scrollY = MyScrollView.this.getScrollY();
            if (MyScrollView.this.f45837d != scrollY) {
                MyScrollView.this.f45837d = scrollY;
                MyScrollView.this.f45840g.sendMessageDelayed(MyScrollView.this.f45840g.obtainMessage(), 20L);
            }
            if (MyScrollView.this.f45834a != null) {
                MyScrollView.this.f45834a.a(scrollY);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void a(int i2);
    }

    /* loaded from: classes3.dex */
    public interface c {
        void a();
    }

    /* loaded from: classes3.dex */
    class d extends GestureDetector.SimpleOnGestureListener {
        d() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f4, float f5) {
            return Math.abs(f5) > Math.abs(f4);
        }
    }

    public MyScrollView(Context context) {
        super(context, null);
        this.f45835b = true;
        this.f45840g = new a();
    }

    public boolean e() {
        return this.f45835b;
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 11) {
            return super.onInterceptTouchEvent(motionEvent) && this.f45835b;
        } else if (this.f45838e.onTouchEvent(motionEvent)) {
            return true;
        } else {
            return super.onInterceptTouchEvent(motionEvent) && this.f45835b;
        }
    }

    @Override // android.view.View
    protected void onScrollChanged(int i2, int i4, int i5, int i6) {
        if (i4 + getHeight() >= computeVerticalScrollRange()) {
            this.f45836c.a();
        }
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        b bVar = this.f45834a;
        if (bVar != null) {
            this.f45835b = true;
            int scrollY = getScrollY();
            this.f45837d = scrollY;
            bVar.a(scrollY);
        }
        if (motionEvent.getAction() == 1) {
            Handler handler = this.f45840g;
            handler.sendMessageDelayed(handler.obtainMessage(), 20L);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setOnScrollListener(b bVar) {
        this.f45834a = bVar;
    }

    public void setOtherTouchEvent(boolean z3) {
        this.f45835b = z3;
    }

    public void setScrollBottomListener(c cVar) {
        this.f45836c = cVar;
    }

    public MyScrollView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45835b = true;
        this.f45840g = new a();
    }

    public MyScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45835b = true;
        this.f45840g = new a();
        if (Build.VERSION.SDK_INT >= 11) {
            this.f45838e = new GestureDetector(new d());
        }
    }
}
