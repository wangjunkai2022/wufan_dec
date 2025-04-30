package com.join.mgps.customview;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.LinearInterpolator;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class EqualizerViewLoding extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    View f45419a;

    /* renamed from: b  reason: collision with root package name */
    View f45420b;

    /* renamed from: c  reason: collision with root package name */
    View f45421c;

    /* renamed from: d  reason: collision with root package name */
    View f45422d;

    /* renamed from: e  reason: collision with root package name */
    AnimatorSet f45423e;

    /* renamed from: f  reason: collision with root package name */
    AnimatorSet f45424f;

    /* renamed from: g  reason: collision with root package name */
    Boolean f45425g;

    /* renamed from: h  reason: collision with root package name */
    int f45426h;

    /* renamed from: i  reason: collision with root package name */
    int f45427i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (EqualizerViewLoding.this.f45419a.getHeight() > 0) {
                View view = EqualizerViewLoding.this.f45419a;
                view.setPivotY(view.getHeight());
                if (Build.VERSION.SDK_INT >= 16) {
                    EqualizerViewLoding.this.f45419a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (EqualizerViewLoding.this.f45420b.getHeight() > 0) {
                View view = EqualizerViewLoding.this.f45420b;
                view.setPivotY(view.getHeight());
                if (Build.VERSION.SDK_INT >= 16) {
                    EqualizerViewLoding.this.f45420b.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements ViewTreeObserver.OnGlobalLayoutListener {
        c() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (EqualizerViewLoding.this.f45421c.getHeight() > 0) {
                View view = EqualizerViewLoding.this.f45421c;
                view.setPivotY(view.getHeight());
                if (Build.VERSION.SDK_INT >= 16) {
                    EqualizerViewLoding.this.f45421c.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements ViewTreeObserver.OnGlobalLayoutListener {
        d() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (EqualizerViewLoding.this.f45422d.getHeight() > 0) {
                View view = EqualizerViewLoding.this.f45422d;
                view.setPivotY(view.getHeight());
                if (Build.VERSION.SDK_INT >= 16) {
                    EqualizerViewLoding.this.f45422d.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                }
            }
        }
    }

    public EqualizerViewLoding(Context context) {
        super(context);
        this.f45425g = Boolean.FALSE;
        b();
    }

    private void b() {
        LayoutInflater.from(getContext()).inflate(R.layout.view_equalizer_loading, (ViewGroup) this, true);
        this.f45419a = findViewById(R.id.music_bar1);
        this.f45420b = findViewById(R.id.music_bar2);
        this.f45422d = findViewById(R.id.music_bar4);
        this.f45421c = findViewById(R.id.music_bar3);
        this.f45419a.setBackgroundColor(this.f45426h);
        this.f45420b.setBackgroundColor(this.f45426h);
        this.f45421c.setBackgroundColor(this.f45426h);
        this.f45422d.setBackgroundColor(this.f45426h);
        e();
    }

    private void d(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.EqualizerView, 0, 0);
        try {
            this.f45426h = obtainStyledAttributes.getInt(1, -16777216);
            this.f45427i = obtainStyledAttributes.getInt(0, 3000);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    private void e() {
        this.f45419a.getViewTreeObserver().addOnGlobalLayoutListener(new a());
        this.f45420b.getViewTreeObserver().addOnGlobalLayoutListener(new b());
        this.f45421c.getViewTreeObserver().addOnGlobalLayoutListener(new c());
        this.f45422d.getViewTreeObserver().addOnGlobalLayoutListener(new d());
    }

    public void a() {
        this.f45425g = Boolean.TRUE;
        AnimatorSet animatorSet = this.f45423e;
        if (animatorSet == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f45419a, "scaleY", 0.2f, 0.8f, 0.1f, 0.1f, 0.3f, 0.1f, 0.2f, 0.8f, 0.7f, 0.2f, 0.4f, 0.9f, 0.7f, 0.6f, 0.1f, 0.3f, 0.1f, 0.4f, 0.1f, 0.8f, 0.7f, 0.9f, 0.5f, 0.6f, 0.3f, 0.1f);
            ofFloat.setRepeatCount(-1);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f45420b, "scaleY", 0.2f, 0.5f, 1.0f, 0.5f, 0.3f, 0.1f, 0.2f, 0.3f, 0.5f, 0.1f, 0.6f, 0.5f, 0.3f, 0.7f, 0.8f, 0.9f, 0.3f, 0.1f, 0.5f, 0.3f, 0.6f, 1.0f, 0.6f, 0.7f, 0.4f, 0.1f);
            ofFloat2.setRepeatCount(-1);
            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.f45421c, "scaleY", 0.6f, 0.5f, 1.0f, 0.6f, 0.5f, 1.0f, 0.6f, 0.5f, 1.0f, 0.5f, 0.6f, 0.7f, 0.2f, 0.3f, 0.1f, 0.5f, 0.4f, 0.6f, 0.7f, 0.1f, 0.4f, 0.3f, 0.1f, 0.4f, 0.3f, 0.7f);
            ofFloat3.setRepeatCount(-1);
            ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.f45422d, "scaleY", 0.2f, 0.5f, 1.0f, 0.5f, 0.3f, 0.1f, 0.2f, 0.3f, 0.5f, 0.1f, 0.6f, 0.5f, 0.3f, 0.7f, 0.8f, 0.9f, 0.3f, 0.1f, 0.5f, 0.3f, 0.6f, 1.0f, 0.6f, 0.7f, 0.4f, 0.1f);
            ofFloat4.setRepeatCount(-1);
            ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(this.f45419a, "alpha", 0.2f, 0.8f, 0.1f, 0.1f, 0.3f, 0.1f, 0.2f, 0.8f, 0.7f, 0.2f, 0.4f, 0.9f, 0.7f, 0.6f, 0.1f, 0.3f, 0.1f, 0.4f, 0.1f, 0.8f, 0.7f, 0.9f, 0.5f, 0.6f, 0.3f, 0.1f);
            ofFloat5.setRepeatCount(-1);
            ObjectAnimator ofFloat6 = ObjectAnimator.ofFloat(this.f45419a, "alpha", 0.2f, 0.5f, 1.0f, 0.5f, 0.3f, 0.1f, 0.2f, 0.3f, 0.5f, 0.1f, 0.6f, 0.5f, 0.3f, 0.7f, 0.8f, 0.9f, 0.3f, 0.1f, 0.5f, 0.3f, 0.6f, 1.0f, 0.6f, 0.7f, 0.4f, 0.1f);
            ofFloat6.setRepeatCount(-1);
            ObjectAnimator ofFloat7 = ObjectAnimator.ofFloat(this.f45419a, "alpha", 0.2f, 0.5f, 1.0f, 0.5f, 0.3f, 0.1f, 0.2f, 0.3f, 0.5f, 0.1f, 0.6f, 0.5f, 0.3f, 0.7f, 0.8f, 0.9f, 0.3f, 0.1f, 0.5f, 0.3f, 0.6f, 1.0f, 0.6f, 0.7f, 0.4f, 0.1f);
            ofFloat7.setRepeatCount(-1);
            ObjectAnimator ofFloat8 = ObjectAnimator.ofFloat(this.f45419a, "alpha", 0.2f, 0.5f, 1.0f, 0.5f, 0.3f, 0.1f, 0.2f, 0.3f, 0.5f, 0.1f, 0.6f, 0.5f, 0.3f, 0.7f, 0.8f, 0.9f, 0.3f, 0.1f, 0.5f, 0.3f, 0.6f, 1.0f, 0.6f, 0.7f, 0.4f, 0.1f);
            ofFloat8.setRepeatCount(-1);
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.f45423e = animatorSet2;
            animatorSet2.playTogether(ofFloat2, ofFloat3, ofFloat, ofFloat4, ofFloat5, ofFloat6, ofFloat7, ofFloat8);
            this.f45423e.setDuration(this.f45427i);
            this.f45423e.setInterpolator(new LinearInterpolator());
            this.f45423e.start();
        } else if (Build.VERSION.SDK_INT < 19) {
            if (animatorSet.isStarted()) {
                return;
            }
            this.f45423e.start();
        } else if (animatorSet.isPaused()) {
            this.f45423e.resume();
        }
    }

    public Boolean c() {
        return this.f45425g;
    }

    public void f() {
        this.f45425g = Boolean.FALSE;
        AnimatorSet animatorSet = this.f45423e;
        if (animatorSet != null && animatorSet.isRunning() && this.f45423e.isStarted()) {
            if (Build.VERSION.SDK_INT < 19) {
                this.f45423e.end();
            } else {
                this.f45423e.pause();
            }
        }
        AnimatorSet animatorSet2 = this.f45424f;
        if (animatorSet2 == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f45419a, "scaleY", 0.1f);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f45420b, "scaleY", 0.1f);
            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.f45421c, "scaleY", 0.1f);
            AnimatorSet animatorSet3 = new AnimatorSet();
            this.f45424f = animatorSet3;
            animatorSet3.playTogether(ofFloat3, ofFloat2, ofFloat);
            this.f45424f.setDuration(200L);
            this.f45424f.start();
        } else if (animatorSet2.isStarted()) {
        } else {
            this.f45424f.start();
        }
    }

    public EqualizerViewLoding(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45425g = Boolean.FALSE;
        d(context, attributeSet);
        b();
    }

    public EqualizerViewLoding(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45425g = Boolean.FALSE;
        d(context, attributeSet);
        b();
    }
}
