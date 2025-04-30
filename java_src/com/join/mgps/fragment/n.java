package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CloudListDataBean;
import com.join.mgps.pref.PrefDef_;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: CloudListFragment_.java */
/* loaded from: classes4.dex */
public final class n extends com.join.mgps.fragment.m implements g3.a, i3.a, i3.b {
    private View I;
    private final i3.c H = new i3.c();
    private final Map<Class<?>, Object> J = new HashMap();
    private final IntentFilter K = new IntentFilter();

    /* renamed from: n0  reason: collision with root package name */
    private final BroadcastReceiver f49395n0 = new k();

    /* compiled from: CloudListFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.super.r0();
        }
    }

    /* compiled from: CloudListFragment_.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f49397a;

        b(List list) {
            this.f49397a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            n.super.U(this.f49397a);
        }
    }

    /* compiled from: CloudListFragment_.java */
    /* loaded from: classes4.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.super.w0();
        }
    }

    /* compiled from: CloudListFragment_.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.super.y0();
        }
    }

    /* compiled from: CloudListFragment_.java */
    /* loaded from: classes4.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.super.p0();
        }
    }

    /* compiled from: CloudListFragment_.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.super.q0();
        }
    }

    /* compiled from: CloudListFragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.super.o0();
        }
    }

    /* compiled from: CloudListFragment_.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f49404a;

        h(String str) {
            this.f49404a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            n.super.showMessage(this.f49404a);
        }
    }

    /* compiled from: CloudListFragment_.java */
    /* loaded from: classes4.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f49406a;

        i(CloudListDataBean cloudListDataBean) {
            this.f49406a = cloudListDataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            n.super.v0(this.f49406a);
        }
    }

    /* compiled from: CloudListFragment_.java */
    /* loaded from: classes4.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.super.x0();
        }
    }

    /* compiled from: CloudListFragment_.java */
    /* loaded from: classes4.dex */
    class k extends BroadcastReceiver {
        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            n.this.j0(intent);
        }
    }

    /* compiled from: CloudListFragment_.java */
    /* loaded from: classes4.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f49410a;

        l(CloudListDataBean cloudListDataBean) {
            this.f49410a = cloudListDataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            n.super.u0(this.f49410a);
        }
    }

    /* compiled from: CloudListFragment_.java */
    /* loaded from: classes4.dex */
    class m extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f49412a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f49412a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                n.super.d0(this.f49412a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: CloudListFragment_.java */
    /* renamed from: com.join.mgps.fragment.n$n  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0210n extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f49414a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0210n(String str, long j4, String str2, CloudListDataBean cloudListDataBean) {
            super(str, j4, str2);
            this.f49414a = cloudListDataBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                n.super.b0(this.f49414a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: CloudListFragment_.java */
    /* loaded from: classes4.dex */
    class o extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f49416a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(String str, long j4, String str2, CloudListDataBean cloudListDataBean) {
            super(str, j4, str2);
            this.f49416a = cloudListDataBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                n.super.S(this.f49416a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: CloudListFragment_.java */
    /* loaded from: classes4.dex */
    class p extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f49418a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f49419b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(String str, long j4, String str2, CloudListDataBean cloudListDataBean, int i2) {
            super(str, j4, str2);
            this.f49418a = cloudListDataBean;
            this.f49419b = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                n.super.O(this.f49418a, this.f49419b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: CloudListFragment_.java */
    /* loaded from: classes4.dex */
    class q extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f49421a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f49421a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                n.super.t0(this.f49421a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: CloudListFragment_.java */
    /* loaded from: classes4.dex */
    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.super.P();
        }
    }

    /* compiled from: CloudListFragment_.java */
    /* loaded from: classes4.dex */
    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.super.f0();
        }
    }

    /* compiled from: CloudListFragment_.java */
    /* loaded from: classes4.dex */
    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.super.showLoding();
        }
    }

    /* compiled from: CloudListFragment_.java */
    /* loaded from: classes4.dex */
    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.super.showLodingFailed();
        }
    }

    /* compiled from: CloudListFragment_.java */
    /* loaded from: classes4.dex */
    class v implements Runnable {
        v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.super.N();
        }
    }

    /* compiled from: CloudListFragment_.java */
    /* loaded from: classes4.dex */
    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.super.i0();
        }
    }

    /* compiled from: CloudListFragment_.java */
    /* loaded from: classes4.dex */
    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.super.h0();
        }
    }

    /* compiled from: CloudListFragment_.java */
    /* loaded from: classes4.dex */
    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n.super.g0();
        }
    }

    /* compiled from: CloudListFragment_.java */
    /* loaded from: classes4.dex */
    public static class z extends org.androidannotations.api.builder.d<z, com.join.mgps.fragment.m> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public com.join.mgps.fragment.m build() {
            n nVar = new n();
            nVar.setArguments(this.args);
            return nVar;
        }
    }

    public static z X0() {
        return new z();
    }

    private void init_(Bundle bundle) {
        this.f49303l = new PrefDef_(getActivity());
        i3.c.b(this);
        this.K.addAction(f1.a.f65481i0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void N() {
        org.androidannotations.api.b.e("", new v(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void O(CloudListDataBean cloudListDataBean, int i2) {
        org.androidannotations.api.a.l(new p("", 0L, "", cloudListDataBean, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void P() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void S(CloudListDataBean cloudListDataBean) {
        org.androidannotations.api.a.l(new o("", 0L, "", cloudListDataBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void U(List<CloudListDataBean> list) {
        org.androidannotations.api.b.e("", new b(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void b0(CloudListDataBean cloudListDataBean) {
        org.androidannotations.api.a.l(new C0210n("", 0L, "", cloudListDataBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void d0(int i2) {
        org.androidannotations.api.a.l(new m("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void f0() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void g0() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.J.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void h0() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void i0() {
        org.androidannotations.api.b.e("", new w(), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.I;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void o0() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.H);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.f49395n0, this.K);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.I = onCreateView;
        if (onCreateView == null) {
            this.I = layoutInflater.inflate(R.layout.fragment_cloud_list, viewGroup, false);
        }
        return this.I;
    }

    @Override // com.join.mgps.fragment.m, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.f49395n0);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.I = null;
        this.f49293b = null;
        this.f49294c = null;
        this.f49295d = null;
        this.f49296e = null;
        this.f49297f = null;
        this.f49298g = null;
        this.f49299h = null;
        this.f49300i = null;
        this.f49301j = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f49293b = (LinearLayout) aVar.internalFindViewById(R.id.ll_nodata);
        this.f49294c = (XListView2) aVar.internalFindViewById(R.id.rcy_recommed);
        this.f49295d = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.myswip);
        this.f49296e = (TextView) aVar.internalFindViewById(R.id.tv_show_nodata);
        this.f49297f = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f49298g = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f49299h = (RelativeLayout) aVar.internalFindViewById(R.id.rl_showtitle_bc);
        this.f49300i = (TextView) aVar.internalFindViewById(R.id.tv_showtitle_bc);
        this.f49301j = (LinearLayout) aVar.internalFindViewById(R.id.ll_lookdetail);
        afterView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.H.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void p0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.J.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void q0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void r0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void showLoding() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new h(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void t0(int i2) {
        org.androidannotations.api.a.l(new q("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void u0(CloudListDataBean cloudListDataBean) {
        org.androidannotations.api.b.e("", new l(cloudListDataBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void v0(CloudListDataBean cloudListDataBean) {
        org.androidannotations.api.b.e("", new i(cloudListDataBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void w0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void x0() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m
    public void y0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }
}
