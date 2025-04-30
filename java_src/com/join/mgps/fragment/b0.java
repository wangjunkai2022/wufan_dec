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
import android.widget.TextView;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.swiperefresh.SwipeRefresh;
import com.join.mgps.dto.DiscoverListItemBean;
import com.join.mgps.dto.DiscoverListWeiboItemBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: DIscoveryTabFragment_.java */
/* loaded from: classes4.dex */
public final class b0 extends a0 implements g3.a, i3.a, i3.b {

    /* renamed from: q  reason: collision with root package name */
    private View f48349q;

    /* renamed from: p  reason: collision with root package name */
    private final i3.c f48348p = new i3.c();

    /* renamed from: r  reason: collision with root package name */
    private final Map<Class<?>, Object> f48350r = new HashMap();

    /* renamed from: s  reason: collision with root package name */
    private final IntentFilter f48351s = new IntentFilter();

    /* renamed from: t  reason: collision with root package name */
    private final BroadcastReceiver f48352t = new d();

    /* compiled from: DIscoveryTabFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f48353a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f48354b;

        a(List list, int i2) {
            this.f48353a = list;
            this.f48354b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            b0.super.U(this.f48353a, this.f48354b);
        }
    }

    /* compiled from: DIscoveryTabFragment_.java */
    /* loaded from: classes4.dex */
    class b extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f48356a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f48356a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                b0.super.loadData(this.f48356a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: DIscoveryTabFragment_.java */
    /* loaded from: classes4.dex */
    class c extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f48358a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, long j4, String str2, int i2) {
            super(str, j4, str2);
            this.f48358a = i2;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                b0.super.O(this.f48358a);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: DIscoveryTabFragment_.java */
    /* loaded from: classes4.dex */
    class d extends BroadcastReceiver {
        d() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            b0.this.N(intent);
        }
    }

    /* compiled from: DIscoveryTabFragment_.java */
    /* loaded from: classes4.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b0.this.setNetwork();
        }
    }

    /* compiled from: DIscoveryTabFragment_.java */
    /* loaded from: classes4.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b0.this.relodingimag();
        }
    }

    /* compiled from: DIscoveryTabFragment_.java */
    /* loaded from: classes4.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b0.super.showLoding();
        }
    }

    /* compiled from: DIscoveryTabFragment_.java */
    /* loaded from: classes4.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b0.super.P();
        }
    }

    /* compiled from: DIscoveryTabFragment_.java */
    /* loaded from: classes4.dex */
    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b0.super.Q();
        }
    }

    /* compiled from: DIscoveryTabFragment_.java */
    /* loaded from: classes4.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b0.super.S();
        }
    }

    /* compiled from: DIscoveryTabFragment_.java */
    /* loaded from: classes4.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b0.super.R();
        }
    }

    /* compiled from: DIscoveryTabFragment_.java */
    /* loaded from: classes4.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f48368a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f48369b;

        l(List list, int i2) {
            this.f48368a = list;
            this.f48369b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            b0.super.T(this.f48368a, this.f48369b);
        }
    }

    /* compiled from: DIscoveryTabFragment_.java */
    /* loaded from: classes4.dex */
    public static class m extends org.androidannotations.api.builder.d<m, a0> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public a0 build() {
            b0 b0Var = new b0();
            b0Var.setArguments(this.args);
            return b0Var;
        }
    }

    public static m f0() {
        return new m();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.f48351s.addAction("com.join.update.position2");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.a0
    public void O(int i2) {
        org.androidannotations.api.a.l(new c("", 0L, "", i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.a0
    public void P() {
        org.androidannotations.api.b.e("", new h(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.a0
    public void Q() {
        org.androidannotations.api.b.e("", new i(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.a0
    public void R() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.a0
    public void S() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.a0
    public void T(List<DiscoverListItemBean> list, int i2) {
        org.androidannotations.api.b.e("", new l(list, i2), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.a0
    public void U(List<DiscoverListWeiboItemBean> list, int i2) {
        org.androidannotations.api.b.e("", new a(list, i2), 0L);
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f48350r.get(cls);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.f48349q;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.a0
    public void loadData(int i2) {
        org.androidannotations.api.a.l(new b("", 0L, "", i2));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.f48348p);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.f48352t, this.f48351s);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.f48349q = onCreateView;
        if (onCreateView == null) {
            this.f48349q = layoutInflater.inflate(R.layout.discovery_tab_fragment_layout, viewGroup, false);
        }
        return this.f48349q;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.f48352t);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f48349q = null;
        this.f48277a = null;
        this.f48278b = null;
        this.f48279c = null;
        this.f48280d = null;
        this.f48281e = null;
        this.f48282f = null;
        this.f48283g = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f48277a = (XRecyclerView) aVar.internalFindViewById(R.id.recyclerView);
        this.f48278b = (SwipeRefresh) aVar.internalFindViewById(R.id.refreshx);
        this.f48279c = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f48280d = (LinearLayout) aVar.internalFindViewById(R.id.loading_none);
        this.f48281e = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f48282f = (ImageView) aVar.internalFindViewById(R.id.relodingimag);
        this.f48283g = (TextView) aVar.internalFindViewById(R.id.noneMessage);
        View internalFindViewById = aVar.internalFindViewById(R.id.setNetwork);
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new e());
        }
        ImageView imageView = this.f48282f;
        if (imageView != null) {
            imageView.setOnClickListener(new f());
        }
        M();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f48348p.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f48350r.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.a0
    public void showLoding() {
        org.androidannotations.api.b.e("", new g(), 0L);
    }
}
