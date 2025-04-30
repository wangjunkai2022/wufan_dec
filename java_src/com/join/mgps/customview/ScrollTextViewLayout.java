package com.join.mgps.customview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class ScrollTextViewLayout extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private String[] f46016a;

    /* renamed from: b  reason: collision with root package name */
    private int f46017b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f46018c;

    /* renamed from: d  reason: collision with root package name */
    private int f46019d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f46020e;

    /* renamed from: f  reason: collision with root package name */
    private int f46021f;

    /* renamed from: g  reason: collision with root package name */
    private Drawable f46022g;

    /* renamed from: h  reason: collision with root package name */
    private Handler f46023h;

    /* renamed from: i  reason: collision with root package name */
    Runnable f46024i;

    /* renamed from: j  reason: collision with root package name */
    Runnable f46025j;

    /* loaded from: classes3.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.arg1;
            if (i2 == 1) {
                ScrollTextViewLayout.this.l();
            } else if (i2 != 2) {
            } else {
                ScrollTextViewLayout.this.k();
            }
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {

        /* loaded from: classes3.dex */
        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                ScrollTextViewLayout.this.f46023h.postDelayed(ScrollTextViewLayout.this.f46025j, 0L);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                if (ScrollTextViewLayout.this.f46021f == ScrollTextViewLayout.this.f46016a.length) {
                    ScrollTextViewLayout.this.f46020e = true;
                }
                ScrollTextViewLayout.this.f46021f %= ScrollTextViewLayout.this.f46016a.length;
                if (ScrollTextViewLayout.this.f46016a[ScrollTextViewLayout.this.f46021f].length() == 0) {
                    if (ScrollTextViewLayout.this.f46022g == null) {
                        return;
                    }
                    ScrollTextViewLayout.this.f46022g.setBounds(0, 0, ScrollTextViewLayout.this.f46022g.getMinimumWidth(), ScrollTextViewLayout.this.f46022g.getMinimumHeight());
                    ScrollTextViewLayout.this.f46018c.setCompoundDrawables(null, null, null, ScrollTextViewLayout.this.f46022g);
                    ScrollTextViewLayout.this.f46018c.setText("");
                } else {
                    ScrollTextViewLayout.this.f46018c.setCompoundDrawables(null, null, null, null);
                    int O = g1.f.G().O();
                    if (O == 0) {
                        ScrollTextViewLayout.this.p();
                        O = 1;
                    }
                    ScrollTextViewLayout.this.f46018c.setText(O + "");
                }
                ScrollTextViewLayout.this.f46018c.setVisibility(0);
                ScrollTextViewLayout.i(ScrollTextViewLayout.this, 1);
            }
        }

        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ScrollTextViewLayout.this.f46020e) {
                if (ScrollTextViewLayout.this.f46022g != null) {
                    ScrollTextViewLayout.this.f46022g.setBounds(0, 0, ScrollTextViewLayout.this.f46022g.getMinimumWidth(), ScrollTextViewLayout.this.f46022g.getMinimumHeight());
                }
                ScrollTextViewLayout.this.f46018c.setCompoundDrawables(null, null, null, ScrollTextViewLayout.this.f46022g);
                ScrollTextViewLayout.this.f46018c.setText("");
                return;
            }
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, 0, ScrollTextViewLayout.this.f46019d);
            translateAnimation.setDuration(1000L);
            translateAnimation.setAnimationListener(new a());
            ScrollTextViewLayout.this.startAnimation(translateAnimation);
        }
    }

    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* loaded from: classes3.dex */
        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                ScrollTextViewLayout.this.f46023h.postDelayed(ScrollTextViewLayout.this.f46024i, 0L);
                ScrollTextViewLayout.this.f46018c.setVisibility(4);
            }
        }

        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ScrollTextViewLayout.this.f46020e) {
                if (ScrollTextViewLayout.this.f46022g != null) {
                    ScrollTextViewLayout.this.f46022g.setBounds(0, 0, ScrollTextViewLayout.this.f46022g.getMinimumWidth(), ScrollTextViewLayout.this.f46022g.getMinimumHeight());
                }
                ScrollTextViewLayout.this.f46018c.setCompoundDrawables(null, null, null, ScrollTextViewLayout.this.f46022g);
                ScrollTextViewLayout.this.f46018c.setText("");
                return;
            }
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, ScrollTextViewLayout.this.f46019d * (-1), ScrollTextViewLayout.this.f46019d);
            translateAnimation.setDuration(1000L);
            translateAnimation.setAnimationListener(new a());
            ScrollTextViewLayout.this.startAnimation(translateAnimation);
        }
    }

    public ScrollTextViewLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46017b = 500;
        this.f46020e = true;
        this.f46021f = 0;
        this.f46023h = new a();
        this.f46024i = new b();
        this.f46025j = new c();
        this.f46017b = context.obtainStyledAttributes(attributeSet, R.styleable.scrollText).getInteger(0, 500);
    }

    static /* synthetic */ int i(ScrollTextViewLayout scrollTextViewLayout, int i2) {
        int i4 = scrollTextViewLayout.f46021f + i2;
        scrollTextViewLayout.f46021f = i4;
        return i4;
    }

    public Drawable getDrawable() {
        return this.f46022g;
    }

    public int getDuration() {
        return this.f46017b;
    }

    public String[] getTextArray() {
        return this.f46016a;
    }

    protected void k() {
        post(this.f46025j);
    }

    protected void l() {
        post(this.f46024i);
    }

    public boolean m() {
        return this.f46020e;
    }

    public void n() {
        this.f46020e = false;
        this.f46021f = 0;
        this.f46023h.postDelayed(this.f46024i, this.f46017b);
    }

    public void o() {
        this.f46020e = false;
        this.f46023h.postDelayed(this.f46024i, this.f46017b);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f46018c = (TextView) getChildAt(0);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
        this.f46019d = getHeight();
    }

    public void p() {
        this.f46020e = true;
    }

    public void setDrawable(Drawable drawable) {
        this.f46022g = drawable;
        if (drawable != null) {
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        }
        this.f46018c.setCompoundDrawables(null, null, null, drawable);
    }

    public void setDuration(int i2) {
        this.f46017b = i2;
    }

    public void setIsStop(boolean z3) {
        this.f46020e = z3;
    }

    public void setTextArray(String[] strArr) {
        this.f46016a = strArr;
    }

    public void setDrawable(Drawable drawable, int i2) {
        this.f46022g = drawable;
        if (drawable != null) {
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        }
        this.f46018c.setCompoundDrawables(null, null, null, drawable);
        this.f46018c.setTextColor(i2);
        this.f46018c.setText("");
    }
}
