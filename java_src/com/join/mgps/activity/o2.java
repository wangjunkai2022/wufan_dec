package com.join.mgps.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.ViewFlipper;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.component.xrecyclerview.XRecyclerView2;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.HomeFloatData;
import com.join.mgps.dto.PAPAHomeBeanV7;
import com.join.mgps.dto.VipPopData;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: PapaMainV3Fragment_.java */
/* loaded from: classes3.dex */
public final class o2 extends PapaMainV3Fragment implements g3.a, i3.a, i3.b {

    /* renamed from: i1  reason: collision with root package name */
    private View f38155i1;

    /* renamed from: h1  reason: collision with root package name */
    private final i3.c f38154h1 = new i3.c();

    /* renamed from: j1  reason: collision with root package name */
    private final Map<Class<?>, Object> f38156j1 = new HashMap();

    /* renamed from: k1  reason: collision with root package name */
    private final IntentFilter f38157k1 = new IntentFilter();

    /* renamed from: l1  reason: collision with root package name */
    private final BroadcastReceiver f38158l1 = new k();

    /* renamed from: m1  reason: collision with root package name */
    private final IntentFilter f38159m1 = new IntentFilter();

    /* renamed from: n1  reason: collision with root package name */
    private final BroadcastReceiver f38160n1 = new v();

    /* renamed from: o1  reason: collision with root package name */
    private final IntentFilter f38161o1 = new IntentFilter();

    /* renamed from: p1  reason: collision with root package name */
    private final BroadcastReceiver f38162p1 = new g0();

    /* renamed from: q1  reason: collision with root package name */
    private final IntentFilter f38163q1 = new IntentFilter();

    /* renamed from: r1  reason: collision with root package name */
    private final BroadcastReceiver f38164r1 = new r0();

    /* renamed from: s1  reason: collision with root package name */
    private final IntentFilter f38165s1 = new IntentFilter();

    /* renamed from: t1  reason: collision with root package name */
    private final BroadcastReceiver f38166t1 = new t0();

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o2.this.N1();
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class a0 implements Runnable {
        a0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.a2();
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o2.this.setNetwork();
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class b0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7.HomeBeanDTO f38170a;

        b0(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
            this.f38170a = homeBeanDTO;
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.y1(this.f38170a);
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o2.this.U1();
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class c0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7.HomeBeanDTO f38173a;

        c0(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
            this.f38173a = homeBeanDTO;
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.y0(this.f38173a);
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o2.this.G0();
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class d0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7.HomeBeanDTO f38176a;

        d0(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
            this.f38176a = homeBeanDTO;
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.D0(this.f38176a);
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o2.this.Z0();
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class e0 implements Runnable {
        e0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.X0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    public class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Intent f38180a;

        f(Intent intent) {
            this.f38180a = intent;
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.m1(this.f38180a);
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class f0 implements Runnable {
        f0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.W0();
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.e2();
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class g0 extends BroadcastReceiver {
        g0() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            o2.this.w1(intent);
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f38185a;

        h(List list) {
            this.f38185a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.S1(this.f38185a);
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class h0 extends a.c {
        h0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                o2.super.Q0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f38188a;

        i(String str) {
            this.f38188a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.V1(this.f38188a);
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class i0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f38190a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f38191b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i0(String str, long j4, String str2, int i2, String str3) {
            super(str, j4, str2);
            this.f38190a = i2;
            this.f38191b = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                o2.super.T0(this.f38190a, this.f38191b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.O1();
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class j0 extends a.c {
        j0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                o2.super.C0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class k extends BroadcastReceiver {
        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            o2.this.P();
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class k0 extends a.c {
        k0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                o2.super.K1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.f1();
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class l0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f38198a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l0(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f38198a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                o2.super.z0(this.f38198a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7 f38200a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f38201b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f38202c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ boolean f38203d;

        m(PAPAHomeBeanV7 pAPAHomeBeanV7, String str, int i2, boolean z3) {
            this.f38200a = pAPAHomeBeanV7;
            this.f38201b = str;
            this.f38202c = i2;
            this.f38203d = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.X1(this.f38200a, this.f38201b, this.f38202c, this.f38203d);
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class m0 extends a.c {
        m0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                o2.super.L0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.j1();
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class n0 extends a.c {
        n0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                o2.super.d1();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.z1();
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class o0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f38209a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f38210b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o0(String str, long j4, String str2, String str3, int i2) {
            super(str, j4, str2);
            this.f38209a = str3;
            this.f38210b = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                o2.super.e1(this.f38209a, this.f38210b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.l1();
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class p0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7 f38213a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p0(String str, long j4, String str2, PAPAHomeBeanV7 pAPAHomeBeanV7) {
            super(str, j4, str2);
            this.f38213a = pAPAHomeBeanV7;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                o2.super.A1(this.f38213a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.Q1();
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class q0 extends a.c {
        q0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                o2.super.K0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class r implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f38217a;

        r(String str) {
            this.f38217a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.showMessage(this.f38217a);
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class r0 extends BroadcastReceiver {
        r0() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            o2.this.R0(intent);
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.H1();
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class s0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f38221a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7.HomeBeanDTO f38222b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        s0(String str, long j4, String str2, String str3, PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
            super(str, j4, str2);
            this.f38221a = str3;
            this.f38222b = homeBeanDTO;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                o2.super.J0(this.f38221a, this.f38222b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.i1();
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class t0 extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f38225b = "gameData";

        t0() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            o2.this.o1((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.showLoding();
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class u0 implements View.OnClickListener {
        u0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o2.this.B1();
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class v extends BroadcastReceiver {
        v() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            o2.this.m1(intent);
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class v0 implements View.OnClickListener {
        v0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o2.this.h1();
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.showLodingFailed();
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class w0 implements View.OnClickListener {
        w0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o2.this.Y0();
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.R1();
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class x0 implements View.OnClickListener {
        x0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o2.this.relodingimag();
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.S0();
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    public static class y0 extends org.androidannotations.api.builder.d<y0, PapaMainV3Fragment> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public PapaMainV3Fragment build() {
            o2 o2Var = new o2();
            o2Var.setArguments(this.args);
            return o2Var;
        }
    }

    /* compiled from: PapaMainV3Fragment_.java */
    /* loaded from: classes3.dex */
    class z implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ HomeFloatData f38236a;

        z(HomeFloatData homeFloatData) {
            this.f38236a = homeFloatData;
        }

        @Override // java.lang.Runnable
        public void run() {
            o2.super.P1(this.f38236a);
        }
    }

    public static y0 U2() {
        return new y0();
    }

    private void init_(Bundle bundle) {
        Resources resources = getActivity().getResources();
        this.f34789x = new PrefDef_(getActivity());
        i3.c.b(this);
        this.f34756d = resources.getString(R.string.net_excption);
        this.f34758e = resources.getString(R.string.connect_server_excption);
        this.f38157k1.addAction(f1.a.B);
        this.f38159m1.addAction("android.net.wifi.STATE_CHANGE");
        this.f38159m1.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        this.f38159m1.addAction("android.net.wifi.SCAN_RESULTS");
        this.f38159m1.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        this.f38161o1.addAction("com.broadcast.bespeak.sussess");
        this.f38163q1.addAction("com.papa.maintab.clicked");
        this.f38165s1.addAction(f1.a.H);
        this.f38165s1.addAction(f1.a.F);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void A1(PAPAHomeBeanV7 pAPAHomeBeanV7) {
        org.androidannotations.api.a.l(new p0("", 0L, "", pAPAHomeBeanV7));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void C0() {
        org.androidannotations.api.a.l(new j0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void D0(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        org.androidannotations.api.b.e("", new d0(homeBeanDTO), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void H1() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void J0(String str, PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        org.androidannotations.api.a.l(new s0("", 0L, "", str, homeBeanDTO));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void K0() {
        org.androidannotations.api.a.l(new q0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void K1() {
        org.androidannotations.api.a.l(new k0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void L0() {
        org.androidannotations.api.a.l(new m0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void O1() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void P1(HomeFloatData homeFloatData) {
        org.androidannotations.api.b.e("", new z(homeFloatData), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void Q0() {
        org.androidannotations.api.a.l(new h0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void Q1() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void R1() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void S0() {
        org.androidannotations.api.b.e("", new y(), 2000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void S1(List<VipPopData> list) {
        org.androidannotations.api.b.e("", new h(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void T0(int i2, String str) {
        org.androidannotations.api.a.l(new i0("", 0L, "", i2, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void V1(String str) {
        org.androidannotations.api.b.e("", new i(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void W0() {
        org.androidannotations.api.b.e("", new f0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void X0() {
        org.androidannotations.api.b.e("", new e0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void X1(PAPAHomeBeanV7 pAPAHomeBeanV7, String str, int i2, boolean z3) {
        org.androidannotations.api.b.e("", new m(pAPAHomeBeanV7, str, i2, z3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void a2() {
        org.androidannotations.api.b.e("", new a0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void d1() {
        org.androidannotations.api.a.l(new n0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void e1(String str, int i2) {
        org.androidannotations.api.a.l(new o0("", 0L, "", str, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void e2() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void f1() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f38156j1.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void i1() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f38155i1;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void j1() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void l1() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void m1(Intent intent) {
        org.androidannotations.api.b.e("", new f(intent), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f38154h1);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.f38158l1, this.f38157k1);
        getActivity().registerReceiver(this.f38160n1, this.f38159m1);
        getActivity().registerReceiver(this.f38162p1, this.f38161o1);
        getActivity().registerReceiver(this.f38164r1, this.f38163q1);
        getActivity().registerReceiver(this.f38166t1, this.f38165s1);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f38155i1 = onCreateView;
        if (onCreateView == null) {
            this.f38155i1 = layoutInflater.inflate(R.layout.mgpapa_mainfragment_new_layout_v3, viewGroup, false);
        }
        return this.f38155i1;
    }

    @Override // com.join.mgps.activity.PapaMainV3Fragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.f38158l1);
        getActivity().unregisterReceiver(this.f38160n1);
        getActivity().unregisterReceiver(this.f38162p1);
        getActivity().unregisterReceiver(this.f38164r1);
        getActivity().unregisterReceiver(this.f38166t1);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f38155i1 = null;
        this.f34754c = null;
        this.f34762g = null;
        this.f34763h = null;
        this.f34764i = null;
        this.f34765j = null;
        this.f34766k = null;
        this.f34767l = null;
        this.f34768m = null;
        this.f34769n = null;
        this.f34771o = null;
        this.f34773p = null;
        this.f34775q = null;
        this.f34777r = null;
        this.H = null;
        this.I = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f34754c = (XRecyclerView2) aVar.internalFindViewById(R.id.listview);
        this.f34762g = (TextView) aVar.internalFindViewById(R.id.updateNotice);
        this.f34763h = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f34764i = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f34765j = (ImageView) aVar.internalFindViewById(R.id.movetoTop);
        this.f34766k = aVar.internalFindViewById(R.id.titleSearch);
        this.f34767l = (SimpleDraweeView) aVar.internalFindViewById(R.id.ivFloatad);
        this.f34768m = (ImageView) aVar.internalFindViewById(R.id.imageLoading);
        this.f34769n = aVar.internalFindViewById(R.id.statubar);
        this.f34771o = (FrameLayout) aVar.internalFindViewById(R.id.flTitleSearch);
        this.f34773p = (ViewFlipper) aVar.internalFindViewById(R.id.tvSearchHint);
        this.f34775q = (ImageView) aVar.internalFindViewById(R.id.ivSearchIcon);
        this.f34777r = (AppBarLayout) aVar.internalFindViewById(R.id.appbar);
        this.H = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.I = aVar.internalFindViewById(R.id.search);
        View internalFindViewById = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.share);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.setNetwork);
        View view = this.I;
        if (view != null) {
            view.setOnClickListener(new u0());
        }
        ImageView imageView = this.f34765j;
        if (imageView != null) {
            imageView.setOnClickListener(new v0());
        }
        SimpleDraweeView simpleDraweeView = this.f34767l;
        if (simpleDraweeView != null) {
            simpleDraweeView.setOnClickListener(new w0());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new x0());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new a());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new b());
        }
        View view2 = this.f34766k;
        if (view2 != null) {
            view2.setOnClickListener(new c());
        }
        FrameLayout frameLayout = this.f34771o;
        if (frameLayout != null) {
            frameLayout.setOnClickListener(new d());
        }
        ImageView imageView2 = this.f34775q;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new e());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f38154h1.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f38156j1.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void showLoding() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new w(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new r(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void y0(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        org.androidannotations.api.b.e("", new c0(homeBeanDTO), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void y1(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        org.androidannotations.api.b.e("", new b0(homeBeanDTO), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void z0(String str) {
        org.androidannotations.api.a.l(new l0("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV3Fragment
    public void z1() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }
}
