package com.join.mgps.customview;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes3.dex */
public class ScrollViewContainer extends RelativeLayout {

    /* renamed from: r  reason: collision with root package name */
    public static final int f46031r = 0;

    /* renamed from: s  reason: collision with root package name */
    public static final int f46032s = 1;

    /* renamed from: t  reason: collision with root package name */
    public static final int f46033t = 2;

    /* renamed from: u  reason: collision with root package name */
    public static final float f46034u = 6.5f;

    /* renamed from: a  reason: collision with root package name */
    private boolean f46035a;

    /* renamed from: b  reason: collision with root package name */
    private VelocityTracker f46036b;

    /* renamed from: c  reason: collision with root package name */
    private int f46037c;

    /* renamed from: d  reason: collision with root package name */
    private int f46038d;

    /* renamed from: e  reason: collision with root package name */
    private View f46039e;

    /* renamed from: f  reason: collision with root package name */
    private View f46040f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f46041g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f46042h;

    /* renamed from: i  reason: collision with root package name */
    private int f46043i;

    /* renamed from: j  reason: collision with root package name */
    private int f46044j;

    /* renamed from: k  reason: collision with root package name */
    private float f46045k;

    /* renamed from: l  reason: collision with root package name */
    private d f46046l;

    /* renamed from: m  reason: collision with root package name */
    private float f46047m;

    /* renamed from: n  reason: collision with root package name */
    private int f46048n;

    /* renamed from: o  reason: collision with root package name */
    private Handler f46049o;

    /* renamed from: p  reason: collision with root package name */
    private View.OnTouchListener f46050p;

    /* renamed from: q  reason: collision with root package name */
    private View.OnTouchListener f46051q;

    /* loaded from: classes3.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (ScrollViewContainer.this.f46045k != 0.0f) {
                if (ScrollViewContainer.this.f46043i != 0) {
                    if (ScrollViewContainer.this.f46043i != 1) {
                        ScrollViewContainer.this.f46046l.a();
                    } else {
                        ScrollViewContainer.c(ScrollViewContainer.this, 6.5f);
                        if (ScrollViewContainer.this.f46045k >= 0.0f) {
                            ScrollViewContainer.this.f46045k = 0.0f;
                            ScrollViewContainer.this.f46043i = 2;
                            ScrollViewContainer.this.f46044j = 0;
                        }
                    }
                } else {
                    ScrollViewContainer.d(ScrollViewContainer.this, 6.5f);
                    if (ScrollViewContainer.this.f46045k <= (-ScrollViewContainer.this.f46037c)) {
                        ScrollViewContainer scrollViewContainer = ScrollViewContainer.this;
                        scrollViewContainer.f46045k = -scrollViewContainer.f46037c;
                        ScrollViewContainer.this.f46043i = 2;
                        ScrollViewContainer.this.f46044j = 1;
                    }
                }
            }
            ScrollViewContainer.this.requestLayout();
        }
    }

    /* loaded from: classes3.dex */
    class b implements View.OnTouchListener {
        b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            ScrollView scrollView = (ScrollView) view;
            ScrollViewContainer.this.f46042h = scrollView.getScrollY() == scrollView.getChildAt(0).getMeasuredHeight() - scrollView.getMeasuredHeight() && ScrollViewContainer.this.f46044j == 0;
            return false;
        }
    }

    /* loaded from: classes3.dex */
    class c implements View.OnTouchListener {
        c() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            boolean z3 = true;
            ScrollViewContainer.this.f46041g = (((ScrollView) view).getScrollY() == 0 && ScrollViewContainer.this.f46044j == 1) ? false : false;
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d {

        /* renamed from: a  reason: collision with root package name */
        private Handler f46055a;

        /* renamed from: b  reason: collision with root package name */
        private Timer f46056b = new Timer();

        /* renamed from: c  reason: collision with root package name */
        private a f46057c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public class a extends TimerTask {

            /* renamed from: a  reason: collision with root package name */
            private Handler f46059a;

            public a(Handler handler) {
                this.f46059a = handler;
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                this.f46059a.obtainMessage().sendToTarget();
            }
        }

        public d(Handler handler) {
            this.f46055a = handler;
        }

        public void a() {
            a aVar = this.f46057c;
            if (aVar != null) {
                aVar.cancel();
                this.f46057c = null;
            }
        }

        public void b(long j4) {
            a aVar = this.f46057c;
            if (aVar != null) {
                aVar.cancel();
                this.f46057c = null;
            }
            a aVar2 = new a(this.f46055a);
            this.f46057c = aVar2;
            this.f46056b.schedule(aVar2, 0L, j4);
        }
    }

    public ScrollViewContainer(Context context) {
        super(context);
        this.f46035a = false;
        this.f46043i = 2;
        this.f46044j = 0;
        this.f46049o = new a();
        this.f46050p = new b();
        this.f46051q = new c();
        m();
    }

    static /* synthetic */ float c(ScrollViewContainer scrollViewContainer, float f4) {
        float f5 = scrollViewContainer.f46045k + f4;
        scrollViewContainer.f46045k = f5;
        return f5;
    }

    static /* synthetic */ float d(ScrollViewContainer scrollViewContainer, float f4) {
        float f5 = scrollViewContainer.f46045k - f4;
        scrollViewContainer.f46045k = f5;
        return f5;
    }

    private void m() {
        this.f46046l = new d(this.f46049o);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            VelocityTracker velocityTracker = this.f46036b;
            if (velocityTracker == null) {
                this.f46036b = VelocityTracker.obtain();
            } else {
                velocityTracker.clear();
            }
            this.f46047m = motionEvent.getY();
            this.f46036b.addMovement(motionEvent);
            this.f46048n = 0;
        } else if (actionMasked == 1) {
            this.f46047m = motionEvent.getY();
            this.f46036b.addMovement(motionEvent);
            this.f46036b.computeCurrentVelocity(700);
            float yVelocity = this.f46036b.getYVelocity();
            float f4 = this.f46045k;
            if (f4 != 0.0f && f4 != (-this.f46037c)) {
                if (Math.abs(yVelocity) < 500.0f) {
                    float f5 = this.f46045k;
                    int i2 = this.f46037c;
                    if (f5 <= (-i2) / 2) {
                        this.f46043i = 0;
                    } else if (f5 > (-i2) / 2) {
                        this.f46043i = 1;
                    }
                } else if (yVelocity < 0.0f) {
                    this.f46043i = 0;
                } else {
                    this.f46043i = 1;
                }
                this.f46046l.b(2L);
                try {
                    this.f46036b.recycle();
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        } else if (actionMasked == 2) {
            this.f46036b.addMovement(motionEvent);
            if (this.f46042h && this.f46044j == 0 && this.f46048n == 0) {
                float y3 = this.f46045k + (motionEvent.getY() - this.f46047m);
                this.f46045k = y3;
                if (y3 > 0.0f) {
                    this.f46045k = 0.0f;
                    this.f46044j = 0;
                } else {
                    int i4 = this.f46037c;
                    if (y3 < (-i4)) {
                        this.f46045k = -i4;
                        this.f46044j = 1;
                    }
                }
                if (this.f46045k < -8.0f) {
                    motionEvent.setAction(3);
                }
            } else if (this.f46041g && this.f46044j == 1 && this.f46048n == 0) {
                float y4 = this.f46045k + (motionEvent.getY() - this.f46047m);
                this.f46045k = y4;
                int i5 = this.f46037c;
                if (y4 < (-i5)) {
                    this.f46045k = -i5;
                    this.f46044j = 1;
                } else if (y4 > 0.0f) {
                    this.f46045k = 0.0f;
                    this.f46044j = 0;
                }
                if (this.f46045k > 8 - i5) {
                    motionEvent.setAction(3);
                }
            } else {
                this.f46048n++;
            }
            this.f46047m = motionEvent.getY();
            requestLayout();
        } else if (actionMasked == 5 || actionMasked == 6) {
            this.f46048n = -1;
        }
        try {
            super.dispatchTouchEvent(motionEvent);
        } catch (Exception unused) {
        }
        return true;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        View view = this.f46039e;
        view.layout(0, (int) this.f46045k, this.f46038d, view.getMeasuredHeight() + ((int) this.f46045k));
        this.f46040f.layout(0, this.f46039e.getMeasuredHeight() + ((int) this.f46045k), this.f46038d, this.f46039e.getMeasuredHeight() + ((int) this.f46045k) + this.f46040f.getMeasuredHeight() + 100);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        if (this.f46035a) {
            return;
        }
        this.f46035a = true;
        this.f46037c = getMeasuredHeight();
        this.f46038d = getMeasuredWidth();
        this.f46039e = getChildAt(0);
        View childAt = getChildAt(1);
        this.f46040f = childAt;
        childAt.setOnTouchListener(this.f46051q);
        this.f46039e.setOnTouchListener(this.f46050p);
    }

    public ScrollViewContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46035a = false;
        this.f46043i = 2;
        this.f46044j = 0;
        this.f46049o = new a();
        this.f46050p = new b();
        this.f46051q = new c();
        m();
    }

    public ScrollViewContainer(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46035a = false;
        this.f46043i = 2;
        this.f46044j = 0;
        this.f46049o = new a();
        this.f46050p = new b();
        this.f46051q = new c();
        m();
    }
}
