package com.join.mgps.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.component.xrecyclerview.XQuickRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: FindMiniGameFragment_.java */
/* loaded from: classes4.dex */
public final class n0 extends k0 implements g3.a, i3.a, i3.b {

    /* renamed from: p  reason: collision with root package name */
    private View f49432p;

    /* renamed from: o  reason: collision with root package name */
    private final i3.c f49431o = new i3.c();

    /* renamed from: q  reason: collision with root package name */
    private final Map<Class<?>, Object> f49433q = new HashMap();

    /* compiled from: FindMiniGameFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n0.super.S();
        }
    }

    /* compiled from: FindMiniGameFragment_.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n0.super.showLodingFailed();
        }
    }

    /* compiled from: FindMiniGameFragment_.java */
    /* loaded from: classes4.dex */
    class c extends a.c {
        c(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                n0.super.Z();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: FindMiniGameFragment_.java */
    /* loaded from: classes4.dex */
    class d extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f49437a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f49437a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                n0.super.R(this.f49437a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: FindMiniGameFragment_.java */
    /* loaded from: classes4.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n0.this.relodingimag();
        }
    }

    /* compiled from: FindMiniGameFragment_.java */
    /* loaded from: classes4.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n0.this.setNetwork();
        }
    }

    /* compiled from: FindMiniGameFragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n0.super.Q();
        }
    }

    /* compiled from: FindMiniGameFragment_.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DownloadTask f49442a;

        h(DownloadTask downloadTask) {
            this.f49442a = downloadTask;
        }

        @Override // java.lang.Runnable
        public void run() {
            n0.super.T(this.f49442a);
        }
    }

    /* compiled from: FindMiniGameFragment_.java */
    /* loaded from: classes4.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n0.super.N();
        }
    }

    /* compiled from: FindMiniGameFragment_.java */
    /* loaded from: classes4.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n0.super.b0();
        }
    }

    /* compiled from: FindMiniGameFragment_.java */
    /* loaded from: classes4.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n0.super.d0();
        }
    }

    /* compiled from: FindMiniGameFragment_.java */
    /* loaded from: classes4.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f49447a;

        l(List list) {
            this.f49447a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            n0.super.c0(this.f49447a);
        }
    }

    /* compiled from: FindMiniGameFragment_.java */
    /* loaded from: classes4.dex */
    class m implements Runnable {
        m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n0.super.showLoding();
        }
    }

    /* compiled from: FindMiniGameFragment_.java */
    /* loaded from: classes4.dex */
    public static class n extends org.androidannotations.api.builder.d<n, k0> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public k0 build() {
            n0 n0Var = new n0();
            n0Var.setArguments(this.args);
            return n0Var;
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
    }

    public static n v0() {
        return new n();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void N() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void Q() {
        org.androidannotations.api.b.e("", new g(), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void R(int i2) {
        org.androidannotations.api.a.l(new d("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void S() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void T(DownloadTask downloadTask) {
        org.androidannotations.api.b.e("", new h(downloadTask), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void Z() {
        org.androidannotations.api.a.l(new c("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void b0() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void c0(List<CommonGameInfoBean> list) {
        org.androidannotations.api.b.e("", new l(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void d0() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f49433q.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f49432p;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f49431o);
        init_(bundle);
        super.onCreate(bundle);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f49432p = onCreateView;
        if (onCreateView == null) {
            this.f49432p = layoutInflater.inflate(R.layout.fragment_find_mini_game, viewGroup, false);
        }
        return this.f49432p;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f49432p = null;
        this.f49133a = null;
        this.f49134b = null;
        this.f49137e = null;
        this.f49138f = null;
        this.f49139g = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f49133a = (XQuickRecyclerView) aVar.internalFindViewById(R.id.xrv_list);
        this.f49134b = (LinearLayout) aVar.internalFindViewById(R.id.iv_nome);
        this.f49137e = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f49138f = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f49139g = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        View internalFindViewById = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new e());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new f());
        }
        M();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f49431o.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f49433q.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void showLoding() {
        org.androidannotations.api.b.e("", new m(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.k0
    public void showLodingFailed() {
        org.androidannotations.api.b.e("", new b(), 0L);
    }
}
