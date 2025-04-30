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
import com.flipboard.bottomsheet.BottomSheetLayout;
import com.flyco.tablayout.SlidingTabLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.join.android.app.component.video.StandardVideoView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.l0;
import com.join.mgps.customview.CoordinatorLayout;
import com.join.mgps.customview.CustomerDownloadView;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.dto.GameFromPopoWinBean;
import com.join.mgps.dto.GamedetialModleFourBean;
import com.join.mgps.dto.ResultMainBean;
import com.papa91.arc.widget.htmltext.HtmlTextView;
import it.sephiroth.android.library.widget.HListView;
import java.util.HashMap;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: GamedetialModleFiveFragemnt_.java */
/* loaded from: classes3.dex */
public final class m0 extends com.join.mgps.activity.l0 implements g3.a, i3.a, i3.b {
    private View N1;
    private final i3.c M1 = new i3.c();
    private final Map<Class<?>, Object> O1 = new HashMap();
    private final IntentFilter P1 = new IntentFilter();
    private final BroadcastReceiver Q1 = new k();

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            m0.this.i0();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class a0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37630a;

        a0(String str) {
            this.f37630a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.super.setCommentNumber(this.f37630a);
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            m0.this.T0();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class b0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f37633a;

        b0(int i2) {
            this.f37633a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.super.W0(this.f37633a);
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            m0.this.f0();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class c0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f37636a;

        c0(int i2) {
            this.f37636a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.super.V0(this.f37636a);
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            m0.this.M0();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class d0 implements Runnable {
        d0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.super.Y0();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            m0.this.N0();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class e0 implements Runnable {
        e0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.super.updateDownloadView();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            m0.this.j0();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class f0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f37643a;

        f0(boolean z3) {
            this.f37643a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.super.Z0(this.f37643a);
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.super.Q0();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class g0 implements View.OnClickListener {
        g0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            m0.this.R();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.super.showLoding();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class h0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ResultMainBean f37648a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f37649b;

        h0(ResultMainBean resultMainBean, int i2) {
            this.f37648a = resultMainBean;
            this.f37649b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.super.updateTitleButn(this.f37648a, this.f37649b);
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GamedetialModleFourBean f37651a;

        i(GamedetialModleFourBean gamedetialModleFourBean) {
            this.f37651a = gamedetialModleFourBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.super.b1(this.f37651a);
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class i0 extends a.c {
        i0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                m0.super.k0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.super.S();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class j0 extends a.c {
        j0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                m0.super.l0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class k extends BroadcastReceiver {
        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            m0.this.c1();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class k0 extends a.c {
        k0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                m0.super.P();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.super.X0();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class l0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37659a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f37660b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ l0.e0 f37661c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l0(String str, long j4, String str2, String str3, String str4, l0.e0 e0Var) {
            super(str, j4, str2);
            this.f37659a = str3;
            this.f37660b = str4;
            this.f37661c = e0Var;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                m0.super.Q(this.f37659a, this.f37660b, this.f37661c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.super.U0();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* renamed from: com.join.mgps.activity.m0$m0  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0163m0 extends a.c {
        C0163m0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                m0.super.c0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.super.w0();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class n0 extends a.c {
        n0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                m0.super.getDownloadTaskInfo();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37667a;

        o(String str) {
            this.f37667a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.super.O0(this.f37667a);
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class o0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f37669a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o0(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f37669a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                m0.super.changeGameFollow(this.f37669a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GameFromPopoWinBean f37671a;

        p(GameFromPopoWinBean gameFromPopoWinBean) {
            this.f37671a = gameFromPopoWinBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.super.a0(this.f37671a);
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class p0 implements View.OnClickListener {
        p0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            m0.this.setNetwork();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.super.d0();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class q0 implements View.OnClickListener {
        q0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            m0.this.iv_back();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class r implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37676a;

        r(String str) {
            this.f37676a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.super.showToast(this.f37676a);
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class r0 implements View.OnClickListener {
        r0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            m0.this.b0();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.super.y0();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class s0 implements View.OnClickListener {
        s0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            m0.this.progress_layout();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class t implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ l0.e0 f37681a;

        t(l0.e0 e0Var) {
            this.f37681a = e0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.super.L0(this.f37681a);
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class t0 implements View.OnClickListener {
        t0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            m0.this.B0();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class u implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37684a;

        u(String str) {
            this.f37684a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.super.e0(this.f37684a);
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class u0 implements View.OnClickListener {
        u0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            m0.this.instalButtomButn();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class v implements View.OnClickListener {
        v() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            m0.this.relodingimag();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    public static class v0 extends org.androidannotations.api.builder.d<v0, com.join.mgps.activity.l0> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public com.join.mgps.activity.l0 build() {
            m0 m0Var = new m0();
            m0Var.setArguments(this.args);
            return m0Var;
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.super.showLodingFailed();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.super.showProgress();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.super.showInstallButn();
        }
    }

    /* compiled from: GamedetialModleFiveFragemnt_.java */
    /* loaded from: classes3.dex */
    class z implements Runnable {
        z() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.super.updateButn();
        }
    }

    public static v0 J1() {
        return new v0();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.P1.addAction("com.broadcast.bespeak.sussess");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void L0(l0.e0 e0Var) {
        org.androidannotations.api.b.e("", new t(e0Var), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void O0(String str) {
        org.androidannotations.api.b.e("", new o(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void P() {
        org.androidannotations.api.a.l(new k0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void Q(String str, String str2, l0.e0 e0Var) {
        org.androidannotations.api.a.l(new l0("", 0L, "", str, str2, e0Var));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void Q0() {
        org.androidannotations.api.b.e("", new g(), 4000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void S() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void U0() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void V0(int i2) {
        org.androidannotations.api.b.e("", new c0(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void W0(int i2) {
        org.androidannotations.api.b.e("", new b0(i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void X0() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void Y0() {
        org.androidannotations.api.b.e("", new d0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void Z0(boolean z3) {
        org.androidannotations.api.b.e("", new f0(z3), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void a0(GameFromPopoWinBean gameFromPopoWinBean) {
        org.androidannotations.api.b.e("", new p(gameFromPopoWinBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void b1(GamedetialModleFourBean gamedetialModleFourBean) {
        org.androidannotations.api.b.e("", new i(gamedetialModleFourBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void c0() {
        org.androidannotations.api.a.l(new C0163m0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void changeGameFollow(int i2) {
        org.androidannotations.api.a.l(new o0("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void d0() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void e0(String str) {
        org.androidannotations.api.b.e("", new u(str), 600L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.O1.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void getDownloadTaskInfo() {
        org.androidannotations.api.a.l(new n0("", 0L, ""));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.N1;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void k0() {
        org.androidannotations.api.a.l(new i0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void l0() {
        org.androidannotations.api.a.l(new j0("", 0L, ""));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.M1);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.Q1, this.P1);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.N1 = onCreateView;
        if (onCreateView == null) {
            this.N1 = layoutInflater.inflate(R.layout.gamedetial_modle_five_fragment, viewGroup, false);
        }
        return this.N1;
    }

    @Override // com.join.mgps.activity.l0, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.Q1);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.N1 = null;
        this.f37445e = null;
        this.f37447f = null;
        this.f37449g = null;
        this.f37451h = null;
        this.f37453i = null;
        this.f37455j = null;
        this.f37457k = null;
        this.f37459l = null;
        this.f37461m = null;
        this.f37463n = null;
        this.f37466o = null;
        this.f37469p = null;
        this.f37472q = null;
        this.f37475r = null;
        this.f37478s = null;
        this.f37481t = null;
        this.f37484u = null;
        this.f37487v = null;
        this.f37490w = null;
        this.f37493x = null;
        this.f37496y = null;
        this.f37499z = null;
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
        this.f37464n0 = null;
        this.f37467o0 = null;
        this.f37470p0 = null;
        this.f37473q0 = null;
        this.f37476r0 = null;
        this.f37479s0 = null;
        this.f37482t0 = null;
        this.f37485u0 = null;
        this.f37446e1 = null;
        this.f37448f1 = null;
        this.f37450g1 = null;
        this.f37452h1 = null;
        this.f37454i1 = null;
        this.f37456j1 = null;
        this.f37458k1 = null;
        this.f37460l1 = null;
        this.f37462m1 = null;
        this.f37465n1 = null;
        this.f37468o1 = null;
        this.f37471p1 = null;
        this.f37474q1 = null;
        this.f37480s1 = null;
        this.f37483t1 = null;
        this.f37486u1 = null;
        this.f37489v1 = null;
        this.f37492w1 = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f37445e = (RelativeLayout) aVar.internalFindViewById(R.id.videolayout);
        this.f37447f = aVar.internalFindViewById(R.id.nullView);
        this.f37449g = (StandardVideoView) aVar.internalFindViewById(R.id.videoPlayer);
        this.f37451h = (SimpleDraweeView) aVar.internalFindViewById(R.id.iv_book_bg);
        this.f37453i = (SlidingTabLayout) aVar.internalFindViewById(R.id.tabs);
        this.f37455j = (ViewPager) aVar.internalFindViewById(R.id.viewPager);
        this.f37457k = (ViewPager) aVar.internalFindViewById(R.id.viewPager1);
        this.f37459l = aVar.internalFindViewById(R.id.stauView);
        this.f37461m = (AppBarLayout) aVar.internalFindViewById(R.id.appBarLayout);
        this.f37463n = (CollapsingToolbarLayout) aVar.internalFindViewById(R.id.collapsingToolbarLayout);
        this.f37466o = (RelativeLayout) aVar.internalFindViewById(R.id.title_bar_layout);
        this.f37469p = (RelativeLayout) aVar.internalFindViewById(R.id.downloadRLayout2);
        this.f37472q = (RelativeLayout) aVar.internalFindViewById(R.id.titleTransfer);
        this.f37475r = (TextView) aVar.internalFindViewById(R.id.instalButtomButn);
        this.f37478s = (RelativeLayout) aVar.internalFindViewById(R.id.progressbarLayout);
        this.f37481t = (RelativeLayout) aVar.internalFindViewById(R.id.instalbutnLayout);
        this.f37484u = (ImageView) aVar.internalFindViewById(R.id.butn_showdownload);
        this.f37487v = (TextView) aVar.internalFindViewById(R.id.percent);
        this.f37490w = (ProgressBar) aVar.internalFindViewById(R.id.butnProgressBar);
        this.f37493x = (LinearLayout) aVar.internalFindViewById(R.id.downloadLayout);
        this.f37496y = (ImageView) aVar.internalFindViewById(R.id.search_detial_back);
        this.f37499z = (ImageView) aVar.internalFindViewById(R.id.download_bg);
        this.A = (CustomerDownloadView) aVar.internalFindViewById(R.id.title_normal_download_cdv);
        this.B = (ImageView) aVar.internalFindViewById(R.id.followImage);
        this.C = (TextView) aVar.internalFindViewById(R.id.followButton);
        this.D = (TextView) aVar.internalFindViewById(R.id.title_textview);
        this.E = (Toolbar) aVar.internalFindViewById(R.id.toolbar);
        this.F = (CoordinatorLayout) aVar.internalFindViewById(R.id.main_content);
        this.G = aVar.internalFindViewById(R.id.loding_layout);
        this.H = aVar.internalFindViewById(R.id.loding_faile);
        this.I = aVar.internalFindViewById(R.id.iv_backx);
        this.J = aVar.internalFindViewById(R.id.setNetwork);
        this.K = (LinearLayout) aVar.internalFindViewById(R.id.btTaglayout);
        this.f37464n0 = (LinearLayout) aVar.internalFindViewById(R.id.tipsLayout);
        this.f37467o0 = aVar.internalFindViewById(R.id.cover);
        this.f37470p0 = aVar.internalFindViewById(R.id.statuHVIew);
        this.f37473q0 = (BottomSheetLayout) aVar.internalFindViewById(R.id.sheetLayout);
        this.f37476r0 = (RelativeLayout) aVar.internalFindViewById(R.id.rl_hot_rank);
        this.f37479s0 = (HtmlTextView) aVar.internalFindViewById(R.id.tv_hot_title);
        this.f37482t0 = (LinearLayout) aVar.internalFindViewById(R.id.ll_top_images);
        this.f37485u0 = (HListView) aVar.internalFindViewById(R.id.hlv_top_list);
        this.f37446e1 = (SimpleDraweeView) aVar.internalFindViewById(R.id.appIcon);
        this.f37448f1 = (TextView) aVar.internalFindViewById(R.id.appName);
        this.f37450g1 = (TextView) aVar.internalFindViewById(R.id.appCompany);
        this.f37452h1 = (TextView) aVar.internalFindViewById(R.id.appSize);
        this.f37454i1 = (TextView) aVar.internalFindViewById(R.id.appDownloadCount);
        this.f37456j1 = (MStarBar) aVar.internalFindViewById(R.id.comment_head_mstarBar);
        this.f37458k1 = (LinearLayout) aVar.internalFindViewById(R.id.companyLayout);
        this.f37460l1 = (LinearLayout) aVar.internalFindViewById(R.id.layoutGift);
        this.f37462m1 = (SimpleDraweeView) aVar.internalFindViewById(R.id.giftImage);
        this.f37465n1 = (TextView) aVar.internalFindViewById(R.id.giftContent);
        this.f37468o1 = (LinearLayout) aVar.internalFindViewById(R.id.scoreLayout);
        this.f37471p1 = (TextView) aVar.internalFindViewById(R.id.comment_head_point_tx);
        this.f37474q1 = (TextView) aVar.internalFindViewById(R.id.comment_head_num_tx);
        this.f37480s1 = (TextView) aVar.internalFindViewById(R.id.biground);
        this.f37483t1 = (ImageView) aVar.internalFindViewById(R.id.downloadLine);
        this.f37486u1 = (ImageView) aVar.internalFindViewById(R.id.search_detial_image);
        this.f37489v1 = (ImageView) aVar.internalFindViewById(R.id.title_normal_search_img);
        this.f37492w1 = (ImageView) aVar.internalFindViewById(R.id.imageLoading);
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
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new q0());
        }
        if (internalFindViewById4 != null) {
            internalFindViewById4.setOnClickListener(new r0());
        }
        if (internalFindViewById5 != null) {
            internalFindViewById5.setOnClickListener(new s0());
        }
        View view2 = this.I;
        if (view2 != null) {
            view2.setOnClickListener(new t0());
        }
        TextView textView = this.f37475r;
        if (textView != null) {
            textView.setOnClickListener(new u0());
        }
        LinearLayout linearLayout = this.f37493x;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new a());
        }
        CustomerDownloadView customerDownloadView = this.A;
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
        this.M1.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.O1.put(cls, t3);
    }

    @Override // com.join.mgps.activity.l0, com.join.mgps.activity.gamedetail.BaseGameDetailFragment
    public void setCommentNumber(String str) {
        org.androidannotations.api.b.e("", new a0(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void showInstallButn() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void showLoding() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new w(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void showProgress() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new r(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void updateButn() {
        org.androidannotations.api.b.e("", new z(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void updateDownloadView() {
        org.androidannotations.api.b.e("", new e0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void updateTitleButn(ResultMainBean resultMainBean, int i2) {
        org.androidannotations.api.b.e("", new h0(resultMainBean, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void w0() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.l0
    public void y0() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }
}
