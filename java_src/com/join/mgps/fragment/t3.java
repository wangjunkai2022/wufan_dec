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
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.PaPaBean;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: PaPaBannerListFragment_.java */
/* loaded from: classes4.dex */
public final class t3 extends s3 implements g3.a, i3.a, i3.b {
    private View J;
    private final i3.c I = new i3.c();
    private final Map<Class<?>, Object> K = new HashMap();

    /* renamed from: n0  reason: collision with root package name */
    private final IntentFilter f50347n0 = new IntentFilter();

    /* renamed from: o0  reason: collision with root package name */
    private final BroadcastReceiver f50348o0 = new c();

    /* compiled from: PaPaBannerListFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f50349a;

        a(String str) {
            this.f50349a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            t3.super.showToast(this.f50349a);
        }
    }

    /* compiled from: PaPaBannerListFragment_.java */
    /* loaded from: classes4.dex */
    class b extends a.c {
        b(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                t3.super.P();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: PaPaBannerListFragment_.java */
    /* loaded from: classes4.dex */
    class c extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f50352b = "gameData";

        c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            t3.this.e0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* compiled from: PaPaBannerListFragment_.java */
    /* loaded from: classes4.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t3.this.relodingimag();
        }
    }

    /* compiled from: PaPaBannerListFragment_.java */
    /* loaded from: classes4.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            t3.this.setNetwork();
        }
    }

    /* compiled from: PaPaBannerListFragment_.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t3.super.m0();
        }
    }

    /* compiled from: PaPaBannerListFragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f50357a;

        g(List list) {
            this.f50357a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            t3.super.r0(this.f50357a);
        }
    }

    /* compiled from: PaPaBannerListFragment_.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t3.super.k0();
        }
    }

    /* compiled from: PaPaBannerListFragment_.java */
    /* loaded from: classes4.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t3.super.l0();
        }
    }

    /* compiled from: PaPaBannerListFragment_.java */
    /* loaded from: classes4.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t3.super.j0();
        }
    }

    /* compiled from: PaPaBannerListFragment_.java */
    /* loaded from: classes4.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t3.super.hideLoading();
        }
    }

    /* compiled from: PaPaBannerListFragment_.java */
    /* loaded from: classes4.dex */
    public static class l extends org.androidannotations.api.builder.d<l, s3> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public s3 build() {
            t3 t3Var = new t3();
            t3Var.setArguments(this.args);
            return t3Var;
        }
    }

    public static l F0() {
        return new l();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.f50347n0.addAction(f1.a.H);
        this.f50347n0.addAction(f1.a.F);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s3
    public void P() {
        org.androidannotations.api.a.l(new b("", 0L, ""));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.K.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s3
    public void hideLoading() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.J;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s3
    public void j0() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s3
    public void k0() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s3
    public void l0() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s3
    public void m0() {
        org.androidannotations.api.b.e("", new f(), 0L);
    }

    @Override // com.join.mgps.fragment.s3, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.I);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.f50348o0, this.f50347n0);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.J = onCreateView;
        if (onCreateView == null) {
            this.J = layoutInflater.inflate(R.layout.fragment_papa_banner_list, viewGroup, false);
        }
        return this.J;
    }

    @Override // com.join.mgps.fragment.s3, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.f50348o0);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.J = null;
        this.f50244e = null;
        this.f50247h = null;
        this.f50248i = null;
        this.f50249j = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f50244e = (XListView2) aVar.internalFindViewById(R.id.mListView);
        this.f50247h = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f50248i = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f50249j = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        View internalFindViewById = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new d());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new e());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.I.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.K.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s3
    public void r0(List<PaPaBean> list) {
        org.androidannotations.api.b.e("", new g(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.s3
    public void showToast(String str) {
        org.androidannotations.api.b.e("", new a(str), 0L);
    }
}
