package com.papa.gsyvideoplayer.utils;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.os.Handler;
import android.text.TextUtils;
import android.transition.TransitionManager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.papa.gsyvideoplayer.video.StandardGSYVideoPlayer;
import com.papa.gsyvideoplayer.video.base.GSYBaseVideoPlayer;
import com.papa.gsyvideoplayer.video.base.GSYVideoPlayer;
import java.io.File;
import java.util.Map;
/* compiled from: ListVideoUtil.java */
@Deprecated
/* loaded from: classes4.dex */
public class i {

    /* renamed from: b  reason: collision with root package name */
    private StandardGSYVideoPlayer f55201b;

    /* renamed from: c  reason: collision with root package name */
    private ViewGroup f55202c;

    /* renamed from: d  reason: collision with root package name */
    private ViewGroup f55203d;

    /* renamed from: e  reason: collision with root package name */
    private ViewGroup.LayoutParams f55204e;

    /* renamed from: f  reason: collision with root package name */
    private o f55205f;

    /* renamed from: g  reason: collision with root package name */
    private c2.h f55206g;

    /* renamed from: h  reason: collision with root package name */
    private String f55207h;

    /* renamed from: i  reason: collision with root package name */
    private Context f55208i;

    /* renamed from: j  reason: collision with root package name */
    private File f55209j;

    /* renamed from: k  reason: collision with root package name */
    private String f55210k;

    /* renamed from: l  reason: collision with root package name */
    private Map<String, String> f55211l;

    /* renamed from: o  reason: collision with root package name */
    private int f55214o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f55215p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f55216q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f55217r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f55218s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f55219t;

    /* renamed from: x  reason: collision with root package name */
    private int[] f55223x;

    /* renamed from: y  reason: collision with root package name */
    private int[] f55224y;

    /* renamed from: a  reason: collision with root package name */
    private String f55200a = "NULL";

    /* renamed from: m  reason: collision with root package name */
    private int f55212m = -1;

    /* renamed from: n  reason: collision with root package name */
    private int f55213n = 1;

    /* renamed from: u  reason: collision with root package name */
    private boolean f55220u = true;

    /* renamed from: v  reason: collision with root package name */
    private boolean f55221v = true;

    /* renamed from: w  reason: collision with root package name */
    protected boolean f55222w = true;

    /* renamed from: z  reason: collision with root package name */
    private boolean f55225z = true;
    private boolean A = true;
    private boolean B = true;
    private Handler C = new Handler();

    /* compiled from: ListVideoUtil.java */
    /* loaded from: classes4.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            i.this.W();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ListVideoUtil.java */
    /* loaded from: classes4.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            i iVar = i.this;
            iVar.Z(iVar.f55201b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ListVideoUtil.java */
    /* loaded from: classes4.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TransitionManager.beginDelayedTransition(i.this.f55202c);
            i iVar = i.this;
            iVar.Y(iVar.f55201b);
            i.this.U(600);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ListVideoUtil.java */
    /* loaded from: classes4.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i.this.f55215p = false;
            i.this.f55202c.removeAllViews();
            if (i.this.f55201b.getParent() != null) {
                ((ViewGroup) i.this.f55201b.getParent()).removeView(i.this.f55201b);
            }
            i.this.f55205f.I(false);
            i.this.f55201b.setIfCurrentIsFullscreen(false);
            i.this.f55202c.setBackgroundColor(0);
            i.this.f55203d.addView(i.this.f55201b, i.this.f55204e);
            i.this.f55201b.getFullscreenButton().setImageResource(i.this.f55201b.getEnlargeImageRes());
            i.this.f55201b.getBackButton().setVisibility(8);
            i.this.f55201b.setIfCurrentIsFullscreen(false);
            if (i.this.f55206g != null) {
                com.papa.gsyvideoplayer.utils.c.h("onQuitFullscreen");
                i.this.f55206g.y(i.this.f55207h, i.this.f55210k, i.this.f55201b);
            }
            if (i.this.f55220u) {
                com.papa.gsyvideoplayer.utils.b.p(i.this.f55208i, i.this.f55214o);
            }
            com.papa.gsyvideoplayer.utils.b.q(i.this.f55208i, i.this.f55218s, i.this.f55217r);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ListVideoUtil.java */
    /* loaded from: classes4.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GSYVideoPlayer f55230a;

        /* compiled from: ListVideoUtil.java */
        /* loaded from: classes4.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                i.this.b0();
            }
        }

        e(GSYVideoPlayer gSYVideoPlayer) {
            this.f55230a = gSYVideoPlayer;
        }

        @Override // java.lang.Runnable
        public void run() {
            TransitionManager.beginDelayedTransition(i.this.f55202c);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f55230a.getLayoutParams();
            layoutParams.setMargins(i.this.f55223x[0], i.this.f55223x[1], 0, 0);
            layoutParams.width = i.this.f55224y[0];
            layoutParams.height = i.this.f55224y[1];
            layoutParams.gravity = 0;
            this.f55230a.setLayoutParams(layoutParams);
            i.this.C.postDelayed(new a(), 400L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ListVideoUtil.java */
    /* loaded from: classes4.dex */
    public class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (i.this.f55205f.r() != 1) {
                i.this.f55205f.E();
            }
        }
    }

    public i(Context context) {
        this.f55201b = new StandardGSYVideoPlayer(context);
        this.f55208i = context;
    }

    private boolean H(int i2, String str) {
        return Q(i2, str);
    }

    private boolean Q(int i2, String str) {
        return this.f55212m == i2 && this.f55200a.equals(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U(int i2) {
        if (J()) {
            this.C.postDelayed(new f(), i2);
        }
        this.f55201b.setIfCurrentIsFullscreen(true);
        if (this.f55206g != null) {
            com.papa.gsyvideoplayer.utils.c.h("onEnterFullscreen");
            this.f55206g.t0(this.f55207h, this.f55210k, this.f55201b);
        }
    }

    private void V() {
        this.f55202c.setBackgroundColor(-16777216);
        this.f55202c.addView(this.f55201b);
        U(50);
    }

    private void X() {
        this.f55223x = new int[2];
        this.f55224y = new int[2];
        c0(this.f55208i, this.f55217r, this.f55218s);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        FrameLayout frameLayout = new FrameLayout(this.f55208i);
        frameLayout.setBackgroundColor(-16777216);
        int[] iArr = this.f55224y;
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(iArr[0], iArr[1]);
        int[] iArr2 = this.f55223x;
        layoutParams2.setMargins(iArr2[0], iArr2[1], 0, 0);
        frameLayout.addView(this.f55201b, layoutParams2);
        this.f55202c.addView(frameLayout, layoutParams);
        this.C.postDelayed(new c(), 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y(GSYBaseVideoPlayer gSYBaseVideoPlayer) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) gSYBaseVideoPlayer.getLayoutParams();
        layoutParams.setMargins(0, 0, 0, 0);
        layoutParams.height = -1;
        layoutParams.width = -1;
        layoutParams.gravity = 17;
        gSYBaseVideoPlayer.setLayoutParams(layoutParams);
        gSYBaseVideoPlayer.setIfCurrentIsFullscreen(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z(GSYVideoPlayer gSYVideoPlayer) {
        if (this.B && (this.f55202c instanceof FrameLayout)) {
            this.C.postDelayed(new e(gSYVideoPlayer), this.f55205f.q());
            return;
        }
        b0();
    }

    private void a0() {
        this.f55214o = ((Activity) this.f55208i).getWindow().getDecorView().getSystemUiVisibility();
        com.papa.gsyvideoplayer.utils.b.l(this.f55208i, this.f55218s, this.f55217r);
        if (this.f55220u) {
            com.papa.gsyvideoplayer.utils.b.k(this.f55208i);
        }
        this.f55215p = true;
        ViewGroup viewGroup = (ViewGroup) this.f55201b.getParent();
        this.f55204e = this.f55201b.getLayoutParams();
        if (viewGroup != null) {
            this.f55203d = viewGroup;
            viewGroup.removeView(this.f55201b);
        }
        this.f55201b.setIfCurrentIsFullscreen(true);
        this.f55201b.getFullscreenButton().setImageResource(this.f55201b.getShrinkImageRes());
        this.f55201b.getBackButton().setVisibility(0);
        o oVar = new o((Activity) this.f55208i, this.f55201b);
        this.f55205f = oVar;
        oVar.I(G());
        this.f55201b.getBackButton().setOnClickListener(new b());
        if (this.B) {
            if (this.f55202c instanceof FrameLayout) {
                X();
                return;
            } else {
                V();
                return;
            }
        }
        V();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b0() {
        this.C.postDelayed(new d(), this.f55205f.q());
    }

    private void c0(Context context, boolean z3, boolean z4) {
        this.f55203d.getLocationOnScreen(this.f55223x);
        int i2 = com.papa.gsyvideoplayer.utils.b.i(context);
        int c4 = com.papa.gsyvideoplayer.utils.b.c((Activity) context);
        if (z3) {
            int[] iArr = this.f55223x;
            iArr[1] = iArr[1] - i2;
        }
        if (z4) {
            int[] iArr2 = this.f55223x;
            iArr2[1] = iArr2[1] - c4;
        }
        this.f55224y[0] = this.f55203d.getWidth();
        this.f55224y[1] = this.f55203d.getHeight();
    }

    public StandardGSYVideoPlayer A() {
        return this.f55201b;
    }

    public Map<String, String> B() {
        return this.f55211l;
    }

    public int C() {
        return this.f55212m;
    }

    public String D() {
        return this.f55200a;
    }

    public int E() {
        return this.f55213n;
    }

    public String F() {
        return this.f55210k;
    }

    public boolean G() {
        return this.A;
    }

    public boolean I() {
        return this.f55215p;
    }

    public boolean J() {
        return this.f55225z;
    }

    public boolean K() {
        return this.f55218s;
    }

    public boolean L() {
        return this.f55220u;
    }

    public boolean M() {
        return this.f55217r;
    }

    public boolean N() {
        return this.f55219t;
    }

    public boolean O() {
        return this.f55221v;
    }

    public boolean P() {
        return this.f55222w;
    }

    public boolean R() {
        return this.B;
    }

    public boolean S() {
        return this.f55216q;
    }

    public void T() {
        ViewGroup viewGroup = (ViewGroup) this.f55201b.getParent();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        this.f55212m = -1;
        this.f55200a = "NULL";
        o oVar = this.f55205f;
        if (oVar != null) {
            oVar.D();
        }
    }

    public void W() {
        if (this.f55202c == null) {
            return;
        }
        if (!this.f55215p) {
            a0();
        } else {
            Z(this.f55201b);
        }
    }

    public void d0(boolean z3) {
        this.A = z3;
    }

    public void e0(File file) {
        this.f55209j = file;
    }

    public void f0(boolean z3) {
        this.f55225z = z3;
    }

    public void g0(ViewGroup viewGroup) {
        this.f55202c = viewGroup;
    }

    public void h0(boolean z3) {
        this.f55218s = z3;
    }

    public void i0(boolean z3) {
        this.f55220u = z3;
    }

    public void j0(boolean z3) {
        this.f55217r = z3;
    }

    public void k0(boolean z3) {
        this.f55219t = z3;
    }

    public void l0(Map<String, String> map) {
        this.f55211l = map;
    }

    public void m0(boolean z3) {
        this.f55221v = z3;
    }

    public void n0(boolean z3) {
        this.f55222w = z3;
    }

    public void o0(int i2, String str) {
        this.f55212m = i2;
        this.f55200a = str;
    }

    public void p0(boolean z3) {
        this.B = z3;
    }

    public void q0(int i2) {
        this.f55213n = i2;
    }

    public void r0(String str) {
        this.f55210k = str;
    }

    public void s0(c2.h hVar) {
        this.f55206g = hVar;
        this.f55201b.setVideoAllCallBack(hVar);
    }

    public void t0(Point point, boolean z3, boolean z4) {
        if (this.f55201b.getCurrentState() == 2) {
            this.f55201b.showSmallVideo(point, z3, z4);
            this.f55216q = true;
        }
    }

    public void u0() {
        this.f55216q = false;
        this.f55201b.hideSmallVideo();
    }

    public void v(int i2, View view, String str, ViewGroup viewGroup, View view2) {
        viewGroup.removeAllViews();
        if (H(i2, str)) {
            if (this.f55215p) {
                return;
            }
            ViewGroup viewGroup2 = (ViewGroup) this.f55201b.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeAllViews();
            }
            viewGroup.addView(this.f55201b);
            view2.setVisibility(4);
            return;
        }
        view2.setVisibility(0);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
    }

    public void v0(String str) {
        if (S()) {
            u0();
        }
        this.f55207h = str;
        this.f55201b.release();
        this.f55201b.setLooping(this.f55219t);
        this.f55201b.setSpeed(this.f55213n);
        this.f55201b.setNeedShowWifiTip(this.f55222w);
        this.f55201b.setNeedLockFull(this.f55221v);
        this.f55201b.setUp(str, true, this.f55209j, this.f55211l, this.f55210k);
        if (!TextUtils.isEmpty(this.f55210k)) {
            this.f55201b.getTitleTextView().setText(this.f55210k);
        }
        this.f55201b.getTitleTextView().setVisibility(8);
        this.f55201b.getBackButton().setVisibility(8);
        this.f55201b.getFullscreenButton().setOnClickListener(new a());
        this.f55201b.startPlayLogic();
    }

    public boolean w() {
        if (this.f55202c.getChildCount() > 0) {
            Z(this.f55201b);
            return true;
        }
        return false;
    }

    public File x() {
        return this.f55209j;
    }

    public int y() {
        return this.f55201b.getCurrentPositionWhenPlaying();
    }

    public int z() {
        return this.f55201b.getDuration();
    }
}
