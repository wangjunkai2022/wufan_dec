package com.join.mgps.customview;

import android.content.Context;
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
import android.widget.TextView;
import android.widget.Toast;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.AccountBean;
import io.netty.handler.traffic.AbstractTrafficShapingHandler;
import java.util.Timer;
import java.util.TimerTask;
/* compiled from: RewardToast.java */
/* loaded from: classes3.dex */
public class j0 {

    /* renamed from: c  reason: collision with root package name */
    private static j0 f46947c;

    /* renamed from: d  reason: collision with root package name */
    private static Toast f46948d;

    /* renamed from: e  reason: collision with root package name */
    private static TextView f46949e;

    /* renamed from: f  reason: collision with root package name */
    private static LinearLayout f46950f;

    /* renamed from: g  reason: collision with root package name */
    private static ImageView f46951g;

    /* renamed from: h  reason: collision with root package name */
    private static Context f46952h;

    /* renamed from: i  reason: collision with root package name */
    private static long f46953i;

    /* renamed from: a  reason: collision with root package name */
    private long f46954a;

    /* renamed from: b  reason: collision with root package name */
    Handler f46955b = new a();

    /* compiled from: RewardToast.java */
    /* loaded from: classes3.dex */
    class a extends Handler {

        /* compiled from: RewardToast.java */
        /* renamed from: com.join.mgps.customview.j0$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class animation.Animation$AnimationListenerC0200a implements Animation.AnimationListener {
            animation.Animation$AnimationListenerC0200a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        /* compiled from: RewardToast.java */
        /* loaded from: classes3.dex */
        class b implements Animation.AnimationListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Animation f46958a;

            b(Animation animation) {
                this.f46958a = animation;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                j0.f46951g.startAnimation(this.f46958a);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        /* compiled from: RewardToast.java */
        /* loaded from: classes3.dex */
        class c implements Animation.AnimationListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Animation f46960a;

            c(Animation animation) {
                this.f46960a = animation;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                j0.f46951g.startAnimation(this.f46960a);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        /* compiled from: RewardToast.java */
        /* loaded from: classes3.dex */
        class d implements Animation.AnimationListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Animation f46962a;

            d(Animation animation) {
                this.f46962a = animation;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                j0.f46951g.startAnimation(this.f46962a);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        /* compiled from: RewardToast.java */
        /* loaded from: classes3.dex */
        class e implements Animation.AnimationListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Animation f46964a;

            e(Animation animation) {
                this.f46964a = animation;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (System.currentTimeMillis() - j0.this.f46954a > 300) {
                    j0.f46948d.show();
                    j0.this.f46955b.sendEmptyMessageDelayed(0, 2000L);
                    j0.this.f46955b.sendEmptyMessageDelayed(1, 2500L);
                    return;
                }
                j0.f46951g.startAnimation(this.f46964a);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        /* compiled from: RewardToast.java */
        /* loaded from: classes3.dex */
        class f extends TimerTask {
            f() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                j0.this.f46955b.sendEmptyMessage(4);
            }
        }

        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i2 = message.what;
            if (i2 == 0) {
                j0.f46950f.startAnimation(AnimationUtils.loadAnimation(j0.f46952h, R.anim.reward_slide_out));
            } else if (i2 == 1) {
                Animation loadAnimation = AnimationUtils.loadAnimation(j0.f46952h, R.anim.reward_scale_out);
                j0.f46951g.startAnimation(loadAnimation);
                loadAnimation.setAnimationListener(new animation.Animation$AnimationListenerC0200a());
            } else if (i2 != 3) {
                if (i2 == 4) {
                    j0.f46948d.show();
                } else if (i2 != 5) {
                } else {
                    long unused = j0.f46953i = System.currentTimeMillis();
                    j0.f46948d.show();
                    new Timer().schedule(new f(), 3500L);
                    j0.this.f46955b.sendEmptyMessage(3);
                }
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
                j0.this.f46954a = System.currentTimeMillis();
                j0.f46951g.startAnimation(rotateAnimation);
            }
        }
    }

    private AccountBean h(Context context) {
        return AccountUtil_.getInstance_(context).getAccountData();
    }

    public static j0 i(Context context) {
        f46952h = context;
        f46952h = context.getApplicationContext();
        if (f46947c == null) {
            f46947c = new j0();
            View inflate = LayoutInflater.from(context).inflate(R.layout.reward, (ViewGroup) null);
            f46949e = (TextView) inflate.findViewById(R.id.txt);
            f46950f = (LinearLayout) inflate.findViewById(R.id.rewardContainer);
            f46951g = (ImageView) inflate.findViewById(R.id.moneyPackage);
            Toast toast = new Toast(context);
            f46948d = toast;
            toast.setGravity(81, 0, 200);
            f46948d.setDuration(1);
            f46948d.setView(inflate);
        }
        return f46947c;
    }

    public void j(RewardType rewardType, int i2, int i4) {
        StringBuilder sb = new StringBuilder();
        sb.append("method show() called.type");
        sb.append(rewardType.getVal());
        Context context = f46952h;
        if (context == null || k(context)) {
            f46948d.cancel();
            if (i2 == 0 && i4 == 0) {
                return;
            }
            StringBuilder sb2 = new StringBuilder(rewardType.getVal() + "  奖励: ");
            if (i2 > 0) {
                sb2.append("<font color='0xf47500' >+" + i2 + "</font>铜板");
                if (i4 > 0) {
                    sb2.append("&nbsp;&nbsp;");
                }
            }
            if (i4 > 0) {
                sb2.append("<font color='0xf47500' >+" + i4 + "</font>经验");
            }
            f46949e.setText(Html.fromHtml(sb2.toString()));
            StringBuilder sb3 = new StringBuilder();
            sb3.append("gap=");
            sb3.append(System.currentTimeMillis() - f46953i);
            if (System.currentTimeMillis() - f46953i < AbstractTrafficShapingHandler.DEFAULT_MAX_TIME) {
                if (com.join.android.app.common.utils.j.F(f46952h)) {
                    this.f46955b.sendEmptyMessageDelayed(5, AbstractTrafficShapingHandler.DEFAULT_MAX_TIME);
                } else {
                    this.f46955b.sendEmptyMessageDelayed(5, AbstractTrafficShapingHandler.DEFAULT_MAX_TIME);
                }
            } else if (com.join.android.app.common.utils.j.F(f46952h)) {
                this.f46955b.sendEmptyMessageDelayed(5, com.join.mgps.data.c.f47286a);
            } else {
                this.f46955b.sendEmptyMessage(5);
            }
        }
    }

    boolean k(Context context) {
        if (h(context) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(context).isTourist();
    }
}
