package com.papa.gsyvideoplayer.builder;

import android.graphics.drawable.Drawable;
import android.view.View;
import c2.d;
import c2.g;
import c2.h;
import com.papa.gsyvideoplayer.render.effect.q;
import com.papa.gsyvideoplayer.render.view.GSYVideoGLView;
import com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer;
import com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
import java.io.File;
import java.util.Map;
/* compiled from: GSYVideoOptionBuilder.java */
/* loaded from: classes4.dex */
public class a {
    protected String F;
    protected String H;
    protected File J;
    protected Map<String, String> K;
    protected h L;
    protected g M;
    protected View N;
    protected Drawable O;
    protected Drawable P;
    protected Drawable Q;
    protected Drawable R;
    protected Drawable S;
    protected d U;

    /* renamed from: u  reason: collision with root package name */
    protected boolean f54905u;

    /* renamed from: v  reason: collision with root package name */
    protected boolean f54906v;

    /* renamed from: w  reason: collision with root package name */
    protected boolean f54907w;

    /* renamed from: x  reason: collision with root package name */
    protected boolean f54908x;

    /* renamed from: a  reason: collision with root package name */
    protected int f54885a = -1;

    /* renamed from: b  reason: collision with root package name */
    protected int f54886b = -1;

    /* renamed from: c  reason: collision with root package name */
    protected int f54887c = -22;

    /* renamed from: d  reason: collision with root package name */
    protected int f54888d = -11;

    /* renamed from: e  reason: collision with root package name */
    protected int f54889e = -11;

    /* renamed from: f  reason: collision with root package name */
    protected int f54890f = 2500;

    /* renamed from: g  reason: collision with root package name */
    protected long f54891g = -1;

    /* renamed from: h  reason: collision with root package name */
    protected float f54892h = 1.0f;

    /* renamed from: i  reason: collision with root package name */
    protected float f54893i = 1.0f;

    /* renamed from: j  reason: collision with root package name */
    protected boolean f54894j = true;

    /* renamed from: k  reason: collision with root package name */
    protected boolean f54895k = true;

    /* renamed from: l  reason: collision with root package name */
    protected boolean f54896l = false;

    /* renamed from: m  reason: collision with root package name */
    protected boolean f54897m = true;

    /* renamed from: n  reason: collision with root package name */
    protected boolean f54898n = true;

    /* renamed from: o  reason: collision with root package name */
    protected boolean f54899o = false;

    /* renamed from: p  reason: collision with root package name */
    protected boolean f54900p = false;

    /* renamed from: q  reason: collision with root package name */
    protected boolean f54901q = true;

    /* renamed from: r  reason: collision with root package name */
    protected boolean f54902r = true;

    /* renamed from: s  reason: collision with root package name */
    protected boolean f54903s = true;

    /* renamed from: t  reason: collision with root package name */
    protected boolean f54904t = true;

    /* renamed from: y  reason: collision with root package name */
    protected boolean f54909y = false;

    /* renamed from: z  reason: collision with root package name */
    protected boolean f54910z = true;
    protected boolean A = true;
    protected boolean B = false;
    protected boolean C = false;
    protected boolean D = false;
    protected String E = "";
    protected String G = null;
    private boolean I = false;
    protected GSYVideoGLView.c T = new q();

    public a A(String str) {
        this.H = str;
        return this;
    }

    public a B(int i2) {
        this.f54887c = i2;
        return this;
    }

    public a C(String str) {
        this.E = str;
        return this;
    }

    public a D(boolean z3) {
        this.A = z3;
        return this;
    }

    public a E(boolean z3) {
        this.f54898n = z3;
        return this;
    }

    public a F(boolean z3) {
        this.f54904t = z3;
        return this;
    }

    public a G(long j4) {
        this.f54891g = j4;
        return this;
    }

    public a H(float f4) {
        if (f4 < 0.0f) {
            return this;
        }
        this.f54892h = f4;
        return this;
    }

    @Deprecated
    public a I(boolean z3) {
        this.f54909y = z3;
        return this;
    }

    public a J(boolean z3) {
        this.D = z3;
        return this;
    }

    public a K(boolean z3) {
        this.f54895k = z3;
        return this;
    }

    public a L(boolean z3) {
        this.f54903s = z3;
        return this;
    }

    public a M(int i2) {
        this.f54885a = i2;
        return this;
    }

    public a N(boolean z3) {
        this.f54908x = z3;
        return this;
    }

    public a O(float f4) {
        this.f54893i = f4;
        return this;
    }

    public a P(boolean z3) {
        this.f54910z = z3;
        return this;
    }

    public a Q(View view) {
        this.N = view;
        return this;
    }

    public a R(boolean z3) {
        this.f54907w = z3;
        return this;
    }

    public a S(String str) {
        this.F = str;
        return this;
    }

    public a T(h hVar) {
        this.L = hVar;
        return this;
    }

    public a U(String str) {
        this.G = str;
        return this;
    }

    public void a(StandardGSYVideoPlayer standardGSYVideoPlayer) {
        int i2;
        Drawable drawable;
        Drawable drawable2 = this.P;
        if (drawable2 != null && (drawable = this.Q) != null) {
            standardGSYVideoPlayer.setBottomShowProgressBarDrawable(drawable2, drawable);
        }
        Drawable drawable3 = this.O;
        if (drawable3 != null) {
            standardGSYVideoPlayer.setBottomProgressBarDrawable(drawable3);
        }
        Drawable drawable4 = this.R;
        if (drawable4 != null) {
            standardGSYVideoPlayer.setDialogVolumeProgressBar(drawable4);
        }
        Drawable drawable5 = this.S;
        if (drawable5 != null) {
            standardGSYVideoPlayer.setDialogProgressBar(drawable5);
        }
        int i4 = this.f54888d;
        if (i4 > 0 && (i2 = this.f54889e) > 0) {
            standardGSYVideoPlayer.setDialogProgressColor(i4, i2);
        }
        b(standardGSYVideoPlayer);
    }

    public void b(GSYBaseVideoPlayer gSYBaseVideoPlayer) {
        gSYBaseVideoPlayer.setPlayTag(this.E);
        gSYBaseVideoPlayer.setPlayPosition(this.f54887c);
        gSYBaseVideoPlayer.setThumbPlay(this.f54907w);
        View view = this.N;
        if (view != null) {
            gSYBaseVideoPlayer.setThumbImageView(view);
        }
        gSYBaseVideoPlayer.setNeedLockFull(this.f54906v);
        g gVar = this.M;
        if (gVar != null) {
            gSYBaseVideoPlayer.setLockClickListener(gVar);
        }
        gSYBaseVideoPlayer.setDismissControlTime(this.f54890f);
        long j4 = this.f54891g;
        if (j4 > 0) {
            gSYBaseVideoPlayer.setSeekOnStart(j4);
        }
        gSYBaseVideoPlayer.setShowFullAnimation(this.f54895k);
        gSYBaseVideoPlayer.setLooping(this.f54900p);
        h hVar = this.L;
        if (hVar != null) {
            gSYBaseVideoPlayer.setVideoAllCallBack(hVar);
        }
        d dVar = this.U;
        if (dVar != null) {
            gSYBaseVideoPlayer.setGSYVideoProgressListener(dVar);
        }
        gSYBaseVideoPlayer.setOverrideExtension(this.H);
        gSYBaseVideoPlayer.setAutoFullWithSize(this.f54896l);
        gSYBaseVideoPlayer.setRotateViewAuto(this.f54898n);
        gSYBaseVideoPlayer.setOnlyRotateLand(this.I);
        gSYBaseVideoPlayer.setLockLand(this.f54899o);
        gSYBaseVideoPlayer.setSpeed(this.f54893i, this.f54908x);
        gSYBaseVideoPlayer.setHideKey(this.f54894j);
        gSYBaseVideoPlayer.setIsTouchWiget(this.f54901q);
        gSYBaseVideoPlayer.setIsTouchWigetFull(this.f54902r);
        gSYBaseVideoPlayer.setNeedShowWifiTip(this.f54897m);
        gSYBaseVideoPlayer.setEffectFilter(this.T);
        gSYBaseVideoPlayer.setStartAfterPrepared(this.f54910z);
        gSYBaseVideoPlayer.setReleaseWhenLossAudio(this.A);
        gSYBaseVideoPlayer.setFullHideActionBar(this.B);
        gSYBaseVideoPlayer.setShowDragProgressTextOnSeekBar(this.D);
        gSYBaseVideoPlayer.setFullHideStatusBar(this.C);
        int i2 = this.f54886b;
        if (i2 > 0) {
            gSYBaseVideoPlayer.setEnlargeImageRes(i2);
        }
        int i4 = this.f54885a;
        if (i4 > 0) {
            gSYBaseVideoPlayer.setShrinkImageRes(i4);
        }
        gSYBaseVideoPlayer.setShowPauseCover(this.f54903s);
        gSYBaseVideoPlayer.setSeekRatio(this.f54892h);
        gSYBaseVideoPlayer.setRotateWithSystem(this.f54904t);
        if (this.f54909y) {
            gSYBaseVideoPlayer.setUpLazy(this.F, this.f54905u, this.J, this.K, this.G);
        } else {
            gSYBaseVideoPlayer.setUp(this.F, this.f54905u, this.J, this.K, this.G);
        }
    }

    public a c(boolean z3) {
        this.f54896l = z3;
        return this;
    }

    public a d(Drawable drawable) {
        this.O = drawable;
        return this;
    }

    public a e(Drawable drawable, Drawable drawable2) {
        this.P = drawable;
        this.Q = drawable2;
        return this;
    }

    public a f(File file) {
        this.J = file;
        return this;
    }

    public a g(boolean z3) {
        this.f54905u = z3;
        return this;
    }

    public a h(Drawable drawable) {
        this.S = drawable;
        return this;
    }

    public a i(int i2, int i4) {
        this.f54888d = i2;
        this.f54889e = i4;
        return this;
    }

    public a j(Drawable drawable) {
        this.R = drawable;
        return this;
    }

    public a k(int i2) {
        this.f54890f = i2;
        return this;
    }

    public a l(GSYVideoGLView.c cVar) {
        this.T = cVar;
        return this;
    }

    public a m(int i2) {
        this.f54886b = i2;
        return this;
    }

    public a n(boolean z3) {
        this.B = z3;
        return this;
    }

    public a o(boolean z3) {
        this.C = z3;
        return this;
    }

    public a p(d dVar) {
        this.U = dVar;
        return this;
    }

    public a q(boolean z3) {
        this.f54894j = z3;
        return this;
    }

    public a r(boolean z3) {
        this.f54901q = z3;
        return this;
    }

    public a s(boolean z3) {
        this.f54902r = z3;
        return this;
    }

    public a t(g gVar) {
        this.M = gVar;
        return this;
    }

    public a u(boolean z3) {
        this.f54899o = z3;
        return this;
    }

    public a v(boolean z3) {
        this.f54900p = z3;
        return this;
    }

    public a w(Map<String, String> map) {
        this.K = map;
        return this;
    }

    public a x(boolean z3) {
        this.f54906v = z3;
        return this;
    }

    public a y(boolean z3) {
        this.f54897m = z3;
        return this;
    }

    public a z(boolean z3) {
        this.I = z3;
        return this;
    }
}
