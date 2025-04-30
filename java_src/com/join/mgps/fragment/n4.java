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
import com.join.mgps.customview.XListView2;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.PAPAHomeBeanV7;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.androidannotations.api.a;
/* compiled from: RankingItemV2Fragment_.java */
/* loaded from: classes4.dex */
public final class n4 extends m4 implements g3.a, i3.a, i3.b {
    private View H;
    private final i3.c G = new i3.c();
    private final Map<Class<?>, Object> I = new HashMap();
    private final IntentFilter J = new IntentFilter();
    private final BroadcastReceiver K = new e();

    /* compiled from: RankingItemV2Fragment_.java */
    /* loaded from: classes4.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n4.super.O();
        }
    }

    /* compiled from: RankingItemV2Fragment_.java */
    /* loaded from: classes4.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7.HomeBeanDTO f49483a;

        b(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
            this.f49483a = homeBeanDTO;
        }

        @Override // java.lang.Runnable
        public void run() {
            n4.super.i0(this.f49483a);
        }
    }

    /* compiled from: RankingItemV2Fragment_.java */
    /* loaded from: classes4.dex */
    class c extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f49485a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f49486b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, long j4, String str2, String str3, String str4) {
            super(str, j4, str2);
            this.f49485a = str3;
            this.f49486b = str4;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                n4.super.S(this.f49485a, this.f49486b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: RankingItemV2Fragment_.java */
    /* loaded from: classes4.dex */
    class d extends a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f49488a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PAPAHomeBeanV7.HomeBeanDTO f49489b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, long j4, String str2, String str3, PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
            super(str, j4, str2);
            this.f49488a = str3;
            this.f49489b = homeBeanDTO;
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                n4.super.R(this.f49488a, this.f49489b);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* compiled from: RankingItemV2Fragment_.java */
    /* loaded from: classes4.dex */
    class e extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        public static final String f49491b = "gameData";

        e() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            n4.this.d0((CollectionBeanSub) (intent.getExtras() != null ? intent.getExtras() : new Bundle()).getSerializable("gameData"));
        }
    }

    /* compiled from: RankingItemV2Fragment_.java */
    /* loaded from: classes4.dex */
    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n4.this.relodingimag();
        }
    }

    /* compiled from: RankingItemV2Fragment_.java */
    /* loaded from: classes4.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n4.this.c0();
        }
    }

    /* compiled from: RankingItemV2Fragment_.java */
    /* loaded from: classes4.dex */
    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n4.this.X();
        }
    }

    /* compiled from: RankingItemV2Fragment_.java */
    /* loaded from: classes4.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n4.this.k0();
        }
    }

    /* compiled from: RankingItemV2Fragment_.java */
    /* loaded from: classes4.dex */
    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            n4.this.setNetwork();
        }
    }

    /* compiled from: RankingItemV2Fragment_.java */
    /* loaded from: classes4.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            n4.super.showLoding();
        }
    }

    /* compiled from: RankingItemV2Fragment_.java */
    /* loaded from: classes4.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f49499a;

        l(boolean z3) {
            this.f49499a = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            n4.super.l0(this.f49499a);
        }
    }

    /* compiled from: RankingItemV2Fragment_.java */
    /* loaded from: classes4.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f49501a;

        m(List list) {
            this.f49501a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            n4.super.showMain(this.f49501a);
        }
    }

    /* compiled from: RankingItemV2Fragment_.java */
    /* loaded from: classes4.dex */
    public static class n extends org.androidannotations.api.builder.d<n, m4> {
        @Override // org.androidannotations.api.builder.d
        /* renamed from: a */
        public m4 build() {
            n4 n4Var = new n4();
            n4Var.setArguments(this.args);
            return n4Var;
        }
    }

    private void init_(Bundle bundle) {
        i3.c.b(this);
        this.J.addAction(f1.a.H);
        this.J.addAction(f1.a.F);
    }

    public static n y0() {
        return new n();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m4
    public void O() {
        org.androidannotations.api.b.e("", new a(), 400L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m4
    public void R(String str, PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        org.androidannotations.api.a.l(new d("", 0L, "", str, homeBeanDTO));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m4
    public void S(String str, String str2) {
        org.androidannotations.api.a.l(new c("", 0L, "", str, str2));
    }

    @Override // g3.a
    public <T> T getBean(Class<T> cls) {
        return (T) this.I.get(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m4
    public void i0(PAPAHomeBeanV7.HomeBeanDTO homeBeanDTO) {
        org.androidannotations.api.b.e("", new b(homeBeanDTO), 0L);
    }

    @Override // i3.a
    public <T extends View> T internalFindViewById(int i2) {
        View view = this.H;
        if (view == null) {
            return null;
        }
        return (T) view.findViewById(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m4
    public void l0(boolean z3) {
        org.androidannotations.api.b.e("", new l(z3), 0L);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        i3.c c4 = i3.c.c(this.G);
        init_(bundle);
        super.onCreate(bundle);
        getActivity().registerReceiver(this.K, this.J);
        i3.c.c(c4);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View onCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.H = onCreateView;
        if (onCreateView == null) {
            this.H = layoutInflater.inflate(R.layout.fragment_rank_item, viewGroup, false);
        }
        return this.H;
    }

    @Override // com.join.mgps.fragment.m4, androidx.fragment.app.Fragment
    public void onDestroy() {
        getActivity().unregisterReceiver(this.K);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.H = null;
        this.f49371d = null;
        this.f49372e = null;
        this.f49373f = null;
        this.f49374g = null;
        this.f49375h = null;
        this.f49376i = null;
        this.f49377j = null;
    }

    @Override // i3.b
    public void onViewChanged(i3.a aVar) {
        this.f49371d = (RelativeLayout) aVar.internalFindViewById(R.id.rootRl);
        this.f49372e = (XListView2) aVar.internalFindViewById(R.id.classifyListView);
        this.f49373f = (PtrClassicFrameLayout) aVar.internalFindViewById(R.id.mPtrFrame);
        this.f49374g = (LinearLayout) aVar.internalFindViewById(R.id.loding_layout);
        this.f49375h = (LinearLayout) aVar.internalFindViewById(R.id.loding_faile);
        this.f49376i = (LinearLayout) aVar.internalFindViewById(R.id.loading_none);
        this.f49377j = (ImageView) aVar.internalFindViewById(R.id.relodingimag);
        View internalFindViewById = aVar.internalFindViewById(R.id.noneReloadImage);
        View internalFindViewById2 = aVar.internalFindViewById(R.id.mg_loading);
        View internalFindViewById3 = aVar.internalFindViewById(R.id.setAll);
        View internalFindViewById4 = aVar.internalFindViewById(R.id.setNetwork);
        ImageView imageView = this.f49377j;
        if (imageView != null) {
            imageView.setOnClickListener(new f());
        }
        if (internalFindViewById != null) {
            internalFindViewById.setOnClickListener(new g());
        }
        if (internalFindViewById2 != null) {
            internalFindViewById2.setOnClickListener(new h());
        }
        if (internalFindViewById3 != null) {
            internalFindViewById3.setOnClickListener(new i());
        }
        if (internalFindViewById4 != null) {
            internalFindViewById4.setOnClickListener(new j());
        }
        afterViews();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.G.a(this);
    }

    @Override // g3.a
    public <T> void putBean(Class<T> cls, T t3) {
        this.I.put(cls, t3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m4
    public void showLoding() {
        org.androidannotations.api.b.e("", new k(), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.fragment.m4
    public void showMain(List<PAPAHomeBeanV7.HomeBeanDTO> list) {
        org.androidannotations.api.b.e("", new m(list), 0L);
    }
}
