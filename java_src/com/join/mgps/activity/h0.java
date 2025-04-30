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
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.flipboard.bottomsheet.BottomSheetLayout;
import com.flyco.tablayout.SlidingTabLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.widget.CornersLinearLayout;
import com.join.mgps.activity.g0;
import com.join.mgps.customview.CoordinatorLayout;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.customview.SlidingTabLayoutGameDetailImage;
import com.join.mgps.dto.GameFromPopoWinBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.ResultMainBean;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: GamedetialModleBtFragemnt_.java */
/* loaded from: classes3.dex */
public final class h0 extends com.join.mgps.activity.g0 implements g3.a, i3.a, i3.b {
    private View L1;
    private final i3.c K1 = new i3.c();
    private final Map<Class<?>, Object> M1 = new HashMap();
    private final IntentFilter N1 = new IntentFilter();
    private final BroadcastReceiver O1 = new k();

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h0.this.instalButtomButn();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class a0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37261a;

        a0(String str) {
            this.f37261a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.setCommentNumber(this.f37261a);
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h0.this.d0();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class b0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f37264a;

        b0(int i2) {
            this.f37264a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.K0(this.f37264a);
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h0.this.H0();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class c0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f37267a;

        c0(int i2) {
            this.f37267a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.J0(this.f37267a);
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h0.this.c0();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class d0 implements Runnable {
        d0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.M0();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h0.this.A0();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class e0 implements Runnable {
        e0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.updateDownloadView();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h0.this.B0();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class f0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f37274a;

        f0(boolean z3) {
            this.f37274a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.N0(this.f37274a);
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h0.this.e0();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class g0 implements View.OnClickListener {
        g0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h0.this.Q();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.E0();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* renamed from: com.join.mgps.activity.h0$h0  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class RunnableC0162h0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ResultMainBean f37279a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f37280b;

        RunnableC0162h0(ResultMainBean resultMainBean, int i2) {
            this.f37279a = resultMainBean;
            this.f37280b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.updateTitleButn(this.f37279a, this.f37280b);
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.showLoding();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class i0 extends a.c {
        i0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                h0.super.f0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GamedetialModleFourBean f37284a;

        j(GamedetialModleFourBean gamedetialModleFourBean) {
            this.f37284a = gamedetialModleFourBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.P0(this.f37284a);
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class j0 extends a.c {
        j0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                h0.super.g0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class k extends BroadcastReceiver {
        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            h0.this.Q0();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class k0 extends a.c {
        k0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                h0.super.O();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.R();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class l0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37290a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f37291b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ g0.a0 f37292c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l0(String str, long j4, String str2, String str3, String str4, g0.a0 a0Var) {
            super(str, j4, str2);
            this.f37290a = str3;
            this.f37291b = str4;
            this.f37292c = a0Var;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                h0.super.P(this.f37290a, this.f37291b, this.f37292c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.L0();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class m0 extends a.c {
        m0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                h0.super.Z();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.I0();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class n0 extends a.c {
        n0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                h0.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.m0();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class o0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f37299a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o0(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f37299a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                h0.super.changeGameFollow(this.f37299a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37301a;

        p(String str) {
            this.f37301a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.C0(this.f37301a);
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class p0 implements View.OnClickListener {
        p0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h0.this.setNetwork();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class q implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameFromPopoWinBean f37304a;

        q(GameFromPopoWinBean gameFromPopoWinBean) {
            this.f37304a = gameFromPopoWinBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.W(this.f37304a);
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class q0 implements View.OnClickListener {
        q0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h0.this.b0();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.a0();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class r0 implements View.OnClickListener {
        r0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h0.this.iv_back();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class s implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37309a;

        s(String str) {
            this.f37309a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.showToast(this.f37309a);
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class s0 implements View.OnClickListener {
        s0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h0.this.X();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.o0();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class t0 implements View.OnClickListener {
        t0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h0.this.progress_layout();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class u implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g0.a0 f37314a;

        u(g0.a0 a0Var) {
            this.f37314a = a0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.z0(this.f37314a);
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class u0 implements View.OnClickListener {
        u0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h0.this.q0();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h0.this.relodingimag();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    public static class v0 extends org.androidannotations.api.builder.d<v0, com.join.mgps.activity.g0> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public com.join.mgps.activity.g0 build() {
            h0 h0Var = new h0();
            h0Var.setArguments(this.args);
            return h0Var;
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.showLodingFailed();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.showProgress();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.showInstallButn();
        }
    }

    /* compiled from: GamedetialModleBtFragemnt_.java */
    /* loaded from: classes3.dex */
    class z implements Runnable {
        z() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h0.super.updateButn();
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.N1.addAction("com.broadcast.bespeak.sussess");
    }

    public static v0 w1() {
        return new v0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void C0(String str) {
        org.androidannotations.api.b.e("", new p(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void E0() {
        org.androidannotations.api.b.e("", new h(), 4000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void I0() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void J0(int i2) {
        org.androidannotations.api.b.e("", new c0(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void K0(int i2) {
        org.androidannotations.api.b.e("", new b0(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void L0() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void M0() {
        org.androidannotations.api.b.e("", new d0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void N0(boolean z3) {
        org.androidannotations.api.b.e("", new f0(z3), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void O() {
        org.androidannotations.api.a.l(new k0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void P(String str, String str2, g0.a0 a0Var) {
        org.androidannotations.api.a.l(new l0("", 0L, "", str, str2, a0Var));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void P0(GamedetialModleFourBean gamedetialModleFourBean) {
        org.androidannotations.api.b.e("", new j(gamedetialModleFourBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void R() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void W(GameFromPopoWinBean gameFromPopoWinBean) {
        org.androidannotations.api.b.e("", new q(gameFromPopoWinBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void Z() {
        org.androidannotations.api.a.l(new m0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void a0() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void changeGameFollow(int i2) {
        org.androidannotations.api.a.l(new o0("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void f0() {
        org.androidannotations.api.a.l(new i0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void g0() {
        org.androidannotations.api.a.l(new j0("", 0L, ""));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.M1.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new n0("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.L1;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void m0() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void o0() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.K1);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.O1, this.N1);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.L1 = onCreateView;
        if (onCreateView == null) {
            this.L1 = layoutInflater.inflate(R.layout.gamedetial_modle_bt_fragment, viewGroup, false);
        }
        return this.L1;
    }

    @Override // com.join.mgps.activity.g0, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.O1);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.L1 = null;
        this.f37086e = null;
        this.f37088f = null;
        this.f37090g = null;
        this.f37092h = null;
        this.f37094i = null;
        this.f37096j = null;
        this.f37098k = null;
        this.f37100l = null;
        this.f37102m = null;
        this.f37104n = null;
        this.f37107o = null;
        this.f37110p = null;
        this.f37113q = null;
        this.f37116r = null;
        this.f37119s = null;
        this.f37122t = null;
        this.f37125u = null;
        this.f37128v = null;
        this.f37131w = null;
        this.f37134x = null;
        this.f37137y = null;
        this.f37140z = null;
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
        this.f37105n0 = null;
        this.f37108o0 = null;
        this.f37111p0 = null;
        this.f37114q0 = null;
        this.f37117r0 = null;
        this.f37120s0 = null;
        this.f37123t0 = null;
        this.f37126u0 = null;
        this.f37129v0 = null;
        this.f37132w0 = null;
        this.f37135x0 = null;
        this.f37087e1 = null;
        this.f37089f1 = null;
        this.f37091g1 = null;
        this.f37093h1 = null;
        this.f37095i1 = null;
        this.f37097j1 = null;
        this.f37099k1 = null;
        this.f37101l1 = null;
        this.f37103m1 = null;
        this.f37106n1 = null;
        this.f37109o1 = null;
        this.f37112p1 = null;
        this.f37115q1 = null;
        this.f37121s1 = null;
        this.f37124t1 = null;
        this.f37127u1 = null;
        this.f37130v1 = null;
        this.f37133w1 = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f37086e = (RelativeLayout) aVar.internalFindViewById(R.id.videolayout);
        this.f37088f = aVar.internalFindViewById(R.id.nullView);
        this.f37090g = (StandardVideoView) aVar.internalFindViewById(R.id.videoPlayer);
        this.f37092h = (SimpleDraweeView) aVar.internalFindViewById(R.id.iv_book_bg);
        this.f37094i = (SlidingTabLayout) aVar.internalFindViewById(R.id.tabs);
        this.f37096j = (ViewPager) aVar.internalFindViewById(R.id.viewPager);
        this.f37098k = (SlidingTabLayoutGameDetailImage) aVar.internalFindViewById(R.id.tabLayout1);
        this.f37100l = aVar.internalFindViewById(R.id.bottomLine);
        this.f37102m = (ViewPager) aVar.internalFindViewById(R.id.viewPager1);
        this.f37104n = aVar.internalFindViewById(R.id.stauView);
        this.f37107o = (AppBarLayout) aVar.internalFindViewById(R.id.appBarLayout);
        this.f37110p = (RelativeLayout) aVar.internalFindViewById(R.id.title_bar_layout);
        this.f37113q = (RelativeLayout) aVar.internalFindViewById(R.id.downloadRLayout2);
        this.f37116r = (RelativeLayout) aVar.internalFindViewById(R.id.titleTransfer);
        this.f37119s = (TextView) aVar.internalFindViewById(R.id.instalButtomButn);
        this.f37122t = (RelativeLayout) aVar.internalFindViewById(R.id.progressbarLayout);
        this.f37125u = (RelativeLayout) aVar.internalFindViewById(R.id.instalbutnLayout);
        this.f37128v = (ImageView) aVar.internalFindViewById(R.id.butn_showdownload);
        this.f37131w = (TextView) aVar.internalFindViewById(R.id.percent);
        this.f37134x = (ProgressBar) aVar.internalFindViewById(R.id.butnProgressBar);
        this.f37137y = (LinearLayout) aVar.internalFindViewById(R.id.downloadLayout);
        this.f37140z = (ImageView) aVar.internalFindViewById(R.id.search_detial_back);
        this.A = (ImageView) aVar.internalFindViewById(R.id.download_bg);
        this.B = (CustomerDownloadView) aVar.internalFindViewById(R.id.title_normal_download_cdv);
        this.C = (ImageView) aVar.internalFindViewById(R.id.followImage);
        this.D = (TextView) aVar.internalFindViewById(R.id.followButton);
        this.E = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.F = (CoordinatorLayout) aVar.internalFindViewById(R.id.main_content);
        this.G = aVar.internalFindViewById(R.id.loding_layout);
        this.H = aVar.internalFindViewById(R.id.loding_faile);
        this.I = aVar.internalFindViewById(R.id.iv_backx);
        this.J = aVar.internalFindViewById(R.id.setNetwork);
        this.K = (LinearLayout) aVar.internalFindViewById(R.id.btTaglayout);
        this.f37105n0 = (LinearLayout) aVar.internalFindViewById(R.id.tipsLayout);
        this.f37108o0 = aVar.internalFindViewById(R.id.cover);
        this.f37111p0 = aVar.internalFindViewById(R.id.statuHVIew);
        this.f37114q0 = (BottomSheetLayout) aVar.internalFindViewById(R.id.sheetLayout);
        this.f37117r0 = aVar.internalFindViewById(R.id.v_mask);
        this.f37120s0 = (LinearLayout) aVar.internalFindViewById(R.id.ll_notice);
        this.f37123t0 = (TextView) aVar.internalFindViewById(R.id.tv_notice);
        this.f37126u0 = (CornersLinearLayout) aVar.internalFindViewById(R.id.cll_view);
        this.f37129v0 = (RelativeLayout) aVar.internalFindViewById(R.id.rl_top_view);
        this.f37132w0 = (RelativeLayout) aVar.internalFindViewById(R.id.ll_top_view);
        this.f37135x0 = (RelativeLayout) aVar.internalFindViewById(R.id.rl_title);
        this.f37087e1 = (SimpleDraweeView) aVar.internalFindViewById(R.id.appIcon);
        this.f37089f1 = (TextView) aVar.internalFindViewById(R.id.appName);
        this.f37091g1 = (TextView) aVar.internalFindViewById(R.id.appCompany);
        this.f37093h1 = (TextView) aVar.internalFindViewById(R.id.appSize);
        this.f37095i1 = (TextView) aVar.internalFindViewById(R.id.appDownloadCount);
        this.f37097j1 = (MStarBar) aVar.internalFindViewById(R.id.comment_head_mstarBar);
        this.f37099k1 = (LinearLayout) aVar.internalFindViewById(R.id.companyLayout);
        this.f37101l1 = (LinearLayout) aVar.internalFindViewById(R.id.layoutGift);
        this.f37103m1 = (SimpleDraweeView) aVar.internalFindViewById(R.id.giftImage);
        this.f37106n1 = (TextView) aVar.internalFindViewById(R.id.giftContent);
        this.f37109o1 = (LinearLayout) aVar.internalFindViewById(R.id.scoreLayout);
        this.f37112p1 = (TextView) aVar.internalFindViewById(R.id.comment_head_point_tx);
        this.f37115q1 = (TextView) aVar.internalFindViewById(R.id.comment_head_num_tx);
        this.f37121s1 = (TextView) aVar.internalFindViewById(R.id.biground);
        this.f37124t1 = (ImageView) aVar.internalFindViewById(R.id.downloadLine);
        this.f37127u1 = (ImageView) aVar.internalFindViewById(R.id.search_detial_image);
        this.f37130v1 = (ImageView) aVar.internalFindViewById(R.id.title_normal_search_img);
        this.f37133w1 = (ImageView) aVar.internalFindViewById(R.id.imageLoading);
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
        View view = this.J;
        if (view != null) {
            view.setOnClickListener(new p0());
        }
        LinearLayout linearLayout = this.f37120s0;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new q0());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new r0());
        }
        if (internalFindViewById4 != null) {
            internalFindViewById4.setOnClickListener(new s0());
        }
        if (internalFindViewById5 != null) {
            internalFindViewById5.setOnClickListener(new t0());
        }
        View view2 = this.I;
        if (view2 != null) {
            view2.setOnClickListener(new u0());
        }
        TextView textView = this.f37119s;
        if (textView != null) {
            textView.setOnClickListener(new a());
        }
        LinearLayout linearLayout2 = this.f37137y;
        if (linearLayout2 != null) {
            linearLayout2.setOnClickListener(new b());
        }
        CustomerDownloadView customerDownloadView = this.B;
        if (customerDownloadView != null) {
            customerDownloadView.setOnClickListener(new c());
        }
        if (internalFindViewById6 != null) {
            internalFindViewById6.setOnClickListener(new d());
        }
        if (internalFindViewById7 != null) {
            internalFindViewById7.setOnClickListener(new e());
        }
        if (internalFindViewById8 != null) {
            internalFindViewById8.setOnClickListener(new f());
        }
        if (internalFindViewById9 != null) {
            internalFindViewById9.setOnClickListener(new g());
        }
        afterView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.K1.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.M1.put(cls, t3);
    }

    @Override // com.join.mgps.activity.g0, com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void setCommentNumber(String str) {
        org.androidannotations.api.b.e("", new a0(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void showInstallButn() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void showLoding() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new w(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void showProgress() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new s(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void updateButn() {
        org.androidannotations.api.b.e("", new z(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new e0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void updateTitleButn(ResultMainBean resultMainBean, int i2) {
        org.androidannotations.api.b.e("", new RunnableC0162h0(resultMainBean, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.g0
    public void z0(g0.a0 a0Var) {
        org.androidannotations.api.b.e("", new u(a0Var), 0L);
    }
}
