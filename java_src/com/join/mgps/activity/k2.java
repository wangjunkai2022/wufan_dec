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
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView3;
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
/* compiled from: PapaMainV2Fragment_.java */
/* loaded from: classes3.dex */
public final class k2 extends PapaMainV2Fragment implements g3.a, i3.a, i3.b {

    /* renamed from: f1  reason: collision with root package name */
    private View f37356f1;

    /* renamed from: e1  reason: collision with root package name */
    private final i3.c f37355e1 = new i3.c();

    /* renamed from: g1  reason: collision with root package name */
    private final Map<Class<?>, Object> f37357g1 = new HashMap();

    /* renamed from: h1  reason: collision with root package name */
    private final IntentFilter f37358h1 = new IntentFilter();

    /* renamed from: i1  reason: collision with root package name */
    private final BroadcastReceiver f37359i1 = new k();

    /* renamed from: j1  reason: collision with root package name */
    private final IntentFilter f37360j1 = new IntentFilter();

    /* renamed from: k1  reason: collision with root package name */
    private final BroadcastReceiver f37361k1 = new v();

    /* renamed from: l1  reason: collision with root package name */
    private final IntentFilter f37362l1 = new IntentFilter();

    /* renamed from: m1  reason: collision with root package name */
    private final BroadcastReceiver f37363m1 = new g0();

    /* renamed from: n1  reason: collision with root package name */
    private final IntentFilter f37364n1 = new IntentFilter();

    /* renamed from: o1  reason: collision with root package name */
    private final BroadcastReceiver f37365o1 = new p0();

    /* renamed from: p1  reason: collision with root package name */
    private final IntentFilter f37366p1 = new IntentFilter();

    /* renamed from: q1  reason: collision with root package name */
    private final BroadcastReceiver f37367q1 = new q0();

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            k2.this.v1();
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class a0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ HomeFloatData f37369a;

        a0(HomeFloatData homeFloatData) {
            this.f37369a = homeFloatData;
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.x1(this.f37369a);
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            k2.this.setNetwork();
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class b0 implements Runnable {
        b0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.H1();
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            k2.this.C1();
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class c0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7.HomeBeanDTO f37374a;

        c0(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
            this.f37374a = homeBeanDTO;
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.g1(this.f37374a);
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            k2.this.q0();
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class d0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7.HomeBeanDTO f37377a;

        d0(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
            this.f37377a = homeBeanDTO;
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.l0(this.f37377a);
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            k2.this.I0();
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class e0 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7.HomeBeanDTO f37380a;

        e0(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
            this.f37380a = homeBeanDTO;
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.n0(this.f37380a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    public class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Intent f37382a;

        f(Intent intent) {
            this.f37382a = intent;
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.W0(this.f37382a);
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class f0 extends a.c {
        f0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                k2.super.B0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.L1();
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class g0 extends BroadcastReceiver {
        g0() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            k2.this.f1(intent);
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f37387a;

        h(List list) {
            this.f37387a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.A1(this.f37387a);
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class h0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f37389a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f37390b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h0(String str, long j4, String str2, int i2, String str3) {
            super(str, j4, str2);
            this.f37389a = i2;
            this.f37390b = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                k2.super.E0(this.f37389a, this.f37390b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37392a;

        i(String str) {
            this.f37392a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.D1(this.f37392a);
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class i0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37394a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i0(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f37394a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                k2.super.m0(this.f37394a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.w1();
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class j0 extends a.c {
        j0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                k2.super.w0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class k extends BroadcastReceiver {
        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            k2.this.P();
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class k0 extends a.c {
        k0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                k2.super.M0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.P0();
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class l0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37401a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f37402b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l0(String str, long j4, String str2, String str3, int i2) {
            super(str, j4, str2);
            this.f37401a = str3;
            this.f37402b = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                k2.super.O0(this.f37401a, this.f37402b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7 f37404a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f37405b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f37406c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ boolean f37407d;

        m(PAPAHomeBeanV7 pAPAHomeBeanV7, String str, int i2, boolean z3) {
            this.f37404a = pAPAHomeBeanV7;
            this.f37405b = str;
            this.f37406c = i2;
            this.f37407d = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.E1(this.f37404a, this.f37405b, this.f37406c, this.f37407d);
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class m0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7 f37409a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m0(String str, long j4, String str2, PAPAHomeBeanV7 pAPAHomeBeanV7) {
            super(str, j4, str2);
            this.f37409a = pAPAHomeBeanV7;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                k2.super.i1(this.f37409a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.N0();
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class n0 extends a.c {
        n0(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                k2.super.v0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class o implements Runnable {
        o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.T0();
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class o0 extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37414a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7.HomeBeanDTO f37415b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o0(String str, long j4, String str2, String str3, PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
            super(str, j4, str2);
            this.f37414a = str3;
            this.f37415b = homeBeanDTO;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                k2.super.u0(this.f37414a, this.f37415b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class p implements Runnable {
        p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.h1();
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class p0 extends BroadcastReceiver {
        p0() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            k2.this.C0(intent);
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.V0();
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class q0 extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f37420b = "gameData";

        q0() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            k2.this.Y0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.y1();
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class r0 implements View.OnClickListener {
        r0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            k2.this.j1();
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class s implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f37424a;

        s(String str) {
            this.f37424a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.showMessage(this.f37424a);
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class s0 implements View.OnClickListener {
        s0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            k2.this.R0();
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.q1();
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class t0 implements View.OnClickListener {
        t0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            k2.this.H0();
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.S0();
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class u0 implements View.OnClickListener {
        u0() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            k2.this.relodingimag();
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class v extends BroadcastReceiver {
        v() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            k2.this.W0(intent);
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    public static class v0 extends org.androidannotations.api.builder.d<v0, PapaMainV2Fragment> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public PapaMainV2Fragment build() {
            k2 k2Var = new k2();
            k2Var.setArguments(this.args);
            return k2Var;
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.showLoding();
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.showLodingFailed();
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.z1();
        }
    }

    /* compiled from: PapaMainV2Fragment_.java */
    /* loaded from: classes3.dex */
    class z implements Runnable {
        z() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k2.super.D0();
        }
    }

    private void init_(Bundle bundle) {
        Resources resources = getActivity().getResources();
        this.f34724y = new PrefDef_(getActivity());
        i3.c.b(this);
        this.f34692d = resources.getString(R.string.net_excption);
        this.f34693e = resources.getString(R.string.connect_server_excption);
        this.f37358h1.addAction(f1.a.B);
        this.f37360j1.addAction("android.net.wifi.STATE_CHANGE");
        this.f37360j1.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        this.f37360j1.addAction("android.net.wifi.SCAN_RESULTS");
        this.f37360j1.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        this.f37362l1.addAction("com.broadcast.bespeak.sussess");
        this.f37364n1.addAction("com.papa.maintab.clicked");
        this.f37366p1.addAction(f1.a.H);
        this.f37366p1.addAction(f1.a.F);
    }

    public static v0 y2() {
        return new v0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void A1(List<VipPopData> list) {
        org.androidannotations.api.b.e("", new h(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void B0() {
        org.androidannotations.api.a.l(new f0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void D0() {
        org.androidannotations.api.b.e("", new z(), 2000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void D1(String str) {
        org.androidannotations.api.b.e("", new i(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void E0(int i2, String str) {
        org.androidannotations.api.a.l(new h0("", 0L, "", i2, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void E1(PAPAHomeBeanV7 pAPAHomeBeanV7, String str, int i2, boolean z3) {
        org.androidannotations.api.b.e("", new m(pAPAHomeBeanV7, str, i2, z3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void H1() {
        org.androidannotations.api.b.e("", new b0(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void L1() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void M0() {
        org.androidannotations.api.a.l(new k0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void N0() {
        org.androidannotations.api.b.e("", new n(), 3000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void O0(String str, int i2) {
        org.androidannotations.api.a.l(new l0("", 0L, "", str, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void P0() {
        org.androidannotations.api.b.e("", new l(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void S0() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void T0() {
        org.androidannotations.api.b.e("", new o(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void V0() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void W0(Intent intent) {
        org.androidannotations.api.b.e("", new f(intent), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void g1(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        org.androidannotations.api.b.e("", new c0(homeBeanDTO), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f37357g1.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void h1() {
        org.androidannotations.api.b.e("", new p(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void i1(PAPAHomeBeanV7 pAPAHomeBeanV7) {
        org.androidannotations.api.a.l(new m0("", 0L, "", pAPAHomeBeanV7));
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f37356f1;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void l0(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        org.androidannotations.api.b.e("", new d0(homeBeanDTO), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void m0(String str) {
        org.androidannotations.api.a.l(new i0("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void n0(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        org.androidannotations.api.b.e("", new e0(homeBeanDTO), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f37355e1);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.f37359i1, this.f37358h1);
        getActivity().registerReceiver(this.f37361k1, this.f37360j1);
        getActivity().registerReceiver(this.f37363m1, this.f37362l1);
        getActivity().registerReceiver(this.f37365o1, this.f37364n1);
        getActivity().registerReceiver(this.f37367q1, this.f37366p1);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f37356f1 = onCreateView;
        if (onCreateView == null) {
            this.f37356f1 = layoutInflater.inflate(R.layout.mgpapa_mainfragment_new_layout_v2, viewGroup, false);
        }
        return this.f37356f1;
    }

    @Override // com.join.mgps.activity.PapaMainV2Fragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.f37359i1);
        getActivity().unregisterReceiver(this.f37361k1);
        getActivity().unregisterReceiver(this.f37363m1);
        getActivity().unregisterReceiver(this.f37365o1);
        getActivity().unregisterReceiver(this.f37367q1);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f37356f1 = null;
        this.f34690c = null;
        this.f34695g = null;
        this.f34696h = null;
        this.f34697i = null;
        this.f34698j = null;
        this.f34699k = null;
        this.f34700l = null;
        this.f34701m = null;
        this.f34702n = null;
        this.f34704o = null;
        this.f34706p = null;
        this.f34708q = null;
        this.f34710r = null;
        this.I = null;
        this.J = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f34690c = (XListView3) aVar.internalFindViewById(R.id.listview);
        this.f34695g = (TextView) aVar.internalFindViewById(R.id.updateNotice);
        this.f34696h = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f34697i = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f34698j = (ImageView) aVar.internalFindViewById(R.id.movetoTop);
        this.f34699k = aVar.internalFindViewById(R.id.titleSearch);
        this.f34700l = (SimpleDraweeView) aVar.internalFindViewById(R.id.ivFloatad);
        this.f34701m = (ImageView) aVar.internalFindViewById(R.id.imageLoading);
        this.f34702n = aVar.internalFindViewById(R.id.statubar);
        this.f34704o = (FrameLayout) aVar.internalFindViewById(R.id.flTitleSearch);
        this.f34706p = (ViewFlipper) aVar.internalFindViewById(R.id.tvSearchHint);
        this.f34708q = (ImageView) aVar.internalFindViewById(R.id.ivSearchIcon);
        this.f34710r = (AppBarLayout) aVar.internalFindViewById(R.id.appbar);
        this.I = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.J = aVar.internalFindViewById(R.id.search);
        View internalFindViewById = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.share);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.setNetwork);
        View view = this.J;
        if (view != null) {
            view.setOnClickListener(new r0());
        }
        ImageView imageView = this.f34698j;
        if (imageView != null) {
            imageView.setOnClickListener(new s0());
        }
        SimpleDraweeView simpleDraweeView = this.f34700l;
        if (simpleDraweeView != null) {
            simpleDraweeView.setOnClickListener(new t0());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new u0());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new a());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new b());
        }
        View view2 = this.f34699k;
        if (view2 != null) {
            view2.setOnClickListener(new c());
        }
        FrameLayout frameLayout = this.f34704o;
        if (frameLayout != null) {
            frameLayout.setOnClickListener(new d());
        }
        ImageView imageView2 = this.f34708q;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new e());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f37355e1.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f37357g1.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void q1() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void showLoding() {
        org.androidannotations.api.b.e("", new w(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new s(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void u0(String str, PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        org.androidannotations.api.a.l(new o0("", 0L, "", str, homeBeanDTO));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void v0() {
        org.androidannotations.api.a.l(new n0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void w0() {
        org.androidannotations.api.a.l(new j0("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void w1() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void x1(HomeFloatData homeFloatData) {
        org.androidannotations.api.b.e("", new a0(homeFloatData), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void y1() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.activity.PapaMainV2Fragment
    public void z1() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }
}
