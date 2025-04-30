package com.papa.gsyvideoplayer.utils;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.transition.TransitionManager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;
import com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer;
import com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
import com.papa.gsyvideoplayer.video.base.GSYVideoPlayer;
import java.io.File;
import java.util.Map;
import java.util.Objects;
/* compiled from: GSYVideoHelper.java */
/* loaded from: classes4.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private String f55119a;

    /* renamed from: b  reason: collision with root package name */
    private StandardGSYVideoPlayer f55120b;

    /* renamed from: c  reason: collision with root package name */
    private ViewGroup f55121c;

    /* renamed from: d  reason: collision with root package name */
    private ViewGroup f55122d;

    /* renamed from: e  reason: collision with root package name */
    private ViewGroup f55123e;

    /* renamed from: f  reason: collision with root package name */
    private ViewGroup.LayoutParams f55124f;

    /* renamed from: g  reason: collision with root package name */
    private o f55125g;

    /* renamed from: h  reason: collision with root package name */
    private n f55126h;

    /* renamed from: i  reason: collision with root package name */
    private g f55127i;

    /* renamed from: j  reason: collision with root package name */
    private Context f55128j;

    /* renamed from: k  reason: collision with root package name */
    private int f55129k;

    /* renamed from: l  reason: collision with root package name */
    private int f55130l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f55131m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f55132n;

    /* renamed from: o  reason: collision with root package name */
    private int[] f55133o;

    /* renamed from: p  reason: collision with root package name */
    private int[] f55134p;

    /* renamed from: q  reason: collision with root package name */
    private Handler f55135q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GSYVideoHelper.java */
    /* loaded from: classes4.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e eVar = e.this;
            eVar.J(eVar.f55120b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GSYVideoHelper.java */
    /* loaded from: classes4.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.f55121c != null) {
                TransitionManager.beginDelayedTransition(e.this.f55121c);
            } else {
                TransitionManager.beginDelayedTransition(e.this.f55122d);
            }
            e eVar = e.this;
            eVar.I(eVar.f55120b);
            e.this.F(600);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GSYVideoHelper.java */
    /* loaded from: classes4.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.f55131m = false;
            e.this.E();
            if (e.this.f55121c != null) {
                e.this.f55121c.removeAllViews();
            }
            if (e.this.f55120b.getParent() != null) {
                ((ViewGroup) e.this.f55120b.getParent()).removeView(e.this.f55120b);
            }
            e.this.f55125g.I(false);
            e.this.f55120b.setIfCurrentIsFullscreen(false);
            if (e.this.f55121c != null) {
                e.this.f55121c.setBackgroundColor(0);
            }
            e.this.f55123e.addView(e.this.f55120b, e.this.f55124f);
            e.this.f55120b.getFullscreenButton().setImageResource(e.this.f55120b.getEnlargeImageRes());
            e.this.f55120b.getBackButton().setVisibility(8);
            e.this.f55120b.setIfCurrentIsFullscreen(false);
            e.this.f55120b.restartTimerTask();
            if (e.this.f55127i.q0() != null) {
                com.papa.gsyvideoplayer.utils.c.h("onQuitFullscreen");
                e.this.f55127i.q0().y(e.this.f55127i.p0(), e.this.f55127i.r0(), e.this.f55120b);
            }
            if (e.this.f55127i.v0()) {
                com.papa.gsyvideoplayer.utils.b.p(e.this.f55128j, e.this.f55130l);
            }
            com.papa.gsyvideoplayer.utils.b.q(e.this.f55128j, e.this.f55127i.u0(), e.this.f55127i.w0());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GSYVideoHelper.java */
    /* loaded from: classes4.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GSYVideoPlayer f55139a;

        /* compiled from: GSYVideoHelper.java */
        /* loaded from: classes4.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                e.this.L();
            }
        }

        d(GSYVideoPlayer gSYVideoPlayer) {
            this.f55139a = gSYVideoPlayer;
        }

        @Override // java.lang.Runnable
        public void run() {
            TransitionManager.beginDelayedTransition(e.this.f55121c);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f55139a.getLayoutParams();
            layoutParams.setMargins(e.this.f55133o[0], e.this.f55133o[1], 0, 0);
            layoutParams.width = e.this.f55134p[0];
            layoutParams.height = e.this.f55134p[1];
            layoutParams.gravity = 0;
            this.f55139a.setLayoutParams(layoutParams);
            e.this.f55135q.postDelayed(new a(), 400L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GSYVideoHelper.java */
    /* renamed from: com.papa.gsyvideoplayer.utils.e$e  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class RunnableC0273e implements Runnable {
        RunnableC0273e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e.this.f55125g.r() != 1) {
                if (e.this.f55121c != null) {
                    e.this.f55121c.setBackgroundColor(-16777216);
                }
                e.this.f55125g.E();
            }
        }
    }

    /* compiled from: GSYVideoHelper.java */
    /* loaded from: classes4.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e.this.u();
        }
    }

    /* compiled from: GSYVideoHelper.java */
    /* loaded from: classes4.dex */
    public static class g extends com.papa.gsyvideoplayer.builder.a {
        protected boolean V;
        protected boolean W;

        public boolean A0() {
            return this.f54900p;
        }

        public boolean B0() {
            return this.f54906v;
        }

        public boolean C0() {
            return this.f54897m;
        }

        public boolean D0() {
            return this.f54898n;
        }

        public boolean E0() {
            return this.f54904t;
        }

        public boolean F0() {
            return this.f54909y;
        }

        public boolean G0() {
            return this.f54895k;
        }

        public boolean H0() {
            return this.f54903s;
        }

        public boolean I0() {
            return this.f54908x;
        }

        public boolean J0() {
            return this.f54907w;
        }

        public g K0(boolean z3) {
            this.V = z3;
            return this;
        }

        public g L0(boolean z3) {
            this.W = z3;
            return this;
        }

        public Drawable V() {
            return this.O;
        }

        public Drawable W() {
            return this.P;
        }

        public Drawable X() {
            return this.Q;
        }

        public File Y() {
            return this.J;
        }

        public Drawable Z() {
            return this.S;
        }

        public int a0() {
            return this.f54888d;
        }

        public int b0() {
            return this.f54889e;
        }

        public int c0() {
            return this.f54890f;
        }

        public GSYVideoGLView.c d0() {
            return this.T;
        }

        public int e0() {
            return this.f54886b;
        }

        public c2.d f0() {
            return this.U;
        }

        public c2.g g0() {
            return this.M;
        }

        public Map<String, String> h0() {
            return this.K;
        }

        public int i0() {
            return this.f54887c;
        }

        public String j0() {
            return this.E;
        }

        public long k0() {
            return this.f54891g;
        }

        public float l0() {
            return this.f54892h;
        }

        public int m0() {
            return this.f54885a;
        }

        public float n0() {
            return this.f54893i;
        }

        public View o0() {
            return this.N;
        }

        public String p0() {
            return this.F;
        }

        public c2.h q0() {
            return this.L;
        }

        public String r0() {
            return this.G;
        }

        public Drawable s0() {
            return this.R;
        }

        public boolean t0() {
            return this.f54905u;
        }

        public boolean u0() {
            return this.V;
        }

        public boolean v0() {
            return this.f54894j;
        }

        public boolean w0() {
            return this.W;
        }

        public boolean x0() {
            return this.f54901q;
        }

        public boolean y0() {
            return this.f54902r;
        }

        public boolean z0() {
            return this.f54899o;
        }
    }

    public e(Context context) {
        this(context, new StandardGSYVideoPlayer(context));
    }

    private boolean B(int i2, String str) {
        return this.f55129k == i2 && this.f55119a.equals(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean E() {
        ViewGroup viewGroup = this.f55122d;
        if (viewGroup == null || viewGroup.indexOfChild(this.f55120b) == -1) {
            return false;
        }
        this.f55122d.removeView(this.f55120b);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F(int i2) {
        if (this.f55127i.z0()) {
            if (i2 > 0) {
                this.f55135q.postDelayed(new RunnableC0273e(), i2);
            } else if (this.f55125g.r() != 1) {
                ViewGroup viewGroup = this.f55121c;
                if (viewGroup != null) {
                    viewGroup.setBackgroundColor(-16777216);
                }
                this.f55125g.E();
            }
        }
        this.f55120b.setIfCurrentIsFullscreen(true);
        this.f55120b.restartTimerTask();
        if (this.f55127i.q0() != null) {
            com.papa.gsyvideoplayer.utils.c.h("onEnterFullscreen");
            this.f55127i.q0().t0(this.f55127i.p0(), this.f55127i.r0(), this.f55120b);
        }
    }

    private void G() {
        ViewGroup viewGroup;
        if (this.f55127i.G0() && (viewGroup = this.f55121c) != null) {
            viewGroup.setBackgroundColor(-16777216);
        }
        F(0);
        ViewGroup viewGroup2 = this.f55121c;
        if (viewGroup2 != null) {
            viewGroup2.addView(this.f55120b);
        } else {
            this.f55122d.addView(this.f55120b);
        }
    }

    private void H() {
        this.f55133o = new int[2];
        this.f55134p = new int[2];
        M(this.f55128j, this.f55127i.u0(), this.f55127i.w0());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        FrameLayout frameLayout = new FrameLayout(this.f55128j);
        frameLayout.setBackgroundColor(-16777216);
        int[] iArr = this.f55134p;
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(iArr[0], iArr[1]);
        int[] iArr2 = this.f55133o;
        layoutParams2.setMargins(iArr2[0], iArr2[1], 0, 0);
        frameLayout.addView(this.f55120b, layoutParams2);
        ViewGroup viewGroup = this.f55121c;
        if (viewGroup != null) {
            viewGroup.addView(frameLayout, layoutParams);
        } else {
            this.f55122d.addView(frameLayout, layoutParams);
        }
        this.f55135q.postDelayed(new b(), 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I(GSYBaseVideoPlayer gSYBaseVideoPlayer) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) gSYBaseVideoPlayer.getLayoutParams();
        layoutParams.setMargins(0, 0, 0, 0);
        layoutParams.height = -1;
        layoutParams.width = -1;
        layoutParams.gravity = 17;
        gSYBaseVideoPlayer.setLayoutParams(layoutParams);
        gSYBaseVideoPlayer.setIfCurrentIsFullscreen(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J(GSYVideoPlayer gSYVideoPlayer) {
        if (this.f55127i.G0() && (this.f55121c instanceof FrameLayout)) {
            this.f55135q.postDelayed(new d(gSYVideoPlayer), this.f55125g.q());
            return;
        }
        L();
    }

    private void K() {
        this.f55130l = ((Activity) this.f55128j).getWindow().getDecorView().getSystemUiVisibility();
        com.papa.gsyvideoplayer.utils.b.l(this.f55128j, this.f55127i.u0(), this.f55127i.w0());
        if (this.f55127i.v0()) {
            com.papa.gsyvideoplayer.utils.b.k(this.f55128j);
        }
        this.f55131m = true;
        ViewGroup viewGroup = (ViewGroup) this.f55120b.getParent();
        this.f55124f = this.f55120b.getLayoutParams();
        if (viewGroup != null) {
            this.f55123e = viewGroup;
            viewGroup.removeView(this.f55120b);
        }
        this.f55120b.setIfCurrentIsFullscreen(true);
        this.f55120b.getFullscreenButton().setImageResource(this.f55120b.getShrinkImageRes());
        this.f55120b.getBackButton().setVisibility(0);
        o oVar = new o((Activity) this.f55128j, this.f55120b, this.f55126h);
        this.f55125g = oVar;
        oVar.I(this.f55127i.D0());
        this.f55120b.getBackButton().setOnClickListener(new a());
        if (this.f55127i.G0()) {
            if (this.f55121c instanceof FrameLayout) {
                H();
                return;
            } else {
                G();
                return;
            }
        }
        G();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L() {
        int q3 = this.f55125g.q();
        if (!this.f55127i.G0()) {
            q3 = 0;
        }
        this.f55135q.postDelayed(new c(), q3);
    }

    private void M(Context context, boolean z3, boolean z4) {
        this.f55123e.getLocationOnScreen(this.f55133o);
        int i2 = com.papa.gsyvideoplayer.utils.b.i(context);
        int c4 = com.papa.gsyvideoplayer.utils.b.c((Activity) context);
        if (z3) {
            int[] iArr = this.f55133o;
            iArr[1] = iArr[1] - i2;
        }
        if (z4) {
            int[] iArr2 = this.f55133o;
            iArr2[1] = iArr2[1] - c4;
        }
        this.f55134p[0] = this.f55123e.getWidth();
        this.f55134p[1] = this.f55123e.getHeight();
    }

    private boolean z(int i2, String str) {
        return B(i2, str);
    }

    public boolean A() {
        return this.f55131m;
    }

    public boolean C() {
        return this.f55132n;
    }

    public void D() {
        E();
        ViewGroup viewGroup = (ViewGroup) this.f55120b.getParent();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        this.f55129k = -1;
        this.f55119a = "NULL";
        o oVar = this.f55125g;
        if (oVar != null) {
            oVar.D();
        }
    }

    public void N(ViewGroup viewGroup) {
        this.f55121c = viewGroup;
    }

    public void O(g gVar) {
        this.f55127i = gVar;
    }

    public void P(n nVar) {
        this.f55126h = nVar;
    }

    public void Q(int i2, String str) {
        this.f55129k = i2;
        this.f55119a = str;
    }

    public void R(Point point, boolean z3, boolean z4) {
        if (this.f55120b.getCurrentState() == 2) {
            this.f55120b.showSmallVideo(point, z3, z4);
            this.f55132n = true;
        }
    }

    public void S() {
        this.f55132n = false;
        this.f55120b.hideSmallVideo();
    }

    public void T() {
        if (C()) {
            S();
        }
        this.f55120b.release();
        g gVar = this.f55127i;
        Objects.requireNonNull(gVar, "mVideoOptionBuilder can't be null");
        gVar.a(this.f55120b);
        if (this.f55120b.getTitleTextView() != null) {
            this.f55120b.getTitleTextView().setVisibility(8);
        }
        if (this.f55120b.getBackButton() != null) {
            this.f55120b.getBackButton().setVisibility(8);
        }
        if (this.f55120b.getFullscreenButton() != null) {
            this.f55120b.getFullscreenButton().setOnClickListener(new f());
        }
        this.f55120b.startPlayLogic();
    }

    public void s(int i2, View view, String str, ViewGroup viewGroup, View view2) {
        viewGroup.removeAllViews();
        if (z(i2, str)) {
            if (this.f55131m) {
                return;
            }
            ViewGroup viewGroup2 = (ViewGroup) this.f55120b.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeAllViews();
            }
            viewGroup.addView(this.f55120b);
            view2.setVisibility(4);
            return;
        }
        view2.setVisibility(0);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
    }

    public boolean t() {
        ViewGroup viewGroup = this.f55121c;
        if (viewGroup != null && viewGroup.getChildCount() > 0) {
            J(this.f55120b);
            return true;
        }
        ViewGroup viewGroup2 = this.f55122d;
        if (viewGroup2 == null || viewGroup2.indexOfChild(this.f55120b) == -1) {
            return false;
        }
        J(this.f55120b);
        return true;
    }

    public void u() {
        if (!this.f55131m) {
            K();
        } else {
            J(this.f55120b);
        }
    }

    public com.papa.gsyvideoplayer.builder.a v() {
        return this.f55127i;
    }

    public StandardGSYVideoPlayer w() {
        return this.f55120b;
    }

    public int x() {
        return this.f55129k;
    }

    public String y() {
        return this.f55119a;
    }

    public e(Context context, StandardGSYVideoPlayer standardGSYVideoPlayer) {
        this.f55119a = "NULL";
        this.f55129k = -1;
        this.f55135q = new Handler();
        this.f55120b = standardGSYVideoPlayer;
        this.f55128j = context;
        this.f55122d = (ViewGroup) com.papa.gsyvideoplayer.utils.b.o(context).findViewById(16908290);
    }
}
