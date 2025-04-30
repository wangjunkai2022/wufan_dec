package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CloudListDataBean;
import com.join.mgps.dto.RomArchived;
import com.join.mgps.fragment.i3;
import com.join.mgps.pref.PrefDef_;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: MyArchiveFragment_.java */
/* loaded from: classes4.dex */
public final class j3 extends i3 implements g3.a, i3.a, i3.b {

    /* renamed from: z0  reason: collision with root package name */
    private View f49050z0;

    /* renamed from: y0  reason: collision with root package name */
    private final i3.c f49049y0 = new i3.c();
    private final Map<Class<?>, Object> A0 = new HashMap();

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f49051a;

        a(CloudListDataBean cloudListDataBean) {
            this.f49051a = cloudListDataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            j3.super.z0(this.f49051a);
        }
    }

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    public static class a0 extends org.androidannotations.api.builder.d<a0, i3> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public i3 build() {
            j3 j3Var = new j3();
            j3Var.setArguments(this.args);
            return j3Var;
        }
    }

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f49053a;

        b(CloudListDataBean cloudListDataBean) {
            this.f49053a = cloudListDataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            j3.super.y0(this.f49053a);
        }
    }

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j3.super.E0();
        }
    }

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j3.super.F0();
        }
    }

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f49057a;

        e(boolean z3) {
            this.f49057a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            j3.super.u0(this.f49057a);
        }
    }

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f49059a;

        f(boolean z3) {
            this.f49059a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            j3.super.w0(this.f49059a);
        }
    }

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f49061a;

        g(String str) {
            this.f49061a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            j3.super.D0(this.f49061a);
        }
    }

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f49063a;

        h(CloudListDataBean cloudListDataBean) {
            this.f49063a = cloudListDataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            j3.super.J0(this.f49063a);
        }
    }

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j3.super.A0();
        }
    }

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f49066a;

        j(String str) {
            this.f49066a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            j3.super.v0(this.f49066a);
        }
    }

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            j3.this.k0();
        }
    }

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f49069a;

        l(String str) {
            this.f49069a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            j3.super.showMessage(this.f49069a);
        }
    }

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    class m extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f49071a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f49071a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                j3.super.d0(this.f49071a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    class n extends a.c {
        n(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                j3.super.e0();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    class o extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f49074a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f49075b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ i3.x f49076c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(String str, long j4, String str2, List list, boolean z3, i3.x xVar) {
            super(str, j4, str2);
            this.f49074a = list;
            this.f49075b = z3;
            this.f49076c = xVar;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                j3.super.q0(this.f49074a, this.f49075b, this.f49076c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    class p extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f49078a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(String str, long j4, String str2, CloudListDataBean cloudListDataBean) {
            super(str, j4, str2);
            this.f49078a = cloudListDataBean;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                j3.super.Z(this.f49078a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    class q extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f49080a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.join.mgps.listener.e f49081b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q(String str, long j4, String str2, CloudListDataBean cloudListDataBean, com.join.mgps.listener.e eVar) {
            super(str, j4, str2);
            this.f49080a = cloudListDataBean;
            this.f49081b = eVar;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                j3.super.I0(this.f49080a, this.f49081b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    class r extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CloudListDataBean f49083a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f49084b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        r(String str, long j4, String str2, CloudListDataBean cloudListDataBean, String str3) {
            super(str, j4, str2);
            this.f49083a = cloudListDataBean;
            this.f49084b = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                j3.super.r0(this.f49083a, this.f49084b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            j3.this.V();
        }
    }

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    class t implements Runnable {
        t() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j3.super.M();
        }
    }

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    class u implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f49088a;

        u(List list) {
            this.f49088a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            j3.super.l0(this.f49088a);
        }
    }

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    class v implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f49090a;

        v(List list) {
            this.f49090a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            j3.super.B0(this.f49090a);
        }
    }

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    class w implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f49092a;

        w(List list) {
            this.f49092a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            j3.super.updateUi(this.f49092a);
        }
    }

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j3.super.j0();
        }
    }

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    class y implements Runnable {
        y() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j3.super.i0();
        }
    }

    /* compiled from: MyArchiveFragment_.java */
    /* loaded from: classes4.dex */
    class z implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f49096a;

        z(List list) {
            this.f49096a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            j3.super.C0(this.f49096a);
        }
    }

    private void init_(Bundle bundle) {
        this.f48890m = new PrefDef_(getActivity());
        i3.c.b(this);
    }

    public static a0 j1() {
        return new a0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i3
    public void A0() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i3
    public void B0(List<RomArchived> list) {
        org.androidannotations.api.b.e("", new v(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i3
    public void C0(List<RomArchived> list) {
        org.androidannotations.api.b.e("", new z(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i3
    public void D0(String str) {
        org.androidannotations.api.b.e("", new g(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i3
    public void E0() {
        org.androidannotations.api.b.e("", new c(), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i3
    public void F0() {
        org.androidannotations.api.b.e("", new d(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i3
    public void I0(CloudListDataBean cloudListDataBean, com.join.mgps.listener.e eVar) {
        org.androidannotations.api.a.l(new q("", 0L, "", cloudListDataBean, eVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i3
    public void J0(CloudListDataBean cloudListDataBean) {
        org.androidannotations.api.b.e("", new h(cloudListDataBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i3
    public void M() {
        org.androidannotations.api.b.e("", new t(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i3
    public void Z(CloudListDataBean cloudListDataBean) {
        org.androidannotations.api.a.l(new p("", 0L, "", cloudListDataBean));
    }

    @Override // com.join.mgps.fragment.i3
    public void d0(int i2) {
        org.androidannotations.api.a.l(new m("", 0L, "", i2));
    }

    @Override // com.join.mgps.fragment.i3
    public void e0() {
        org.androidannotations.api.a.l(new n("", 0L, ""));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.A0.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i3
    public void i0() {
        org.androidannotations.api.b.e("", new y(), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f49050z0;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i3
    public void j0() {
        org.androidannotations.api.b.e("", new x(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i3
    public void l0(List<CloudListDataBean> list) {
        org.androidannotations.api.b.e("", new u(list), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f49049y0);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f49050z0 = onCreateView;
        if (onCreateView == null) {
            this.f49050z0 = layoutInflater.inflate(R.layout.item_archive, viewGroup, false);
        }
        return this.f49050z0;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f49050z0 = null;
        this.f48878a = null;
        this.f48879b = null;
        this.f48880c = null;
        this.f48881d = null;
        this.f48882e = null;
        this.f48883f = null;
        this.f48884g = null;
        this.f48885h = null;
        this.f48886i = null;
        this.f48887j = null;
        this.f48888k = null;
        this.f48889l = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f48878a = (RelativeLayout) aVar.internalFindViewById(R.id.rl_titlebar);
        this.f48879b = (ImageView) aVar.internalFindViewById(R.id.iv_all_select);
        this.f48880c = (TextView) aVar.internalFindViewById(R.id.tv_selectarchive_size);
        this.f48881d = (Button) aVar.internalFindViewById(R.id.btn_archive_down);
        this.f48882e = (Button) aVar.internalFindViewById(R.id.btn_cancel);
        this.f48883f = (RecyclerView) aVar.internalFindViewById(R.id.rcy);
        this.f48884g = (LinearLayout) aVar.internalFindViewById(R.id.ll_nodata);
        this.f48885h = (LinearLayout) aVar.internalFindViewById(R.id.ll_all_select);
        this.f48886i = (TextView) aVar.internalFindViewById(R.id.tv_show_nodata);
        this.f48887j = (RelativeLayout) aVar.internalFindViewById(R.id.rl_showtitle_bc);
        this.f48888k = (TextView) aVar.internalFindViewById(R.id.tv_showtitle_bc);
        this.f48889l = (LinearLayout) aVar.internalFindViewById(R.id.ll_lookdetail);
        LinearLayout linearLayout = this.f48885h;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new k());
        }
        Button button = this.f48882e;
        if (button != null) {
            button.setOnClickListener(new s());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f49049y0.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.A0.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i3
    public void q0(List<CloudListDataBean> list, boolean z3, i3.x xVar) {
        org.androidannotations.api.a.l(new o("", 0L, "", list, z3, xVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i3
    public void r0(CloudListDataBean cloudListDataBean, String str) {
        org.androidannotations.api.a.l(new r("", 0L, "", cloudListDataBean, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i3
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new l(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i3
    public void u0(boolean z3) {
        org.androidannotations.api.b.e("", new e(z3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i3
    public void updateUi(List<CloudListDataBean> list) {
        org.androidannotations.api.b.e("", new w(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i3
    public void v0(String str) {
        org.androidannotations.api.b.e("", new j(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i3
    public void w0(boolean z3) {
        org.androidannotations.api.b.e("", new f(z3), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i3
    public void y0(CloudListDataBean cloudListDataBean) {
        org.androidannotations.api.b.e("", new b(cloudListDataBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.i3
    public void z0(CloudListDataBean cloudListDataBean) {
        org.androidannotations.api.b.e("", new a(cloudListDataBean), 0L);
    }
}
