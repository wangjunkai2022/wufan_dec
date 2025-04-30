package com.join.mgps.fragment;

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
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: LabelFragment_.java */
/* loaded from: classes4.dex */
public final class d3 extends c3 implements g3.a, i3.a, i3.b {
    private View F;
    private final i3.c E = new i3.c();
    private final Map<Class<?>, Object> G = new HashMap();
    private final IntentFilter H = new IntentFilter();
    private final BroadcastReceiver I = new k();

    /* compiled from: LabelFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d3.super.hideLoading();
        }
    }

    /* compiled from: LabelFragment_.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d3.super.t0();
        }
    }

    /* compiled from: LabelFragment_.java */
    /* loaded from: classes4.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DetailResultBean f48554a;

        c(DetailResultBean detailResultBean) {
            this.f48554a = detailResultBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            d3.super.v0(this.f48554a);
        }
    }

    /* compiled from: LabelFragment_.java */
    /* loaded from: classes4.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f48556a;

        d(String str) {
            this.f48556a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            d3.super.showToast(this.f48556a);
        }
    }

    /* compiled from: LabelFragment_.java */
    /* loaded from: classes4.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d3.super.W();
        }
    }

    /* compiled from: LabelFragment_.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d3.super.p0();
        }
    }

    /* compiled from: LabelFragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f48560a;

        g(String str) {
            this.f48560a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            d3.super.showMessage(this.f48560a);
        }
    }

    /* compiled from: LabelFragment_.java */
    /* loaded from: classes4.dex */
    class h extends a.c {
        h(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                d3.super.S();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: LabelFragment_.java */
    /* loaded from: classes4.dex */
    class i extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f48563a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(String str, long j4, String str2, String str3) {
            super(str, j4, str2);
            this.f48563a = str3;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                d3.super.Q(this.f48563a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: LabelFragment_.java */
    /* loaded from: classes4.dex */
    class j extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f48565a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f48565a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                d3.super.b0(this.f48565a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: LabelFragment_.java */
    /* loaded from: classes4.dex */
    class k extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f48567b = "gameData";

        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            d3.this.a0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* compiled from: LabelFragment_.java */
    /* loaded from: classes4.dex */
    class l implements View.OnClickListener {
        l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d3.this.relodingimag();
        }
    }

    /* compiled from: LabelFragment_.java */
    /* loaded from: classes4.dex */
    class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d3.this.setNetwork();
        }
    }

    /* compiled from: LabelFragment_.java */
    /* loaded from: classes4.dex */
    class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d3.super.w0();
        }
    }

    /* compiled from: LabelFragment_.java */
    /* loaded from: classes4.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f48572a;

        o(List list) {
            this.f48572a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            d3.super.y0(this.f48572a);
        }
    }

    /* compiled from: LabelFragment_.java */
    /* loaded from: classes4.dex */
    class p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f48574a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f48575b;

        p(List list, int i2) {
            this.f48574a = list;
            this.f48575b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            d3.super.z0(this.f48574a, this.f48575b);
        }
    }

    /* compiled from: LabelFragment_.java */
    /* loaded from: classes4.dex */
    class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d3.super.u0();
        }
    }

    /* compiled from: LabelFragment_.java */
    /* loaded from: classes4.dex */
    class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d3.super.r0();
        }
    }

    /* compiled from: LabelFragment_.java */
    /* loaded from: classes4.dex */
    class s implements Runnable {
        s() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d3.super.q0();
        }
    }

    /* compiled from: LabelFragment_.java */
    /* loaded from: classes4.dex */
    public static class t extends org.androidannotations.api.builder.d<t, c3> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public c3 build() {
            d3 d3Var = new d3();
            d3Var.setArguments(this.args);
            return d3Var;
        }
    }

    public static t R0() {
        return new t();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.H.addAction(f1.a.H);
        this.H.addAction(f1.a.F);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c3
    public void Q(String str) {
        org.androidannotations.api.a.l(new i("", 0L, "", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c3
    public void S() {
        org.androidannotations.api.a.l(new h("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c3
    public void W() {
        org.androidannotations.api.b.e("", new e(), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c3
    public void b0(int i2) {
        org.androidannotations.api.a.l(new j("", 0L, "", i2));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.G.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c3
    public void hideLoading() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.F;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // com.join.mgps.fragment.c3, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.E);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.I, this.H);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.F = onCreateView;
        if (onCreateView == null) {
            this.F = layoutInflater.inflate(R.layout.fragment_lable, viewGroup, false);
        }
        return this.F;
    }

    @Override // com.join.mgps.fragment.c3, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.I);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.F = null;
        this.f48480g = null;
        this.f48481h = null;
        this.f48482i = null;
        this.f48483j = null;
        this.f48493t = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f48480g = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f48481h = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f48482i = (XListView2) aVar.internalFindViewById(R.id.mListView);
        this.f48483j = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f48493t = (ImageView) aVar.internalFindViewById(R.id.iv_no_data);
        View internalFindViewById = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new l());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new m());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.E.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c3
    public void p0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.G.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c3
    public void q0() {
        org.androidannotations.api.b.e("", new s(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c3
    public void r0() {
        org.androidannotations.api.b.e("", new r(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c3
    public void showMessage(String str) {
        org.androidannotations.api.b.e("", new g(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c3
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new d(str), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c3
    public void t0() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c3
    public void u0() {
        org.androidannotations.api.b.e("", new q(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c3
    public void v0(DetailResultBean detailResultBean) {
        org.androidannotations.api.b.e("", new c(detailResultBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c3
    public void w0() {
        org.androidannotations.api.b.e("", new n(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c3
    public void y0(List<ForumBean.ForumPostsBean> list) {
        org.androidannotations.api.b.e("", new o(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.c3
    public void z0(List<ForumBean.ForumPostsBean> list, int i2) {
        org.androidannotations.api.b.e("", new p(list, i2), 0L);
    }
}
