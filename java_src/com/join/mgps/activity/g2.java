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
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.HomeFloatData;
import com.join.mgps.dto.PAPAHomeBeanV6;
import com.join.mgps.dto.VipPopData;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: PapaMainFragment_.java */
/* loaded from: classes3.dex */
public final class g2 extends f2 implements g3.a, i3.a, i3.b {
    private View W0;
    private final i3.c V0 = new i3.c();
    private final Map<Class<?>, Object> X0 = new HashMap();
    private final IntentFilter Y0 = new IntentFilter();
    private final BroadcastReceiver Z0 = new k();

    /* renamed from: a1  reason: collision with root package name */
    private final IntentFilter f37193a1 = new IntentFilter();

    /* renamed from: b1  reason: collision with root package name */
    private final BroadcastReceiver f37194b1 = new v();

    /* renamed from: c1  reason: collision with root package name */
    private final IntentFilter f37195c1 = new IntentFilter();

    /* renamed from: d1  reason: collision with root package name */
    private final BroadcastReceiver f37196d1 = new g0();

    /* renamed from: e1  reason: collision with root package name */
    private final IntentFilter f37197e1 = new IntentFilter();

    /* renamed from: f1  reason: collision with root package name */
    private final BroadcastReceiver f37198f1 = new j0();

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g2.this.setNetwork();
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class a0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f37200a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f37201b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a0(String str, long j4, String str2, int i2, String str3) {
            super(str, j4, str2);
            this.f37200a = i2;
            this.f37201b = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                g2.super.t0(this.f37200a, this.f37201b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g2.this.l1();
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class b0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37204a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b0(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f37204a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                g2.super.g0(this.f37204a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g2.super.u1();
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class c0 extends a.c {
        c0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                g2.super.l0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f37208a;

        d(List list) {
            this.f37208a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            g2.super.i1(this.f37208a);
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class d0 extends a.c {
        d0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                g2.super.y0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37211a;

        e(String str) {
            this.f37211a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            g2.super.n1(this.f37211a);
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class e0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37213a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f37214b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e0(String str, long j4, String str2, String str3, int i2) {
            super(str, j4, str2);
            this.f37213a = str3;
            this.f37214b = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                g2.super.A0(this.f37213a, this.f37214b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g2.super.e1();
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class f0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV6 f37217a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f0(String str, long j4, String str2, PAPAHomeBeanV6 pAPAHomeBeanV6) {
            super(str, j4, str2);
            this.f37217a = pAPAHomeBeanV6;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                g2.super.S0(this.f37217a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g2.super.B0();
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class g0 extends BroadcastReceiver {
        g0() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            g2.this.q0(intent);
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV6 f37221a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f37222b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f37223c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ boolean f37224d;

        h(PAPAHomeBeanV6 pAPAHomeBeanV6, String str, int i2, boolean z3) {
            this.f37221a = pAPAHomeBeanV6;
            this.f37222b = str;
            this.f37223c = i2;
            this.f37224d = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            g2.super.o1(this.f37221a, this.f37222b, this.f37223c, this.f37224d);
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class h0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f37226a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h0(String str, long j4, String str2, List list) {
            super(str, j4, str2);
            this.f37226a = list;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                g2.super.R0(this.f37226a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g2.super.z0();
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class i0 extends a.c {
        i0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                g2.super.k0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g2.super.E0();
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class j0 extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f37231b = "gameData";

        j0() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            g2.this.I0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class k extends BroadcastReceiver {
        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            g2.this.O();
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class k0 implements View.OnClickListener {
        k0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g2.this.U0();
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g2.super.G0();
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class l0 implements View.OnClickListener {
        l0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g2.this.C0();
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f37237a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f37238b;

        m(List list, boolean z3) {
            this.f37237a = list;
            this.f37238b = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            g2.super.b1(this.f37237a, this.f37238b);
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class m0 implements View.OnClickListener {
        m0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g2.this.v0();
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g2.super.g1();
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class n0 implements View.OnClickListener {
        n0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g2.this.relodingimag();
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37243a;

        o(String str) {
            this.f37243a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            g2.super.showMessage(this.f37243a);
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class o0 implements View.OnClickListener {
        o0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g2.this.d1();
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f37246a;

        p(List list) {
            this.f37246a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            g2.super.m1(this.f37246a);
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    public static class p0 extends org.androidannotations.api.builder.d<p0, f2> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public f2 build() {
            g2 g2Var = new g2();
            g2Var.setArguments(this.args);
            return g2Var;
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g2.super.Y0();
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g2.super.D0();
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g2.super.showLoding();
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g2.super.showLodingFailed();
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g2.super.h1();
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class v extends BroadcastReceiver {
        v() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            g2.this.Q0(intent);
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g2.super.r0();
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class x implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ HomeFloatData f37255a;

        x(HomeFloatData homeFloatData) {
            this.f37255a = homeFloatData;
        }

        @Override // java.lang.Runnable
        public void run() {
            g2.super.f1(this.f37255a);
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g2.super.r1();
        }
    }

    /* compiled from: PapaMainFragment_.java */
    /* loaded from: classes3.dex */
    class z extends a.c {
        z(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                g2.super.p0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    public static p0 Z1() {
        return new p0();
    }

    private void init_(Bundle bundle) {
        Resources resources = getActivity().getResources();
        this.D = new PrefDef_(getActivity());
        i3.c.b(this);
        this.f37001d = resources.getString(R.string.net_excption);
        this.f37002e = resources.getString(R.string.connect_server_excption);
        this.Y0.addAction(f1.a.B);
        this.f37193a1.addAction("com.broadcast.bespeak.sussess");
        this.f37195c1.addAction("com.papa.maintab.clicked");
        this.f37197e1.addAction(f1.a.H);
        this.f37197e1.addAction(f1.a.F);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void A0(String str, int i2) {
        org.androidannotations.api.a.l(new e0("", 0L, "", str, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void B0() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void D0() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void E0() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void G0() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void R0(List<BannerBean> list) {
        org.androidannotations.api.a.l(new h0("", 0L, "", list));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void S0(PAPAHomeBeanV6 pAPAHomeBeanV6) {
        org.androidannotations.api.a.l(new f0("", 0L, "", pAPAHomeBeanV6));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void Y0() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void b1(List<BannerBean> list, boolean z3) {
        org.androidannotations.api.b.e("", new m(list, z3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void e1() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void f1(HomeFloatData homeFloatData) {
        org.androidannotations.api.b.e("", new x(homeFloatData), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void g0(String str) {
        org.androidannotations.api.a.l(new b0("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void g1() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.X0.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void h1() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void i1(List<VipPopData> list) {
        org.androidannotations.api.b.e("", new d(list), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.W0;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void k0() {
        org.androidannotations.api.a.l(new i0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void l0() {
        org.androidannotations.api.a.l(new c0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void m1(List<BannerBean> list) {
        org.androidannotations.api.b.e("", new p(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void n1(String str) {
        org.androidannotations.api.b.e("", new e(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void o1(PAPAHomeBeanV6 pAPAHomeBeanV6, String str, int i2, boolean z3) {
        org.androidannotations.api.b.e("", new h(pAPAHomeBeanV6, str, i2, z3), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.V0);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.Z0, this.Y0);
        getActivity().registerReceiver(this.f37194b1, this.f37193a1);
        getActivity().registerReceiver(this.f37196d1, this.f37195c1);
        getActivity().registerReceiver(this.f37198f1, this.f37197e1);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.W0 = onCreateView;
        if (onCreateView == null) {
            this.W0 = layoutInflater.inflate(R.layout.mgpapa_mainfragment_new_layout, viewGroup, false);
        }
        return this.W0;
    }

    @Override // com.join.mgps.activity.f2, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.Z0);
        getActivity().unregisterReceiver(this.f37194b1);
        getActivity().unregisterReceiver(this.f37196d1);
        getActivity().unregisterReceiver(this.f37198f1);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.W0 = null;
        this.f37000c = null;
        this.f37004g = null;
        this.f37005h = null;
        this.f37006i = null;
        this.f37007j = null;
        this.f37008k = null;
        this.f37009l = null;
        this.f37010m = null;
        this.f37011n = null;
        this.f37018q0 = null;
        this.f37020r0 = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f37000c = (XListView2) aVar.internalFindViewById(R.id.listview);
        this.f37004g = (TextView) aVar.internalFindViewById(R.id.updateNotice);
        this.f37005h = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f37006i = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f37007j = (ImageView) aVar.internalFindViewById(R.id.movetoTop);
        this.f37008k = aVar.internalFindViewById(R.id.titleSearch);
        this.f37009l = (SimpleDraweeView) aVar.internalFindViewById(R.id.ivFloatad);
        this.f37010m = (ImageView) aVar.internalFindViewById(R.id.imageLoading);
        this.f37011n = aVar.internalFindViewById(R.id.statubar);
        this.f37018q0 = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f37020r0 = aVar.internalFindViewById(R.id.search);
        View internalFindViewById = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.share);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.setNetwork);
        View view = this.f37020r0;
        if (view != null) {
            view.setOnClickListener(new k0());
        }
        ImageView imageView = this.f37007j;
        if (imageView != null) {
            imageView.setOnClickListener(new l0());
        }
        SimpleDraweeView simpleDraweeView = this.f37009l;
        if (simpleDraweeView != null) {
            simpleDraweeView.setOnClickListener(new m0());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new n0());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new o0());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new a());
        }
        View view2 = this.f37008k;
        if (view2 != null) {
            view2.setOnClickListener(new b());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.V0.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void p0() {
        org.androidannotations.api.a.l(new z("", 0L, ""));
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.X0.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void r0() {
        org.androidannotations.api.b.e("", new w(), 2000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void r1() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void showLoding() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new o(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void t0(int i2, String str) {
        org.androidannotations.api.a.l(new a0("", 0L, "", i2, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void u1() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void y0() {
        org.androidannotations.api.a.l(new d0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.f2
    public void z0() {
        org.androidannotations.api.b.e("", new i(), 3000L);
    }
}
