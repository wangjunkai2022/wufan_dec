package com.join.mgps.customview;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.os.Message;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.facebook.common.statfs.StatFsHelper;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: RewardPopupWindow.java */
/* loaded from: classes3.dex */
public class i0 extends PopupWindow {

    /* renamed from: a  reason: collision with root package name */
    Context f46907a;

    /* renamed from: b  reason: collision with root package name */
    TextView f46908b;

    /* renamed from: c  reason: collision with root package name */
    LinearLayout f46909c;

    /* renamed from: d  reason: collision with root package name */
    ImageView f46910d;

    /* renamed from: e  reason: collision with root package name */
    private long f46911e;

    /* renamed from: f  reason: collision with root package name */
    Handler f46912f;

    /* compiled from: RewardPopupWindow.java */
    /* loaded from: classes3.dex */
    class a extends Handler {

        /* compiled from: RewardPopupWindow.java */
        /* renamed from: com.join.mgps.customview.i0$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class animation.Animation$AnimationListenerC0198a implements Animation.AnimationListener {
            animation.Animation$AnimationListenerC0198a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                i0.this.dismiss();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        /* compiled from: RewardPopupWindow.java */
        /* loaded from: classes3.dex */
        class b implements Animation.AnimationListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Animation f46915a;

            b(Animation animation) {
                this.f46915a = animation;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                i0.this.f46910d.startAnimation(this.f46915a);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        /* compiled from: RewardPopupWindow.java */
        /* loaded from: classes3.dex */
        class c implements Animation.AnimationListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Animation f46917a;

            c(Animation animation) {
                this.f46917a = animation;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                i0.this.f46910d.startAnimation(this.f46917a);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        /* compiled from: RewardPopupWindow.java */
        /* loaded from: classes3.dex */
        class d implements Animation.AnimationListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Animation f46919a;

            d(Animation animation) {
                this.f46919a = animation;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                i0.this.f46910d.startAnimation(this.f46919a);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        /* compiled from: RewardPopupWindow.java */
        /* loaded from: classes3.dex */
        class e implements Animation.AnimationListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Animation f46921a;

            e(Animation animation) {
                this.f46921a = animation;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (System.currentTimeMillis() - i0.this.f46911e > 300) {
                    i0.this.f46912f.sendEmptyMessageDelayed(0, 1000L);
                    i0.this.f46912f.sendEmptyMessageDelayed(1, 1500L);
                    return;
                }
                i0.this.f46910d.startAnimation(this.f46921a);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i2 = message.what;
            if (i2 == 0) {
                i0 i0Var = i0.this;
                i0Var.f46909c.startAnimation(AnimationUtils.loadAnimation(i0Var.f46907a, R.anim.slide_out));
            } else if (i2 == 1) {
                Animation loadAnimation = AnimationUtils.loadAnimation(i0.this.f46907a, R.anim.scale_out);
                i0.this.f46910d.startAnimation(loadAnimation);
                loadAnimation.setAnimationListener(new animation.Animation$AnimationListenerC0198a());
            } else if (i2 != 3) {
            } else {
                RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 40.0f, 1, 0.5f, 1, 0.5f);
                rotateAnimation.setInterpolator(new LinearInterpolator());
                rotateAnimation.setFillEnabled(true);
                rotateAnimation.setFillAfter(false);
                rotateAnimation.setDuration(10L);
                RotateAnimation rotateAnimation2 = new RotateAnimation(40.0f, 0.0f, 1, 0.5f, 1, 0.5f);
                rotateAnimation2.setFillEnabled(true);
                rotateAnimation2.setFillAfter(true);
                rotateAnimation2.setDuration(10L);
                RotateAnimation rotateAnimation3 = new RotateAnimation(0.0f, -40.0f, 1, 0.5f, 1, 0.5f);
                rotateAnimation3.setFillEnabled(true);
                rotateAnimation3.setFillAfter(true);
                rotateAnimation3.setDuration(10L);
                RotateAnimation rotateAnimation4 = new RotateAnimation(-40.0f, 0.0f, 1, 0.5f, 1, 0.5f);
                rotateAnimation4.setFillEnabled(true);
                rotateAnimation4.setFillAfter(true);
                rotateAnimation4.setDuration(10L);
                rotateAnimation.setAnimationListener(new b(rotateAnimation2));
                rotateAnimation2.setAnimationListener(new c(rotateAnimation3));
                rotateAnimation3.setAnimationListener(new d(rotateAnimation4));
                rotateAnimation4.setAnimationListener(new e(rotateAnimation));
                i0.this.f46911e = System.currentTimeMillis();
                i0.this.f46910d.startAnimation(rotateAnimation);
            }
        }
    }

    public i0(Context context) {
        super(context);
        this.f46912f = new a();
        this.f46907a = context;
        View inflate = LayoutInflater.from(context).inflate(R.layout.reward, (ViewGroup) null);
        this.f46908b = (TextView) inflate.findViewById(R.id.txt);
        this.f46909c = (LinearLayout) inflate.findViewById(R.id.rewardContainer);
        this.f46910d = (ImageView) inflate.findViewById(R.id.moneyPackage);
        setBackgroundDrawable(new ColorDrawable(0));
        setWidth(StatFsHelper.f11741h);
        setHeight(300);
        setContentView(inflate);
    }

    public void c(View view) {
        this.f46908b.setText(Html.fromHtml("注册成功  奖励: <font color='0xf47500' >+100铜板</font>&nbsp;&nbsp;<font color='0xf47500' >+100</font>经验"));
        setWidth(view.getWidth());
        showAtLocation(view, 81, 0, 0);
        this.f46912f.sendEmptyMessage(3);
    }

    @Override // android.widget.PopupWindow
    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        super.setOnDismissListener(onDismissListener);
    }
}
