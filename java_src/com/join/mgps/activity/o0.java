package com.join.mgps.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.flyco.tablayout.SlidingTabLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.n0;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.SlidingTabLayoutGameDetailImage;
import com.join.mgps.dto.GameFromPopoWinBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.ResultMainBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: GamedetialModleFourFragemnt_.java */
/* loaded from: classes3.dex */
public final class o0 extends com.join.mgps.activity.n0 implements g3.a, i3.a, i3.b {
    private View C1;
    private final i3.c B1 = new i3.c();
    private final Map<Class<?>, Object> D1 = new HashMap();
    private final IntentFilter E1 = new IntentFilter();
    private final BroadcastReceiver F1 = new k();

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o0.this.b0();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class a0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f38093a;

        a0(int i2) {
            this.f38093a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.super.E0(this.f38093a);
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o0.this.B0();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class b0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f38096a;

        b0(int i2) {
            this.f38096a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.super.D0(this.f38096a);
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o0.this.a0();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class c0 implements Runnable {
        c0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.super.G0();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o0.this.v0();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class d0 implements Runnable {
        d0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.super.updateDownloadView();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o0.this.w0();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class e0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f38103a;

        e0(boolean z3) {
            this.f38103a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.super.H0(this.f38103a);
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o0.this.c0();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class f0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ResultMainBean f38106a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f38107b;

        f0(ResultMainBean resultMainBean, int i2) {
            this.f38106a = resultMainBean;
            this.f38107b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.super.updateTitleButn(this.f38106a, this.f38107b);
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.super.y0();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class g0 implements View.OnClickListener {
        g0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o0.this.O();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.super.showLoding();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class h0 extends a.c {
        h0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                o0.super.d0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GamedetialModleFourBean f38113a;

        i(GamedetialModleFourBean gamedetialModleFourBean) {
            this.f38113a = gamedetialModleFourBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.super.J0(this.f38113a);
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class i0 extends a.c {
        i0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                o0.super.e0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.super.P();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class j0 extends a.c {
        j0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                o0.super.M();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class k extends BroadcastReceiver {
        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            o0.this.K0();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class k0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f38119a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f38120b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ n0.v f38121c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k0(String str, long j4, String str2, String str3, String str4, n0.v vVar) {
            super(str, j4, str2);
            this.f38119a = str3;
            this.f38120b = str4;
            this.f38121c = vVar;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                o0.super.N(this.f38119a, this.f38120b, this.f38121c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.super.F0();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class l0 extends a.c {
        l0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                o0.super.X();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.super.C0();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class m0 extends a.c {
        m0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                o0.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.super.k0();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class n0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f38128a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n0(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f38128a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                o0.super.changeGameFollow(this.f38128a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f38130a;

        o(String str) {
            this.f38130a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.super.x0(this.f38130a);
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* renamed from: com.join.mgps.activity.o0$o0  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class View$OnClickListenerC0173o0 implements View.OnClickListener {
        View$OnClickListenerC0173o0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o0.this.setNetwork();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameFromPopoWinBean f38133a;

        p(GameFromPopoWinBean gameFromPopoWinBean) {
            this.f38133a = gameFromPopoWinBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.super.V(this.f38133a);
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class p0 implements View.OnClickListener {
        p0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o0.this.iv_back();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.super.Z();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class q0 implements View.OnClickListener {
        q0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o0.this.W();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class r implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f38138a;

        r(String str) {
            this.f38138a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.super.showToast(this.f38138a);
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class r0 implements View.OnClickListener {
        r0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o0.this.progress_layout();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.super.m0();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class s0 implements View.OnClickListener {
        s0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o0.this.o0();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class t implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n0.v f38143a;

        t(n0.v vVar) {
            this.f38143a = vVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.super.u0(this.f38143a);
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class t0 implements View.OnClickListener {
        t0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o0.this.instalButtomButn();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.super.showLodingFailed();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    public static class u0 extends org.androidannotations.api.builder.d<u0, com.join.mgps.activity.n0> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public com.join.mgps.activity.n0 build() {
            o0 o0Var = new o0();
            o0Var.setArguments(this.args);
            return o0Var;
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o0.this.relodingimag();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.super.showProgress();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.super.showInstallButn();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.super.updateButn();
        }
    }

    /* compiled from: GamedetialModleFourFragemnt_.java */
    /* loaded from: classes3.dex */
    class z implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f38151a;

        z(String str) {
            this.f38151a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.super.setCommentNumber(this.f38151a);
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.E1.addAction("com.broadcast.bespeak.sussess");
    }

    public static u0 q1() {
        return new u0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void C0() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void D0(int i2) {
        org.androidannotations.api.b.e("", new b0(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void E0(int i2) {
        org.androidannotations.api.b.e("", new a0(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void F0() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void G0() {
        org.androidannotations.api.b.e("", new c0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void H0(boolean z3) {
        org.androidannotations.api.b.e("", new e0(z3), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void J0(GamedetialModleFourBean gamedetialModleFourBean) {
        org.androidannotations.api.b.e("", new i(gamedetialModleFourBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void M() {
        org.androidannotations.api.a.l(new j0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void N(String str, String str2, n0.v vVar) {
        org.androidannotations.api.a.l(new k0("", 0L, "", str, str2, vVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void P() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void V(GameFromPopoWinBean gameFromPopoWinBean) {
        org.androidannotations.api.b.e("", new p(gameFromPopoWinBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void X() {
        org.androidannotations.api.a.l(new l0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void Z() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void changeGameFollow(int i2) {
        org.androidannotations.api.a.l(new n0("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void d0() {
        org.androidannotations.api.a.l(new h0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void e0() {
        org.androidannotations.api.a.l(new i0("", 0L, ""));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.D1.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new m0("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.C1;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void k0() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void m0() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.B1);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.F1, this.E1);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.C1 = onCreateView;
        if (onCreateView == null) {
            this.C1 = layoutInflater.inflate(R.layout.gamedetial_modle_four_fragment, viewGroup, false);
        }
        return this.C1;
    }

    @Override // com.join.mgps.activity.n0, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.F1);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.C1 = null;
        this.f37999e = null;
        this.f38001f = null;
        this.f38003g = null;
        this.f38005h = null;
        this.f38007i = null;
        this.f38009j = null;
        this.f38011k = null;
        this.f38013l = null;
        this.f38015m = null;
        this.f38017n = null;
        this.f38020o = null;
        this.f38023p = null;
        this.f38026q = null;
        this.f38029r = null;
        this.f38032s = null;
        this.f38035t = null;
        this.f38038u = null;
        this.f38041v = null;
        this.f38044w = null;
        this.f38047x = null;
        this.f38049y = null;
        this.f38051z = null;
        this.A = null;
        this.B = null;
        this.C = null;
        this.D = null;
        this.E = null;
        this.F = null;
        this.G = null;
        this.H = null;
        this.I = null;
        this.J = null;
        this.K = null;
        this.f38018n0 = null;
        this.f38021o0 = null;
        this.f38024p0 = null;
        this.f38027q0 = null;
        this.f38030r0 = null;
        this.f38010j1 = null;
        this.f38012k1 = null;
        this.f38014l1 = null;
        this.f38016m1 = null;
        this.f38019n1 = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f37999e = (RelativeLayout) aVar.internalFindViewById(R.id.videolayout);
        this.f38001f = aVar.internalFindViewById(R.id.nullView);
        this.f38003g = (StandardVideoView) aVar.internalFindViewById(R.id.videoPlayer);
        this.f38005h = (SimpleDraweeView) aVar.internalFindViewById(R.id.iv_book_bg);
        this.f38007i = (SlidingTabLayout) aVar.internalFindViewById(R.id.tabs);
        this.f38009j = (ViewPager) aVar.internalFindViewById(R.id.viewPager);
        this.f38011k = (SlidingTabLayoutGameDetailImage) aVar.internalFindViewById(R.id.tabLayout1);
        this.f38013l = aVar.internalFindViewById(R.id.bottomLine);
        this.f38015m = (ViewPager) aVar.internalFindViewById(R.id.viewPager1);
        this.f38017n = aVar.internalFindViewById(R.id.stauView);
        this.f38020o = (AppBarLayout) aVar.internalFindViewById(R.id.appBarLayout);
        this.f38023p = (CollapsingToolbarLayout) aVar.internalFindViewById(R.id.collapsingToolbarLayout);
        this.f38026q = (RelativeLayout) aVar.internalFindViewById(R.id.title_bar_layout);
        this.f38029r = (RelativeLayout) aVar.internalFindViewById(R.id.downloadRLayout2);
        this.f38032s = (RelativeLayout) aVar.internalFindViewById(R.id.titleTransfer);
        this.f38035t = (TextView) aVar.internalFindViewById(R.id.instalButtomButn);
        this.f38038u = (RelativeLayout) aVar.internalFindViewById(R.id.progressbarLayout);
        this.f38041v = (RelativeLayout) aVar.internalFindViewById(R.id.instalbutnLayout);
        this.f38044w = (ImageView) aVar.internalFindViewById(R.id.butn_showdownload);
        this.f38047x = (TextView) aVar.internalFindViewById(R.id.percent);
        this.f38049y = (ProgressBar) aVar.internalFindViewById(R.id.butnProgressBar);
        this.f38051z = (LinearLayout) aVar.internalFindViewById(R.id.downloadLayout);
        this.A = (ImageView) aVar.internalFindViewById(R.id.search_detial_back);
        this.B = (ImageView) aVar.internalFindViewById(R.id.download_bg);
        this.C = (CustomerDownloadView) aVar.internalFindViewById(R.id.title_normal_download_cdv);
        this.D = (ImageView) aVar.internalFindViewById(R.id.followImage);
        this.E = (TextView) aVar.internalFindViewById(R.id.followButton);
        this.F = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.G = (Toolbar) aVar.internalFindViewById(R.id.toolbar);
        this.H = aVar.internalFindViewById(R.id.main_content);
        this.I = aVar.internalFindViewById(R.id.loding_layout);
        this.J = aVar.internalFindViewById(R.id.loding_faile);
        this.K = aVar.internalFindViewById(R.id.iv_backx);
        this.f38018n0 = aVar.internalFindViewById(R.id.setNetwork);
        this.f38021o0 = (LinearLayout) aVar.internalFindViewById(R.id.btTaglayout);
        this.f38024p0 = (LinearLayout) aVar.internalFindViewById(R.id.tipsLayout);
        this.f38027q0 = aVar.internalFindViewById(R.id.cover);
        this.f38030r0 = aVar.internalFindViewById(R.id.statuHVIew);
        this.f38010j1 = (TextView) aVar.internalFindViewById(R.id.biground);
        this.f38012k1 = (ImageView) aVar.internalFindViewById(R.id.downloadLine);
        this.f38014l1 = (ImageView) aVar.internalFindViewById(R.id.search_detial_image);
        this.f38016m1 = (ImageView) aVar.internalFindViewById(R.id.title_normal_search_img);
        this.f38019n1 = (ImageView) aVar.internalFindViewById(R.id.imageLoading);
        View internalFindViewById = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.IKnow);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.iv_back);
        View internalFindViewById4 = aVar.internalFindViewById(R.id.back_image);
        View internalFindViewById5 = aVar.internalFindViewById(R.id.progress_layout);
        View internalFindViewById6 = aVar.internalFindViewById(R.id.downImage);
        View internalFindViewById7 = aVar.internalFindViewById(R.id.share);
        View internalFindViewById8 = aVar.internalFindViewById(R.id.shareTwo);
        View internalFindViewById9 = aVar.internalFindViewById(R.id.followLayout);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new v());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new g0());
        }
        View view = this.f38018n0;
        if (view != null) {
            view.setOnClickListener(new View$OnClickListenerC0173o0());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new p0());
        }
        if (internalFindViewById4 != null) {
            internalFindViewById4.setOnClickListener(new q0());
        }
        if (internalFindViewById5 != null) {
            internalFindViewById5.setOnClickListener(new r0());
        }
        View view2 = this.K;
        if (view2 != null) {
            view2.setOnClickListener(new s0());
        }
        TextView textView = this.f38035t;
        if (textView != null) {
            textView.setOnClickListener(new t0());
        }
        LinearLayout linearLayout = this.f38051z;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new a());
        }
        CustomerDownloadView customerDownloadView = this.C;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new b());
        }
        if (internalFindViewById6 != null) {
            internalFindViewById6.setOnClickListener(new c());
        }
        if (internalFindViewById7 != null) {
            internalFindViewById7.setOnClickListener(new d());
        }
        if (internalFindViewById8 != null) {
            internalFindViewById8.setOnClickListener(new e());
        }
        if (internalFindViewById9 != null) {
            internalFindViewById9.setOnClickListener(new f());
        }
        afterView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.B1.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.D1.put(cls, t3);
    }

    @Override // com.join.mgps.activity.n0, com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void setCommentNumber(String str) {
        org.androidannotations.api.b.e("", new z(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void showInstallButn() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void showLoding() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void showProgress() {
        org.androidannotations.api.b.e("", new w(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new r(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void u0(n0.v vVar) {
        org.androidannotations.api.b.e("", new t(vVar), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void updateButn() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new d0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void updateTitleButn(ResultMainBean resultMainBean, int i2) {
        org.androidannotations.api.b.e("", new f0(resultMainBean, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void x0(String str) {
        org.androidannotations.api.b.e("", new o(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.n0
    public void y0() {
        org.androidannotations.api.b.e("", new g(), 4000L);
    }
}
