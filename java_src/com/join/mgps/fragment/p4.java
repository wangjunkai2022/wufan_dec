package com.join.mgps.fragment;

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
/* compiled from: RecommedFragment_.java */
/* loaded from: classes4.dex */
public final class p4 extends o4 implements g3.a, i3.a, i3.b {
    private View F;
    private final i3.c E = new i3.c();
    private final Map<Class<?>, Object> G = new HashMap();

    /* compiled from: RecommedFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f49800a;

        a(List list) {
            this.f49800a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            p4.super.U(this.f49800a);
        }
    }

    /* compiled from: RecommedFragment_.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p4.super.t0();
        }
    }

    /* compiled from: RecommedFragment_.java */
    /* loaded from: classes4.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p4.super.v0();
        }
    }

    /* compiled from: RecommedFragment_.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p4.super.m0();
        }
    }

    /* compiled from: RecommedFragment_.java */
    /* loaded from: classes4.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p4.super.n0();
        }
    }

    /* compiled from: RecommedFragment_.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p4.super.l0();
        }
    }

    /* compiled from: RecommedFragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f49807a;

        g(String str) {
            this.f49807a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            p4.super.showMessage(this.f49807a);
        }
    }

    /* compiled from: RecommedFragment_.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f49809a;

        h(CloudListDataBean cloudListDataBean) {
            this.f49809a = cloudListDataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            p4.super.r0(this.f49809a);
        }
    }

    /* compiled from: RecommedFragment_.java */
    /* loaded from: classes4.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p4.super.u0();
        }
    }

    /* compiled from: RecommedFragment_.java */
    /* loaded from: classes4.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f49812a;

        j(CloudListDataBean cloudListDataBean) {
            this.f49812a = cloudListDataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            p4.super.q0(this.f49812a);
        }
    }

    /* compiled from: RecommedFragment_.java */
    /* loaded from: classes4.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p4.super.P();
        }
    }

    /* compiled from: RecommedFragment_.java */
    /* loaded from: classes4.dex */
    class l extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f49815a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f49815a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                p4.super.c0(this.f49815a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: RecommedFragment_.java */
    /* loaded from: classes4.dex */
    class m extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f49817a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(String str, long j4, String str2, CloudListDataBean cloudListDataBean) {
            super(str, j4, str2);
            this.f49817a = cloudListDataBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                p4.super.a0(this.f49817a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: RecommedFragment_.java */
    /* loaded from: classes4.dex */
    class n extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f49819a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(String str, long j4, String str2, CloudListDataBean cloudListDataBean) {
            super(str, j4, str2);
            this.f49819a = cloudListDataBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                p4.super.S(this.f49819a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: RecommedFragment_.java */
    /* loaded from: classes4.dex */
    class o extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f49821a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f49822b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(String str, long j4, String str2, CloudListDataBean cloudListDataBean, int i2) {
            super(str, j4, str2);
            this.f49821a = cloudListDataBean;
            this.f49822b = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                p4.super.O(this.f49821a, this.f49822b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: RecommedFragment_.java */
    /* loaded from: classes4.dex */
    class p extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f49824a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f49824a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                p4.super.p0(this.f49824a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: RecommedFragment_.java */
    /* loaded from: classes4.dex */
    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p4.super.e0();
        }
    }

    /* compiled from: RecommedFragment_.java */
    /* loaded from: classes4.dex */
    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p4.super.showLoding();
        }
    }

    /* compiled from: RecommedFragment_.java */
    /* loaded from: classes4.dex */
    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p4.super.showLodingFailed();
        }
    }

    /* compiled from: RecommedFragment_.java */
    /* loaded from: classes4.dex */
    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p4.super.N();
        }
    }

    /* compiled from: RecommedFragment_.java */
    /* loaded from: classes4.dex */
    class u implements Runnable {
        u() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p4.super.h0();
        }
    }

    /* compiled from: RecommedFragment_.java */
    /* loaded from: classes4.dex */
    class v implements Runnable {
        v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p4.super.g0();
        }
    }

    /* compiled from: RecommedFragment_.java */
    /* loaded from: classes4.dex */
    class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p4.super.f0();
        }
    }

    /* compiled from: RecommedFragment_.java */
    /* loaded from: classes4.dex */
    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p4.super.o0();
        }
    }

    /* compiled from: RecommedFragment_.java */
    /* loaded from: classes4.dex */
    public static class y extends org.androidannotations.api.builder.d<y, o4> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public o4 build() {
            p4 p4Var = new p4();
            p4Var.setArguments(this.args);
            return p4Var;
        }
    }

    public static y U0() {
        return new y();
    }

    private void init_(Bundle bundle) {
        this.f49664l = new PrefDef_(getActivity());
        i3.c.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o4
    public void N() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o4
    public void O(CloudListDataBean cloudListDataBean, int i2) {
        org.androidannotations.api.a.l(new o("", 0L, "", cloudListDataBean, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o4
    public void P() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o4
    public void S(CloudListDataBean cloudListDataBean) {
        org.androidannotations.api.a.l(new n("", 0L, "", cloudListDataBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o4
    public void U(List<CloudListDataBean> list) {
        org.androidannotations.api.b.e("", new a(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o4
    public void a0(CloudListDataBean cloudListDataBean) {
        org.androidannotations.api.a.l(new m("", 0L, "", cloudListDataBean));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o4
    public void c0(int i2) {
        org.androidannotations.api.a.l(new l("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o4
    public void e0() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o4
    public void f0() {
        org.androidannotations.api.b.e("", new w(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o4
    public void g0() {
        org.androidannotations.api.b.e("", new v(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.G.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o4
    public void h0() {
        org.androidannotations.api.b.e("", new u(), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.F;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o4
    public void l0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o4
    public void m0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o4
    public void n0() {
        org.androidannotations.api.b.e("", new e(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o4
    public void o0() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.E);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.F = onCreateView;
        if (onCreateView == null) {
            this.F = layoutInflater.inflate(R.layout.item_recommed_fragment, viewGroup, false);
        }
        return this.F;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.F = null;
        this.f49654b = null;
        this.f49655c = null;
        this.f49656d = null;
        this.f49657e = null;
        this.f49658f = null;
        this.f49659g = null;
        this.f49660h = null;
        this.f49661i = null;
        this.f49662j = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f49654b = (LinearLayout) aVar.internalFindViewById(R.id.ll_nodata);
        this.f49655c = (XListView2) aVar.internalFindViewById(R.id.rcy_recommed);
        this.f49656d = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.myswip);
        this.f49657e = (TextView) aVar.internalFindViewById(R.id.tv_show_nodata);
        this.f49658f = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f49659g = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f49660h = (RelativeLayout) aVar.internalFindViewById(R.id.rl_showtitle_bc);
        this.f49661i = (TextView) aVar.internalFindViewById(R.id.tv_showtitle_bc);
        this.f49662j = (LinearLayout) aVar.internalFindViewById(R.id.ll_lookdetail);
        afterView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.E.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o4
    public void p0(int i2) {
        org.androidannotations.api.a.l(new p("", 0L, "", i2));
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.G.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o4
    public void q0(CloudListDataBean cloudListDataBean) {
        org.androidannotations.api.b.e("", new j(cloudListDataBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o4
    public void r0(CloudListDataBean cloudListDataBean) {
        org.androidannotations.api.b.e("", new h(cloudListDataBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o4
    public void showLoding() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o4
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o4
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new g(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o4
    public void t0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o4
    public void u0() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.o4
    public void v0() {
        org.androidannotations.api.b.e("", new c(), 0L);
    }
}
