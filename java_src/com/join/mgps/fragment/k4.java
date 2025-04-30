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
import android.widget.RelativeLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: RankingItemFragment_.java */
/* loaded from: classes4.dex */
public final class k4 extends j4 implements g3.a, i3.a, i3.b {
    private View K;
    private final i3.c J = new i3.c();

    /* renamed from: n0  reason: collision with root package name */
    private final Map<Class<?>, Object> f49190n0 = new HashMap();

    /* renamed from: o0  reason: collision with root package name */
    private final IntentFilter f49191o0 = new IntentFilter();

    /* renamed from: p0  reason: collision with root package name */
    private final BroadcastReceiver f49192p0 = new d();

    /* compiled from: RankingItemFragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k4.super.h0();
        }
    }

    /* compiled from: RankingItemFragment_.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k4.super.R();
        }
    }

    /* compiled from: RankingItemFragment_.java */
    /* loaded from: classes4.dex */
    class c extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f49195a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f49196b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, long j4, String str2, String str3, String str4) {
            super(str, j4, str2);
            this.f49195a = str3;
            this.f49196b = str4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                k4.super.U(this.f49195a, this.f49196b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: RankingItemFragment_.java */
    /* loaded from: classes4.dex */
    class d extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f49198b = "gameData";

        d() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            k4.this.j0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* compiled from: RankingItemFragment_.java */
    /* loaded from: classes4.dex */
    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            k4.this.relodingimag();
        }
    }

    /* compiled from: RankingItemFragment_.java */
    /* loaded from: classes4.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            k4.this.i0();
        }
    }

    /* compiled from: RankingItemFragment_.java */
    /* loaded from: classes4.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            k4.this.e0();
        }
    }

    /* compiled from: RankingItemFragment_.java */
    /* loaded from: classes4.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            k4.this.q0();
        }
    }

    /* compiled from: RankingItemFragment_.java */
    /* loaded from: classes4.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            k4.this.setNetwork();
        }
    }

    /* compiled from: RankingItemFragment_.java */
    /* loaded from: classes4.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k4.super.showLoding();
        }
    }

    /* compiled from: RankingItemFragment_.java */
    /* loaded from: classes4.dex */
    class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f49206a;

        k(boolean z3) {
            this.f49206a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            k4.super.v0(this.f49206a);
        }
    }

    /* compiled from: RankingItemFragment_.java */
    /* loaded from: classes4.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f49208a;

        l(List list) {
            this.f49208a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            k4.super.showMain(this.f49208a);
        }
    }

    /* compiled from: RankingItemFragment_.java */
    /* loaded from: classes4.dex */
    public static class m extends org.androidannotations.api.builder.d<m, j4> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public j4 build() {
            k4 k4Var = new k4();
            k4Var.setArguments(this.args);
            return k4Var;
        }
    }

    public static m G0() {
        return new m();
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.f49191o0.addAction(f1.a.H);
        this.f49191o0.addAction(f1.a.F);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j4
    public void R() {
        org.androidannotations.api.b.e("", new b(), 400L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j4
    public void U(String str, String str2) {
        org.androidannotations.api.a.l(new c("", 0L, "", str, str2));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.f49190n0.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j4
    public void h0() {
        org.androidannotations.api.b.e("", new a(), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.K;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.J);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.f49192p0, this.f49191o0);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.K = onCreateView;
        if (onCreateView == null) {
            this.K = layoutInflater.inflate(R.layout.fragment_rank_item, viewGroup, false);
        }
        return this.K;
    }

    @Override // com.join.mgps.fragment.j4, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.f49192p0);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.K = null;
        this.f49101d = null;
        this.f49102e = null;
        this.f49103f = null;
        this.f49104g = null;
        this.f49105h = null;
        this.f49106i = null;
        this.f49107j = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f49101d = (RelativeLayout) aVar.internalFindViewById(R.id.rootRl);
        this.f49102e = (XListView2) aVar.internalFindViewById(R.id.classifyListView);
        this.f49103f = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f49104g = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f49105h = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f49106i = (LinearLayout) aVar.internalFindViewById(R.id.loading_none);
        this.f49107j = (ImageView) aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById = aVar.internalFindViewById(R.id.noneReloadImage);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.mg_loading);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.setAll);
        View internalFindViewById4 = aVar.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f49107j;
        if (imageView != null) {
            imageView.setOnClickListener(new e());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new f());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new g());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new h());
        }
        if (internalFindViewById4 != null) {
            internalFindViewById4.setOnClickListener(new i());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.J.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.f49190n0.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j4
    public void showLoding() {
        org.androidannotations.api.b.e("", new j(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j4
    public void showMain(List<CollectionBeanSubBusiness> list) {
        org.androidannotations.api.b.e("", new l(list), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.j4
    public void v0(boolean z3) {
        org.androidannotations.api.b.e("", new k(z3), 0L);
    }
}
