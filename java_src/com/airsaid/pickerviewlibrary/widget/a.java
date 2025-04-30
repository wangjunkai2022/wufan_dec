package com.airsaid.pickerviewlibrary.widget;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import com.airsaid.pickerviewlibrary.R;
/* compiled from: BasePickerView.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private Context f9305b;

    /* renamed from: c  reason: collision with root package name */
    protected ViewGroup f9306c;

    /* renamed from: d  reason: collision with root package name */
    private ViewGroup f9307d;

    /* renamed from: e  reason: collision with root package name */
    private ViewGroup f9308e;

    /* renamed from: f  reason: collision with root package name */
    private f.b f9309f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f9310g;

    /* renamed from: h  reason: collision with root package name */
    private Animation f9311h;

    /* renamed from: i  reason: collision with root package name */
    private Animation f9312i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f9313j;

    /* renamed from: l  reason: collision with root package name */
    private View f9315l;

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout.LayoutParams f9304a = new FrameLayout.LayoutParams(-1, -2, 80);

    /* renamed from: k  reason: collision with root package name */
    private int f9314k = 80;

    /* renamed from: m  reason: collision with root package name */
    private final View.OnTouchListener f9316m = new b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BasePickerView.java */
    /* renamed from: com.airsaid.pickerviewlibrary.widget.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class animation.Animation$AnimationListenerC0020a implements Animation.AnimationListener {

        /* compiled from: BasePickerView.java */
        /* renamed from: com.airsaid.pickerviewlibrary.widget.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class RunnableC0021a implements Runnable {
            RunnableC0021a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.c();
            }
        }

        animation.Animation$AnimationListenerC0020a() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            a.this.f9307d.post(new RunnableC0021a());
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* compiled from: BasePickerView.java */
    /* loaded from: classes2.dex */
    class b implements View.OnTouchListener {
        b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                a.this.b();
                return false;
            }
            return false;
        }
    }

    public a(Context context) {
        this.f9305b = context;
        i();
        g();
        h();
    }

    private void k(View view) {
        this.f9307d.addView(view);
        this.f9306c.startAnimation(this.f9312i);
    }

    public void b() {
        if (this.f9310g) {
            return;
        }
        this.f9310g = true;
        this.f9311h.setAnimationListener(new animation.Animation$AnimationListenerC0020a());
        this.f9306c.startAnimation(this.f9311h);
    }

    public void c() {
        this.f9307d.removeView(this.f9308e);
        this.f9313j = false;
        this.f9310g = false;
        f.b bVar = this.f9309f;
        if (bVar != null) {
            bVar.a(this);
        }
    }

    public View d(int i2) {
        return this.f9306c.findViewById(i2);
    }

    public Animation e() {
        return AnimationUtils.loadAnimation(this.f9305b, h.a.a(this.f9314k, true));
    }

    public Animation f() {
        return AnimationUtils.loadAnimation(this.f9305b, h.a.a(this.f9314k, false));
    }

    protected void g() {
        this.f9312i = e();
        this.f9311h = f();
    }

    protected void h() {
    }

    protected void i() {
        LayoutInflater from = LayoutInflater.from(this.f9305b);
        ViewGroup viewGroup = (ViewGroup) ((Activity) this.f9305b).getWindow().getDecorView().findViewById(16908290);
        this.f9307d = viewGroup;
        ViewGroup viewGroup2 = (ViewGroup) from.inflate(R.layout.layout_basepickerview, viewGroup, false);
        this.f9308e = viewGroup2;
        viewGroup2.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        ViewGroup viewGroup3 = (ViewGroup) this.f9308e.findViewById(R.id.content_container);
        this.f9306c = viewGroup3;
        viewGroup3.setLayoutParams(this.f9304a);
        View findViewById = this.f9308e.findViewById(R.id.outmost_container);
        this.f9315l = findViewById;
        findViewById.setOnTouchListener(this.f9316m);
    }

    public boolean j() {
        return this.f9308e.getParent() != null || this.f9313j;
    }

    public a l(boolean z3) {
        this.f9315l.setOnTouchListener(z3 ? this.f9316m : null);
        return this;
    }

    public a m(f.b bVar) {
        this.f9309f = bVar;
        return this;
    }

    public void n() {
        if (j()) {
            return;
        }
        this.f9313j = true;
        k(this.f9308e);
    }
}
