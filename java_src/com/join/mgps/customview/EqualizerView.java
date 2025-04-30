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
public class EqualizerView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    View f45406a;

    /* renamed from: b  reason: collision with root package name */
    View f45407b;

    /* renamed from: c  reason: collision with root package name */
    View f45408c;

    /* renamed from: d  reason: collision with root package name */
    View f45409d;

    /* renamed from: e  reason: collision with root package name */
    AnimatorSet f45410e;

    /* renamed from: f  reason: collision with root package name */
    AnimatorSet f45411f;

    /* renamed from: g  reason: collision with root package name */
    Boolean f45412g;

    /* renamed from: h  reason: collision with root package name */
    int f45413h;

    /* renamed from: i  reason: collision with root package name */
    int f45414i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (EqualizerView.this.f45406a.getHeight() > 0) {
                View view = EqualizerView.this.f45406a;
                view.setPivotY(view.getHeight());
                if (Build.VERSION.SDK_INT >= 16) {
                    EqualizerView.this.f45406a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
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
            if (EqualizerView.this.f45407b.getHeight() > 0) {
                View view = EqualizerView.this.f45407b;
                view.setPivotY(view.getHeight());
                if (Build.VERSION.SDK_INT >= 16) {
                    EqualizerView.this.f45407b.getViewTreeObserver().removeOnGlobalLayoutListener(this);
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
            if (EqualizerView.this.f45408c.getHeight() > 0) {
                View view = EqualizerView.this.f45408c;
                view.setPivotY(view.getHeight());
                if (Build.VERSION.SDK_INT >= 16) {
                    EqualizerView.this.f45408c.getViewTreeObserver().removeOnGlobalLayoutListener(this);
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
            if (EqualizerView.this.f45409d.getHeight() > 0) {
                View view = EqualizerView.this.f45409d;
                view.setPivotY(view.getHeight());
                if (Build.VERSION.SDK_INT >= 16) {
                    EqualizerView.this.f45409d.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                }
            }
        }
    }

    public EqualizerView(Context context) {
        super(context);
        this.f45412g = Boolean.FALSE;
        b();
    }

    private void b() {
        LayoutInflater.from(getContext()).inflate(R.layout.view_equalizer, (ViewGroup) this, true);
        this.f45406a = findViewById(R.id.music_bar1);
        this.f45407b = findViewById(R.id.music_bar2);
        this.f45409d = findViewById(R.id.music_bar4);
        this.f45408c = findViewById(R.id.music_bar3);
        this.f45406a.setBackgroundColor(this.f45413h);
        this.f45407b.setBackgroundColor(this.f45413h);
        this.f45408c.setBackgroundColor(this.f45413h);
        this.f45409d.setBackgroundColor(this.f45413h);
        e();
    }

    private void d(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.EqualizerView, 0, 0);
        try {
            this.f45413h = obtainStyledAttributes.getInt(1, -16777216);
            this.f45414i = obtainStyledAttributes.getInt(0, 3000);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    private void e() {
        this.f45406a.getViewTreeObserver().addOnGlobalLayoutListener(new a());
        this.f45407b.getViewTreeObserver().addOnGlobalLayoutListener(new b());
        this.f45408c.getViewTreeObserver().addOnGlobalLayoutListener(new c());
        this.f45409d.getViewTreeObserver().addOnGlobalLayoutListener(new d());
    }

    public void a() {
        this.f45412g = Boolean.TRUE;
        AnimatorSet animatorSet = this.f45410e;
        if (animatorSet == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f45406a, "scaleY", 0.2f, 0.8f, 0.1f, 0.1f, 0.3f, 0.1f, 0.2f, 0.8f, 0.7f, 0.2f, 0.4f, 0.9f, 0.7f, 0.6f, 0.1f, 0.3f, 0.1f, 0.4f, 0.1f, 0.8f, 0.7f, 0.9f, 0.5f, 0.6f, 0.3f, 0.1f);
            ofFloat.setRepeatCount(-1);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f45407b, "scaleY", 0.2f, 0.5f, 1.0f, 0.5f, 0.3f, 0.1f, 0.2f, 0.3f, 0.5f, 0.1f, 0.6f, 0.5f, 0.3f, 0.7f, 0.8f, 0.9f, 0.3f, 0.1f, 0.5f, 0.3f, 0.6f, 1.0f, 0.6f, 0.7f, 0.4f, 0.1f);
            ofFloat2.setRepeatCount(-1);
            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.f45408c, "scaleY", 0.6f, 0.5f, 1.0f, 0.6f, 0.5f, 1.0f, 0.6f, 0.5f, 1.0f, 0.5f, 0.6f, 0.7f, 0.2f, 0.3f, 0.1f, 0.5f, 0.4f, 0.6f, 0.7f, 0.1f, 0.4f, 0.3f, 0.1f, 0.4f, 0.3f, 0.7f);
            ofFloat3.setRepeatCount(-1);
            ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.f45409d, "scaleY", 0.2f, 0.5f, 1.0f, 0.5f, 0.3f, 0.1f, 0.2f, 0.3f, 0.5f, 0.1f, 0.6f, 0.5f, 0.3f, 0.7f, 0.8f, 0.9f, 0.3f, 0.1f, 0.5f, 0.3f, 0.6f, 1.0f, 0.6f, 0.7f, 0.4f, 0.1f);
            ofFloat4.setRepeatCount(-1);
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.f45410e = animatorSet2;
            animatorSet2.playTogether(ofFloat2, ofFloat3, ofFloat, ofFloat4);
            this.f45410e.setDuration(this.f45414i);
            this.f45410e.setInterpolator(new LinearInterpolator());
            this.f45410e.start();
        } else if (Build.VERSION.SDK_INT < 19) {
            if (animatorSet.isStarted()) {
                return;
            }
            this.f45410e.start();
        } else if (animatorSet.isPaused()) {
            this.f45410e.resume();
        }
    }

    public Boolean c() {
        return this.f45412g;
    }

    public void f() {
        this.f45412g = Boolean.FALSE;
        AnimatorSet animatorSet = this.f45410e;
        if (animatorSet != null && animatorSet.isRunning() && this.f45410e.isStarted()) {
            if (Build.VERSION.SDK_INT < 19) {
                this.f45410e.end();
            } else {
                this.f45410e.pause();
            }
        }
        AnimatorSet animatorSet2 = this.f45411f;
        if (animatorSet2 == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f45406a, "scaleY", 0.1f);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f45407b, "scaleY", 0.1f);
            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.f45408c, "scaleY", 0.1f);
            AnimatorSet animatorSet3 = new AnimatorSet();
            this.f45411f = animatorSet3;
            animatorSet3.playTogether(ofFloat3, ofFloat2, ofFloat);
            this.f45411f.setDuration(200L);
            this.f45411f.start();
        } else if (animatorSet2.isStarted()) {
        } else {
            this.f45411f.start();
        }
    }

    public EqualizerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45412g = Boolean.FALSE;
        d(context, attributeSet);
        b();
    }

    public EqualizerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45412g = Boolean.FALSE;
        d(context, attributeSet);
        b();
    }
}
