package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import java.util.HashMap;
import java.util.Map;
/* compiled from: SpecialFilterPopupWindow.java */
/* loaded from: classes3.dex */
public class p0 extends PopupWindow implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private Context f47059a;

    /* renamed from: b  reason: collision with root package name */
    private View f47060b;

    /* renamed from: c  reason: collision with root package name */
    public View f47061c;

    /* renamed from: d  reason: collision with root package name */
    View f47062d;

    /* renamed from: e  reason: collision with root package name */
    Map<Integer, String> f47063e;

    /* renamed from: f  reason: collision with root package name */
    int f47064f;

    /* renamed from: g  reason: collision with root package name */
    c f47065g;

    /* renamed from: h  reason: collision with root package name */
    View f47066h;

    /* renamed from: i  reason: collision with root package name */
    TextView f47067i;

    /* renamed from: j  reason: collision with root package name */
    TextView f47068j;

    /* renamed from: k  reason: collision with root package name */
    TextView f47069k;

    /* renamed from: l  reason: collision with root package name */
    TextView f47070l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SpecialFilterPopupWindow.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 4) {
                p0.this.dismiss();
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SpecialFilterPopupWindow.java */
    /* loaded from: classes3.dex */
    public class b implements Animation.AnimationListener {
        b() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            p0.super.dismiss();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* compiled from: SpecialFilterPopupWindow.java */
    /* loaded from: classes3.dex */
    public interface c {
        void a(int i2, String str);
    }

    /* compiled from: SpecialFilterPopupWindow.java */
    /* loaded from: classes3.dex */
    class d {

        /* renamed from: a  reason: collision with root package name */
        public TextView f47073a;

        /* renamed from: b  reason: collision with root package name */
        public View f47074b;

        /* renamed from: c  reason: collision with root package name */
        public View f47075c;

        /* renamed from: d  reason: collision with root package name */
        public View f47076d;

        d() {
        }
    }

    public p0(Context context) {
        super(context);
        this.f47063e = new HashMap();
        this.f47059a = context;
        i();
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(View view) {
        dismiss();
    }

    private void i() {
        setAnimationStyle(R.style.animationNone);
        setBackgroundDrawable(new BitmapDrawable());
        setFocusable(true);
        setTouchable(true);
        setOutsideTouchable(true);
        setTouchInterceptor(new a());
    }

    private void k(int i2) {
        this.f47069k.setSelected(false);
        this.f47068j.setSelected(false);
        this.f47067i.setSelected(false);
        this.f47070l.setSelected(false);
        switch (i2) {
            case 52:
                this.f47068j.setSelected(true);
                this.f47064f = 52;
                return;
            case 53:
                this.f47067i.setSelected(true);
                this.f47064f = 53;
                return;
            case 54:
                this.f47069k.setSelected(true);
                this.f47064f = 54;
                return;
            case 55:
                this.f47070l.setSelected(true);
                this.f47064f = 55;
                return;
            default:
                return;
        }
    }

    void c() {
        Animation loadAnimation = AnimationUtils.loadAnimation(this.f47059a, R.anim.scale_in);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.1f, 1.0f);
        loadAnimation.setDuration(150L);
        alphaAnimation.setDuration(150L);
        this.f47066h.startAnimation(loadAnimation);
        this.f47062d.startAnimation(alphaAnimation);
    }

    void d() {
        Animation loadAnimation = AnimationUtils.loadAnimation(this.f47059a, R.anim.scale_out);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.1f);
        loadAnimation.setDuration(150L);
        alphaAnimation.setDuration(150L);
        this.f47066h.startAnimation(loadAnimation);
        this.f47062d.startAnimation(alphaAnimation);
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        Animation loadAnimation = AnimationUtils.loadAnimation(this.f47059a, R.anim.scale_out);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.1f);
        loadAnimation.setDuration(100L);
        alphaAnimation.setDuration(100L);
        this.f47066h.startAnimation(loadAnimation);
        this.f47062d.startAnimation(alphaAnimation);
        alphaAnimation.setAnimationListener(new b());
    }

    public c e() {
        return this.f47065g;
    }

    void f() {
        View inflate = LayoutInflater.from(this.f47059a).inflate(R.layout.pop_special_game_filter, (ViewGroup) null);
        this.f47060b = inflate;
        setContentView(inflate);
        setWidth(-1);
        setHeight(-2);
        update();
        this.f47063e.put(53, "金手指");
        this.f47063e.put(52, "MOD");
        this.f47063e.put(54, "一键技能");
        this.f47063e.put(55, "快速通关");
        View findViewById = this.f47060b.findViewById(R.id.bg);
        this.f47062d = findViewById;
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.customview.o0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                p0.this.g(view);
            }
        });
        this.f47067i = (TextView) this.f47060b.findViewById(R.id.fingerLayout);
        this.f47068j = (TextView) this.f47060b.findViewById(R.id.modLayout);
        this.f47069k = (TextView) this.f47060b.findViewById(R.id.onekeyLayout);
        this.f47070l = (TextView) this.f47060b.findViewById(R.id.fastLayout);
        this.f47066h = this.f47060b.findViewById(R.id.layoutMain);
        this.f47067i.setOnClickListener(this);
        this.f47068j.setOnClickListener(this);
        this.f47069k.setOnClickListener(this);
        this.f47070l.setOnClickListener(this);
    }

    public void h(c cVar) {
        this.f47065g = cVar;
    }

    public void j(View view, int i2) {
        showAsDropDown(view);
        this.f47064f = i2;
        k(i2);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.fastLayout /* 2131297412 */:
                this.f47064f = 55;
                break;
            case R.id.fingerLayout /* 2131297466 */:
                this.f47064f = 53;
                break;
            case R.id.modLayout /* 2131298913 */:
                this.f47064f = 52;
                break;
            case R.id.onekeyLayout /* 2131299179 */:
                this.f47064f = 54;
                break;
        }
        k(this.f47064f);
        c cVar = this.f47065g;
        int i2 = this.f47064f;
        cVar.a(i2, this.f47063e.get(Integer.valueOf(i2)));
        dismiss();
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view) {
        this.f47061c = view;
        if (Build.VERSION.SDK_INT == 24) {
            try {
                Rect rect = new Rect();
                this.f47061c.getGlobalVisibleRect(rect);
                setHeight(this.f47061c.getResources().getDisplayMetrics().heightPixels - rect.bottom);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        super.showAsDropDown(view);
        c();
    }

    @Override // android.widget.PopupWindow
    public void showAtLocation(View view, int i2, int i4, int i5) {
        this.f47061c = view;
        super.showAtLocation(view, i2, i4, i5);
    }

    public p0(Context context, View view, int i2, int i4) {
        super(view, i2, i4, true);
        this.f47063e = new HashMap();
        this.f47059a = context;
        this.f47060b = view;
        i();
    }
}
