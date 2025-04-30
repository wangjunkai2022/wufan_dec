package com.join.mgps.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import com.flyco.tablayout.SlidingTabLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.customview.ViewPagerSlide;
import com.join.mgps.dto.DIscoverTypeBean;
import com.join.mgps.dto.DiscoveryMainDataBean;
import it.sephiroth.android.library.widget.HListView;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: DiscoveryFragmentV2_.java */
/* loaded from: classes4.dex */
public final class e0 extends d0 implements g3.a, i3.a, i3.b {
    private View D;
    private final i3.c C = new i3.c();
    private final Map<Class<?>, Object> E = new HashMap();
    private final IntentFilter F = new IntentFilter();
    private final BroadcastReceiver G = new b();

    /* compiled from: DiscoveryFragmentV2_.java */
    /* loaded from: classes4.dex */
    class a extends a.c {
        a(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                e0.super.loadData();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: DiscoveryFragmentV2_.java */
    /* loaded from: classes4.dex */
    class b extends BroadcastReceiver {
        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            e0.this.P(intent);
        }
    }

    /* compiled from: DiscoveryFragmentV2_.java */
    /* loaded from: classes4.dex */
    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e0.this.S();
        }
    }

    /* compiled from: DiscoveryFragmentV2_.java */
    /* loaded from: classes4.dex */
    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e0.this.relodingimag();
        }
    }

    /* compiled from: DiscoveryFragmentV2_.java */
    /* loaded from: classes4.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e0.this.setNetwork();
        }
    }

    /* compiled from: DiscoveryFragmentV2_.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e0.super.T();
        }
    }

    /* compiled from: DiscoveryFragmentV2_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f48611a;

        g(List list) {
            this.f48611a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            e0.super.X(this.f48611a);
        }
    }

    /* compiled from: DiscoveryFragmentV2_.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e0.super.V();
        }
    }

    /* compiled from: DiscoveryFragmentV2_.java */
    /* loaded from: classes4.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DiscoveryMainDataBean f48614a;

        i(DiscoveryMainDataBean discoveryMainDataBean) {
            this.f48614a = discoveryMainDataBean;
        }

        @Override // java.lang.Runnable
        public void run() {
            e0.super.W(this.f48614a);
        }
    }

    /* compiled from: DiscoveryFragmentV2_.java */
    /* loaded from: classes4.dex */
    class j extends a.c {
        j(String str, long j4, String str2) {
            super(str, j4, str2);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                e0.super.R();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: DiscoveryFragmentV2_.java */
    /* loaded from: classes4.dex */
    public static class k extends org.androidannotations.api.builder.d<k, d0> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public d0 build() {
            e0 e0Var = new e0();
            e0Var.setArguments(this.args);
            return e0Var;
        }
    }

    public static k f0() {
        return new k();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.f48530r = AccountUtil_.getInstance_(getActivity());
        this.F.addAction("com.join.update.position");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d0
    public void R() {
        org.androidannotations.api.a.l(new j("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d0
    public void T() {
        org.androidannotations.api.b.e("", new f(), 1000L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d0
    public void V() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d0
    public void W(DiscoveryMainDataBean discoveryMainDataBean) {
        org.androidannotations.api.b.e("", new i(discoveryMainDataBean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d0
    public void X(List<DIscoverTypeBean> list) {
        org.androidannotations.api.b.e("", new g(list), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.E.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.D;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.d0
    public void loadData() {
        org.androidannotations.api.a.l(new a("", 0L, ""));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.C);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.G, this.F);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.D = onCreateView;
        if (onCreateView == null) {
            this.D = layoutInflater.inflate(R.layout.discovery_fragment_layout, viewGroup, false);
        }
        return this.D;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.G);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.D = null;
        this.f48513a = null;
        this.f48514b = null;
        this.f48515c = null;
        this.f48516d = null;
        this.f48517e = null;
        this.f48518f = null;
        this.f48519g = null;
        this.f48520h = null;
        this.f48521i = null;
        this.f48522j = null;
        this.f48523k = null;
        this.f48524l = null;
        this.f48525m = null;
        this.f48526n = null;
        this.f48527o = null;
        this.f48528p = null;
        this.f48529q = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f48513a = (CoordinatorLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f48514b = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f48515c = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f48516d = (ViewPagerSlide) aVar.internalFindViewById(R.id.viewpager);
        this.f48517e = (Toolbar) aVar.internalFindViewById(R.id.toolbar);
        this.f48518f = (SlidingTabLayout) aVar.internalFindViewById(R.id.tableLayout);
        this.f48519g = (AppBarLayout) aVar.internalFindViewById(R.id.appbar);
        this.f48520h = (RelativeLayout) aVar.internalFindViewById(R.id.discoveryTopRl);
        this.f48521i = (GridView) aVar.internalFindViewById(R.id.discoveryTopGv);
        this.f48522j = (HListView) aVar.internalFindViewById(R.id.discoveryBottomGv);
        this.f48523k = (TextView) aVar.internalFindViewById(R.id.toFightRl);
        this.f48524l = (NestedScrollView) aVar.internalFindViewById(R.id.bottomNull);
        this.f48525m = (LinearLayout) aVar.internalFindViewById(R.id.toCommunityLl);
        this.f48526n = (TextView) aVar.internalFindViewById(R.id.toCommunityTx);
        this.f48527o = (TextView) aVar.internalFindViewById(R.id.number);
        this.f48528p = (TextView) aVar.internalFindViewById(R.id.nulltext);
        this.f48529q = (TextView) aVar.internalFindViewById(R.id.topBack);
        View internalFindViewById = aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.setNetwork);
        TextView textView = this.f48528p;
        if (textView != null) {
            textView.setOnClickListener(new c());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new d());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new e());
        }
        afterView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.C.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.E.put(cls, t3);
    }
}
