package com.join.mgps.customview;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class CustomerDownloadView extends RelativeLayout {

    /* renamed from: p  reason: collision with root package name */
    public static final String f45301p = CustomerDownloadView.class.getSimpleName();

    /* renamed from: q  reason: collision with root package name */
    private static final int f45302q = 18;

    /* renamed from: r  reason: collision with root package name */
    private static final int f45303r = 18;

    /* renamed from: s  reason: collision with root package name */
    private static final int f45304s = 5;

    /* renamed from: t  reason: collision with root package name */
    private static final int f45305t = 5;

    /* renamed from: u  reason: collision with root package name */
    private static final int f45306u = 28;

    /* renamed from: v  reason: collision with root package name */
    private static final int f45307v = 5;

    /* renamed from: a  reason: collision with root package name */
    TextView f45308a;

    /* renamed from: b  reason: collision with root package name */
    TextView f45309b;

    /* renamed from: c  reason: collision with root package name */
    ImageView f45310c;

    /* renamed from: d  reason: collision with root package name */
    ImageView f45311d;

    /* renamed from: e  reason: collision with root package name */
    ImageView f45312e;

    /* renamed from: f  reason: collision with root package name */
    ImageView f45313f;

    /* renamed from: g  reason: collision with root package name */
    private float f45314g;

    /* renamed from: h  reason: collision with root package name */
    View f45315h;

    /* renamed from: i  reason: collision with root package name */
    Context f45316i;

    /* renamed from: j  reason: collision with root package name */
    int f45317j;

    /* renamed from: k  reason: collision with root package name */
    int f45318k;

    /* renamed from: l  reason: collision with root package name */
    int f45319l;

    /* renamed from: m  reason: collision with root package name */
    int f45320m;

    /* renamed from: n  reason: collision with root package name */
    int f45321n;

    /* renamed from: o  reason: collision with root package name */
    AnimatorSet f45322o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements Animator.AnimatorListener {
        a() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            CustomerDownloadView.this.f45309b.setVisibility(0);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements Animator.AnimatorListener {
        b() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            CustomerDownloadView customerDownloadView = CustomerDownloadView.this;
            int i2 = customerDownloadView.f45318k + 1;
            customerDownloadView.f45318k = i2;
            if (i2 < customerDownloadView.f45317j) {
                customerDownloadView.e();
            } else {
                customerDownloadView.a();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public CustomerDownloadView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45314g = 0.0f;
        this.f45317j = 2;
        this.f45318k = 0;
        this.f45321n = -1;
        b(context);
        this.f45316i = context;
        View inflate = LayoutInflater.from(context).inflate(R.layout.view_customer_download, this);
        this.f45315h = inflate;
        this.f45310c = (ImageView) inflate.findViewById(R.id.download_icon_img);
        this.f45312e = (ImageView) this.f45315h.findViewById(R.id.download_line_point_view);
        this.f45308a = (TextView) this.f45315h.findViewById(R.id.download_num_hint_txt);
        this.f45309b = (TextView) this.f45315h.findViewById(R.id.download_num_anim_txt);
        this.f45311d = (ImageView) this.f45315h.findViewById(R.id.download_line_view);
        this.f45313f = (ImageView) this.f45315h.findViewById(R.id.download_red_point);
    }

    private void b(Context context) {
        this.f45314g = com.join.android.app.common.utils.j.n(context).g();
    }

    void a() {
        int i2;
        ((ViewGroup) this.f45310c.getParent()).removeView(this.f45310c);
        this.f45310c = null;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        int i4 = this.f45320m;
        if (i4 != 0 && (i2 = this.f45319l) != 0) {
            layoutParams.width = i2;
            layoutParams.height = i4;
        } else {
            float f4 = this.f45314g;
            layoutParams.width = (int) (f4 * 18.0f);
            layoutParams.height = (int) (f4 * 18.0f);
        }
        layoutParams.topMargin = (int) (this.f45314g * 5.0f);
        ImageView imageView = new ImageView(this.f45316i);
        this.f45310c = imageView;
        imageView.setImageResource(R.drawable.download_normal);
        this.f45310c.setScaleType(ImageView.ScaleType.CENTER_CROP);
        ((ViewGroup) this.f45309b.getParent()).addView(this.f45310c, layoutParams);
    }

    public void c(boolean z3) {
        if (z3) {
            this.f45313f.setVisibility(0);
        } else {
            this.f45313f.setVisibility(8);
        }
    }

    public void d() {
        AnimatorSet animatorSet = this.f45322o;
        if (animatorSet == null || !animatorSet.isRunning()) {
            this.f45318k = 0;
            e();
            f();
        }
    }

    public void e() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f45310c, "translationY", 0.0f, this.f45314g * 28.0f);
        ofFloat.setRepeatMode(1);
        ofFloat.addListener(new a());
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f45309b, "translationY", 0.0f, this.f45314g * 28.0f);
        ofFloat2.setRepeatMode(1);
        ofFloat2.addListener(new b());
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ofFloat).before(ofFloat2);
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.setDuration(1000L);
        animatorSet.start();
    }

    public void f() {
        float f4;
        this.f45312e.setVisibility(0);
        this.f45311d.setImageResource(R.drawable.line_blue_bg);
        StringBuilder sb = new StringBuilder();
        sb.append("startLinePointAnimator: 移动距离：：：");
        sb.append(this.f45311d.getWidth() - (this.f45314g * 5.0f));
        sb.append("::::线长度::::");
        sb.append(this.f45311d.getWidth());
        sb.append(":::移动距离::");
        sb.append(getLayoutParams().height);
        int i2 = this.f45319l;
        if (i2 != 0) {
            f4 = i2 - (this.f45314g * 5.0f);
        } else {
            f4 = 13.0f * this.f45314g;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f45312e, "translationX", 0.0f, f4);
        ofFloat.setRepeatMode(1);
        ofFloat.setRepeatCount(-1);
        AnimatorSet animatorSet = new AnimatorSet();
        this.f45322o = animatorSet;
        animatorSet.play(ofFloat);
        this.f45322o.setInterpolator(new AccelerateDecelerateInterpolator());
        this.f45322o.setDuration(1000L);
        this.f45322o.start();
    }

    public void g() {
        AnimatorSet animatorSet = this.f45322o;
        if (animatorSet == null || this.f45312e == null) {
            return;
        }
        if (animatorSet.isStarted()) {
            this.f45322o.cancel();
        }
        this.f45311d.setImageResource(R.drawable.line_grey_bg);
        this.f45312e.setVisibility(8);
    }

    public void setDownloadGameNum(int i2) {
        TextView textView = this.f45308a;
        textView.setText(i2 + "");
        if (i2 < 1) {
            this.f45308a.setVisibility(4);
        } else {
            this.f45308a.setVisibility(0);
        }
        TextView textView2 = this.f45309b;
        textView2.setText(i2 + "");
        if (i2 < 10) {
            setDownloadNumAnimMarginLeft();
        }
    }

    public void setDownloadIconRepeatCount(int i2) {
        this.f45317j = i2;
    }

    public void setDownloadIconRes(int i2) {
        this.f45321n = i2;
        this.f45310c.setImageResource(i2);
    }

    public void setDownloadIconSize(int i2, int i4) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f45310c.getLayoutParams();
        float f4 = this.f45314g;
        int i5 = (int) (i2 * f4);
        this.f45319l = i5;
        int i6 = (int) (i4 * f4);
        this.f45320m = i6;
        layoutParams.width = i5;
        layoutParams.height = i6;
        this.f45310c.setLayoutParams(layoutParams);
    }

    public void setDownloadLineRes(int i2) {
        this.f45311d.setImageResource(i2);
    }

    public void setDownloadLineSize(int i2) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f45311d.getLayoutParams();
        layoutParams.width = ((RelativeLayout.LayoutParams) this.f45310c.getLayoutParams()).width;
        layoutParams.height = (int) (i2 * this.f45314g);
        this.f45311d.setLayoutParams(layoutParams);
    }

    public void setDownloadNumAnimMarginLeft() {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f45309b.getLayoutParams();
        StringBuilder sb = new StringBuilder();
        sb.append("setDownloadNumAnimMarginLeft: ");
        sb.append(layoutParams.leftMargin);
        if (layoutParams.leftMargin == 0) {
            layoutParams.leftMargin = (int) (this.f45314g * 5.0f);
            this.f45309b.setLayoutParams(layoutParams);
        }
    }

    public void setDownloadNumFontColor(int i2) {
        this.f45308a.setTextColor(i2);
    }

    public void setDownloadNumFontSize(float f4) {
        this.f45308a.setTextSize(f4);
    }

    public void setDownloadNumTextViewSize(int i2, int i4) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f45308a.getLayoutParams();
        float f4 = this.f45314g;
        layoutParams.width = (int) (i2 * f4);
        layoutParams.height = (int) (i4 * f4);
        this.f45308a.setLayoutParams(layoutParams);
    }
}
